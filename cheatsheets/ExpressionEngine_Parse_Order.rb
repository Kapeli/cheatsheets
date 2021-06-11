cheatsheet do
  title 'ExpressionEngine Parse Order'
  docset_file_name 'ExpressionEngine_Parse_Order'
  keyword 'parse'
  source_url 'http://cheat.kapeli.com'
  style '
  .alpha_list { list-style: upper-alpha }
  .alpha_list > li::marker {
    font-weight: bold;
  }
  sup { font-weight: bold }
  '

  introduction <<-INTRO
In what order does EE parse variables and tags in its templates?

1. Read URI, pick template (via an intelligent and complex process)
2. Get template info, check permissions & authentication
3. Get template<sup>A</sup> (from file if exists) Hook Here: __*template&#95;fetch\_template*__
4. “Static” templates are served “as-is”; ditto for templates that EE knows COULD be static... very efficient!
INTRO

  category do
    id 'Quick Reference Guide'

    header 'Order'
    header 'Tag'
    header 'Description'

    entry do
      td_notes '1'
      td_notes "
        `{logged_in_*}` `{template_*}`<sup>D</sup>\n\n
        `{is_*_request}` `{site_*}`\n\n
        `{last_segment}` `{current_url}`\n\n
        `{current_path}` `{current_query_string}`\n\n`{webmaster_path}`
      "
      td_notes "**site** variables *(template partials, global\_vars)*<sup>ABC</sup>"
      index_name 'site variables'
      extra_index_name '1'
    end

    entry do
      td_notes '2'
      td_notes '`{if in_group()}`'
      td_notes 'conditionals'
      index_name 'conditionals'
      extra_index_name '2'
    end

    entry do
      td_notes '3'
      td_notes '`{segment_*}`'
      td_notes 'segment variables'
      index_name 'segment variables'
      extra_index_name '3'
    end

    entry do
      td_notes '4'
      td_notes '`{segment:* }`'
      td_notes 'template route segment variables'
      index_name 'template route segment variables'
      extra_index_name '4'
    end

    entry do
      td_notes '5'
      td_notes '`{embed:}`'
      td_notes 'variables _(only if template is called as an embed)_'
      index_name 'embed variables'
      extra_index_name '5'
    end

    entry do
      td_notes '6'
      td_notes '`{layout:}`'
      td_notes 'variables _(only if it is called by a layout tag)_'
      index_name 'layout variables'
      extra_index_name '6'
    end

    entry do
      td_notes '7'
      td_notes '`{errors}{/errors}`'
      td_notes 'error conditionals'
      index_name 'error conditionals'
      extra_index_name '7'
    end

    entry do
      td_notes '8'
      td_notes '`{current_time format="{DATE_ATOM}"}`'
      td_notes 'date string constants'
      index_name 'date string constants'
      extra_index_name '8'
    end

    entry do
      td_notes '9'
      td_notes "`{template_edit_date}`\n\n`{current_time}`\n\n`{variable_time}`"
      td_notes 'date variables'
      index_name 'date variables'
      extra_index_name '9'
    end

    entry do
      td_notes '10'
      td_notes '`{consent:}`'
      td_notes 'consent variables'
      index_name 'consent variables'
      extra_index_name '10'
    end

    entry do
      td_notes '11'
      td_notes '**Caching...**'
      td_notes 'If template is cached, skip ahead to #18'
      index_name 'caching (if not exists)'
      extra_index_name '11'
    end

    entry do
      td_notes '12'
      td_notes '`<?php ?>`'
      td_notes 'on input'
      index_name 'php input'
      extra_index_name '12'
    end

    entry do
      td_notes '13'
      td_notes '`{if ...}{/if}`'
      td_notes 'conditionals _(if variables are available)_<sup>F</sup>'
      index_name 'conditionals'
      extra_index_name '13'
    end

    entry do
      td_notes '14'
      td_notes '`{preload_replace:}`'
      td_notes 'preload replace variables'
      index_name 'preload replace'
      extra_index_name '14'
    end

    entry do
      td_notes '15'
      td_notes '`{exp:}`'
      td_notes 'extension tags - outer before inner<sup>AFGHIJ</sup>'
      index_name 'extension tags'
      extra_index_name '15'
    end

    entry do
      td_notes '16'
      td_notes '`<?php ?>`'
      td_notes 'on output'
      index_name 'php output'
      extra_index_name '16'
    end

    entry do
      td_notes '17'
      td_notes '**Caching...**'
      td_notes 'if needed, write the mostly parsed template to cache'
      index_name 'caching (if needed)'
      extra_index_name '17'
    end

    entry do
      td_notes '18'
      td_notes '`{if ...}{/if}`'
      td_notes 'Conditionals _(all remaining)_<sup>FK</sup>'
      index_name 'remaining conditionals'
      extra_index_name '18'
    end

    entry do
      td_notes '19'
      td_notes '`{layout=}`'
      td_notes 'process the associated template _(this starts a new loop)_'
      index_name 'associated template layouts'
      extra_index_name '19'
    end

    entry do
      td_notes '20'
      td_notes '`{embed=}`'
      td_notes 'tags - process all _(each embed starts a new loop)_'
      index_name 'all embeds'
      extra_index_name '20'
    end

    entry do
      td_notes '21'
      td_notes '`{layout:}`'
      td_notes 'Clean up unused tags. Hook here: __*template&#95;post\_parse*__'
      index_name 'layouts cleanup'
      extra_index_name '21'
    end

    entry do
      td_notes '22'
      td_notes '`{redirect=}`'
      td_notes 'Trigger the first remaining tag<sup>JL</sup>'
      index_name 'redirects triggered'
      extra_index_name '22'
    end

    entry do
      td_notes '23'
      td_notes '`site` and `global`'
      td_notes 'template variables _(no conditionals allowed here)_<sup>M</sup>'
      index_name 'site and global vars'
      extra_index_name '23'
    end

    entry do
      td_notes '24'
      td_notes "
      `{stylesheet=}` `{encode=}`\n\n
      `{path=}` `{route=}`
      "
      td_notes 'tag processing'
      index_name 'variables processing'
      extra_index_name '24'
    end

    entry do
      td_notes '25'
      td_notes '**CSRF**'
      td_notes 'Add security hashes and **ACT** IDs'
      index_name 'security hashes'
      extra_index_name '25'
    end

    entry do
      td_notes '26'
      td_notes '**HTML output cleanup**'
      td_notes 'Remove any lingering EE comments<sup>A</sup>'
      index_name 'cleanup output'
      extra_index_name '26'
    end

  end

  notes <<-"END"
