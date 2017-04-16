cheatsheet do
  title 'Date Format Patterns'
  docset_file_name 'Date_Format_Patterns'
  keyword 'Date Format Patterns'
  source_url 'http://cheat.kapeli.com'

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
    id 'Date Field Symbol Table'
    entry do
      notes <<-'END'
<table cellspacing="0" cellpadding="2" border="1">
		<tbody><tr>
			<th>Field</th>
			<th style="text-align: center">Sym.</th>
			<th style="text-align: center">No.</th>
			<th>Example</th>
			<th>Description</th>
		</tr>
		<tr>
			<th rowspan="3" style="vertical-align: top; text-align: left">era</th>
			<td style="text-align: center; vertical-align: top" rowspan="3">G</td>
			<td style="text-align: center; vertical-align: top">1..3</td>
			<td style="vertical-align: top; text-align: left">AD</td>
			<td rowspan="3" style="vertical-align: top; text-align: left">Era - Replaced with the Era string for the current date. One to three letters for the 
			abbreviated form, four letters for the long form, five for the narrow form.</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">Anno Domini</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">A</td>
		</tr>
		<tr>
			<th rowspan="3">year</th>
			<td style="text-align: center">y</td>
			<td style="text-align: center">1..n</td>
			<td>1996</td>
			<td>Year. Normally the length specifies the padding, but for two letters it also specifies the maximum length. Example:<div align="center">
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
			</td>
		</tr>
		<tr>
			<td style="text-align: center">Y</td>
			<td style="text-align: center">1..n</td>
			<td>1997</td>
			<td>Year (in "Week of Year" based calendars). This year designation is used in ISO year-week calendar as defined by ISO 8601, but can be used in non-Gregorian based calendar systems where week date processing is desired. May not always be the same value as calendar year.</td>
		</tr>
		<tr>
			<td style="text-align: center">u</td>
			<td style="text-align: center">1..n</td>
			<td>4601</td>
			<td>Extended year. This is a single number designating the year of this calendar system, encompassing all supra-year fields. For example, for the Julian 
			calendar system, year numbers are positive, with an era of BCE or CE. An extended year value for the Julian calendar system assigns positive values 
			to CE years and negative values to BCE years, with 1 BCE being year 0.</td>
		</tr>
		<tr>
			<th rowspan="6" style="vertical-align: top; text-align: left">quarter</th>
			<td style="text-align: center; vertical-align: top" rowspan="3">Q</td>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">02</td>
			<td rowspan="3" style="vertical-align: top; text-align: left">Quarter - Use one or two for the numerical quarter, three for the abbreviation, or four 
			for the full name.</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Q2</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">2nd quarter</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top" rowspan="3">q</td>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">02</td>
			<td rowspan="3" style="vertical-align: top; text-align: left"><b>Stand-Alone</b> Quarter - Use one or two for the numerical quarter, three for the abbreviation, 
			or four for the full name.</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">3</td>
			<td style="vertical-align: top; text-align: left">Q2</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">2nd quarter</td>
		</tr>
		<tr>
			<th rowspan="9" style="vertical-align: top; text-align: left">month</th>
			<td rowspan="4" style="text-align: center; vertical-align: top">M</td>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">09</td>
			<td rowspan="4" style="vertical-align: top; text-align: left">Month - Use one or two for the numerical month, three for the abbreviation, or four for 
			the full name, or five for the narrow name.</td>
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
		<tr>
			<td rowspan="4" style="text-align: center; vertical-align: top">L</td>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">09</td>
			<td rowspan="4" style="vertical-align: top; text-align: left"><b>Stand-Alone</b> Month - Use one or two for the numerical month, three for the abbreviation, 
			or four for the full name, or 5 for the narrow name.</td>
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
		<tr>
			<td style="text-align: center">l</td>
			<td style="text-align: center">1</td>
			<td>*</td>
			<td>Special symbol for Chinese leap month, used in combination 
			with M. Only used with the Chinese calendar.</td>
		</tr>
		<tr>
			<th rowspan="2">week</th>
			<td style="text-align: center">w</td>
			<td style="text-align: center">1..2</td>
			<td>27</td>
			<td>Week of Year.</td>
		</tr>
		<tr>
			<td style="text-align: center">W</td>
			<td style="text-align: center">1</td>
			<td>3</td>
			<td>Week of Month</td>
		</tr>
		<tr>
			<th rowspan="4">day</th>
			<td style="text-align: center">d</td>
			<td style="text-align: center">1..2</td>
			<td>1</td>
			<td>Date - Day of the month</td>
		</tr>
		<tr>
			<td style="text-align: center">D</td>
			<td style="text-align: center">1..3</td>
			<td>345</td>
			<td>Day of year</td>
		</tr>
		<tr>
			<td style="text-align: center">F</td>
			<td style="text-align: center">1</td>
			<td>2<br>
