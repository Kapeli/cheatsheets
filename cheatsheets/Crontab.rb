cheatsheet do
  title "Crontab"
  docset_file_name "crontab"
  keyword "cron"

  category do
    id "Editing Crontab"
    entry do
      notes <<-NOTES
      Editing Crontab:

      ```shell
      crontab -e
      ```

      You may need to set your default editor through the EDITOR shell variable.
      You can use an inline environment variable:

      ```shell
      EDITOR=vi crontab -e
      ```
      NOTES
    end
  end

  category do
    id "Crontab File Format"

    entry do
      notes <<-NOTES
      <pre>
      *        *      *             *      *             &lt;command&gt;
      minutes  hours  day of month  month  day of week

     
      field         allowed values
      -----         --------------
      minute        0-59
      hour          0-23
      day of month  1-31
      month         1-12
      day of week   0-7 (0 or 7 is Sun, or use names)
      </pre>
      NOTES
    end
  end
end
