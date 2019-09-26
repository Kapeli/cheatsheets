cheatsheet do
  title "Ruby strftime"
  docset_file_name 'Ruby_strftime'
  keyword 'rubystrftime'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Year'

    entry do
      command '%y'
      name 'Year without a century'
      notes '``00..99``'
    end

    entry do
      command '%Y'
      name 'Year with century'
      notes '``2017``'
    end
  end

  category do
    id 'Month'

    entry do
      command '%b'
      name 'The abbreviated month name'
      notes '``Jan``'
    end

    entry do
      command '%B'
      name 'The  full  month  name'
      notes '``January``'
    end

    entry do
      command '%m'
      name 'Month of the year'
      notes '``01..12``'
    end

    entry do
      command '%-m'
      name 'Month of the year'
      notes '``1..12``'
    end
  end

  category do
    id 'Day'

    entry do
      command '%d'
      name 'Day of the month'
      notes '``01..31``'
    end

    entry do
      command '%e'
      name 'Day of the month without leading zeroes'
      notes '``1..31``'
    end

    entry do
      command '%j'
      name 'Day of the year'
      notes '``001..366``'
    end

    entry do
      command '%w'
      name 'Day of the week. Sunday is ``0``'
      notes '``0..6``'
    end
  end

  category do
    id 'Hour'

    entry do
      command '%H'
      name 'Hour of the day, 24-hour clock'
      notes '``00..23``'
    end

    entry do
      command '%I'
      name 'Hour of the day, 12-hour clock'
      notes '``01..12``'
    end

    entry do
      command '%k'
      name 'Hour of the day, 24-hour clock w/o leading zeroes'
      notes '``0..23``'
    end

    entry do
      command '%l'
      name 'Hour of the day, 12-hour clock w/o leading zeroes'
      notes '``1..12``'
    end
  end

  category do
    id 'Minute & Second'

    entry do
      command '%M'
      name 'Minute of the hour'
      notes '``00..59``'
    end

    entry do
      command '%p'
      name 'Meridian indicator'
      notes '``AM`` or ``PM``'
    end

    entry do
      command '%P'
      name 'Meridian indicator'
      notes '``am`` or ``pm``'
    end

    entry do
      command '%S'
      name 'Second of the minute'
      notes '``00..60``'
    end
  end

  category do
    id 'Week'

    entry do
      command '%U'
      name 'Week number  of the current year, starting with the first Sunday as the first day of the first week'
      notes '``00..53``'
    end

    entry do
      command '%W'
      name 'Week  number  of the current year, starting with the first Monday as the first day of the first week'
      notes '``00..53``'
    end

    entry do
      command '%a'
      name 'The abbreviated weekday name'
      notes '``Sun``'
    end

    entry do
      command '%A'
      name 'The  full  weekday  name'
      notes '``Sunday``'
    end
  end

  category do
    id 'Time Zone'

    entry do
      command '%Z'
      name 'Time zone expressed as a UTC offset with hour-minute separator'
      notes '``+03:00``'
    end

    entry do
      command '%z'
      name 'Time zone expressed as a UTC offset'
      notes '``+0300``'
    end
  end

  category do
    id 'Predefined Formats'
    entry do
      command '%c'
      name 'The preferred local date and time representation'
      notes '``Fri May 12 18:54:56 2017``'
    end

    entry do
      command '%x'
      name 'Preferred representation for the date alone, no time'
      notes '``05/12/17``'
    end

    entry do
      command '%X'
      name 'Preferred representation for the time alone, no date'
      notes '``18:54:21``'
    end

    entry do
      command '%%'
      name 'Literal ``%`` character'
    end
  end

end