<ol class='alpha_list'>
    <li>Any EE comments are removed at this step</li>
    <li>Template Partials (aka snippets aka global_vars) will override variables with matching names, but everything is parsed at once, meaning one variable’s output that contains the name of another will not parse<br>
      <b>TL;DR:</b> You can’t nest Template Partials.</li>
    <li>global_vars ≠ Global Template Variables i.e. there’s overlap but the two are not exactly the same</li>
    <li>But not <code>{template_edit_date}</code> because it might need to be date formatted by step 8</li>
    <li>It’s unclear how <code>{if in_group()}</code> works with “roles”</li>
    <li>Conditionals will get parsed here if all their variables exist</li>
    <li>Plugins parse inside to outside unless you use parse=”inward”</li>
    <li><code>{exp:}</code> tags in the parameters of another tag get parsed first in most cases</li>
    <li><code>{search:}</code> tags on any search results page can also be used as a parameter of an <code>{exp:}</code> tag</li>
    <li><code>{redirect=}</code> in any triggered <code>{if no_results}</code> tag pair fires immediately when it is parsed</li>
    <li>This step is still called “advanced conditionals” in the code, but it is not just those specifically</li>
    <li>We would prefer to redirect before parsing all sub-templates, but we are sure there is a reason. Maybe so that you can redirect from an embed that is positioned in the main template ahead of another redirect?</li>
    <li>This step now includes parsing the output of entry fields, which can mean variations in final output from earlier versions of EE</li>
</ol>

**Version 1.0.1 (2021/04/28)**, based on EE v6.0.3 **/system/ee/legacy/libraries/Template.php**
\n[ExpressionEngine Parse Order](https://hopstudios.com/parse_order) prepared by Travis Smith & Rowan Sentesy of Hop Studios ([@hopstudios](https://twitter.com/hopstudios)) for #EECONF2021
  END
end
