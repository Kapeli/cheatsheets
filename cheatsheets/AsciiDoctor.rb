cheatsheet do
  title 'AsciiDoctor'
  docset_file_name 'AsciiDoctor'
  keyword 'adoc'
  source_url 'https://github.com/holyjak/dash-asciidoc-cheatsheet'
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else
  style '
    div.name p {font-weight: bold}
    .title {
      font-size: 1.1em;
      margin-bottom: 0.5em;
      color: #527bbd;
      font-weight: 400;
    }
    .admon td:nth-child(1) { width: 6em; }
    .underline {text-decoration: underline}
    .line-through {text-decoration: line-through}
    .exampleblock > .content {
      background: #fffef7;
      border: 1px solid #e0e0dc;
      box-shadow: 0 1px 4px #e0e0dc;
      padding: 0.75em;
      border-radius: 4px;
    }
  '

  introduction '<p>An opinionated AsciiDoctor cheat sheet for authoring HTML, by 
  <a onclick="window.dash.openExternal_(this.href); return false;" href="https://holyjak.cz">Jakub Holý</a></p>'

  
  category do
    id 'Structure'

    
    entry do
      name 'Document header'
      
      html_notes <<-'HTMLEND'
        <div class="literalblock">
<div class="content">
<pre>= Main Header <b class="conum">(1)</b>
Jakub Holý &lt;holyjak@example.com&gt; <b class="conum">(2)</b>
v1.2.3, 2021-09-29: my optional revision remark <b class="conum">(3)</b>
:author: Jakub Holý <b class="conum">(4)</b>
:email: &lt;holyjak@example.com&gt; <b class="conum">(5)</b>
:revnumber: 1.2.3 <b class="conum">(6)</b>
:revdate: 2021-09-29 <b class="conum">(7)</b>
:revremark: my optional revision remark <b class="conum">(8)</b>
<b class="conum">(9)</b></pre>
</div>
</div>
<div class="colist arabic">
<ol>
<li>
<p>Optional document title</p>
</li>
<li>
<p>Optional author line</p>
</li>
<li>
<p>Optional revision info (version, date, remark - each optional); can <em>only</em> be used if there is an author line. See <a href="https://docs.asciidoctor.org/asciidoc/latest/document/revision-information/">revision Information</a></p>
</li>
<li>
<p>An alternative way to set the optional author name; see <a href="https://docs.asciidoctor.org/asciidoc/latest/document/author-information/">author info</a> docs</p>
</li>
<li>
<p>An alternative way to set the optional author email</p>
</li>
<li>
<p>An alternative way to set the optional revision number (no 'v' prefix)</p>
</li>
<li>
<p>An alternative way to set the optional revision date</p>
</li>
<li>
<p>An alternative way to set the optional revision remark</p>
</li>
<li>
<p>Blank line that ends the document header</p>
</li>
</ol>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Attributes'

    
    entry do
      name 'Document attributes'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p>Configure and turn on/off built-in features, built-in asset locations, set &quot;variables&quot; for reuse elsewhere in the document. See <a href="https://docs.asciidoctor.org/asciidoc/latest/attributes/document-attributes/#what-does-defining-a-document-attribute-mean">rules for values</a>.</p>
</div>
<div class="paragraph">
<p>Most document attributes are set right under the main header / document title, some can be (re)set anywhere (e.g. <code>sectnums</code>):</p>
</div>
<div class="literalblock">
<div class="content">
<pre>= Document Title
:sectnums: // turn on a boolean attr
:!sectnums: // turn it off
:imagesdir: ./my/img/subdir/ // built-in attr. with a value
:my-homepage: https://holyjak.cz // a custom attribute

