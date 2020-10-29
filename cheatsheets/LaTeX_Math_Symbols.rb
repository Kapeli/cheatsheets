# path to resources
RES_DIR = File.expand_path("../resources/LaTeX_Math_Symbols", File.dirname(__FILE__))
# path to store media
MEDIA_DIR = File.join(RES_DIR, "media")

cheatsheet do
  title "LaTeX Math Symbols"
  docset_file_name "LaTeX_Math_Symbols"
  keyword "latexmath"
  source_url 'http://cheat.kapeli.com'
  resources MEDIA_DIR

  class TeXUtils
    def self.get(tex)
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
      %[<img style="filter:none !important" src="media/#{filename}.png" height="20pt"></img>]
    end

    def self.entry(scope, tex, note=nil)
      _notes = TeXUtils.get(tex)
      _notes += "&nbsp;&nbsp;#{note}" unless note.nil?
      scope.entry do
        command tex
        notes _notes
        yield self if block_given?
      end
    end
  end

  category do
    id "Math Mode Accents"
    TeXUtils.entry self, '\acute{a}'
    TeXUtils.entry self, '\bar{a}'
    TeXUtils.entry self, '\breve{a}'
    TeXUtils.entry self, '\check{a}'
    TeXUtils.entry self, '\ddot{a}'
    TeXUtils.entry self, '\dot{a}'
    TeXUtils.entry self, '\grave{a}'
    TeXUtils.entry self, '\hat{a}'
    TeXUtils.entry self, '\mathring{a}'
    TeXUtils.entry self, '\tilde{a}'
    TeXUtils.entry self, '\vec{a}'
    TeXUtils.entry self, '\widehat{AAA}'
    TeXUtils.entry self, '\widetilde{AAA}'
  end

  category do
    id "Greek Letters"
    TeXUtils.entry self, '\alpha'
    TeXUtils.entry self, '\beta'
    TeXUtils.entry self, '\gamma'
    TeXUtils.entry self, '\delta'
    TeXUtils.entry self, '\epsilon'
    TeXUtils.entry self, '\varepsilon'
    TeXUtils.entry self, '\zeta'
    TeXUtils.entry self, '\eta'
    TeXUtils.entry self, '\Gamma'
    TeXUtils.entry self, '\Delta'
    TeXUtils.entry self, '\Theta'
    TeXUtils.entry self, '\theta'
    TeXUtils.entry self, '\vartheta'
    TeXUtils.entry self, '\iota'
    TeXUtils.entry self, '\kappa'
    TeXUtils.entry self, '\lambda'
    TeXUtils.entry self, '\mu'
    TeXUtils.entry self, '\nu'
    TeXUtils.entry self, '\xi'
    TeXUtils.entry self, '\Lambda'
    TeXUtils.entry self, '\Xi'
    TeXUtils.entry self, '\Pi'
    TeXUtils.entry self, 'o'
    TeXUtils.entry self, '\pi'
    TeXUtils.entry self, '\varpi'
    TeXUtils.entry self, '\rho'
    TeXUtils.entry self, '\varrho'
    TeXUtils.entry self, '\sigma'
    TeXUtils.entry self, '\varsigma'
    TeXUtils.entry self, '\tau'
    TeXUtils.entry self, '\Sigma'
    TeXUtils.entry self, '\Upsilon'
    TeXUtils.entry self, '\Phi'
    TeXUtils.entry self, '\upsilon'
    TeXUtils.entry self, '\phi'
    TeXUtils.entry self, '\varphi'
    TeXUtils.entry self, '\chi'
    TeXUtils.entry self, '\psi'
    TeXUtils.entry self, '\omega'
    TeXUtils.entry self, '\Psi'
    TeXUtils.entry self, '\Omega'
  end

  category do
    id "Binary Relations"
    TeXUtils.entry self, '<'
    TeXUtils.entry self, '>'
    TeXUtils.entry self, '='
    TeXUtils.entry self, '\leq' do |e|
      e.command '\le'
    end
    TeXUtils.entry self, '\geq' do |e|
      e.command '\ge'
    end
    TeXUtils.entry self, '\equiv'
    TeXUtils.entry self, '\ll'
    TeXUtils.entry self, '\gg'
    TeXUtils.entry self, '\doteq'
    TeXUtils.entry self, '\prec'
    TeXUtils.entry self, '\succ'
    TeXUtils.entry self, '\sim'
    TeXUtils.entry self, '\preceq'
    TeXUtils.entry self, '\succeq'
    TeXUtils.entry self, '\simeq'
    TeXUtils.entry self, '\subset'
    TeXUtils.entry self, '\supset'
    TeXUtils.entry self, '\approx'
    TeXUtils.entry self, '\subseteq'
    TeXUtils.entry self, '\supseteq'
    TeXUtils.entry self, '\cong'
    TeXUtils.entry self, '\sqsubset', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\sqsupset', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\Join', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\sqsubseteq'
    TeXUtils.entry self, '\sqsupseteq'
    TeXUtils.entry self, '\bowtie'
    TeXUtils.entry self, '\in'
    TeXUtils.entry self, '\ni' do |e|
      e.command '\owns'
    end
    TeXUtils.entry self, '\propto'
    TeXUtils.entry self, '\vdash'
    TeXUtils.entry self, '\dashv'
    TeXUtils.entry self, '\models'
    TeXUtils.entry self, '\mid'
    TeXUtils.entry self, '\parallel'
    TeXUtils.entry self, '\perp'
    TeXUtils.entry self, '\smile'
    TeXUtils.entry self, '\frown'
    TeXUtils.entry self, '\asymp'
    TeXUtils.entry self, ':'
    TeXUtils.entry self, '\notin'
    TeXUtils.entry self, '\neq' do |e|
      e.command '\ne'
    end
  end

  category do
    id "Binary Operators"
    TeXUtils.entry self, '+'
    TeXUtils.entry self, '-'
    TeXUtils.entry self, '\pm'
    TeXUtils.entry self, '\mp'
    TeXUtils.entry self, '\triangleleft'
    TeXUtils.entry self, '\cdot'
    TeXUtils.entry self, '\div'
    TeXUtils.entry self, '\triangleright'
    TeXUtils.entry self, '\times'
    TeXUtils.entry self, '\setminus'
    TeXUtils.entry self, '\star'
    TeXUtils.entry self, '\cup'
    TeXUtils.entry self, '\cap'
    TeXUtils.entry self, '\ast'
    TeXUtils.entry self, '\sqcup'
    TeXUtils.entry self, '\sqcap'
    TeXUtils.entry self, '\circ'
    TeXUtils.entry self, '\vee' do |e|
      e.command '\lor'
    end
    TeXUtils.entry self, '\wedge' do |e|
      e.command '\land'
    end
    TeXUtils.entry self, '\bullet'
    TeXUtils.entry self, '\oplus'
    TeXUtils.entry self, '\ominus'
    TeXUtils.entry self, '\diamond'
    TeXUtils.entry self, '\odot'
    TeXUtils.entry self, '\oslash'
    TeXUtils.entry self, '\uplus'
    TeXUtils.entry self, '\otimes'
    TeXUtils.entry self, '\bigcirc'
    TeXUtils.entry self, '\amalg'
    TeXUtils.entry self, '\bigtriangleup'
    TeXUtils.entry self, '\bigtriangledown'
    TeXUtils.entry self, '\dagger'
    TeXUtils.entry self, '\lhd', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\rhd', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\ddagger'
    TeXUtils.entry self, '\unlhd', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\unrhd', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\wr'
  end

  category do
    id "BIG Operators"
    TeXUtils.entry self, '\sum'
    TeXUtils.entry self, '\bigcup'
    TeXUtils.entry self, '\bigvee'
    TeXUtils.entry self, '\prod'
    TeXUtils.entry self, '\bigcap'
    TeXUtils.entry self, '\bigwedge'
    TeXUtils.entry self, '\coprod'
    TeXUtils.entry self, '\bigsqcup'
    TeXUtils.entry self, '\biguplus'
    TeXUtils.entry self, '\int'
    TeXUtils.entry self, '\oint'
    TeXUtils.entry self, '\bigodot'
    TeXUtils.entry self, '\bigoplus'
    TeXUtils.entry self, '\bigotimes'
  end

  category do
    id "Arrows"
    TeXUtils.entry self, '\leftarrow' do |e|
      e.command '\gets'
    end
    TeXUtils.entry self, '\longleftarrow'
    TeXUtils.entry self, '\rightarrow' do |e|
      e.command '\to'
    end
    TeXUtils.entry self, '\longrightarrow'
    TeXUtils.entry self, '\leftrightarrow'
    TeXUtils.entry self, '\longleftrightarrow'
    TeXUtils.entry self, '\Leftarrow'
    TeXUtils.entry self, '\Longleftarrow'
    TeXUtils.entry self, '\Rightarrow'
    TeXUtils.entry self, '\Longrightarrow'
    TeXUtils.entry self, '\Leftrightarrow'
    TeXUtils.entry self, '\Longleftrightarrow'
    TeXUtils.entry self, '\mapsto'
    TeXUtils.entry self, '\longmapsto'
    TeXUtils.entry self, '\hookleftarrow'
    TeXUtils.entry self, '\hookrightarrow'
    TeXUtils.entry self, '\leftharpoonup'
    TeXUtils.entry self, '\rightharpoonup'
    TeXUtils.entry self, '\leftharpoondown'
    TeXUtils.entry self, '\rightharpoondown'
    TeXUtils.entry self, '\rightleftharpoons'
    TeXUtils.entry self, '\iff', '(bigger spaces)'
    TeXUtils.entry self, '\uparrow'
    TeXUtils.entry self, '\downarrow'
    TeXUtils.entry self, '\updownarrow'
    TeXUtils.entry self, '\Uparrow'
    TeXUtils.entry self, '\Downarrow'
    TeXUtils.entry self, '\Updownarrow'
    TeXUtils.entry self, '\nearrow'
    TeXUtils.entry self, '\searrow'
    TeXUtils.entry self, '\swarrow'
    TeXUtils.entry self, '\nwarrow'
    TeXUtils.entry self, '\leadsto', '(Require the <code>latexsym</code> package)'
  end

  category do
    id "Arrows as Accents"
    TeXUtils.entry self, '\overrightarrow{AB}'
    TeXUtils.entry self, '\underrightarrow{AB}'
    TeXUtils.entry self, '\overleftarrow{AB}'
    TeXUtils.entry self, '\underleftarrow{AB}'
    TeXUtils.entry self, '\overleftrightarrow{AB}'
    TeXUtils.entry self, '\underleftrightarrow{AB}'
  end

  category do
    id "Delimiters"
    TeXUtils.entry self, '('
    TeXUtils.entry self, ')'
    TeXUtils.entry self, '\uparrow'
    TeXUtils.entry self, '\lbrack' do |e|
      e.command '['
    end
    TeXUtils.entry self, '\rbrack' do |e|
      e.command ']'
    end
    TeXUtils.entry self, '\downarrow'
    TeXUtils.entry self, '\lbrace' do |e|
      e.command '\{'
    end
    TeXUtils.entry self, '\rbrace' do |e|
      e.command '\}'
    end
    TeXUtils.entry self, '\updownarrow'
    TeXUtils.entry self, '\langle'
    TeXUtils.entry self, '\rangle'
    TeXUtils.entry self, '\Uparrow'
    TeXUtils.entry self, '\vert' do |e|
      e.command '|'
    end
    TeXUtils.entry self, '\Vert' do |e|
      e.command '\|'
    end
    TeXUtils.entry self, '\Downarrow'
    TeXUtils.entry self, '/'
    TeXUtils.entry self, '\backslash'
    TeXUtils.entry self, '\Updownarrow'
    TeXUtils.entry self, '\lfloor'
    TeXUtils.entry self, '\rfloor'
    TeXUtils.entry self, '\rceil'
    TeXUtils.entry self, '\lceil'
  end

  category do
    id "Large Delimiters"
    entry do
      command '\lgroup'
      notes TeXUtils.get('\Big\lgroup')
    end
    entry do
      command '\rgroup'
      notes TeXUtils.get('\Big\rgroup')
    end
    entry do
      command '\lmoustache'
      notes TeXUtils.get('\Big\lmoustache')
    end
    entry do
      command '\arrowvert'
      notes TeXUtils.get('\Big\arrowvert')
    end
    entry do
      command '\Arrowvert'
      notes TeXUtils.get('\Big\Arrowvert')
    end
    entry do
      command '\bracevert'
      notes TeXUtils.get('\Big\bracevert')
    end
    entry do
      command '\rmoustache'
      notes TeXUtils.get('\Big\rmoustache')
    end
  end

  category do
    id "Miscellaneous Symbols"
    TeXUtils.entry self, '\dots'
    TeXUtils.entry self, '\cdots'
    TeXUtils.entry self, '\vdots'
    TeXUtils.entry self, '\ddots'
    TeXUtils.entry self, '\hbar'
    TeXUtils.entry self, '\imath'
    TeXUtils.entry self, '\jmath'
    TeXUtils.entry self, '\ell'
    TeXUtils.entry self, '\Re'
    TeXUtils.entry self, '\Im'
    TeXUtils.entry self, '\aleph'
    TeXUtils.entry self, '\wp'
    TeXUtils.entry self, '\forall'
    TeXUtils.entry self, '\exists'
    TeXUtils.entry self, '\mho', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\partial'
    TeXUtils.entry self, "'"
    TeXUtils.entry self, '\prime'
    TeXUtils.entry self, '\emptyset'
    TeXUtils.entry self, '\infty'
    TeXUtils.entry self, '\nabla'
    TeXUtils.entry self, '\triangle'
    TeXUtils.entry self, '\Box', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\Diamond', '(Require the <code>latexsym</code> package)'
    TeXUtils.entry self, '\bot'
    TeXUtils.entry self, '\top'
    TeXUtils.entry self, '\angle'
    TeXUtils.entry self, '\surd'
    TeXUtils.entry self, '\diamondsuit'
    TeXUtils.entry self, '\heartsuit'
    TeXUtils.entry self, '\clubsuit'
    TeXUtils.entry self, '\spadesuit'
    TeXUtils.entry self, '\neg' do |e|
      e.command '\lnot'
    end
    TeXUtils.entry self, '\flat'
    TeXUtils.entry self, '\natural'
    TeXUtils.entry self, '\sharp'
  end

  category do
    id "Non-Mathematical Symbols"
    entry do
      command '\dag'
      notes TeXUtils.get('\textrm{\dag}')
    end
    entry do
      command '\ddag'
      notes TeXUtils.get('\textrm{\ddag}')
    end
    entry do
      command '\S'
      notes TeXUtils.get('\textrm{\S}')
    end
    entry do
      command '\P'
      notes TeXUtils.get('\textrm{\P}')
    end
    entry do
      command '\copyright'
      notes TeXUtils.get('\textrm{\copyright}')
    end
    entry do
      command '\pounds'
      notes TeXUtils.get('\textrm{\pounds}')
    end
    entry do
      command '\textregistered'
      notes TeXUtils.get('\textrm{\textregistered}')
    end
    entry do
      command '\%'
      notes TeXUtils.get('\textrm{\%}')
    end
  end

  category do
    id "AMS Delimiters"
    TeXUtils.entry self, '\ulcorner'
    TeXUtils.entry self, '\urcorner'
    TeXUtils.entry self, '\llcorner'
    TeXUtils.entry self, '\lrcorner'
    TeXUtils.entry self, '\lvert'
    TeXUtils.entry self, '\rvert'
    TeXUtils.entry self, '\lVert'
    TeXUtils.entry self, '\rVert'
  end

  category do
    id "AMS Greek and Hebrew"
    TeXUtils.entry self, '\digamma'
    TeXUtils.entry self, '\varkappa'
    TeXUtils.entry self, '\beth'
    TeXUtils.entry self, '\gimel'
    TeXUtils.entry self, '\daleth'
  end

  category do
    id "Math Alphabets"
    header "Command"
    header "Example"
    header "Required Package"

    entry do
      command '\mathrm{ABCDEabcde1234}'
      td_notes TeXUtils.get('\mathrm{ABCDEabcde1234}')
      td_notes ''
    end

    entry do
      command '\mathit{ABCDEabcde1234}'
      td_notes TeXUtils.get('\mathit{ABCDEabcde1234}')
      td_notes ''
    end

    entry do
      command '\mathnormal{ABCDEabcde1234}'
      td_notes TeXUtils.get('\mathnormal{ABCDEabcde1234}')
      td_notes ''
    end

    entry do
      command '\mathcal{ABCDEabcde1234}'
      td_notes TeXUtils.get('\mathcal{ABCDEabcde1234}')
      td_notes ''
    end

    entry do
      command '\mathscr{ABCDEabcde1234}'
      td_notes TeXUtils.get('\mathscr{ABCDEabcde1234}')
      td_notes '<code>mathrsfs</code>'
    end

    entry do
      command '\mathfrak{ABCDEabcde1234}'
      td_notes TeXUtils.get('\mathfrak{ABCDEabcde1234}')
      td_notes '<code>amsfonts</code> or <code>amssymb</code>'
    end

    entry do
      command '\mathbb{ABCDEabcde1234}'
      td_notes TeXUtils.get('\mathbb{ABCDEabcde1234}')
      td_notes '<code>amsfonts</code> or <code>amssymb</code>'
    end
  end

  category do
    id "AMS Binary Operators"
    TeXUtils.entry self, '\dotplus'
    TeXUtils.entry self, '\centerdot'
    TeXUtils.entry self, '\ltimes'
    TeXUtils.entry self, '\rtimes'
    TeXUtils.entry self, '\divideontimes'
    TeXUtils.entry self, '\doublecup'
    TeXUtils.entry self, '\doublecap'
    TeXUtils.entry self, '\smallsetminus'
    TeXUtils.entry self, '\veebar'
    TeXUtils.entry self, '\barwedge'
    TeXUtils.entry self, '\doublebarwedge'
    TeXUtils.entry self, '\boxplus'
    TeXUtils.entry self, '\boxminus'
    TeXUtils.entry self, '\circleddash'
    TeXUtils.entry self, '\boxtimes'
    TeXUtils.entry self, '\boxdot'
    TeXUtils.entry self, '\circledcirc'
    TeXUtils.entry self, '\intercal'
    TeXUtils.entry self, '\circledast'
    TeXUtils.entry self, '\rightthreetimes'
    TeXUtils.entry self, '\curlyvee'
    TeXUtils.entry self, '\curlywedge'
    TeXUtils.entry self, '\leftthreetimes'
  end

  category do
    id "AMS Binary Relations"
    TeXUtils.entry self, '\lessdot'
    TeXUtils.entry self, '\gtrdot'
    TeXUtils.entry self, '\doteqdot'
    TeXUtils.entry self, '\leqslant'
    TeXUtils.entry self, '\geqslant'
    TeXUtils.entry self, '\risingdotseq'
    TeXUtils.entry self, '\eqslantless'
    TeXUtils.entry self, '\eqslantgtr'
    TeXUtils.entry self, '\fallingdotseq'
    TeXUtils.entry self, '\leqq'
    TeXUtils.entry self, '\geqq'
    TeXUtils.entry self, '\eqcirc'
    TeXUtils.entry self, '\lll' do |e|
      e.command '\llless'
    end
    TeXUtils.entry self, '\ggg'
    TeXUtils.entry self, '\circeq'
    TeXUtils.entry self, '\lesssim'
    TeXUtils.entry self, '\gtrsim'
    TeXUtils.entry self, '\triangleq'
    TeXUtils.entry self, '\lessapprox'
    TeXUtils.entry self, '\gtrapprox'
    TeXUtils.entry self, '\bumpeq'
    TeXUtils.entry self, '\lessgtr'
    TeXUtils.entry self, '\gtrless'
    TeXUtils.entry self, '\Bumpeq'
    TeXUtils.entry self, '\lesseqgtr'
    TeXUtils.entry self, '\gtreqless'
    TeXUtils.entry self, '\thicksim'
    TeXUtils.entry self, '\lesseqqgtr'
    TeXUtils.entry self, '\gtreqqless'
    TeXUtils.entry self, '\thickapprox'
    TeXUtils.entry self, '\preccurlyeq'
    TeXUtils.entry self, '\succcurlyeq'
    TeXUtils.entry self, '\approxeq'
    TeXUtils.entry self, '\curlyeqprec'
    TeXUtils.entry self, '\curlyeqsucc'
    TeXUtils.entry self, '\backsim'
    TeXUtils.entry self, '\precsim'
    TeXUtils.entry self, '\succsim'
    TeXUtils.entry self, '\backsimeq'
    TeXUtils.entry self, '\precapprox'
    TeXUtils.entry self, '\succapprox'
    TeXUtils.entry self, '\vDash'
    TeXUtils.entry self, '\subseteqq'
    TeXUtils.entry self, '\supseteqq'
    TeXUtils.entry self, '\Vdash'
    TeXUtils.entry self, '\shortparallel'
    TeXUtils.entry self, '\Supset'
    TeXUtils.entry self, '\Vvdash'
    TeXUtils.entry self, '\blacktriangleleft'
    TeXUtils.entry self, '\sqsupset'
    TeXUtils.entry self, '\backepsilon'
    TeXUtils.entry self, '\vartriangleright'
    TeXUtils.entry self, '\because'
    TeXUtils.entry self, '\varpropto'
    TeXUtils.entry self, '\blacktriangleright'
    TeXUtils.entry self, '\Subset'
    TeXUtils.entry self, '\between'
    TeXUtils.entry self, '\trianglerighteq'
    TeXUtils.entry self, '\smallfrown'
    TeXUtils.entry self, '\pitchfork'
    TeXUtils.entry self, '\vartriangleleft'
    TeXUtils.entry self, '\shortmid'
    TeXUtils.entry self, '\smallsmile'
    TeXUtils.entry self, '\trianglelefteq'
    TeXUtils.entry self, '\therefore'
    TeXUtils.entry self, '\sqsubset'
  end

  notes <<-EOS
  * Based on [The not so Short Introduction to LaTeX](https://tobi.oetiker.ch/lshort/lshort.pdf).
  EOS
end
