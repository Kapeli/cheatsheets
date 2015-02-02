#!/usr/bin/env ruby

require "erb"
require "fileutils"
require "tmpdir"

SCRIPT_DIR = File.expand_path(File.dirname(__FILE__))
OUTPUT_DIR = File.join(SCRIPT_DIR, "media")
INPUT_FILE = File.join(SCRIPT_DIR, "input.txt")

class String
  def undent
    gsub(/^.{#{slice(/^ +/).length}}/, '')
  end
end

class TeX2PNG
  TEMPLATE = <<-'EOS'.undent
    \documentclass[border=2pt,preview]{standalone}
    \usepackage{amssymb}
    \usepackage{amsmath}
    \usepackage{amsfonts}
    \usepackage{latexsym}
    \usepackage{mathrsfs}
    \usepackage[utf8]{inputenc}
    \begin{document}
    \Large
    $<%= tex %>$
    \end{document}
  EOS

  attr_reader :tex

  def initialize(tex)
    @tex = tex
  end

  def output_file
    caps_count = tex.scan(/[A-Z]/).count
    suffix = caps_count > 0 ? "_#{caps_count}@2x" : "@2x"
    filename = tex.downcase.gsub(/(\\|}|\s\z)/, "").gsub(/({|\s)/, "_")
    filename.gsub! "=", "equal_sign"
    filename.gsub! ">", "greater_sign"
    filename.gsub! "<", "less_sign"
    filename.gsub! ":", "colon_sign"
    filename.gsub! "+", "plus_sign"
    filename.gsub! "-", "minus_sign"
    filename.gsub! "%", "percent_sign"
    filename.gsub! "(", "left_parentheses_sign"
    filename.gsub! ")", "right_parentheses_sign"
    filename.gsub! "/", "slash_sign"
    filename.gsub! "'", "apostrophe_sign"
    filename += suffix
    "#{OUTPUT_DIR}/#{filename}.png"
  end

  def generate
    return if File.exist? output_file
    Dir.mktmpdir do |dir|
      Dir.chdir(dir) do
        File.open("main.tex", "w") do |file|
          file.write ERB.new(TEMPLATE).result(binding)
        end
        system "pdflatex", "main.tex"
        system "gs", "-dSAFER", "-dBATCH", "-dNOPAUSE", "-sDEVICE=pngalpha", "-r1200", "-sOutputFile=#{output_file}", "main.pdf"
      end
    end
  end
end

File.read(INPUT_FILE).split.each do |tex|
  next if tex.length == 0
  TeX2PNG.new(tex).generate
end