A reference to an attribute such as link:{my-homepage}[my www]
will be replaced with the value automatically.</pre>
</div>
</div>
<div class="paragraph">
<p>See <a href="https://docs.asciidoctor.org/asciidoc/latest/attributes/document-attributes-ref/">Document Attributes Reference</a> for a full list.</p>
</div>
      HTMLEND
    end
    
    entry do
      name 'Element attributes'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p>Override the built-in settings of blocks, macros, or inline elements and add custom settings (e.g. id, CSS classes) by using attribute lists. Attributes are <em>comma-separated</em> and can be <em>positional</em> (come first) and/or <em>named</em>:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>image:path[Image alt text,200,150]
image:path[&quot;Image alt text&quot;,height=150,width=200]</pre>
</div>
</div>
<div class="ulist">
<ul>
<li>
<p>Values can be enclosed in double <code>&quot;</code> or single <code>'</code> <em>quotes</em>; only inside <code>'…​'</code> do normal substitutions (basic formatting etc.) apply</p>
</li>
<li>
<p>Document <em>attribute references</em> such as <code>{some-attr}</code> are replaced with their values</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>For <em>blocks</em> and block elements, put the attributes on the preceding line:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>[square]
* one
* two</pre>
</div>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Section Titles'

    
    entry do
      name 'Section Titles'
      
      command 'sectnumlevels'
      
      command 'sectnums'
      
      command 'discrete'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p>Mark titles with <code>=</code>:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>= Document title (h1)
== Level 1 (h2)
...
====== Level 5 (h6)</pre>
</div>
</div>
<div class="paragraph">
<p>To auto-number sections, turn on <a id="sectnumlevels"></a><a id="sectnums"></a><code>sectnums</code>:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>:sectnums:
:sectnumlevels: 2 <b class="conum">(1)</b>
== Numbered section
:!sectnums:
== Unnumbered again</pre>
</div>
</div>
<div class="colist arabic">
<ol>
<li>
<p>Number section headings at levels 1 and 2. Optional, default: levels 1-3</p>
</li>
</ol>
</div>
<div class="paragraph">
<p>To use a heading where sections are not allowed (e.g. inside a block), set the <a id="discrete"></a><code>[discrete]</code> attribute.</p>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Paragraphs'

    
    entry do
      name 'Paragraphs'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p></p><table><tbody><tr style="vertical-align:top"><td><p></p>

<div class="literalblock">
<div class="title">Paragraphs' source</div>
<div class="content">
<pre>.Optional Title
Just text. Line breaks
ignored. but can be forced +
with a plus.

Another paragraph.

 A literal paragraph is indented</pre>
</div>
</div>
<div class="paragraph">
<p></p></div></td><td><p></p>

<div class="openblock">
<div class="title">Paragraphs rendered</div>
<div class="content">
<div class="paragraph">
<div class="title">Optional Title</div>
<p>Just text. Line breaks
ignored. but can be forced<br>
with a plus.</p>
</div>
<div class="paragraph">
<p>Another paragraph.</p>
</div>
<div class="literalblock">
<div class="content">
<pre>A literal paragraph is indented</pre>
</div>
</div>
</div>
</div>
<div class="paragraph">
<p></p></div></td></tr></tbody></table><p></p>
</div>
<div class="paragraph">
<p>To pass inline text through unchanged to HTML, wrap with three <code>+</code>:</p>
</div>
<div class="literalblock">
<div class="content">
<pre>+++&lt;div id=x&gt;+++</pre>
</div>
</div>
      HTMLEND
    end
    
    entry do
      name 'Assign id and CSS class(es) (a.k.a. roles) to inline text'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p>Roles = CSS classes can be assigned similarly as ID,
see <a href="#//dash_ref/Category/Links+and+anchors">Links and anchors</a> below.<br>
Ex.: <code>[.class.another]#some text#</code>.</p>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Text Formatting'

    
    entry do
      name 'Text Formatting'
      
      command 'apostrophes'
      
      command 'quotes'
      
      command 'superscript'
      
      command 'line-through'
      
      command 'monospace'
      
      command 'italic'
      
      command 'subscript'
      
      command 'highlight'
      
      command 'bold'
      
      command 'underline'
      
      command 'literal'
      
      html_notes <<-'HTMLEND'
        <table class="tableblock frame-all grid-all fit-content">
