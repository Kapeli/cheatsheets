cheatsheet do
  title 'NSDateFormatter'
  docset_file_name 'NSDateFormatter'
  keyword 'dateformatter'
  source_url 'http://cheat.kapeli.com'

  introduction 'The following examples are mostly based on the time **December 14th, 2008 4:35 PM UTC**.'

  category do
    id 'Year'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 'y'
      td_notes '2008'
      td_notes 'Year, no padding'
    end
    entry do
      name 'yy'
      td_notes '08'
      td_notes 'Year, two digits (padding with a zero if necessary)'
    end
    entry do
      name 'yyyy'
      td_notes '2008'
      td_notes 'Year, minimum of four digits (padding with zeros if necessary)'
    end
  end

  category do
    id 'Quarter'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 'Q'
      td_notes '4'
      td_notes 'The quarter of the year. Use QQ if you want zero padding'
    end
    entry do
      name 'QQQ'
      td_notes 'Q4'
      td_notes 'Quarter including "Q"'
    end
    entry do
      name 'QQQQ'
      td_notes '4th quarter'
      td_notes 'Quarter spelled out'
    end
  end

  category do
    id 'Month'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 'M'
      td_notes '12'
      td_notes 'The numeric month of the year. A single M will use "1" for January'
    end
    entry do
      name 'MM'
      td_notes '12'
      td_notes 'The numeric month of the year. A double M will use "01" for January'
    end
    entry do
      name 'MMM'
      td_notes 'Dec'
      td_notes 'The shorthand name of the month'
    end
    entry do
      name 'MMMM'
      td_notes 'December'
      td_notes 'The full name of the month'
    end
    entry do
      name 'MMMMM'
      td_notes 'D'
      td_notes 'The narrow name of the month'
    end
  end

  category do
    id 'Day'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 'd'
      td_notes '14'
      td_notes 'The day of the month. A single d will use 1 for January 1st'
    end
    entry do
      name 'dd'
      td_notes '14'
      td_notes 'The day of the month. A double d will use 01 for January 1st'
    end
    entry do
      name 'F'
      td_notes '3rd Tuesday in December'
      td_notes 'The day of week in the month'
    end
    entry do
      name 'E'
      td_notes 'Tues'
      td_notes 'The shorthand name of the day'
    end
    entry do
      name 'EEEE'
      td_notes 'Tuesday'
      td_notes 'The full name of the day'
    end
    entry do
      name 'EEEEE'
      td_notes 'T'
      td_notes 'The narrow day of week'
    end
  end

  category do
    id 'Hour'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 'h'
      td_notes '4'
      td_notes 'The 12-hour hour'
    end
    entry do
      name 'hh'
      td_notes '04'
      td_notes 'The 12-hour hour padding with a zero if there is only 1 digit'
    end
    entry do
      name 'H'
      td_notes '16'
      td_notes 'The 24-hour hour'
    end
    entry do
      name 'HH'
      td_notes '16'
      td_notes 'The 24-hour hour padding with a zero if there is only 1 digit'
    end
    entry do
      name 'a'
      td_notes 'PM'
      td_notes 'AM / PM for 12-hour time formats'
    end
  end

  category do
    id 'Minute'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 'm'
      td_notes '35'
      td_notes 'The minute, with no padding for zeroes'
    end
    entry do
      name 'mm'
      td_notes '35'
      td_notes 'The minute with zero padding'
    end
  end

  category do
    id 'Second'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 's'
      td_notes '8'
      td_notes 'The seconds, with no padding for zeroes'
    end
    entry do
      name 'ss'
      td_notes '08'
      td_notes 'The seconds with zero padding'
    end
  end

  category do
    id 'Time Zone'
    header 'Characters'
    header 'Example'
    header 'Description'

    entry do
      name 'zzz'
      td_notes 'CST'
      td_notes 'The 3 letter name of the time zone. Falls back to GMT-08:00 (hour offset) if the name is not known'
    end
    entry do
      name 'zzzz'
      td_notes 'Central Standard Time'
      td_notes 'The expanded time zone name, falls back to GMT-08:00 (hour offset) if name is not known'
    end
    entry do
      name 'ZZZZ'
      td_notes 'CST-06:00'
      td_notes 'Time zone with abbreviation and offset'
    end
    entry do
      name 'Z'
      td_notes '-0600'
      td_notes 'RFC 822 GMT format. Can also match a literal Z for Zulu (UTC) time'
    end
    entry do
      name 'ZZZZZ'
      td_notes '-06:00'
      td_notes 'ISO 8601 time zone format'
    end
  end

  notes <<-'END'
      * Based on [NSDateFormatter.com](http://nsdateformatter.com/) and [Date Format Patterns](http://www.unicode.org/reports/tr35/tr35-31/tr35-dates.html#Date_Format_Patterns) on Unicode.org
  END
end
