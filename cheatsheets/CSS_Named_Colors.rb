cheatsheet do
  title 'CSS Named Colors'
  docset_file_name 'CSS_Named_Colors'
  keyword 'color'
  source_url 'cheat.kapeli.com'

  style '
  .td_notes p {
    font-size: 1.2em;
    margin-top:-4px;
  }
  '

  class CheatsheetUtil
    def self.script_generate(code)
      return "<script type=\"text/javascript\" id=\"#{code}\">
                 var code = \"#{code}\";
                 var script = document.getElementById(code);
                 if(code.indexOf('-') != -1)
                 { 
                   // just a hack to get duplicates to work
                   code = code.substr(0, code.indexOf('-'));
                 }
                 script.parentElement.parentElement.style.backgroundColor = \"#\"+code;
                 script.parentElement.parentElement.style.width = \"50px\";
                 script.parentElement.parentElement.className = \"dash-ignore-dark-mode\";
              </script>"
    end
  end

  category do
    id 'Standard Colors'

    entry do
      td_command '#00FFFF'
      td_notes CheatsheetUtil.script_generate('00FFFF')
      td_notes 'Aqua'
      index_name 'Aqua'
    end

    entry do
      td_command '#000000'
      td_notes CheatsheetUtil.script_generate('000000')
      td_notes 'Black'
      index_name 'Black'
    end

    entry do
      td_command '#0000FF'
      td_notes CheatsheetUtil.script_generate('0000FF')
      td_notes 'Blue'
      index_name 'Blue'
    end

    entry do
      td_command '#FF00FF'
      td_notes CheatsheetUtil.script_generate('FF00FF')
      td_notes 'Fuchsia'
      index_name 'Fuchsia'
    end

    entry do
      td_command '#808080'
      td_notes CheatsheetUtil.script_generate('808080')
      td_notes 'Gray'
      index_name 'Gray'
    end

    entry do
      td_command '#808080'
      td_notes CheatsheetUtil.script_generate('808080-2')
      td_notes 'Grey'
      index_name 'Grey'
    end

    entry do
      td_command '#008000'
      td_notes CheatsheetUtil.script_generate('008000')
      td_notes 'Green'
      index_name 'Green'
    end

    entry do
      td_command '#00FF00'
      td_notes CheatsheetUtil.script_generate('00FF00')
      td_notes 'Lime'
      index_name 'Lime'
    end

    entry do
      td_command '#800000'
      td_notes CheatsheetUtil.script_generate('800000')
      td_notes 'Maroon'
      index_name 'Maroon'
    end

    entry do
      td_command '#000080'
      td_notes CheatsheetUtil.script_generate('000080')
      td_notes 'Navy'
      index_name 'Navy'
    end

    entry do
      td_command '#808000'
      td_notes CheatsheetUtil.script_generate('808000')
      td_notes 'Olive'
      index_name 'Olive'
    end

    entry do
      td_command '#FFA500'
      td_notes CheatsheetUtil.script_generate('FFA500')
      td_notes 'Orange'
      index_name 'Orange'
    end

    entry do
      td_command '#800080'
      td_notes CheatsheetUtil.script_generate('800080')
      td_notes 'Purple'
      index_name 'Purple'
    end

    entry do
      td_command '#FF0000'
      td_notes CheatsheetUtil.script_generate('FF0000')
      td_notes 'Red'
      index_name 'Red'
    end

    entry do
      td_command '#C0C0C0'
      td_notes CheatsheetUtil.script_generate('C0C0C0')
      td_notes 'Silver'
      index_name 'Silver'
    end

    entry do
      td_command '#008080'
      td_notes CheatsheetUtil.script_generate('008080')
      td_notes 'Teal'
      index_name 'Teal'
    end

    entry do
      td_command '#FFFFFF'
      td_notes CheatsheetUtil.script_generate('FFFFFF')
      td_notes 'White'
      index_name 'White'
    end

    entry do
      td_command '#FFFF00'
      td_notes CheatsheetUtil.script_generate('FFFF00')
      td_notes 'Yellow'
      index_name 'Yellow'
    end
  end

  category do
    id 'Extended Colors'

    entry do
      td_command '#F0F8FF'
      td_notes CheatsheetUtil.script_generate('F0F8FF')
      td_notes 'AliceBlue'
      index_name 'AliceBlue'
    end

    entry do
      td_command '#FAEBD7'
      td_notes CheatsheetUtil.script_generate('FAEBD7')
      td_notes 'AntiqueWhite'
      index_name 'AntiqueWhite'
    end

    entry do
      td_command '#7FFFD4'
      td_notes CheatsheetUtil.script_generate('7FFFD4')
      td_notes 'Aquamarine'
      index_name 'Aquamarine'
    end

    entry do
      td_command '#F0FFFF'
      td_notes CheatsheetUtil.script_generate('F0FFFF')
      td_notes 'Azure'
      index_name 'Azure'
    end

    entry do
      td_command '#F5F5DC'
      td_notes CheatsheetUtil.script_generate('F5F5DC')
      td_notes 'Beige'
      index_name 'Beige'
    end

    entry do
      td_command '#FFE4C4'
      td_notes CheatsheetUtil.script_generate('FFE4C4')
      td_notes 'Bisque'
      index_name 'Bisque'
    end

    entry do
      td_command '#FFEBCD'
      td_notes CheatsheetUtil.script_generate('FFEBCD')
      td_notes 'BlanchedAlmond'
      index_name 'BlanchedAlmond'
    end

    entry do
      td_command '#8A2BE2'
      td_notes CheatsheetUtil.script_generate('8A2BE2')
      td_notes 'BlueViolet'
      index_name 'BlueViolet'
    end

    entry do
      td_command '#A52A2A'
      td_notes CheatsheetUtil.script_generate('A52A2A')
      td_notes 'Brown'
      index_name 'Brown'
    end

    entry do
      td_command '#DEB887'
      td_notes CheatsheetUtil.script_generate('DEB887')
      td_notes 'BurlyWood'
      index_name 'BurlyWood'
    end

    entry do
      td_command '#5F9EA0'
      td_notes CheatsheetUtil.script_generate('5F9EA0')
      td_notes 'CadetBlue'
      index_name 'CadetBlue'
    end

    entry do
      td_command '#7FFF00'
      td_notes CheatsheetUtil.script_generate('7FFF00')
      td_notes 'Chartreuse'
      index_name 'Chartreuse'
    end

    entry do
      td_command '#D2691E'
      td_notes CheatsheetUtil.script_generate('D2691E')
      td_notes 'Chocolate'
      index_name 'Chocolate'
    end

    entry do
      td_command '#FF7F50'
      td_notes CheatsheetUtil.script_generate('FF7F50')
      td_notes 'Coral'
      index_name 'Coral'
    end

    entry do
      td_command '#6495ED'
      td_notes CheatsheetUtil.script_generate('6495ED')
      td_notes 'CornflowerBlue'
      index_name 'CornflowerBlue'
    end

    entry do
      td_command '#FFF8DC'
      td_notes CheatsheetUtil.script_generate('FFF8DC')
      td_notes 'Cornsilk'
      index_name 'Cornsilk'
    end

    entry do
      td_command '#DC143C'
      td_notes CheatsheetUtil.script_generate('DC143C')
      td_notes 'Crimson'
      index_name 'Crimson'
    end

    entry do
      td_command '#00FFFF'
      td_notes CheatsheetUtil.script_generate('00FFFF-2')
      td_notes 'Cyan'
      index_name 'Cyan'
    end

    entry do
      td_command '#00008B'
      td_notes CheatsheetUtil.script_generate('00008B')
      td_notes 'DarkBlue'
      index_name 'DarkBlue'
    end

    entry do
      td_command '#008B8B'
      td_notes CheatsheetUtil.script_generate('008B8B')
      td_notes 'DarkCyan'
      index_name 'DarkCyan'
    end

    entry do
      td_command '#B8860B'
      td_notes CheatsheetUtil.script_generate('B8860B')
      td_notes 'DarkGoldenRod'
      index_name 'DarkGoldenRod'
    end

    entry do
      td_command '#A9A9A9'
      td_notes CheatsheetUtil.script_generate('A9A9A9')
      td_notes 'DarkGray'
      index_name 'DarkGray'
    end

    entry do
        td_command '#A9A9A9'
        td_notes CheatsheetUtil.script_generate('A9A9A9-2')
        td_notes 'DarkGrey'
        index_name 'DarkGrey'
    end

    entry do
      td_command '#006400'
      td_notes CheatsheetUtil.script_generate('006400')
      td_notes 'DarkGreen'
      index_name 'DarkGreen'
    end

    entry do
      td_command '#BDB76B'
      td_notes CheatsheetUtil.script_generate('BDB76B')
      td_notes 'DarkKhaki'
      index_name 'DarkKhaki'
    end

    entry do
      td_command '#8B008B'
      td_notes CheatsheetUtil.script_generate('8B008B')
      td_notes 'DarkMagenta'
      index_name 'DarkMagenta'
    end

    entry do
      td_command '#556B2F'
      td_notes CheatsheetUtil.script_generate('556B2F')
      td_notes 'DarkOliveGreen'
      index_name 'DarkOliveGreen'
    end

    entry do
      td_command '#FF8C00'
      td_notes CheatsheetUtil.script_generate('FF8C00')
      td_notes 'DarkOrange'
      index_name 'DarkOrange'
    end

    entry do
      td_command '#9932CC'
      td_notes CheatsheetUtil.script_generate('9932CC')
      td_notes 'DarkOrchid'
      index_name 'DarkOrchid'
    end

    entry do
      td_command '#8B0000'
      td_notes CheatsheetUtil.script_generate('8B0000')
      td_notes 'DarkRed'
      index_name 'DarkRed'
    end

    entry do
      td_command '#E9967A'
      td_notes CheatsheetUtil.script_generate('E9967A')
      td_notes 'DarkSalmon'
      index_name 'DarkSalmon'
    end

    entry do
      td_command '#8FBC8F'
      td_notes CheatsheetUtil.script_generate('8FBC8F')
      td_notes 'DarkSeaGreen'
      index_name 'DarkSeaGreen'
    end

    entry do
      td_command '#483D8B'
      td_notes CheatsheetUtil.script_generate('483D8B')
      td_notes 'DarkSlateBlue'
      index_name 'DarkSlateBlue'
    end

    entry do
      td_command '#2F4F4F'
      td_notes CheatsheetUtil.script_generate('2F4F4F')
      td_notes 'DarkSlateGray'
      index_name 'DarkSlateGray'
    end

    entry do
        td_command '#2F4F4F'
        td_notes CheatsheetUtil.script_generate('2F4F4F-2')
        td_notes 'DarkSlateGrey'
        index_name 'DarkSlateGrey'
    end

    entry do
      td_command '#00CED1'
      td_notes CheatsheetUtil.script_generate('00CED1')
      td_notes 'DarkTurquoise'
      index_name 'DarkTurquoise'
    end

    entry do
      td_command '#9400D3'
      td_notes CheatsheetUtil.script_generate('9400D3')
      td_notes 'DarkViolet'
      index_name 'DarkViolet'
    end

    entry do
      td_command '#FF1493'
      td_notes CheatsheetUtil.script_generate('FF1493')
      td_notes 'DeepPink'
      index_name 'DeepPink'
    end

    entry do
      td_command '#00BFFF'
      td_notes CheatsheetUtil.script_generate('00BFFF')
      td_notes 'DeepSkyBlue'
      index_name 'DeepSkyBlue'
    end

    entry do
      td_command '#696969'
      td_notes CheatsheetUtil.script_generate('696969')
      td_notes 'DimGray'
      index_name 'DimGray'
    end

    entry do
        td_command '#696969'
        td_notes CheatsheetUtil.script_generate('696969-2')
        td_notes 'DimGrey'
        index_name 'DimGrey'
    end

    entry do
      td_command '#1E90FF'
      td_notes CheatsheetUtil.script_generate('1E90FF')
      td_notes 'DodgerBlue'
      index_name 'DodgerBlue'
    end

    entry do
      td_command '#B22222'
      td_notes CheatsheetUtil.script_generate('B22222')
      td_notes 'FireBrick'
      index_name 'FireBrick'
    end

    entry do
      td_command '#FFFAF0'
      td_notes CheatsheetUtil.script_generate('FFFAF0')
      td_notes 'FloralWhite'
      index_name 'FloralWhite'
    end

    entry do
      td_command '#228B22'
      td_notes CheatsheetUtil.script_generate('228B22')
      td_notes 'ForestGreen'
      index_name 'ForestGreen'
    end

    entry do
      td_command '#DCDCDC'
      td_notes CheatsheetUtil.script_generate('DCDCDC')
      td_notes 'Gainsboro'
      index_name 'Gainsboro'
    end

    entry do
      td_command '#F8F8FF'
      td_notes CheatsheetUtil.script_generate('F8F8FF')
      td_notes 'GhostWhite'
      index_name 'GhostWhite'
    end

    entry do
      td_command '#FFD700'
      td_notes CheatsheetUtil.script_generate('FFD700')
      td_notes 'Gold'
      index_name 'Gold'
    end

    entry do
      td_command '#DAA520'
      td_notes CheatsheetUtil.script_generate('DAA520')
      td_notes 'GoldenRod'
      index_name 'GoldenRod'
    end

    entry do
      td_command '#ADFF2F'
      td_notes CheatsheetUtil.script_generate('ADFF2F')
      td_notes 'GreenYellow'
      index_name 'GreenYellow'
    end

    entry do
      td_command '#F0FFF0'
      td_notes CheatsheetUtil.script_generate('F0FFF0')
      td_notes 'HoneyDew'
      index_name 'HoneyDew'
    end

    entry do
      td_command '#FF69B4'
      td_notes CheatsheetUtil.script_generate('FF69B4')
      td_notes 'HotPink'
      index_name 'HotPink'
    end

    entry do
      td_command '#CD5C5C'
      td_notes CheatsheetUtil.script_generate('CD5C5C')
      td_notes 'IndianRed '
      index_name 'IndianRed '
    end

    entry do
      td_command '#4B0082'
      td_notes CheatsheetUtil.script_generate('4B0082')
      td_notes 'Indigo '
      index_name 'Indigo '
    end

    entry do
      td_command '#FFFFF0'
      td_notes CheatsheetUtil.script_generate('FFFFF0')
      td_notes 'Ivory'
      index_name 'Ivory'
    end

    entry do
      td_command '#F0E68C'
      td_notes CheatsheetUtil.script_generate('F0E68C')
      td_notes 'Khaki'
      index_name 'Khaki'
    end

    entry do
      td_command '#E6E6FA'
      td_notes CheatsheetUtil.script_generate('E6E6FA')
      td_notes 'Lavender'
      index_name 'Lavender'
    end

    entry do
      td_command '#FFF0F5'
      td_notes CheatsheetUtil.script_generate('FFF0F5')
      td_notes 'LavenderBlush'
      index_name 'LavenderBlush'
    end

    entry do
      td_command '#7CFC00'
      td_notes CheatsheetUtil.script_generate('7CFC00')
      td_notes 'LawnGreen'
      index_name 'LawnGreen'
    end

    entry do
      td_command '#FFFACD'
      td_notes CheatsheetUtil.script_generate('FFFACD')
      td_notes 'LemonChiffon'
      index_name 'LemonChiffon'
    end

    entry do
      td_command '#ADD8E6'
      td_notes CheatsheetUtil.script_generate('ADD8E6')
      td_notes 'LightBlue'
      index_name 'LightBlue'
    end

    entry do
      td_command '#F08080'
      td_notes CheatsheetUtil.script_generate('F08080')
      td_notes 'LightCoral'
      index_name 'LightCoral'
    end

    entry do
      td_command '#E0FFFF'
      td_notes CheatsheetUtil.script_generate('E0FFFF')
      td_notes 'LightCyan'
      index_name 'LightCyan'
    end

    entry do
      td_command '#FAFAD2'
      td_notes CheatsheetUtil.script_generate('FAFAD2')
      td_notes 'LightGoldenRodYellow'
      index_name 'LightGoldenRodYellow'
    end

    entry do
      td_command '#D3D3D3'
      td_notes CheatsheetUtil.script_generate('D3D3D3')
      td_notes 'LightGray'
      index_name 'LightGray'
    end

    entry do
      td_command '#D3D3D3'
      td_notes CheatsheetUtil.script_generate('D3D3D3-2')
      td_notes 'LightGrey'
      index_name 'LightGrey'
    end

    entry do
      td_command '#90EE90'
      td_notes CheatsheetUtil.script_generate('90EE90')
      td_notes 'LightGreen'
      index_name 'LightGreen'
    end

    entry do
      td_command '#FFB6C1'
      td_notes CheatsheetUtil.script_generate('FFB6C1')
      td_notes 'LightPink'
      index_name 'LightPink'
    end

    entry do
      td_command '#FFA07A'
      td_notes CheatsheetUtil.script_generate('FFA07A')
      td_notes 'LightSalmon'
      index_name 'LightSalmon'
    end

    entry do
      td_command '#20B2AA'
      td_notes CheatsheetUtil.script_generate('20B2AA')
      td_notes 'LightSeaGreen'
      index_name 'LightSeaGreen'
    end

    entry do
      td_command '#87CEFA'
      td_notes CheatsheetUtil.script_generate('87CEFA')
      td_notes 'LightSkyBlue'
      index_name 'LightSkyBlue'
    end

    entry do
      td_command '#778899'
      td_notes CheatsheetUtil.script_generate('778899')
      td_notes 'LightSlateGray'
      index_name 'LightSlateGray'
    end

    entry do
        td_command '#778899'
        td_notes CheatsheetUtil.script_generate('778899-2')
        td_notes 'LightSlateGrey'
        index_name 'LightSlateGrey'
    end

    entry do
      td_command '#B0C4DE'
      td_notes CheatsheetUtil.script_generate('B0C4DE')
      td_notes 'LightSteelBlue'
      index_name 'LightSteelBlue'
    end

    entry do
      td_command '#FFFFE0'
      td_notes CheatsheetUtil.script_generate('FFFFE0')
      td_notes 'LightYellow'
      index_name 'LightYellow'
    end

    entry do
      td_command '#32CD32'
      td_notes CheatsheetUtil.script_generate('32CD32')
      td_notes 'LimeGreen'
      index_name 'LimeGreen'
    end

    entry do
      td_command '#FAF0E6'
      td_notes CheatsheetUtil.script_generate('FAF0E6')
      td_notes 'Linen'
      index_name 'Linen'
    end

    entry do
      td_command '#FF00FF'
      td_notes CheatsheetUtil.script_generate('FF00FF-2')
      td_notes 'Magenta'
      index_name 'Magenta'
    end

    entry do
      td_command '#66CDAA'
      td_notes CheatsheetUtil.script_generate('66CDAA')
      td_notes 'MediumAquaMarine'
      index_name 'MediumAquaMarine'
    end

    entry do
      td_command '#0000CD'
      td_notes CheatsheetUtil.script_generate('0000CD')
      td_notes 'MediumBlue'
      index_name 'MediumBlue'
    end

    entry do
      td_command '#BA55D3'
      td_notes CheatsheetUtil.script_generate('BA55D3')
      td_notes 'MediumOrchid'
      index_name 'MediumOrchid'
    end

    entry do
      td_command '#9370DB'
      td_notes CheatsheetUtil.script_generate('9370DB')
      td_notes 'MediumPurple'
      index_name 'MediumPurple'
    end

    entry do
      td_command '#3CB371'
      td_notes CheatsheetUtil.script_generate('3CB371')
      td_notes 'MediumSeaGreen'
      index_name 'MediumSeaGreen'
    end

    entry do
      td_command '#7B68EE'
      td_notes CheatsheetUtil.script_generate('7B68EE')
      td_notes 'MediumSlateBlue'
      index_name 'MediumSlateBlue'
    end

    entry do
      td_command '#00FA9A'
      td_notes CheatsheetUtil.script_generate('00FA9A')
      td_notes 'MediumSpringGreen'
      index_name 'MediumSpringGreen'
    end

    entry do
      td_command '#48D1CC'
      td_notes CheatsheetUtil.script_generate('48D1CC')
      td_notes 'MediumTurquoise'
      index_name 'MediumTurquoise'
    end

    entry do
      td_command '#C71585'
      td_notes CheatsheetUtil.script_generate('C71585')
      td_notes 'MediumVioletRed'
      index_name 'MediumVioletRed'
    end

    entry do
      td_command '#191970'
      td_notes CheatsheetUtil.script_generate('191970')
      td_notes 'MidnightBlue'
      index_name 'MidnightBlue'
    end

    entry do
      td_command '#F5FFFA'
      td_notes CheatsheetUtil.script_generate('F5FFFA')
      td_notes 'MintCream'
      index_name 'MintCream'
    end

    entry do
      td_command '#FFE4E1'
      td_notes CheatsheetUtil.script_generate('FFE4E1')
      td_notes 'MistyRose'
      index_name 'MistyRose'
    end

    entry do
      td_command '#FFE4B5'
      td_notes CheatsheetUtil.script_generate('FFE4B5')
      td_notes 'Moccasin'
      index_name 'Moccasin'
    end

    entry do
      td_command '#FFDEAD'
      td_notes CheatsheetUtil.script_generate('FFDEAD')
      td_notes 'NavajoWhite'
      index_name 'NavajoWhite'
    end

    entry do
      td_command '#FDF5E6'
      td_notes CheatsheetUtil.script_generate('FDF5E6')
      td_notes 'OldLace'
      index_name 'OldLace'
    end

    entry do
      td_command '#6B8E23'
      td_notes CheatsheetUtil.script_generate('6B8E23')
      td_notes 'OliveDrab'
      index_name 'OliveDrab'
    end

    entry do
      td_command '#FF4500'
      td_notes CheatsheetUtil.script_generate('FF4500')
      td_notes 'OrangeRed'
      index_name 'OrangeRed'
    end

    entry do
      td_command '#DA70D6'
      td_notes CheatsheetUtil.script_generate('DA70D6')
      td_notes 'Orchid'
      index_name 'Orchid'
    end

    entry do
      td_command '#EEE8AA'
      td_notes CheatsheetUtil.script_generate('EEE8AA')
      td_notes 'PaleGoldenRod'
      index_name 'PaleGoldenRod'
    end

    entry do
      td_command '#98FB98'
      td_notes CheatsheetUtil.script_generate('98FB98')
      td_notes 'PaleGreen'
      index_name 'PaleGreen'
    end

    entry do
      td_command '#AFEEEE'
      td_notes CheatsheetUtil.script_generate('AFEEEE')
      td_notes 'PaleTurquoise'
      index_name 'PaleTurquoise'
    end

    entry do
      td_command '#DB7093'
      td_notes CheatsheetUtil.script_generate('DB7093')
      td_notes 'PaleVioletRed'
      index_name 'PaleVioletRed'
    end

    entry do
      td_command '#FFEFD5'
      td_notes CheatsheetUtil.script_generate('FFEFD5')
      td_notes 'PapayaWhip'
      index_name 'PapayaWhip'
    end

    entry do
      td_command '#FFDAB9'
      td_notes CheatsheetUtil.script_generate('FFDAB9')
      td_notes 'PeachPuff'
      index_name 'PeachPuff'
    end

    entry do
      td_command '#CD853F'
      td_notes CheatsheetUtil.script_generate('CD853F')
      td_notes 'Peru'
      index_name 'Peru'
    end

    entry do
      td_command '#FFC0CB'
      td_notes CheatsheetUtil.script_generate('FFC0CB')
      td_notes 'Pink'
      index_name 'Pink'
    end

    entry do
      td_command '#DDA0DD'
      td_notes CheatsheetUtil.script_generate('DDA0DD')
      td_notes 'Plum'
      index_name 'Plum'
    end

    entry do
      td_command '#B0E0E6'
      td_notes CheatsheetUtil.script_generate('B0E0E6')
      td_notes 'PowderBlue'
      index_name 'PowderBlue'
    end

    entry do
        td_command '#663399'
        td_notes CheatsheetUtil.script_generate('663399')
        td_notes 'RebeccaPurple'
        index_name 'RebeccaPurple'
    end

    entry do
      td_command '#BC8F8F'
      td_notes CheatsheetUtil.script_generate('BC8F8F')
      td_notes 'RosyBrown'
      index_name 'RosyBrown'
    end

    entry do
      td_command '#4169E1'
      td_notes CheatsheetUtil.script_generate('4169E1')
      td_notes 'RoyalBlue'
      index_name 'RoyalBlue'
    end

    entry do
      td_command '#8B4513'
      td_notes CheatsheetUtil.script_generate('8B4513')
      td_notes 'SaddleBrown'
      index_name 'SaddleBrown'
    end

    entry do
      td_command '#FA8072'
      td_notes CheatsheetUtil.script_generate('FA8072')
      td_notes 'Salmon'
      index_name 'Salmon'
    end

    entry do
      td_command '#F4A460'
      td_notes CheatsheetUtil.script_generate('F4A460')
      td_notes 'SandyBrown'
      index_name 'SandyBrown'
    end

    entry do
      td_command '#2E8B57'
      td_notes CheatsheetUtil.script_generate('2E8B57')
      td_notes 'SeaGreen'
      index_name 'SeaGreen'
    end

    entry do
      td_command '#FFF5EE'
      td_notes CheatsheetUtil.script_generate('FFF5EE')
      td_notes 'SeaShell'
      index_name 'SeaShell'
    end

    entry do
      td_command '#A0522D'
      td_notes CheatsheetUtil.script_generate('A0522D')
      td_notes 'Sienna'
      index_name 'Sienna'
    end

    entry do
      td_command '#87CEEB'
      td_notes CheatsheetUtil.script_generate('87CEEB')
      td_notes 'SkyBlue'
      index_name 'SkyBlue'
    end

    entry do
      td_command '#6A5ACD'
      td_notes CheatsheetUtil.script_generate('6A5ACD')
      td_notes 'SlateBlue'
      index_name 'SlateBlue'
    end

    entry do
      td_command '#708090'
      td_notes CheatsheetUtil.script_generate('708090')
      td_notes 'SlateGray'
      index_name 'SlateGray'
    end

    entry do
        td_command '#708090'
        td_notes CheatsheetUtil.script_generate('708090-2')
        td_notes 'SlateGrey'
        index_name 'SlateGrey'
    end

    entry do
      td_command '#FFFAFA'
      td_notes CheatsheetUtil.script_generate('FFFAFA')
      td_notes 'Snow'
      index_name 'Snow'
    end

    entry do
      td_command '#00FF7F'
      td_notes CheatsheetUtil.script_generate('00FF7F')
      td_notes 'SpringGreen'
      index_name 'SpringGreen'
    end

    entry do
      td_command '#4682B4'
      td_notes CheatsheetUtil.script_generate('4682B4')
      td_notes 'SteelBlue'
      index_name 'SteelBlue'
    end

    entry do
      td_command '#D2B48C'
      td_notes CheatsheetUtil.script_generate('D2B48C')
      td_notes 'Tan'
      index_name 'Tan'
    end

    entry do
      td_command '#D8BFD8'
      td_notes CheatsheetUtil.script_generate('D8BFD8')
      td_notes 'Thistle'
      index_name 'Thistle'
    end

    entry do
      td_command '#FF6347'
      td_notes CheatsheetUtil.script_generate('FF6347')
      td_notes 'Tomato'
      index_name 'Tomato'
    end

    entry do
      td_command '#40E0D0'
      td_notes CheatsheetUtil.script_generate('40E0D0')
      td_notes 'Turquoise'
      index_name 'Turquoise'
    end

    entry do
      td_command '#EE82EE'
      td_notes CheatsheetUtil.script_generate('EE82EE')
      td_notes 'Violet'
      index_name 'Violet'
    end

    entry do
      td_command '#F5DEB3'
      td_notes CheatsheetUtil.script_generate('F5DEB3')
      td_notes 'Wheat'
      index_name 'Wheat'
    end

    entry do
      td_command '#F5F5F5'
      td_notes CheatsheetUtil.script_generate('F5F5F5')
      td_notes 'WhiteSmoke'
      index_name 'WhiteSmoke'
    end

    entry do
      td_command '#9ACD32'
      td_notes CheatsheetUtil.script_generate('9ACD32')
      td_notes 'YellowGreen'
      index_name 'YellowGreen'
    end
  end
  category do
      id 'Special Colors'

      entry do
          td_command 'rgba(0,0,0,0)'
          td_notes 'Transparent'
          index_name 'Transparent'
      end

      entry do
          td_command 'currentcolor'
          td_notes 'Current color property of same element'
          index_name 'CurrentColor'
      end
  end
end