<colgroup>
<col>
<col>
</colgroup>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="bold"></a><strong>bold</strong></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>*bold*</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="italic"></a><em>italic</em></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>_italic_</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><strong><em>both</em></strong></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>*_both_*</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="monospace"></a><code>mon<strong>os</strong>pace</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>`mon**os**pace`</code> - formatting applies</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="literal"></a><code>li**t**eral monospace</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">`+li**t**eral+` - add <code>+</code> to suppress formatting etc.</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><strong>b</strong>ol<em>d</em> c<code>od</code>e</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">double to stop mid-word: <code>**b**ol__d__ c``od``e</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="highlight"></a><mark>highlight</mark></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>#highlight#</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="underline"></a><span class="underline">underline</span></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>[.underline]#underline#</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="line-through"></a><span class="line-through">line-through</span></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>[.line-through]#line-through#</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><span class="my-class">txt</span></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">assign arbitrary css class: <code>[.my-class]#txt#</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="superscript"></a><sup>super</sup>script</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>^super^script</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="subscript"></a><sub>sub</sub>script</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>~sub~script</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="quotes"></a>“double curved quotes”</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">&quot;`double curved quotes`&quot;</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">‘single curved quotes’</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">'`single curved quotes`'</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="apostrophes"></a>apostrophes’ vs x'</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">apostrophes`' vs x'</p></td>
</tr>
</tbody>
</table>
      HTMLEND
    end
    
  end
  
  category do
    id 'Blocks and admonitions'

    
    entry do
      name 'Admonitions'
      
      command 'TIP'
      
      command 'WARNING'
      
      command 'NOTE'
      
      command 'IMPORTANT'
      
      command 'CAUTION'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p></p><table><tbody><tr style="vertical-align:top"><td><p></p>

<div class="literalblock">
<div class="title">Admonitions' source</div>
<div class="content">
<pre>NOTE: An admonition *paragraph* draws
attention to auxiliary information.

[NOTE]
====
* An admonition *block* may contain
  complex content.
====</pre>
</div>
</div>
<div class="paragraph">
<p></p></div></td><td><p></p>

<div class="openblock">
<div class="title">Admonitions rendered</div>
<div class="content">
<div class="admonitionblock note">
<table>
<tbody><tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
An admonition <strong>paragraph</strong> draws
attention to auxiliary information.
</td>
</tr>
</tbody></table>
</div>
<div class="admonitionblock note">
<table>
<tbody><tr>
<td class="icon">
<div class="title">Note</div>
</td>
<td class="content">
<div class="ulist">
<ul>
<li>
<p>An admonition <strong>block</strong> may contain
complex content.</p>
</li>
</ul>
</div>
</td>
</tr>
</tbody></table>
</div>
</div>
</div>
<div class="paragraph">
<p></p></div></td></tr></tbody></table><p></p>
</div>
<div class="paragraph">
<p>All admonitions: <a id="NOTE"></a>NOTE, <a id="TIP"></a>TIP, <a id="IMPORTANT"></a>IMPORTANT, <a id="WARNING"></a>WARNING, <a id="CAUTION"></a>CAUTION.</p>
</div>
      HTMLEND
    end
    
    entry do
      name 'Blocks'
      
      command 'passthrough'
      
      command 'example'
      
      command 'pass'
      
      command 'sidebar'
      
      command 'open_block'
      
      command 'quote'
      
      command 'source_code'
      
      command 'role'
      
      command 'id'
      
      command 'opts'
      
      command 'options'
      
      html_notes <<-'HTMLEND'
        <div class="literalblock">
