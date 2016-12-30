cheatsheet do
  title 'strftime Format Codes'
  docset_file_name 'strftime_Format_Codes'
  keyword 'strftime'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Days'

    entry do
      command '%a'
      name 'Weekday as locale\'s abbreviated name'
      notes 'Sun, Mon, ..., Sat (en\_US); So, Mo, ..., Sa (de\_DE).'
    end

    entry do
      command '%A'
      name 'Weekday as locale\'s full name'
      notes 'Sunday, Monday, ..., Saturday (en\_US); Sonntag, Montag, ..., Samstag (de\_DE).'
    end

    entry do
      command '%w'
      name 'Weekday as a decimal number, where 0 is Sunday and 6 is Saturday'
      notes '0, 1, ..., 6.'
    end

    entry do
      command '%d'
      name 'Day of the month as a zero-padded decimal number'
      notes '01, 02, ..., 31.'
    end
  end

  category do
    id 'Months'

    entry do
      command '%b'
      name 'Month as locale\'s abbreviated name'
      notes 'Jan, Feb, ..., Dec (en\_US); Jan, Feb, ..., Dez (de\_DE).'
    end

    entry do
      command '%B'
      name 'Month as locale\'s full name'
      notes 'January, February, ..., December (en\_US); Januar, Februar, ..., Dezember (de\_DE).'
    end

    entry do
      command '%m'
      name 'Month as a zero-padded decimal number'
      notes '01, 02, ..., 12.'
    end
  end

  category do
    id 'Years'

    entry do
      command '%y'
      name 'Year without century as a zero-padded decimal number'
      notes '00, 01, ..., 99.'
    end

    entry do
      command '%Y'
      name 'Year with century as a decimal number'
      notes '0001, 0002, ..., 2013, 2014, ..., 9998, 9999.'
    end
  end

  category do
    id 'Hours'

    entry do
      command '%H'
      name 'Hour (24-hour clock) as a zero-padded decimal number'
      notes '00, 01, ..., 23.'
    end

    entry do
      command '%I'
      name 'Hour (12-hour clock) as a zero-padded decimal number'
      notes '01, 02, ..., 12.'
    end
  end

  category do
    id 'Minutes and Seconds'

    entry do
      command '%M'
      name 'Minute as a zero-padded decimal number'
      notes '00, 01, ..., 59.'
    end

    entry do
      command '%S'
      name 'Second as a zero-padded decimal number'
      notes '00, 01, ..., 59.'
    end

    entry do
      command '%f'
      name 'Microsecond as a decimal number, zero-padded on the left'
      notes '000000, 000001, ..., 999999.'
    end
  end

  category do
    id 'Other'

    entry do
      command '%p'
      name 'Locale\'s equivalent of either AM or PM'
      notes 'AM, PM (en\_US); am, pm (de\_DE).'
    end

    entry do
      command '%z'
      name 'UTC offset in the form +HHMM or -HHMM (or empty string if the the object is naive)'
      notes '+0000, -0400, +1030.'
    end

    entry do
      command '%Z'
      name 'Time zone name (or empty string if the object is naive)'
      notes 'UTC, EST, CST.'
    end

    entry do
      command '%j'
      name 'Day of the year as a zero-padded decimal number'
      notes '001, 002, ..., 366.'
    end

    entry do
      command '%U'
      name 'Week number of the year (Sunday as the first day of the week) as a zero padded decimal number. All days in a new year preceding the first Sunday are considered to be in week 0'
      notes '00, 01, ..., 53 (7).'
    end

    entry do
      command '%W'
      name 'Week number of the year (Monday as the first day of the week) as a decimal number. All days in a new year preceding the first Monday are considered to be in week 0'
      notes '00, 01, ..., 53 (7).'
    end

    entry do
      command '%c'
      name 'Locale\'s appropriate date and time representation'
      notes 'Tue Aug 16 21:30:00 1988 (en\_US); Di 16 Aug 21:30:00 1988 (de\_DE).'
    end

    entry do
      command '%x'
      name 'Locale\'s appropriate date representation'
      notes '08/16/88 (None); 08/16/1988 (en\_US); 16.08.1988 (de\_DE).'
    end

    entry do
      command '%X'
      name 'Locale\'s appropriate time representation'
      notes '21:30:00 (en\_US); 21:30:00 (de\_DE).'
    end

    entry do
      command '%%'
      name 'A literal \'%\' character'
      notes'%'
    end
  end

  notes 'All examples and descriptions are taken from the [Python datetime documentation](https://docs.python.org/3.4/library/datetime.html#strftime-and-strptime-behavior), but are not specific to Python.'
end
