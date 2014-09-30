# encoding: utf-8

cheatsheet do
  title 'ASCII Tables'
  docset_file_name 'ASCII_Tables'
  keyword 'ASCII'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'ASCII Control Codes'

    header 'Bin'
    header 'Oct'
    header 'Dec'
    header 'Hex'
    header 'Symbol'
    header 'HTML Entity'
    header 'Name'

  entry do
    td_command '00000000'
    td_command '000'
    td_command '0'
    td_command '0x00'
    td_command "␀ (NUL)"
    td_command '&#000;'
    name 'Null char'
  end

  entry do
    td_command '00000001'
    td_command '001'
    td_command '1'
    td_command '0x01'
    td_command "␁ (SOH)"
    td_command '&#001;'
    name 'Start of heading'
  end

  entry do
    td_command '00000010'
    td_command '002'
    td_command '2'
    td_command '0x02'
    td_command "␂ (STX)"
    td_command '&#002;'
    name 'Start of text'
  end

  entry do
    td_command '00000011'
    td_command '003'
    td_command '3'
    td_command '0x03'
    td_command "␃ (ETX)"
    td_command '&#003;'
    name 'End of text'
  end

  entry do
    td_command '00000100'
    td_command '004'
    td_command '4'
    td_command '0x04'
    td_command "␄ (EOT)"
    td_command '&#004;'
    name 'End of transmission'
  end

  entry do
    td_command '00000101'
    td_command '005'
    td_command '5'
    td_command '0x05'
    td_command "␅ (ENQ)"
    td_command '&#005;'
    name 'Enquiry'
  end

  entry do
    td_command '00000110'
    td_command '006'
    td_command '6'
    td_command '0x06'
    td_command "␆ (ACK)"
    td_command '&#006;'
    name 'Acknowledgment'
  end

  entry do
    td_command '00000111'
    td_command '007'
    td_command '7'
    td_command '0x07'
    td_command "␇ (BEL)"
    td_command '&#007;'
    name 'Bell'
  end

  entry do
    td_command '00001000'
    td_command '010'
    td_command '8'
    td_command '0x08'
    td_command "␈ ( BS)"
    td_command '&#008;'
    name 'Backspace'
  end

  entry do
    td_command '00001001'
    td_command '011'
    td_command '9'
    td_command '0x09'
    td_command "␉ ( HT)"
    td_command '&#009;'
    name 'Horizontal tab'
  end

  entry do
    td_command '00001010'
    td_command '012'
    td_command '10'
    td_command '0x0A'
    td_command "␊ ( LF)"
    td_command '&#010;'
    name 'Line feed'
  end

  entry do
    td_command '00001011'
    td_command '013'
    td_command '11'
    td_command '0x0B'
    td_command "␋ ( VT)"
    td_command '&#011;'
    name 'Vertical tab'
  end

  entry do
    td_command '00001100'
    td_command '014'
    td_command '12'
    td_command '0x0C'
    td_command "␌ ( FF)"
    td_command '&#012;'
    name 'Form feed'
  end

  entry do
    td_command '00001101'
    td_command '015'
    td_command '13'
    td_command '0x0D'
    td_command "␍ ( CR)"
    td_command '&#013;'
    name 'Carriage return'
  end

  entry do
    td_command '00001110'
    td_command '016'
    td_command '14'
    td_command '0x0E'
    td_command "␎ ( SO)"
    td_command '&#014;'
    name 'Shift out / x-on'
  end

  entry do
    td_command '00001111'
    td_command '017'
    td_command '15'
    td_command '0x0F'
    td_command "␏ ( SI)"
    td_command '&#015;'
    name 'Shift in / x-off'
  end

  entry do
    td_command '00010000'
    td_command '020'
    td_command '16'
    td_command '0x10'
    td_command "␐ (DLE)"
    td_command '&#016;'
    name 'Data line escape'
  end

  entry do
    td_command '00010001'
    td_command '021'
    td_command '17'
    td_command '0x11'
    td_command "␑ (DC1)"
    td_command '&#017;'
    name 'Device control 1 (oft. xon)'
  end

  entry do
    td_command '00010010'
    td_command '022'
    td_command '18'
    td_command '0x12'
    td_command "␒ (DC2)"
    td_command '&#018;'
    name 'Device control 2'
  end

  entry do
    td_command '00010011'
    td_command '023'
    td_command '19'
    td_command '0x13'
    td_command "␓ (DC3)"
    td_command '&#019;'
    name 'Device control 3 (oft. xoff)'
  end

  entry do
    td_command '00010100'
    td_command '024'
    td_command '20'
    td_command '0x14'
    td_command "␔ (DC4)"
    td_command '&#020;'
    name 'Device control 4'
  end

  entry do
    td_command '00010101'
    td_command '025'
    td_command '21'
    td_command '0x15'
    td_command "␕ (NAK)"
    td_command '&#021;'
    name 'Negative acknowledgement'
  end

  entry do
    td_command '00010110'
    td_command '026'
    td_command '22'
    td_command '0x16'
    td_command "␖ (SYN)"
    td_command '&#022;'
    name 'Synchronous idle'
  end

  entry do
    td_command '00010111'
    td_command '027'
    td_command '23'
    td_command '0x17'
    td_command "␗ (ETB)"
    td_command '&#023;'
    name 'End of transmit block'
  end

  entry do
    td_command '00011000'
    td_command '030'
    td_command '24'
    td_command '0x18'
    td_command "␘ (CAN)"
    td_command '&#024;'
    name 'Cancel'
  end

  entry do
    td_command '00011001'
    td_command '031'
    td_command '25'
    td_command '0x19'
    td_command "␙ ( EM)"
    td_command '&#025;'
    name 'End of medium'
  end

  entry do
    td_command '00011010'
    td_command '032'
    td_command '26'
    td_command '0x1A'
    td_command "␚ (SUB)"
    td_command '&#026;'
    name 'Substitute'
  end

  entry do
    td_command '00011011'
    td_command '033'
    td_command '27'
    td_command '0x1B'
    td_command "␛ (ESC)"
    td_command '&#027;'
    name 'Escape'
  end

  entry do
    td_command '00011100'
    td_command '034'
    td_command '28'
    td_command '0x1C'
    td_command "␜ ( FS)"
    td_command '&#028;'
    name 'File separator'
  end

  entry do
    td_command '00011101'
    td_command '035'
    td_command '29'
    td_command '0x1D'
    td_command "␝ ( GS)"
    td_command '&#029;'
    name 'Group separator'
  end

  entry do
    td_command '00011110'
    td_command '036'
    td_command '30'
    td_command '0x1E'
    td_command "␞ ( RS)"
    td_command '&#030;'
    name 'Record separator'
  end

  entry do
    td_command '00011111'
    td_command '037'
    td_command '31'
    td_command '0x1F'
    td_command "␟ ( US)"
    td_command '&#031;'
    name 'Unit separator'
  end

  end
  category do
    id 'ASCII Printable Characters'

    header 'Bin'
    header 'Oct'
    header 'Dec'
    header 'Hex'
    header 'Symbol'
    header 'HTML Entity'
    header 'Name'

  entry do
    td_command '00100000'
    td_command '040'
    td_command '32'
    td_command '0x20'
    td_command '(space)'
    td_command '&#32;'
    name 'Space'
  end

  entry do
    td_command '00100001'
    td_command '041'
    td_command '33'
    td_command '0x21'
    td_command '!'
    td_command '&#33;'
    name 'Exclamation mark'
  end

  entry do
    td_command '00100010'
    td_command '042'
    td_command '34'
    td_command '0x22'
    td_command '"'
    td_command '&#34; or &quot;'
    name 'Double quotes (or speech marks)'
  end

  entry do
    td_command '00100011'
    td_command '043'
    td_command '35'
    td_command '0x23'
    td_command '#'
    td_command '&#35;'
    name 'Number'
  end

  entry do
    td_command '00100100'
    td_command '044'
    td_command '36'
    td_command '0x24'
    td_command '$'
    td_command '&#36;'
    name 'Dollar'
  end

  entry do
    td_command '00100101'
    td_command '045'
    td_command '37'
    td_command '0x25'
    td_command '%'
    td_command '&#37;'
    name 'Percent sign'
  end

  entry do
    td_command '00100110'
    td_command '046'
    td_command '38'
    td_command '0x26'
    td_command '&'
    td_command '&#38; or &amp;'
    name 'Ampersand'
  end

  entry do
    td_command '00100111'
    td_command '047'
    td_command '39'
    td_command '0x27'
    td_command '\''
    td_command '&#39;'
    name 'Single quote'
  end

  entry do
    td_command '00101000'
    td_command '050'
    td_command '40'
    td_command '0x28'
    td_command '('
    td_command '&#40;'
    name 'Open parenthesis (or open bracket)'
  end

  entry do
    td_command '00101001'
    td_command '051'
    td_command '41'
    td_command '0x29'
    td_command ')'
    td_command '&#41;'
    name 'Close parenthesis (or close bracket)'
  end

  entry do
    td_command '00101010'
    td_command '052'
    td_command '42'
    td_command '0x2A'
    td_command '*'
    td_command '&#42;'
    name 'Asterisk'
  end

  entry do
    td_command '00101011'
    td_command '053'
    td_command '43'
    td_command '0x2B'
    td_command '+'
    td_command '&#43;'
    name 'Plus'
  end

  entry do
    td_command '00101100'
    td_command '054'
    td_command '44'
    td_command '0x2C'
    td_command ','
    td_command '&#44;'
    name 'Comma'
  end

  entry do
    td_command '00101101'
    td_command '055'
    td_command '45'
    td_command '0x2D'
    td_command '-'
    td_command '&#45;'
    name 'Hyphen'
  end

  entry do
    td_command '00101110'
    td_command '056'
    td_command '46'
    td_command '0x2E'
    td_command '.'
    td_command '&#46;'
    name 'Period, dot or full stop'
  end

  entry do
    td_command '00101111'
    td_command '057'
    td_command '47'
    td_command '0x2F'
    td_command '/'
    td_command '&#47;'
    name 'Slash or divide'
  end

  entry do
    td_command '00110000'
    td_command '060'
    td_command '48'
    td_command '0x30'
    td_command '0'
    td_command '&#48;'
    name 'Zero'
  end

  entry do
    td_command '00110001'
    td_command '061'
    td_command '49'
    td_command '0x31'
    td_command '1'
    td_command '&#49;'
    name 'One'
  end

  entry do
    td_command '00110010'
    td_command '062'
    td_command '50'
    td_command '0x32'
    td_command '2'
    td_command '&#50;'
    name 'Two'
  end

  entry do
    td_command '00110011'
    td_command '063'
    td_command '51'
    td_command '0x33'
    td_command '3'
    td_command '&#51;'
    name 'Three'
  end

  entry do
    td_command '00110100'
    td_command '064'
    td_command '52'
    td_command '0x34'
    td_command '4'
    td_command '&#52;'
    name 'Four'
  end

  entry do
    td_command '00110101'
    td_command '065'
    td_command '53'
    td_command '0x35'
    td_command '5'
    td_command '&#53;'
    name 'Five'
  end

  entry do
    td_command '00110110'
    td_command '066'
    td_command '54'
    td_command '0x36'
    td_command '6'
    td_command '&#54;'
    name 'Six'
  end

  entry do
    td_command '00110111'
    td_command '067'
    td_command '55'
    td_command '0x37'
    td_command '7'
    td_command '&#55;'
    name 'Seven'
  end

  entry do
    td_command '00111000'
    td_command '070'
    td_command '56'
    td_command '0x38'
    td_command '8'
    td_command '&#56;'
    name 'Eight'
  end

  entry do
    td_command '00111001'
    td_command '071'
    td_command '57'
    td_command '0x39'
    td_command '9'
    td_command '&#57;'
    name 'Nine'
  end

  entry do
    td_command '00111010'
    td_command '072'
    td_command '58'
    td_command '0x3A'
    td_command ':'
    td_command '&#58;'
    name 'Colon'
  end

  entry do
    td_command '00111011'
    td_command '073'
    td_command '59'
    td_command '0x3B'
    td_command ';'
    td_command '&#59;'
    name 'Semicolon'
  end

  entry do
    td_command '00111100'
    td_command '074'
    td_command '60'
    td_command '0x3C'
    td_command '<'
    td_command '&#60; or &lt;'
    name 'Less than (or open angled bracket)'
  end

  entry do
    td_command '00111101'
    td_command '075'
    td_command '61'
    td_command '0x3D'
    td_command '='
    td_command '&#61;'
    name 'Equals'
  end

  entry do
    td_command '00111110'
    td_command '076'
    td_command '62'
    td_command '0x3E'
    td_command '>'
    td_command '&#62; or &gt;'
    name 'Greater than (or close angled bracket)'
  end

  entry do
    td_command '00111111'
    td_command '077'
    td_command '63'
    td_command '0x3F'
    td_command '?'
    td_command '&#63;'
    name 'Question mark'
  end

  entry do
    td_command '01000000'
    td_command '100'
    td_command '64'
    td_command '0x40'
    td_command '@'
    td_command '&#64;'
    name 'At symbol'
  end

  entry do
    td_command '01000001'
    td_command '101'
    td_command '65'
    td_command '0x41'
    td_command 'A'
    td_command '&#65;'
    name 'Uppercase a'
  end

  entry do
    td_command '01000010'
    td_command '102'
    td_command '66'
    td_command '0x42'
    td_command 'B'
    td_command '&#66;'
    name 'Uppercase b'
  end

  entry do
    td_command '01000011'
    td_command '103'
    td_command '67'
    td_command '0x43'
    td_command 'C'
    td_command '&#67;'
    name 'Uppercase c'
  end

  entry do
    td_command '01000100'
    td_command '104'
    td_command '68'
    td_command '0x44'
    td_command 'D'
    td_command '&#68;'
    name 'Uppercase d'
  end

  entry do
    td_command '01000101'
    td_command '105'
    td_command '69'
    td_command '0x45'
    td_command 'E'
    td_command '&#69;'
    name 'Uppercase e'
  end

  entry do
    td_command '01000110'
    td_command '106'
    td_command '70'
    td_command '0x46'
    td_command 'F'
    td_command '&#70;'
    name 'Uppercase f'
  end

  entry do
    td_command '01000111'
    td_command '107'
    td_command '71'
    td_command '0x47'
    td_command 'G'
    td_command '&#71;'
    name 'Uppercase g'
  end

  entry do
    td_command '01001000'
    td_command '110'
    td_command '72'
    td_command '0x48'
    td_command 'H'
    td_command '&#72;'
    name 'Uppercase h'
  end

  entry do
    td_command '01001001'
    td_command '111'
    td_command '73'
    td_command '0x49'
    td_command 'I'
    td_command '&#73;'
    name 'Uppercase i'
  end

  entry do
    td_command '01001010'
    td_command '112'
    td_command '74'
    td_command '0x4A'
    td_command 'J'
    td_command '&#74;'
    name 'Uppercase j'
  end

  entry do
    td_command '01001011'
    td_command '113'
    td_command '75'
    td_command '0x4B'
    td_command 'K'
    td_command '&#75;'
    name 'Uppercase k'
  end

  entry do
    td_command '01001100'
    td_command '114'
    td_command '76'
    td_command '0x4C'
    td_command 'L'
    td_command '&#76;'
    name 'Uppercase l'
  end

  entry do
    td_command '01001101'
    td_command '115'
    td_command '77'
    td_command '0x4D'
    td_command 'M'
    td_command '&#77;'
    name 'Uppercase m'
  end

  entry do
    td_command '01001110'
    td_command '116'
    td_command '78'
    td_command '0x4E'
    td_command 'N'
    td_command '&#78;'
    name 'Uppercase n'
  end

  entry do
    td_command '01001111'
    td_command '117'
    td_command '79'
    td_command '0x4F'
    td_command 'O'
    td_command '&#79;'
    name 'Uppercase o'
  end

  entry do
    td_command '01010000'
    td_command '120'
    td_command '80'
    td_command '0x50'
    td_command 'P'
    td_command '&#80;'
    name 'Uppercase p'
  end

  entry do
    td_command '01010001'
    td_command '121'
    td_command '81'
    td_command '0x51'
    td_command 'Q'
    td_command '&#81;'
    name 'Uppercase q'
  end

  entry do
    td_command '01010010'
    td_command '122'
    td_command '82'
    td_command '0x52'
    td_command 'R'
    td_command '&#82;'
    name 'Uppercase r'
  end

  entry do
    td_command '01010011'
    td_command '123'
    td_command '83'
    td_command '0x53'
    td_command 'S'
    td_command '&#83;'
    name 'Uppercase s'
  end

  entry do
    td_command '01010100'
    td_command '124'
    td_command '84'
    td_command '0x54'
    td_command 'T'
    td_command '&#84;'
    name 'Uppercase t'
  end

  entry do
    td_command '01010101'
    td_command '125'
    td_command '85'
    td_command '0x55'
    td_command 'U'
    td_command '&#85;'
    name 'Uppercase u'
  end

  entry do
    td_command '01010110'
    td_command '126'
    td_command '86'
    td_command '0x56'
    td_command 'V'
    td_command '&#86;'
    name 'Uppercase v'
  end

  entry do
    td_command '01010111'
    td_command '127'
    td_command '87'
    td_command '0x57'
    td_command 'W'
    td_command '&#87;'
    name 'Uppercase w'
  end

  entry do
    td_command '01011000'
    td_command '130'
    td_command '88'
    td_command '0x58'
    td_command 'X'
    td_command '&#88;'
    name 'Uppercase x'
  end

  entry do
    td_command '01011001'
    td_command '131'
    td_command '89'
    td_command '0x59'
    td_command 'Y'
    td_command '&#89;'
    name 'Uppercase y'
  end

  entry do
    td_command '01011010'
    td_command '132'
    td_command '90'
    td_command '0x5A'
    td_command 'Z'
    td_command '&#90;'
    name 'Uppercase z'
  end

  entry do
    td_command '01011011'
    td_command '133'
    td_command '91'
    td_command '0x5B'
    td_command '['
    td_command '&#91;'
    name 'Opening bracket'
  end

  entry do
    td_command '01011100'
    td_command '134'
    td_command '92'
    td_command '0x5C'
    td_command '\\'
    td_command '&#92;'
    name 'Backslash'
  end

  entry do
    td_command '01011101'
    td_command '135'
    td_command '93'
    td_command '0x5D'
    td_command ']'
    td_command '&#93;'
    name 'Closing bracket'
  end

  entry do
    td_command '01011110'
    td_command '136'
    td_command '94'
    td_command '0x5E'
    td_command '^'
    td_command '&#94;'
    name 'Caret - circumflex'
  end

  entry do
    td_command '01011111'
    td_command '137'
    td_command '95'
    td_command '0x5F'
    td_command '_'
    td_command '&#95;'
    name 'Underscore'
  end

  entry do
    td_command '01100000'
    td_command '140'
    td_command '96'
    td_command '0x60'
    td_command '`'
    td_command '&#96;'
    name 'Grave accent'
  end

  entry do
    td_command '01100001'
    td_command '141'
    td_command '97'
    td_command '0x61'
    td_command 'a'
    td_command '&#97;'
    name 'Lowercase a'
  end

  entry do
    td_command '01100010'
    td_command '142'
    td_command '98'
    td_command '0x62'
    td_command 'b'
    td_command '&#98;'
    name 'Lowercase b'
  end

  entry do
    td_command '01100011'
    td_command '143'
    td_command '99'
    td_command '0x63'
    td_command 'c'
    td_command '&#99;'
    name 'Lowercase c'
  end

  entry do
    td_command '01100100'
    td_command '144'
    td_command '100'
    td_command '0x64'
    td_command 'd'
    td_command '&#100;'
    name 'Lowercase d'
  end

  entry do
    td_command '01100101'
    td_command '145'
    td_command '101'
    td_command '0x65'
    td_command 'e'
    td_command '&#101;'
    name 'Lowercase e'
  end

  entry do
    td_command '01100110'
    td_command '146'
    td_command '102'
    td_command '0x66'
    td_command 'f'
    td_command '&#102;'
    name 'Lowercase f'
  end

  entry do
    td_command '01100111'
    td_command '147'
    td_command '103'
    td_command '0x67'
    td_command 'g'
    td_command '&#103;'
    name 'Lowercase g'
  end

  entry do
    td_command '01101000'
    td_command '150'
    td_command '104'
    td_command '0x68'
    td_command 'h'
    td_command '&#104;'
    name 'Lowercase h'
  end

  entry do
    td_command '01101001'
    td_command '151'
    td_command '105'
    td_command '0x69'
    td_command 'i'
    td_command '&#105;'
    name 'Lowercase i'
  end

  entry do
    td_command '01101010'
    td_command '152'
    td_command '106'
    td_command '0x6A'
    td_command 'j'
    td_command '&#106;'
    name 'Lowercase j'
  end

  entry do
    td_command '01101011'
    td_command '153'
    td_command '107'
    td_command '0x6B'
    td_command 'k'
    td_command '&#107;'
    name 'Lowercase k'
  end

  entry do
    td_command '01101100'
    td_command '154'
    td_command '108'
    td_command '0x6C'
    td_command 'l'
    td_command '&#108;'
    name 'Lowercase l'
  end

  entry do
    td_command '01101101'
    td_command '155'
    td_command '109'
    td_command '0x6D'
    td_command 'm'
    td_command '&#109;'
    name 'Lowercase m'
  end

  entry do
    td_command '01101110'
    td_command '156'
    td_command '110'
    td_command '0x6E'
    td_command 'n'
    td_command '&#110;'
    name 'Lowercase n'
  end

  entry do
    td_command '01101111'
    td_command '157'
    td_command '111'
    td_command '0x6F'
    td_command 'o'
    td_command '&#111;'
    name 'Lowercase o'
  end

  entry do
    td_command '01110000'
    td_command '160'
    td_command '112'
    td_command '0x70'
    td_command 'p'
    td_command '&#112;'
    name 'Lowercase p'
  end

  entry do
    td_command '01110001'
    td_command '161'
    td_command '113'
    td_command '0x71'
    td_command 'q'
    td_command '&#113;'
    name 'Lowercase q'
  end

  entry do
    td_command '01110010'
    td_command '162'
    td_command '114'
    td_command '0x72'
    td_command 'r'
    td_command '&#114;'
    name 'Lowercase r'
  end

  entry do
    td_command '01110011'
    td_command '163'
    td_command '115'
    td_command '0x73'
    td_command 's'
    td_command '&#115;'
    name 'Lowercase s'
  end

  entry do
    td_command '01110100'
    td_command '164'
    td_command '116'
    td_command '0x74'
    td_command 't'
    td_command '&#116;'
    name 'Lowercase t'
  end

  entry do
    td_command '01110101'
    td_command '165'
    td_command '117'
    td_command '0x75'
    td_command 'u'
    td_command '&#117;'
    name 'Lowercase u'
  end

  entry do
    td_command '01110110'
    td_command '166'
    td_command '118'
    td_command '0x76'
    td_command 'v'
    td_command '&#118;'
    name 'Lowercase v'
  end

  entry do
    td_command '01110111'
    td_command '167'
    td_command '119'
    td_command '0x77'
    td_command 'w'
    td_command '&#119;'
    name 'Lowercase w'
  end

  entry do
    td_command '01111000'
    td_command '170'
    td_command '120'
    td_command '0x78'
    td_command 'x'
    td_command '&#120;'
    name 'Lowercase x'
  end

  entry do
    td_command '01111001'
    td_command '171'
    td_command '121'
    td_command '0x79'
    td_command 'y'
    td_command '&#121;'
    name 'Lowercase y'
  end

  entry do
    td_command '01111010'
    td_command '172'
    td_command '122'
    td_command '0x7A'
    td_command 'z'
    td_command '&#122;'
    name 'Lowercase z'
  end

  entry do
    td_command '01111011'
    td_command '173'
    td_command '123'
    td_command '0x7B'
    td_command '{'
    td_command '&#123;'
    name 'Opening brace'
  end

  entry do
    td_command '01111100'
    td_command '174'
    td_command '124'
    td_command '0x7C'
    td_command '|'
    td_command '&#124;'
    name 'Vertical bar'
  end

  entry do
    td_command '01111101'
    td_command '175'
    td_command '125'
    td_command '0x7D'
    td_command '}'
    td_command '&#125;'
    name 'Closing brace'
  end

  entry do
    td_command '01111110'
    td_command '176'
    td_command '126'
    td_command '0x7E'
    td_command '~'
    td_command '&#126;'
    name 'Equivalency sign - tilde'
  end

  entry do
    td_command '01111111'
    td_command '177'
    td_command '127'
    td_command '0x7F'
    td_command '␡ (DEL)'
    td_command '&#127;'
    name 'Delete'
  end

  end
  category do
    id 'Extended ASCII Characters'

    header 'Bin'
    header 'Oct'
    header 'Dec'
    header 'Hex'
    header 'Symbol'
    header 'HTML Entity'
    header 'Name'

  entry do
    td_command '10000000'
    td_command '200'
    td_command '128'
    td_command '0x80'
    td_command '€'
    td_command '&#128; or &euro;'
    name 'Euro sign'
  end

  entry do
    td_command '10000010'
    td_command '202'
    td_command '130'
    td_command '0x82'
    td_command '‚'
    td_command '&#130; or &sbquo;'
    name 'Single low-9 quotation mark'
  end

  entry do
    td_command '10000011'
    td_command '203'
    td_command '131'
    td_command '0x83'
    td_command 'ƒ'
    td_command '&#131; or &fnof;'
    name 'Latin small letter f with hook'
  end

  entry do
    td_command '10000100'
    td_command '204'
    td_command '132'
    td_command '0x84'
    td_command '„'
    td_command '&#132; or &bdquo;'
    name 'Double low-9 quotation mark'
  end

  entry do
    td_command '10000101'
    td_command '205'
    td_command '133'
    td_command '0x85'
    td_command '…'
    td_command '&#133; or &hellip;'
    name 'Horizontal ellipsis'
  end

  entry do
    td_command '10000110'
    td_command '206'
    td_command '134'
    td_command '0x86'
    td_command '†'
    td_command '&#134; or &dagger;'
    name 'Dagger'
  end

  entry do
    td_command '10000111'
    td_command '207'
    td_command '135'
    td_command '0x87'
    td_command '‡'
    td_command '&#135; or &Dagger;'
    name 'Double dagger'
  end

  entry do
    td_command '10001000'
    td_command '210'
    td_command '136'
    td_command '0x88'
    td_command 'ˆ'
    td_command '&#136; or &circ;'
    name 'Circumflex accent modifier'
  end

  entry do
    td_command '10001001'
    td_command '211'
    td_command '137'
    td_command '0x89'
    td_command '‰'
    td_command '&#137; or &permil;'
    name 'Per mil sign'
  end

  entry do
    td_command '10001010'
    td_command '212'
    td_command '138'
    td_command '0x8A'
    td_command 'Š'
    td_command '&#138; or &Scaron;'
    name 'Latin capital letter s with caron'
  end

  entry do
    td_command '10001011'
    td_command '213'
    td_command '139'
    td_command '0x8B'
    td_command '‹'
    td_command '&#139; or &lsaquo;'
    name 'Single left-pointing angle quotation'
  end

  entry do
    td_command '10001100'
    td_command '214'
    td_command '140'
    td_command '0x8C'
    td_command 'Œ'
    td_command '&#140; or &OElig;'
    name 'Latin capital ligature oe'
  end

  entry do
    td_command '10001110'
    td_command '216'
    td_command '142'
    td_command '0x8E'
    td_command 'Ž'
    td_command '&#142;'
    name 'Latin capital letter z with caron'
  end

  entry do
    td_command '10010001'
    td_command '221'
    td_command '145'
    td_command '0x91'
    td_command '‘'
    td_command '&#145; or &lsquo;'
    name 'Left single quotation mark'
  end

  entry do
    td_command '10010010'
    td_command '222'
    td_command '146'
    td_command '0x92'
    td_command '’'
    td_command '&#146; or &rsquo;'
    name 'Right single quotation mark'
  end

  entry do
    td_command '10010011'
    td_command '223'
    td_command '147'
    td_command '0x93'
    td_command '“'
    td_command '&#147; or &ldquo;'
    name 'Left double quotation mark'
  end

  entry do
    td_command '10010100'
    td_command '224'
    td_command '148'
    td_command '0x94'
    td_command '”'
    td_command '&#148; or &rdquo;'
    name 'Right double quotation mark'
  end

  entry do
    td_command '10010101'
    td_command '225'
    td_command '149'
    td_command '0x95'
    td_command '•'
    td_command '&#149; or &bull;'
    name 'Bullet'
  end

  entry do
    td_command '10010110'
    td_command '226'
    td_command '150'
    td_command '0x96'
    td_command '–'
    td_command '&#150; or &ndash;'
    name 'En dash'
  end

  entry do
    td_command '10010111'
    td_command '227'
    td_command '151'
    td_command '0x97'
    td_command '—'
    td_command '&#151; or &mdash;'
    name 'Em dash'
  end

  entry do
    td_command '10011000'
    td_command '230'
    td_command '152'
    td_command '0x98'
    td_command '˜'
    td_command '&#152; or &tilde;'
    name 'Small tilde'
  end

  entry do
    td_command '10011001'
    td_command '231'
    td_command '153'
    td_command '0x99'
    td_command '™'
    td_command '&#153; or &trade;'
    name 'Trade mark sign'
  end

  entry do
    td_command '10011010'
    td_command '232'
    td_command '154'
    td_command '0x9A'
    td_command 'š'
    td_command '&#154; or &scaron;'
    name 'Latin small letter s with caron'
  end

  entry do
    td_command '10011011'
    td_command '233'
    td_command '155'
    td_command '0x9B'
    td_command '›'
    td_command '&#155; or &rsaquo; '
    name 'Single right-pointing angle quotation mark'
  end

  entry do
    td_command '10011100'
    td_command '234'
    td_command '156'
    td_command '0x9C'
    td_command 'œ'
    td_command '&#156; or &oelig;'
    name 'Latin small ligature oe'
  end

  entry do
    td_command '10011110'
    td_command '236'
    td_command '158'
    td_command '0x9E'
    td_command 'ž'
    td_command '&#158;'
    name 'Latin small letter z with caron'
  end

  entry do
    td_command '10011111'
    td_command '237'
    td_command '159'
    td_command '0x9F'
    td_command 'Ÿ'
    td_command '&#159; or &yuml;'
    name 'Latin capital letter y with diaeresis'
  end

  entry do
    td_command '10100000'
    td_command '240'
    td_command '160'
    td_command '0xA0'
    td_command ' '
    td_command '&#160; or &nbsp;'
    name 'Non-breaking space'
  end

  entry do
    td_command '10100001'
    td_command '241'
    td_command '161'
    td_command '0xA1'
    td_command '¡'
    td_command '&#161; or &iexcl;'
    name 'Inverted exclamation mark'
  end

  entry do
    td_command '10100010'
    td_command '242'
    td_command '162'
    td_command '0xA2'
    td_command '¢'
    td_command '&#162; or &cent;'
    name 'Cent sign'
  end

  entry do
    td_command '10100011'
    td_command '243'
    td_command '163'
    td_command '0xA3'
    td_command '£'
    td_command '&#163; or &pound;'
    name 'Pound sign'
  end

  entry do
    td_command '10100100'
    td_command '244'
    td_command '164'
    td_command '0xA4'
    td_command '¤'
    td_command '&#164; or &curren;'
    name 'Currency sign'
  end

  entry do
    td_command '10100101'
    td_command '245'
    td_command '165'
    td_command '0xA5'
    td_command '¥'
    td_command '&#165; or &yen;'
    name 'Yen sign'
  end

  entry do
    td_command '10100110'
    td_command '246'
    td_command '166'
    td_command '0xA6'
    td_command '¦'
    td_command '&#166; or &brvbar;'
    name 'Pipe, broken vertical bar'
  end

  entry do
    td_command '10100111'
    td_command '247'
    td_command '167'
    td_command '0xA7'
    td_command '§'
    td_command '&#167; or &sect;'
    name 'Section sign'
  end

  entry do
    td_command '10101000'
    td_command '250'
    td_command '168'
    td_command '0xA8'
    td_command '¨'
    td_command '&#168; or &uml;'
    name 'Spacing diaeresis - umlaut'
  end

  entry do
    td_command '10101001'
    td_command '251'
    td_command '169'
    td_command '0xA9'
    td_command '©'
    td_command '&#169; or &copy;'
    name 'Copyright sign'
  end

  entry do
    td_command '10101010'
    td_command '252'
    td_command '170'
    td_command '0xAA'
    td_command 'ª'
    td_command '&#170; or &ordf;'
    name 'Feminine ordinal indicator'
  end

  entry do
    td_command '10101011'
    td_command '253'
    td_command '171'
    td_command '0xAB'
    td_command '«'
    td_command '&#171; or &laquo;'
    name 'Left double angle quotes'
  end

  entry do
    td_command '10101100'
    td_command '254'
    td_command '172'
    td_command '0xAC'
    td_command '¬'
    td_command '&#172; or &not;'
    name 'Not sign'
  end

  entry do
    td_command '10101101'
    td_command '255'
    td_command '173'
    td_command '0xAD'
    td_command '­'
    td_command '&#173; or &shy;'
    name 'Soft hyphen'
  end

  entry do
    td_command '10101110'
    td_command '256'
    td_command '174'
    td_command '0xAE'
    td_command '®'
    td_command '&#174; or &reg;'
    name 'Registered trade mark sign'
  end

  entry do
    td_command '10101111'
    td_command '257'
    td_command '175'
    td_command '0xAF'
    td_command '¯'
    td_command '&#175; or &macr;'
    name 'Spacing macron - overline'
  end

  entry do
    td_command '10110000'
    td_command '260'
    td_command '176'
    td_command '0xB0'
    td_command '°'
    td_command '&#176; or &deg;'
    name 'Degree sign'
  end

  entry do
    td_command '10110001'
    td_command '261'
    td_command '177'
    td_command '0xB1'
    td_command '±'
    td_command '&#177; or &plusmn;'
    name 'Plus-or-minus sign'
  end

  entry do
    td_command '10110010'
    td_command '262'
    td_command '178'
    td_command '0xB2'
    td_command '²'
    td_command '&#178; or &sup2;'
    name 'Superscript two - squared'
  end

  entry do
    td_command '10110011'
    td_command '263'
    td_command '179'
    td_command '0xB3'
    td_command '³'
    td_command '&#179; or &sup3;'
    name 'Superscript three - cubed'
  end

  entry do
    td_command '10110100'
    td_command '264'
    td_command '180'
    td_command '0xB4'
    td_command '´'
    td_command '&#180; or &acute;'
    name 'Acute accent - spacing acute'
  end

  entry do
    td_command '10110101'
    td_command '265'
    td_command '181'
    td_command '0xB5'
    td_command 'µ'
    td_command '&#181; or &micro;'
    name 'Micro sign'
  end

  entry do
    td_command '10110110'
    td_command '266'
    td_command '182'
    td_command '0xB6'
    td_command '¶'
    td_command '&#182; or &para;'
    name 'Pilcrow sign - paragraph sign'
  end

  entry do
    td_command '10110111'
    td_command '267'
    td_command '183'
    td_command '0xB7'
    td_command '·'
    td_command '&#183; or &middot;'
    name 'Middle dot - georgian comma'
  end

  entry do
    td_command '10111000'
    td_command '270'
    td_command '184'
    td_command '0xB8'
    td_command '¸'
    td_command '&#184; or &cedil;'
    name 'Spacing cedilla'
  end

  entry do
    td_command '10111001'
    td_command '271'
    td_command '185'
    td_command '0xB9'
    td_command '¹'
    td_command '&#185; or &sup1;'
    name 'Superscript one'
  end

  entry do
    td_command '10111010'
    td_command '272'
    td_command '186'
    td_command '0xBA'
    td_command 'º'
    td_command '&#186; or &ordm;'
    name 'Masculine ordinal indicator'
  end

  entry do
    td_command '10111011'
    td_command '273'
    td_command '187'
    td_command '0xBB'
    td_command '»'
    td_command '&#187; or &raquo;'
    name 'Right double angle quotes'
  end

  entry do
    td_command '10111100'
    td_command '274'
    td_command '188'
    td_command '0xBC'
    td_command '¼'
    td_command '&#188; or &frac14;'
    name 'Fraction one quarter'
  end

  entry do
    td_command '10111101'
    td_command '275'
    td_command '189'
    td_command '0xBD'
    td_command '½'
    td_command '&#189; or &frac12;'
    name 'Fraction one half'
  end

  entry do
    td_command '10111110'
    td_command '276'
    td_command '190'
    td_command '0xBE'
    td_command '¾'
    td_command '&#190; or &frac34;'
    name 'Fraction three quarters'
  end

  entry do
    td_command '10111111'
    td_command '277'
    td_command '191'
    td_command '0xBF'
    td_command '¿'
    td_command '&#191; or &iquest;'
    name 'Inverted question mark'
  end

  entry do
    td_command '11000000'
    td_command '300'
    td_command '192'
    td_command '0xC0'
    td_command 'À'
    td_command '&#192; or &Agrave;'
    name 'Latin capital letter a with grave'
  end

  entry do
    td_command '11000001'
    td_command '301'
    td_command '193'
    td_command '0xC1'
    td_command 'Á'
    td_command '&#193; or &Aacute;'
    name 'Latin capital letter a with acute'
  end

  entry do
    td_command '11000010'
    td_command '302'
    td_command '194'
    td_command '0xC2'
    td_command 'Â'
    td_command '&#194; or &Acirc;'
    name 'Latin capital letter a with circumflex'
  end

  entry do
    td_command '11000011'
    td_command '303'
    td_command '195'
    td_command '0xC3'
    td_command 'Ã'
    td_command '&#195; or &Atilde;'
    name 'Latin capital letter a with tilde'
  end

  entry do
    td_command '11000100'
    td_command '304'
    td_command '196'
    td_command '0xC4'
    td_command 'Ä'
    td_command '&#196; or &Auml;'
    name 'Latin capital letter a with diaeresis'
  end

  entry do
    td_command '11000101'
    td_command '305'
    td_command '197'
    td_command '0xC5'
    td_command 'Å'
    td_command '&#197; or &Aring;'
    name 'Latin capital letter a with ring above'
  end

  entry do
    td_command '11000110'
    td_command '306'
    td_command '198'
    td_command '0xC6'
    td_command 'Æ'
    td_command '&#198; or &AElig;'
    name 'Latin capital letter ae'
  end

  entry do
    td_command '11000111'
    td_command '307'
    td_command '199'
    td_command '0xC7'
    td_command 'Ç'
    td_command '&#199; or &Ccedil;'
    name 'Latin capital letter c with cedilla'
  end

  entry do
    td_command '11001000'
    td_command '310'
    td_command '200'
    td_command '0xC8'
    td_command 'È'
    td_command '&#200; or &Egrave;'
    name 'Latin capital letter e with grave'
  end

  entry do
    td_command '11001001'
    td_command '311'
    td_command '201'
    td_command '0xC9'
    td_command 'É'
    td_command '&#201; or &Eacute;'
    name 'Latin capital letter e with acute'
  end

  entry do
    td_command '11001010'
    td_command '312'
    td_command '202'
    td_command '0xCA'
    td_command 'Ê'
    td_command '&#202; or &Ecirc;'
    name 'Latin capital letter e with circumflex'
  end

  entry do
    td_command '11001011'
    td_command '313'
    td_command '203'
    td_command '0xCB'
    td_command 'Ë'
    td_command '&#203; or &Euml;'
    name 'Latin capital letter e with diaeresis'
  end

  entry do
    td_command '11001100'
    td_command '314'
    td_command '204'
    td_command '0xCC'
    td_command 'Ì'
    td_command '&#204; or &Igrave;'
    name 'Latin capital letter i with grave'
  end

  entry do
    td_command '11001101'
    td_command '315'
    td_command '205'
    td_command '0xCD'
    td_command 'Í'
    td_command '&#205; or &Iacute;'
    name 'Latin capital letter i with acute'
  end

  entry do
    td_command '11001110'
    td_command '316'
    td_command '206'
    td_command '0xCE'
    td_command 'Î'
    td_command '&#206; or &Icirc;'
    name 'Latin capital letter i with circumflex'
  end

  entry do
    td_command '11001111'
    td_command '317'
    td_command '207'
    td_command '0xCF'
    td_command 'Ï'
    td_command '&#207; or &Iuml;'
    name 'Latin capital letter i with diaeresis'
  end

  entry do
    td_command '11010000'
    td_command '320'
    td_command '208'
    td_command '0xD0'
    td_command 'Ð'
    td_command '&#208; or &ETH;'
    name 'Latin capital letter eth'
  end

  entry do
    td_command '11010001'
    td_command '321'
    td_command '209'
    td_command '0xD1'
    td_command 'Ñ'
    td_command '&#209; or &Ntilde;'
    name 'Latin capital letter n with tilde'
  end

  entry do
    td_command '11010010'
    td_command '322'
    td_command '210'
    td_command '0xD2'
    td_command 'Ò'
    td_command '&#210; or &Ograve;'
    name 'Latin capital letter o with grave'
  end

  entry do
    td_command '11010011'
    td_command '323'
    td_command '211'
    td_command '0xD3'
    td_command 'Ó'
    td_command '&#211; or &Oacute;'
    name 'Latin capital letter o with acute'
  end

  entry do
    td_command '11010100'
    td_command '324'
    td_command '212'
    td_command '0xD4'
    td_command 'Ô'
    td_command '&#212; or &Ocirc;'
    name 'Latin capital letter o with circumflex'
  end

  entry do
    td_command '11010101'
    td_command '325'
    td_command '213'
    td_command '0xD5'
    td_command 'Õ'
    td_command '&#213; or &Otilde;'
    name 'Latin capital letter o with tilde'
  end

  entry do
    td_command '11010110'
    td_command '326'
    td_command '214'
    td_command '0xD6'
    td_command 'Ö'
    td_command '&#214; or &Ouml;'
    name 'Latin capital letter o with diaeresis'
  end

  entry do
    td_command '11010111'
    td_command '327'
    td_command '215'
    td_command '0xD7'
    td_command '×'
    td_command '&#215; or &times;'
    name 'Multiplication sign'
  end

  entry do
    td_command '11011000'
    td_command '330'
    td_command '216'
    td_command '0xD8'
    td_command 'Ø'
    td_command '&#216; or &Oslash;'
    name 'Latin capital letter o with slash'
  end

  entry do
    td_command '11011001'
    td_command '331'
    td_command '217'
    td_command '0xD9'
    td_command 'Ù'
    td_command '&#217; or &Ugrave;'
    name 'Latin capital letter u with grave'
  end

  entry do
    td_command '11011010'
    td_command '332'
    td_command '218'
    td_command '0xDA'
    td_command 'Ú'
    td_command '&#218; or &Uacute;'
    name 'Latin capital letter u with acute'
  end

  entry do
    td_command '11011011'
    td_command '333'
    td_command '219'
    td_command '0xDB'
    td_command 'Û'
    td_command '&#219; or &Ucirc;'
    name 'Latin capital letter u with circumflex'
  end

  entry do
    td_command '11011100'
    td_command '334'
    td_command '220'
    td_command '0xDC'
    td_command 'Ü'
    td_command '&#220; or &Uuml;'
    name 'Latin capital letter u with diaeresis'
  end

  entry do
    td_command '11011101'
    td_command '335'
    td_command '221'
    td_command '0xDD'
    td_command 'Ý'
    td_command '&#221; or &Yacute;'
    name 'Latin capital letter y with acute'
  end

  entry do
    td_command '11011110'
    td_command '336'
    td_command '222'
    td_command '0xDE'
    td_command 'Þ'
    td_command '&#222; or &THORN;'
    name 'Latin capital letter thorn'
  end

  entry do
    td_command '11011111'
    td_command '337'
    td_command '223'
    td_command '0xDF'
    td_command 'ß'
    td_command '&#223; or &szlig;'
    name 'Latin small letter sharp s - ess-zed'
  end

  entry do
    td_command '11100000'
    td_command '340'
    td_command '224'
    td_command '0xE0'
    td_command 'à'
    td_command '&#224; or &agrave;'
    name 'Latin small letter a with grave'
  end

  entry do
    td_command '11100001'
    td_command '341'
    td_command '225'
    td_command '0xE1'
    td_command 'á'
    td_command '&#225; or &aacute;'
    name 'Latin small letter a with acute'
  end

  entry do
    td_command '11100010'
    td_command '342'
    td_command '226'
    td_command '0xE2'
    td_command 'â'
    td_command '&#226; or &acirc;'
    name 'Latin small letter a with circumflex'
  end

  entry do
    td_command '11100011'
    td_command '343'
    td_command '227'
    td_command '0xE3'
    td_command 'ã'
    td_command '&#227; or &atilde;'
    name 'Latin small letter a with tilde'
  end

  entry do
    td_command '11100100'
    td_command '344'
    td_command '228'
    td_command '0xE4'
    td_command 'ä'
    td_command '&#228; or &auml;'
    name 'Latin small letter a with diaeresis'
  end

  entry do
    td_command '11100101'
    td_command '345'
    td_command '229'
    td_command '0xE5'
    td_command 'å'
    td_command '&#229; or &aring;'
    name 'Latin small letter a with ring above'
  end

  entry do
    td_command '11100110'
    td_command '346'
    td_command '230'
    td_command '0xE6'
    td_command 'æ'
    td_command '&#230; or &aelig;'
    name 'Latin small letter ae'
  end

  entry do
    td_command '11100111'
    td_command '347'
    td_command '231'
    td_command '0xE7'
    td_command 'ç'
    td_command '&#231; or &ccedil;'
    name 'Latin small letter c with cedilla'
  end

  entry do
    td_command '11101000'
    td_command '350'
    td_command '232'
    td_command '0xE8'
    td_command 'è'
    td_command '&#232; or &egrave;'
    name 'Latin small letter e with grave'
  end

  entry do
    td_command '11101001'
    td_command '351'
    td_command '233'
    td_command '0xE9'
    td_command 'é'
    td_command '&#233; or &eacute;'
    name 'Latin small letter e with acute'
  end

  entry do
    td_command '11101010'
    td_command '352'
    td_command '234'
    td_command '0xEA'
    td_command 'ê'
    td_command '&#234; or &ecirc;'
    name 'Latin small letter e with circumflex'
  end

  entry do
    td_command '11101011'
    td_command '353'
    td_command '235'
    td_command '0xEB'
    td_command 'ë'
    td_command '&#235; or &euml;'
    name 'Latin small letter e with diaeresis'
  end

  entry do
    td_command '11101100'
    td_command '354'
    td_command '236'
    td_command '0xEC'
    td_command 'ì'
    td_command '&#236; or &igrave;'
    name 'Latin small letter i with grave'
  end

  entry do
    td_command '11101101'
    td_command '355'
    td_command '237'
    td_command '0xED'
    td_command 'í'
    td_command '&#237; or &iacute;'
    name 'Latin small letter i with acute'
  end

  entry do
    td_command '11101110'
    td_command '356'
    td_command '238'
    td_command '0xEE'
    td_command 'î'
    td_command '&#238; or &icirc;'
    name 'Latin small letter i with circumflex'
  end

  entry do
    td_command '11101111'
    td_command '357'
    td_command '239'
    td_command '0xEF'
    td_command 'ï'
    td_command '&#239; or &iuml;'
    name 'Latin small letter i with diaeresis'
  end

  entry do
    td_command '11110000'
    td_command '360'
    td_command '240'
    td_command '0xF0'
    td_command 'ð'
    td_command '&#240; or &eth;'
    name 'Latin small letter eth'
  end

  entry do
    td_command '11110001'
    td_command '361'
    td_command '241'
    td_command '0xF1'
    td_command 'ñ'
    td_command '&#241; or &ntilde;'
    name 'Latin small letter n with tilde'
  end

  entry do
    td_command '11110010'
    td_command '362'
    td_command '242'
    td_command '0xF2'
    td_command 'ò'
    td_command '&#242; or &ograve;'
    name 'Latin small letter o with grave'
  end

  entry do
    td_command '11110011'
    td_command '363'
    td_command '243'
    td_command '0xF3'
    td_command 'ó'
    td_command '&#243; or &oacute;'
    name 'Latin small letter o with acute'
  end

  entry do
    td_command '11110100'
    td_command '364'
    td_command '244'
    td_command '0xF4'
    td_command 'ô'
    td_command '&#244; or &ocirc;'
    name 'Latin small letter o with circumflex'
  end

  entry do
    td_command '11110101'
    td_command '365'
    td_command '245'
    td_command '0xF5'
    td_command 'õ'
    td_command '&#245; or &otilde;'
    name 'Latin small letter o with tilde'
  end

  entry do
    td_command '11110110'
    td_command '366'
    td_command '246'
    td_command '0xF6'
    td_command 'ö'
    td_command '&#246; or &ouml;'
    name 'Latin small letter o with diaeresis'
  end

  entry do
    td_command '11110111'
    td_command '367'
    td_command '247'
    td_command '0xF7'
    td_command '÷'
    td_command '&#247; or &divide;'
    name 'Division sign'
  end

  entry do
    td_command '11111000'
    td_command '370'
    td_command '248'
    td_command '0xF8'
    td_command 'ø'
    td_command '&#248; or &oslash;'
    name 'Latin small letter o with slash'
  end

  entry do
    td_command '11111001'
    td_command '371'
    td_command '249'
    td_command '0xF9'
    td_command 'ù'
    td_command '&#249; or &ugrave;'
    name 'Latin small letter u with grave'
  end

  entry do
    td_command '11111010'
    td_command '372'
    td_command '250'
    td_command '0xFA'
    td_command 'ú'
    td_command '&#250; or &uacute;'
    name 'Latin small letter u with acute'
  end

  entry do
    td_command '11111011'
    td_command '373'
    td_command '251'
    td_command '0xFB'
    td_command 'û'
    td_command '&#251; or &ucirc;'
    name 'Latin small letter u with circumflex'
  end

  entry do
    td_command '11111100'
    td_command '374'
    td_command '252'
    td_command '0xFC'
    td_command 'ü'
    td_command '&#252; or &uuml;'
    name 'Latin small letter u with diaeresis'
  end

  entry do
    td_command '11111101'
    td_command '375'
    td_command '253'
    td_command '0xFD'
    td_command 'ý'
    td_command '&#253; or &yacute;'
    name 'Latin small letter y with acute'
  end

  entry do
    td_command '11111110'
    td_command '376'
    td_command '254'
    td_command '0xFE'
    td_command 'þ'
    td_command '&#254; or &thorn;'
    name 'Latin small letter thorn'
  end

  entry do
    td_command '11111111'
    td_command '377'
    td_command '255'
    td_command '0xFF'
    td_command 'ÿ'
    td_command '&#255; or &yuml;'
    name 'Latin small letter y with diaeresis'
  end

  end

end
