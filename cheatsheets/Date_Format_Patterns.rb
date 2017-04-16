cheatsheet do
  title 'Date Format Patterns'
  docset_file_name 'Date_Format_Patterns'
  keyword 'Date Format Patterns'
  source_url 'http://cheat.kapeli.com'
  style '
  
  td.td_notes code {
    border: none;
    box-shadow: none;
    background: none;
    font-family: "Open Sans", sans-serif;
    font-size: medium;
    color: #666666;
  }

  td, th {
    min-width:110px;
  }

  .no-min-width td, .no-min-width th {
    min-width:0;
  }

  td:last-child {
    width:99%;
  }
 '

  introduction <<-INTRO
<p>A date pattern is a string of characters, where specific strings of characters are replaced 
	with date and time data from a calendar when formatting or used to generate data for a calendar 
	when parsing. The following 
	are examples:</p>
<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse">
		<tbody><tr>
			<th width="50%">Pattern</th>
			<th width="50%">Result (in a particular locale)</th>
		</tr>
		<tr>
			<td width="50%">yyyy.MM.dd G 'at' HH:mm:ss zzz</td>
			<td width="50%">1996.07.10 AD at 15:08:56 PDT</td>
		</tr>
		<tr>
			<td width="50%">EEE, MMM d, ''yy</td>
			<td width="50%">Wed, July 10, '96</td>
		</tr>
		<tr>
			<td width="50%">h:mm a</td>
			<td width="50%">12:08 PM</td>
		</tr>
		<tr>
			<td width="50%">hh 'o''clock' a, zzzz</td>
			<td width="50%">12 o'clock PM, Pacific Daylight Time</td>
		</tr>
		<tr>
			<td width="50%">K:mm a, z</td>
			<td width="50%">0:00 PM, PST</td>
		</tr>
		<tr>
			<td width="50%">yyyyy.MMMM.dd GGG hh:mm aaa</td>
			<td width="50%">01996.July.10 AD 12:08 PM</td>
		</tr>