<div class="title">General structure of a block:</div>
<div class="content">
<pre>.Optional title
[optional attributes]
&lt;separator (2 or 4 characters)&gt;
&lt;content&gt;
&lt;separator&gt;</pre>
</div>
</div>
<table class="tableblock frame-all grid-all fit-content">
<colgroup>
<col>
<col>
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">block type</th>
<th class="tableblock halign-left valign-top">separator, attributes, comments</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="source_code"></a>source code</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>----</code>; attributes: <code>[source,ruby]</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">source code (markdown)</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="pass"></a><code>```&lt;language&gt; ... ```</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="sidebar"></a>sidebar</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>****</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="example"></a>example</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>====</code>; expandable<sup>1</sup>: <code>[%collapsible]</code>, closable: <code>[%collapsible%open]</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="quote"></a>quote</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>____</code>; attributes: <code>[quote, Author, Source]</code><sup>2</sup></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">quote, alternative</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">&quot;Text in quotes&quot;, on a new line <code>-- Author, Source</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="open_block"></a>open<sup>1</sup></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>--</code> An anonymous container; can masquerade as any other by naming it: <code>[source|...]</code></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a id="passthrough"></a>passthrough</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>++++</code>, pass content unchanged; e.g. to include HTML</p></td>
</tr>
</tbody>
</table>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>The expandable example block and open block may contain other blocks</p>
</li>
<li>
<p>Wrap the quote source in <code>'</code> to enable basic AsciiDoc such as links</p>
</li>
</ol>
</div>
<div class="paragraph">
<p><strong>Common block attributes</strong>: <a id="id"></a><a href="https://docs.asciidoctor.org/asciidoc/latest/attributes/ids/#anchor"><code>id</code></a>
(or <code>#</code>), <a id="role"></a><a href="https://docs.asciidoctor.org/asciidoc/latest/attributes/role/"><code>role</code></a> (or <code>.</code>) = css class,
<a id="options"></a><a id="opts"></a><a href="https://docs.asciidoctor.org/asciidoc/latest/attributes/options/"><code>options</code></a>
(or <code>opts</code> for short or the repeatable <code>%&lt;name&gt;</code>).
Example of all, using the shorthand forms: <code>[quote#roads.movie.class2%fakeOpt, Dr. Emmett Brown]</code>.</p>
</div>
      HTMLEND
    end
    
    entry do
      name 'Source code listing'
      
      html_notes <<-'HTMLEND'
        <div class="literalblock">
<div class="content">
<pre>[source]
----
clojure, SQL     ;  &lt;1&gt;
C-like           // &lt;2&gt;
Python etc.      #  &lt;3&gt;
XML              &lt;!--4--&gt;
# Include from a file, specific lines only (-1 = until the end):
include::filename.txt[lines=7;14..25;30..-1]

# or include regions between tags; also, un-indent:
include::lib/app.rb[tag=mytag,indent=0]
----
&lt;1&gt; callout
&lt;2&gt; callout
&lt;3&gt; callout
&lt;4&gt; callout</pre>
</div>
</div>
<div class="paragraph">
<p>When including regions by tags, mark them using line comments like these:</p>
</div>
<div class="literalblock">
<div class="content">
<pre># tag::mytag[]
...
# end::mytag[]</pre>
</div>
</div>
<div class="paragraph">
<p>See <a href="https://docs.asciidoctor.org/asciidoc/latest/directives/include-with-indent/">include-with-indent</a>, <a href="https://docs.asciidoctor.org/asciidoc/latest/directives/include-tagged-regions/">include-tagged-regions</a> and <a href="https://docs.asciidoctor.org/asciidoc/latest/directives/include-lines/">include-lines</a>.</p>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Lists'

    
    entry do
      name 'Lists'
      
      html_notes <<-'HTMLEND'
        <div class="literalblock">
<div class="title">(Un)ordered lists source</div>
<div class="content">
<pre>* Level 1 item of an unordered list
** Level 2, ... up to 5
   *** Lists can be indented. Leading whitespace isn't significant.
   . Nested level 1 ordered list item
   .. ordered list item 2nd level
+
====
To include complex content, unindent it and
put the list continuation sign `+` on the line
between it and the list item
====
   .. but a literal paragraph does not require a list
      continuation:

   $ echo &quot;it works&quot;

   .. end

[]
. To split a list into 2, put an empty line and a
block attribute line (possibly empty) before the second list</pre>
</div>
</div>
<div class="openblock">
<div class="title">(Un)ordered lists rendered</div>
<div class="content">
<div class="ulist">
<ul>
<li>
<p>Level 1 item of an unordered list</p>
<div class="ulist">
<ul>
<li>
<p>Level 2, …​ up to 5</p>
<div class="ulist">
<ul>
<li>
<p>Lists can be indented. Leading whitespace isn’t significant.</p>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>Nested level 1 ordered list item</p>
<div class="olist loweralpha">
<ol class="loweralpha" type="a">
<li>
<p>ordered list item 2nd level</p>
<div class="exampleblock">
<div class="content">
<div class="paragraph">
<p>To include complex content, unindent it and
put the list continuation sign <code>+</code> on the line
between it and the list item</p>
</div>
</div>
</div>
</li>
<li>
<p>but a literal paragraph does not require a list
continuation:</p>
<div class="literalblock">
<div class="content">
<pre>$ echo &quot;it works&quot;</pre>
</div>
</div>
</li>
<li>
<p>end</p>
</li>
</ol>
</div>
</li>
</ol>
</div>
</li>
</ul>
</div>
</li>
</ul>
</div>
</li>
</ul>
</div>
<div class="olist arabic">
<ol class="arabic">
<li>
<p>To split a list into 2, put an empty line and a
block attribute line (possibly empty) before the second list</p>
</li>
</ol>
</div>
</div>
</div>
<div class="paragraph">
<p></p><table><tbody><tr style="vertical-align:top"><td><p></p>

<div class="literalblock">
<div class="title">Other list types source</div>
<div class="content">
<pre>.Checklist
* [ ] unchecked
* [x] checked

.Definition list
First term:: the definition
can be inline
Second term::
or on a new line

.Q&amp;A is a def. list with
the `qanda` attribute
[qanda]
Question:: Answer

Another question::
Its answer</pre>
</div>
</div>
<div class="paragraph">
<p></p></div></td><td><p></p>

<div class="exampleblock">
<div class="title">Example 1. Other list types rendered</div>
<div class="content">
<div class="ulist checklist">
<div class="title">Checklist</div>
<ul class="checklist">
<li>
<p>❏ unchecked</p>
</li>
<li>
<p>✓ checked</p>
</li>
</ul>
</div>
<div class="dlist">
<div class="title">Definition list</div>
<dl>
<dt class="hdlist1">First term</dt>
<dd>
<p>the definition
can be inline</p>
</dd>
<dt class="hdlist1">Second term</dt>
<dd>
<p>or on a new line</p>
</dd>
</dl>
</div>
<div class="paragraph">
<div class="title">Q&amp;A is a def. list with</div>
<p>the <code>qanda</code> attribute</p>
</div>
<div class="qlist qanda">
<ol>
<li>
<p><em>Question</em></p>
<p>Answer</p>
</li>
<li>
<p><em>Another question</em></p>
<p>Its answer</p>
</li>
</ol>
</div>
</div>
</div>
<div class="paragraph">
<p></p></div></td></tr></tbody></table><p></p>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Links and anchors'

    
    entry do
      name 'Anchors'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p><strong>Block or a section</strong> heading: use a block anchor <code>[[myid]]</code> or the shorthand form <code>[#myid]</code> in the first position of the block attribute list.</p>
</div>
<div class="paragraph">
<p><strong>Inline</strong>, on quoted text using <em>either</em> formatting marks such as <code>*</code> <em>or</em> put <code>#</code> around the text:
<code>[#inline_target]#targeted# txt</code>. Or just insert an empty anchor: <code>[[empty-anchor]]not inside</code>.</p>
</div>
<div class="paragraph">
<p>Anchors can be used anywhere <a href="https://docs.asciidoctor.org/asciidoc/latest/subs/#substitution-groups">where macro substitution applies</a>.</p>
</div>
      HTMLEND
    end
    
    entry do
      name 'Links'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p><strong>Link to an anchor</strong> via <code>&lt;&lt;myid&gt;&gt;</code>, which will use the target text as the label (only works for headings), or <code>&lt;&lt;myid,custom label&gt;&gt;</code>. You can also link directly to a section heading using its text: <code>&lt;&lt;Links&gt;&gt;</code>.</p>
</div>
<table class="tableblock frame-all grid-all fit-content">
<colgroup>
<col>
<col>
</colgroup>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><strong>Links to anchors:</strong></p></td>
<td class="tableblock halign-left valign-top"></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>&lt;&lt;heading-anchor&gt;&gt;</code>, <code>&lt;&lt;inline_target&gt;&gt;</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a href="#heading-anchor">Links</a>, <a href="#inline_target">[inline_target]</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>&lt;&lt;heading-anchor,my label&gt;&gt;</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a href="#heading-anchor">my label</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>&lt;&lt;Links&gt;&gt;</code> - heading text</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a href="#heading-anchor">Links</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><strong>External links:</strong></p></td>
<td class="tableblock halign-left valign-top"></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>http://xy.z</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a href="http://xy.z" class="bare">http://xy.z</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>http://xy.z[label]</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a href="http://xy.z">label</a></p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock"><code>link:/some/path[path only]</code></p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock"><a href="/some/path">path only</a></p></td>
</tr>
</tbody>
</table>
<div class="paragraph">
<p>Beware: Some URLs look like formatting and confuse the parser. To fix, wrap like this <code>link:++the-url++</code> or assign it to an attribute and use that.</p>
</div>
<div class="paragraph">
<p><a href="https://docs.asciidoctor.org/asciidoc/latest/macros/link-macro-ref/">Supported attributes</a>: id, role (= CSS class), title, window (or append <code>^</code> to the label for _blank), opts.</p>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Images'

    
    entry do
      name 'Images'
      
      command 'imagesdir'
      
      html_notes <<-'HTMLEND'
        <div class="paragraph">
<p>Block image: <code>image::&lt;path|url&gt;[&lt;attributes&gt;]</code> (prepend a <code>.block title</code> line for a caption)</p>
</div>
<div class="paragraph">
<p>Inline image: same as block image, but single <code>:</code></p>
</div>
<div class="paragraph">
<p>Positional attributes: <code>[alt, width, height]</code>. W/h are numbers in px or %: 150 or 50%.</p>
</div>
<div class="paragraph">
<p>Named attributes (<sup>1</sup> applies only to block images):</p>
</div>
<div class="ulist">
<ul>
<li>
<p><a href="https://docs.asciidoctor.org/asciidoc/latest/macros/image-position/">Positioning</a>: align<sup>1</sup>=left|center|right, float=left|right (adds CSS style with <code>float</code>), role (built-in classes: left, right, text-left, text-right, text-center; note: <code>.role</code> shorthand not supported)</p>
</li>
<li>
<p>Add a frame: <code>role=&quot;thumb&quot;</code> (as thumbnail)</p>
</li>
<li>
<p>link</p>
</li>
</ul>
</div>
<div class="paragraph">
<p>Note: The document attribute <a id="imagesdir"></a><code>imagesdir</code> (default: empty) is automatically prepended to all relative paths.</p>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Tables'

    
    entry do
      name 'Tables'
      
      command 'autowidth'
      
      html_notes <<-'HTMLEND'
        <div class="literalblock">
<div class="title">Table source</div>
<div class="content">
<pre>[cols=&quot;20,80&quot;]
|===
| Country | City

| Norway  | Oslo
| Czechia | Ostrava

| footer  | after empty line
|===</pre>
</div>
</div>
<div class="exampleblock">
<div class="title">Example 2. Table rendered</div>
<div class="content">
<table class="tableblock frame-all grid-all stretch">
<colgroup>
<col style="width: 20%;">
<col style="width: 80%;">
</colgroup>
<thead>
<tr>
<th class="tableblock halign-left valign-top">Country</th>
<th class="tableblock halign-left valign-top">City</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Norway</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Oslo</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">Czechia</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">Ostrava</p></td>
</tr>
<tr>
<td class="tableblock halign-left valign-top"><p class="tableblock">footer</p></td>
<td class="tableblock halign-left valign-top"><p class="tableblock">after empty line</p></td>
</tr>
</tbody>
</table>
</div>
</div>
<div class="ulist">
<ul>
<li>
<p>Make first line header by appending an empty line</p>
</li>
<li>
<p>Options include <a id="autowidth"></a><code>%autowidth</code></p>
</li>
<li>
<p>See <a href="https://docs.asciidoctor.org/asciidoc/latest/tables/add-columns/">sizing, alignment via cols</a>, <a href="https://docs.asciidoctor.org/asciidoc/latest/tables/data-format/">CSV data</a> etc.</p>
</li>
</ul>
</div>
      HTMLEND
    end
    
  end
  
  category do
    id 'Extra'

    
    entry do
      name 'Extra'
      
      command 'footnote'
      
      command 'appendix'
      
      command 'icons'
      
      command 'hr'
      
      command 'escape'
      
      command 'substitutions'
      
      command 'comment'
      
      command 'macro'
      
      html_notes <<-'HTMLEND'
        <div class="ulist">
<ul>
<li>
<p><a id="comment"></a>Comments: <code>// comment here</code></p>
</li>
<li>
<p><a id="macro"></a>Macros: block (<code>::</code>) or inline (<code>:</code>): <code>&lt;macro name&gt;::&lt;target&gt;[&lt;attrs&gt;]</code></p>
</li>
<li>
<p><a id="escape"></a><a href="https://docs.asciidoctor.org/asciidoc/latest/pass/pass-macro/">Escape</a> by prepending <code>\</code> or wrapping with <code>+++...+++</code> or use the pass inline macro <code>pass:[whatever]</code></p>
</li>
<li>
<p><a id="hr"></a><code>'''</code> ⇒ <code>&lt;hr&gt;</code></p>
</li>
<li>
<p><a id="footnote"></a>Footnote: <code>footnote:&lt;optional id&gt;[text]</code></p>
</li>
<li>
<p><a id="appendix"></a>Appendix: prepend a line with <code>[appendix]</code></p>
</li>
<li>
<p><a id="icons"></a>How to <a href="https://docs.asciidoctor.org/asciidoc/latest/macros/icons/">enable icons</a> for admonitions, callouts, and the icon macro</p>
</li>
<li>
<p><a id="substitutions"></a><a href="https://docs.asciidoctor.org/asciidoc/latest/subs/substitutions/">Substitutions, where they apply</a>; types: special char. (&lt;, &gt;, &amp; → <code>&amp;lt;</code> etc.), quotes, attribute <code>{references}</code>, replacements (e.g. <code>(R), &amp;euro;, &amp;#x2020;</code> ⇒ ®, €, †; Unicode escape sequence yet unsupported), macros, post-replacements (the line break char. <code>+</code>)</p>
</li>
</ul>
</div>
      HTMLEND
    end
    
  end
  

  notes '<a onclick="window.dash.openExternal_(this.href); return false;" href=\'https://github.com/holyjak/dash-asciidoc-cheatsheet\'>Open cheat sheet source</a>'
end