&nbsp;</td>
			<td>Day of Week in Month. The example is for the 2nd Wed in July</td>
		</tr>
		<tr>
			<td style="text-align: center">g</td>
			<td style="text-align: center">1..n</td>
			<td>2451334</td>
			<td>Modified Julian day. This is different from the conventional Julian day number in two regards. First, it demarcates days at local zone midnight, 
			rather than noon GMT. Second, it is a local number; that is, it depends on the local time zone. It can be thought of as a single number that encompasses 
			all the date-related fields.</td>
		</tr>
		<tr>
			<th rowspan="11" style="vertical-align: top; text-align: left">week<br>
			day</th>
			<td rowspan="3" style="text-align: center; vertical-align: top">E</td>
			<td style="text-align: center; vertical-align: top">1..3</td>
			<td style="vertical-align: top; text-align: left">Tues</td>
			<td rowspan="3" style="vertical-align: top; text-align: left">Day of week - Use one through three letters for the short day, or four for the full name, 
			or five for the narrow name.</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">4</td>
			<td style="vertical-align: top; text-align: left">Tuesday</td>
		</tr>
		<tr>
			<td style="text-align: center; vertical-align: top">5</td>
			<td style="vertical-align: top; text-align: left">T</td>
		</tr>
		<tr>
			<td rowspan="4" style="text-align: center; vertical-align: top">e</td>
			<td style="text-align: center; vertical-align: top">1..2</td>
			<td style="vertical-align: top; text-align: left">2</td>
			<td rowspan="4" style="vertical-align: top; text-align: left">Local day of week. Same as E except adds a numeric value that will depend on the local 
			starting day of the week, using one or two letters. For this example, Monday is the first day of the week.</td>
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
		<tr>
			<td rowspan="4" style="text-align: center; vertical-align: top">c</td>
			<td style="text-align: center; vertical-align: top">1</td>
			<td style="vertical-align: top; text-align: left">2</td>
			<td rowspan="4" style="vertical-align: top; text-align: left"><b>Stand-Alone</b> local day of week - Use one letter for the local numeric value (same 
			as 'e'), three for the short day, or four for the full name, or five for the narrow name. </td>
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
		<tr>
			<th>period</th>
			<td style="text-align: center">a</td>
			<td style="text-align: center">1</td>
			<td>AM</td>
			<td>AM or PM</td>
		</tr>
		<tr>
			<th rowspan="5">hour</th>
			<td style="text-align: center">h</td>
			<td style="text-align: center">1..2</td>
			<td>11</td>
			<td>Hour [1-12]. </td>
		</tr>
		<tr>
			<td style="text-align: center">H</td>
			<td style="text-align: center">1..2</td>
			<td>13</td>
			<td>Hour [0-23].</td>
		</tr>
		<tr>
			<td style="text-align: center">K</td>
			<td style="text-align: center">1..2</td>
			<td>0</td>
			<td>Hour [0-11].</td>
		</tr>
		<tr>
			<td style="text-align: center">k</td>
			<td style="text-align: center">1..2</td>
			<td>24</td>
			<td>Hour [1-24].</td>
		</tr>
		<tr>
			<td style="text-align: center">j</td>
			<td style="text-align: center">1..2</td>
			<td>n/a</td>
			<td>This is a special-purpose symbol. It must not occur in patterns, but is reserved for use in APIs doing flexible date pattern 
			generation, and requests the preferred format (12 vs 24 hour) for the language in question.</td>
		</tr>
		<tr>
			<th>minute</th>
			<td style="text-align: center">m</td>
			<td style="text-align: center">1..2</td>
			<td>59</td>
			<td>Minute. Use one or two for zero padding.</td>
		</tr>
		<tr>
			<th rowspan="3">second</th>
			<td style="text-align: center">s</td>
			<td style="text-align: center">1..2</td>
			<td>12</td>
			<td>Second. Use one or two for zero padding.</td>
		</tr>
		<tr>
			<td style="text-align: center">S</td>
			<td style="text-align: center">1..n</td>
			<td>3457</td>
			<td>Fractional Second - rounds to the count of letters. (example is for 12.34567)</td>
		</tr>
		<tr>
			<td style="text-align: center">A</td>
			<td style="text-align: center">1..n</td>
			<td>69540000</td>
			<td>Milliseconds in day. This field behaves <i>exactly</i> like a composite of all time-related fields, not including the zone fields. As such, it also 
			reflects discontinuities of those fields on DST transition days. On a day of DST onset, it will jump forward. On a day of DST cessation, it will jump 
			backward. This reflects the fact that is must be combined with the offset field to obtain a unique local time value.</td>
		</tr>
		<tr>
			<th rowspan="8" style="vertical-align: top; text-align: left">zone</th>
			<td rowspan="2" style="vertical-align: top; text-align: left">z</td>
			<td style="vertical-align: top; text-align: left">1..3</td>
			<td style="vertical-align: top; text-align: left">PDT<p><i>fallbacks:</i></p>
			HPG-8:00<p>GMT-08:00</p></td>
			<td rowspan="2" style="vertical-align: top; text-align: left">Timezone - 
			with 
			the s<i>pecific non-location format</i>. Where that is unavailable, falls back to <i>
			localized GMT format</i>. Use one to three letters for the short 
			format 
			or four for the full format. In the short format, 
			metazone names are not used unless the commonlyUsed flag is on in the locale.<p>For more 
			information about timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: left">4</td>
			<td style="vertical-align: top; text-align: left">Pacific Daylight Time<p><i>
			fallbacks:</i></p>
			HPG-8:00<p>GMT-08:00</p></td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align: top; text-align: left">Z</td>
			<td style="vertical-align: top; text-align: left">1..3</td>
			<td style="vertical-align: top; text-align: left">-0800</td>
			<td rowspan="2" style="vertical-align: top; text-align: left">Timezone - Use one to three letters for RFC 822 
			format, four letters for 
			the localized GMT format.<p>For more information about 
			timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: left">4</td>
			<td style="vertical-align: top; text-align: left">HPG+8:00<p>
			<i>fallbacks:</i></p>
			<p>GMT-08:00</p></td>
		</tr>
		<tr>
			<td rowspan="2" style="vertical-align: top; text-align: left">v</td>
			<td style="vertical-align: top; text-align: left">1</td>
			<td style="vertical-align: top; text-align: left">PT</td>
			<td rowspan="2" style="vertical-align: top; text-align: left">
			Timezone - with the <i>generic</i> <i>non-location format</i>. Where that is unavailable, 
			uses special fallback rules given in <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J</a></i>.  
			Use one letter for short format, four for long
			format.<p>For more information about timezone formats, see <i><a href="#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p></td>
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
		<tr>
			<td rowspan="2" style="vertical-align: top; text-align: left">V</td>
			<td style="vertical-align: top; text-align: left">1</td>
			<td style="vertical-align: top; text-align: left">PST<p><i>fallbacks:</i></p>
			HPG-8:00<p>GMT-08:00</p></td>
			<td style="vertical-align: top; text-align: left">Timezone - 
			with the same format as z, 
			except that metazone timezone abbreviations are to be displayed
			if available, regardless of the value of commonlyUsed.<p>
			For more information about timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p></td>
		</tr>
		<tr>
			<td style="vertical-align: top; text-align: left">4</td>
			<td style="vertical-align: top; text-align: left">United 
			States (Los Angeles) Time<p><i>fallbacks:</i></p>
			<p>HPG-8:35</p>
			<p>GMT-08:35</p></td>
			<td style="vertical-align: top; text-align: left">Timezone - 
			with the <i>generic</i> <i>location format</i>. Where that is unavailable, 
			falls back to the localized GMT format. (Fallback is only necessary with a GMT-style 
			Timezone ID, like Etc/GMT-830.)<p>This is especially 
			useful when presenting possible timezone choices for user selection, 
			since the naming is more uniform than the v format.</p>
			<p>For more information about timezone formats, see <i><a href="http://unicode.org/reports/tr35/tr35-10.html#Time_Zone_Fallback">Appendix J: Time Zone Display Names</a>.</i></p></td>
		</tr>
	</tbody></table>
	      END
    end
  end

  notes <<-'END'
    * Based on the cheat sheet from [unicode.org Date Format Patterns](http://unicode.org/reports/tr35/tr35-10.html#Date_Format_Patterns).
  END


end