</tbody></table>
INTRO

  category do
    id 'era'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'G' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..3</td>
			<td style="vertical-align: top; text-align: left">AD</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">Anno Domini</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">A</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
      	Era - Replaced with the Era string for the current date. One to three letters for the abbreviated form, four letters for the long form, five for the narrow form.
      END
    end
  end

  category do
    id 'year'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'y' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..n</td>
			<td style="vertical-align: top; text-align: left">1996</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
      	Year. Normally the length specifies the padding, but for two letters it also specifies the maximum length. Example:<div align="center">
				<center>
				<table border="0" cellpadding="2" cellspacing="0">
					<tbody><tr>
						<th>Year</th>
						<th style="text-align: right">y</th>
						<th style="text-align: right">yy</th>
						<th style="text-align: right">yyy</th>
						<th style="text-align: right">yyyy</th>
						<th style="text-align: right">yyyyy</th>
					</tr>
					<tr>
						<td>AD 1</td>
						<td style="text-align: right">1</td>
						<td style="text-align: right">01</td>
						<td style="text-align: right">001</td>
						<td style="text-align: right">0001</td>
						<td style="text-align: right">00001</td>
					</tr>
					<tr>
						<td>AD 12</td>
						<td style="text-align: right">12</td>
						<td style="text-align: right">12</td>
						<td style="text-align: right">012</td>
						<td style="text-align: right">0012</td>
						<td style="text-align: right">00012</td>
					</tr>
					<tr>
						<td>AD 123</td>
						<td style="text-align: right">123</td>
						<td style="text-align: right">23</td>
						<td style="text-align: right">123</td>
						<td style="text-align: right">0123</td>
						<td style="text-align: right">00123</td>
					</tr>
					<tr>
						<td>AD 1234</td>
						<td style="text-align: right">1234</td>
						<td style="text-align: right">34</td>
						<td style="text-align: right">1234</td>
						<td style="text-align: right">1234</td>
						<td style="text-align: right">01234</td>
					</tr>
					<tr>
						<td>AD 12345</td>
						<td style="text-align: right">12345</td>
						<td style="text-align: right">45</td>
						<td style="text-align: right">12345</td>
						<td style="text-align: right">12345</td>
						<td style="text-align: right">12345</td>
					</tr>
				</tbody></table>
				</center></div>
      END
    end
    entry do
      name 'Y' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..n</td>
			<td style="vertical-align: top; text-align: left">1997</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Year (in "Week of Year" based calendars). This year designation is used in ISO year-week calendar as defined by ISO 8601, but can be used in non-Gregorian based calendar systems where week date processing is desired. May not always be the same value as calendar year.
      END
    end
    entry do
      name 'u' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..n</td>
			<td>4601</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Extended year. This is a single number designating the year of this calendar system, encompassing all supra-year fields. For example, for the Julian calendar system, year numbers are positive, with an era of BCE or CE. An extended year value for the Julian calendar system assigns positive values to CE years and negative values to BCE years, with 1 BCE being year 0.
      END
    end
  end

  category do
    id 'quarter'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'Q' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">02</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Q2</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">2nd quarter</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Quarter - Use one or two for the numerical quarter, three for the abbreviation, or four for the full name.
      END
    end
    entry do
      name 'q' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">02</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Q2</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">2nd quarter</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		<b>Stand-Alone</b> Quarter - Use one or two for the numerical quarter, three for the abbreviation, or four for the full name.
      END
    end
  end

  category do
    id 'month'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'M' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">09</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Sept</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">September</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">S</td>
		</tr>

		</tbody>
		</table>
		END
      td_notes <<-'END'
		Month - Use one or two for the numerical month, three for the abbreviation, or four for the full name, or five for the narrow name.
      END
    end
    entry do
      name 'L' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">09</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Sept</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">September</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">S</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		<b>Stand-Alone</b> Month - Use one or two for the numerical month, three for the abbreviation, or four for the full name, or 5 for the narrow name.
      END
    end
    entry do
      name 'l' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1</td>
			<td>*</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Special symbol for Chinese leap month, used in combination with M. Only used with the Chinese calendar.
      END
    end
  end

  category do
    id 'week'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'w' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..2</td>
			<td>27</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Week of Year.
      END
    end
    entry do
      name 'W' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1</td>
			<td>3</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Week of Month
      END
    end
  end

  category do
    id 'day'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'd' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..2</td>
			<td>1</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Date - Day of the month
      END
    end
    entry do
      name 'D' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">D</td>
			<td>1..3</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Day of year
      END
    end
    entry do
      name 'F' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1</td>
			<td>2</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Day of Week in Month. The example is for the 2nd Wed in July
      END
    end
    entry do
      name 'g' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..n</td>
			<td>2451334</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Modified Julian day. This is different from the conventional Julian day number in two regards. First, it demarcates days at local zone midnight, rather than noon GMT. Second, it is a local number; that is, it depends on the local time zone. It can be thought of as a single number that encompasses all the date-related fields.
      END
    end
  end

  category do
    id 'week day'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'E' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..3</td>
			<td style="vertical-align: top; text-align: left">Tues</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">Tuesday</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">T</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Day of week - Use one through three letters for the short day, or four for the full name, or five for the narrow name.
      END
    end
    entry do
      name 'e' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">2</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Tues</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">Tuesday</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">T</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Local day of week. Same as E except adds a numeric value that will depend on the local starting day of the week, using one or two letters. For this example, Monday is the first day of the week.
      END
    end
    entry do
      name 'c' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1</td>
			<td style="vertical-align: top; text-align: left">2</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Tues</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">Tuesday</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">T</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		<b>Stand-Alone</b> local day of week - Use one letter for the local numeric value (same as 'e'), three for the short day, or four for the full name, or five for the narrow name. 
      END
    end
  end

  category do
    id 'period'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'a' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1</td>
			<td>AM</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		AM or PM
      END
    end
  end

  category do
    id 'hour'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'h' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..2</td>
			<td>11</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Hour [1-12].
      END
    end
    entry do
      name 'H' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..2</td>
			<td>13</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Hour [0-23].
      END
    end
    entry do
      name 'K' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..2</td>
			<td>0</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Hour [0-11].
      END
    end
    entry do
      name 'k' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..2</td>
			<td>24</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Hour [1-24].
      END
    end
    entry do
      name 'j' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center">1..2</td>
			<td>n/a</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		This is a special-purpose symbol. It must not occur in patterns, but is reserved for use in APIs doing flexible date pattern generation, and requests the preferred format (12 vs 24 hour) for the language in question.
      END
    end
  end

  category do
    id 'minute'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'm' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">59</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Minute. Use one or two for zero padding.
      END
    end
  end

  category do
    id 'second'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 's' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">12</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Second. Use one or two for zero padding.
      END
    end
    entry do
      name 'S' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..n</td>
			<td style="vertical-align: top; text-align: left">3457</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Fractional Second - rounds to the count of letters. (example is for 12.34567)
      END
    end
    entry do
      name 'A' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="text-align: center; vertical-align: top">1..n</td>
			<td style="vertical-align: top; text-align: left">69540000</td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Milliseconds in day. This field behaves exactly like a composite of all time-related fields, not including the zone fields. As such, it also reflects discontinuities of those fields on DST transition days. On a day of DST onset, it will jump forward. On a day of DST cessation, it will jump backward. This reflects the fact that is must be combined with the offset field to obtain a unique local time value.
      END
    end
  end

  category do
    id 'zone'

    header 'Sym.'
    header 'No.	& Example'
    header 'Description'
    
    entry do
      name 'z' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="vertical-align: top; text-align: left">1..3</td>
			<td style="vertical-align: top; text-align: left">PDT<p><i>fallbacks:</i></p>
			HPG-8:00<p>GMT-08:00</p></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: left">4</td>
			<td style="vertical-align: top; text-align: left">Pacific Daylight Time<p><i>
			fallbacks:</i></p>
			HPG-8:00<p>GMT-08:00</p></td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Timezone - 
			with 
			the s<i>pecific non-location format</i>. Where that is unavailable, falls back to <i> localized GMT format</i>. Use one to three letters for the short format or four for the full format. In the short format, metazone names are not used unless the commonlyUsed flag is on in the locale.<p>For more information about timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p>
      END
    end
    entry do
      name 'Z' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="vertical-align: top; text-align: left">1..3</td>
			<td style="vertical-align: top; text-align: left">-0800</td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: left">4</td>
			<td style="vertical-align: top; text-align: left">HPG+8:00<p>
			<i>fallbacks:</i></p>
			<p>GMT-08:00</p></td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Timezone - Use one to three letters for RFC 822 format, four letters for the localized GMT format.<p>For more information about timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p>
      END
    end
    entry do
      name 'v' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="vertical-align: top; text-align: left">1</td>
			<td style="vertical-align: top; text-align: left">PT</td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: left">4</td>
			<td style="vertical-align: top; text-align: left">Pacific Time<p><i>
			fallbacks:</i></p>
			<p>Pacific Time (Canada)</p>
			<p>Pacific Time (Yellowknife)</p><p>United States (Los Angeles) Time</p><p>
			HPG-8:35</p>
			<p>GMT-08:35</p></td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Timezone - with the <i>generic</i> <i>non-location format</i>. Where that is unavailable, uses special fallback rules given in <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J</a></i>. Use one letter for short format, four for long format.<p>For more information about timezone formats, see <i><a href="#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p>
      END
    end
    entry do
      name 'V' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="vertical-align: top; text-align: left">1</td>
			<td style="vertical-align: top; text-align: left">PST<p><i>fallbacks:</i></p>
			HPG-8:00<p>GMT-08:00</p></td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Timezone - with the same format as z, except that metazone timezone abbreviations are to be displayed if available, regardless of the value of commonlyUsed.<p>For more information about timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p>
      END
    end
    entry do
      name 'V' 
      td_notes <<-'END'
      	<table cellspacing="0" cellpadding="2" border="0">
		<tbody>
		<tr>
			<td style="vertical-align: top; text-align: left">4</td>
			<td style="vertical-align: top; text-align: left">United 
			States (Los Angeles) Time<p><i>fallbacks:</i></p>
			<p>HPG-8:35</p>
			<p>GMT-08:35</p></td>
		</tr>
		</tbody>
		</table>
		END
      td_notes <<-'END'
		Timezone - 
			with the <i>generic</i> <i>location format</i>. Where that is unavailable, falls back to the localized GMT format. (Fallback is only necessary with a GMT-style Timezone ID, like Etc/GMT-830.)<p>This is especially useful when presenting possible timezone choices for user selection, since the naming is more uniform than the v format.</p>	<p>For more information about timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p>
      END
    end
  end
    

  notes <<-'END'
    * Based on the cheat sheet from [unicode.org Date Format Patterns](http://unicode.org/reports/tr35/tr35-10.html#Date_Format_Patterns).
  END


end
