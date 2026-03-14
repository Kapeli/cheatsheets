cheatsheet do
  title 'Marimo'
  docset_file_name 'Marimo'
  keyword 'marimo'
  source_url 'http://cheat.kapeli.com'

  introduction 'Marimo - A reactive Python notebook that is reproducible, git-friendly, and deployable as scripts or apps'

  category do
    id 'Installation'

    entry do
      name 'Install (minimal)'
      notes <<-'END'
        ```bash
        pip install marimo
        # or
        uv add marimo
        # or
        conda install -c conda-forge marimo
        ```
      END
    end

    entry do
      name 'Install (recommended extras)'
      notes <<-'END'
        ```bash
        pip install "marimo[recommended]"
        # or
        uv add "marimo[recommended]"
        ```

        Includes DuckDB, Altair, Polars, Ruff, and more.
      END
    end

    entry do
      name 'Verify installation with tutorial'
      notes <<-'END'
        ```bash
        marimo tutorial intro
        # or with uv
        uv run marimo tutorial intro
        ```
      END
    end
  end

  category do
    id 'CLI Commands'

    entry do
      name 'Create and edit a notebook'
      notes <<-'END'
        ```bash
        marimo edit notebook.py
        ```

        Creates a new notebook or opens an existing one in the browser.
      END
    end

    entry do
      name 'Run notebook as app'
      notes <<-'END'
        ```bash
        marimo run notebook.py
        ```

        Runs the notebook as a read-only web app.
      END
    end

    entry do
      name 'Run notebook as a script'
      notes <<-'END'
        ```bash
        python notebook.py
        ```

        Execute notebook cells top-to-bottom as a standard Python script.
      END
    end

    entry do
      name 'Export to HTML'
      notes <<-'END'
        ```bash
        marimo export html notebook.py -o output.html
        ```
      END
    end

    entry do
      name 'Export to script'
      notes <<-'END'
        ```bash
        marimo export script notebook.py -o script.py
        ```
      END
    end

    entry do
      name 'Convert Jupyter notebook to Marimo'
      notes <<-'END'
        ```bash
        marimo convert notebook.ipynb -o notebook.py
        ```
      END
    end

    entry do
      name 'New notebook (no file)'
      notes <<-'END'
        ```bash
        marimo edit
        ```

        Opens a new untitled notebook in the browser.
      END
    end
  end

  category do
    id 'Core Concepts'

    entry do
      name 'Import marimo'
      notes <<-'END'
        ```python
        import marimo as mo
        ```

        The single entry point for all Marimo features.
      END
    end

    entry do
      name 'Reactive cells'
      notes <<-'END'
        Cells are connected via a **directed acyclic graph** based on variable
        definitions and references. When a cell runs, all downstream cells
        that depend on its variables automatically re-run.

        - No hidden state: deleting a cell removes its variables
        - Execution order is determined by data dependencies, not cell position
      END
    end

    entry do
      name 'Displaying output'
      notes <<-'END'
        ```python
        # The last expression in a cell is displayed automatically
        mo.md("Hello, **world**!")

        # Use mo.output.append() to display multiple outputs
        mo.output.append(mo.md("First"))
        mo.output.append(mo.md("Second"))
        ```
      END
    end

    entry do
      name 'Mutation caveat'
      notes <<-'END'
        Marimo does **not** track object mutations. Mutating a variable in a
        different cell than where it was defined will not trigger reactive updates.

        ```python
        # BAD: define in cell A, mutate in cell B
        # GOOD: define and mutate in the same cell
        df["new_col"] = df["a"] + df["b"]  # same cell as df definition
        ```
      END
    end
  end

  category do
    id 'Markdown & Display'

    entry do
      name 'Render markdown'
      notes <<-'END'
        ```python
        mo.md("# Heading\n\nSome **bold** and _italic_ text.")
        ```
      END
    end

    entry do
      name 'Interpolate Python values in markdown'
      notes <<-'END'
        ```python
        name = "Alice"
        mo.md(f"Hello, **{name}**!")
        ```

        Embed UI elements or computed values directly into markdown.
      END
    end

    entry do
      name 'Embed UI element in markdown'
      notes <<-'END'
        ```python
        slider = mo.ui.slider(1, 10)
        mo.md(f"Pick a value: {slider}")
        ```
      END
    end

    entry do
      name 'Render LaTeX'
      notes <<-'END'
        ```python
        # Inline math (use raw string for backslashes)
        mo.md(r"The formula is $E = mc^2$")

        # Display math
        mo.md(r"$$\int_0^\infty e^{-x^2} dx = \frac{\sqrt{\pi}}{2}$$")
        ```
      END
    end

    entry do
      name 'Render icon'
      notes <<-'END'
        ```python
        mo.icon("lucide:rocket")
        mo.icon("lucide:leaf", size=20, color="green")
        ```

        Uses the Iconify library. Format: `"icon-set:icon-name"`.
      END
    end

    entry do
      name 'Callout box'
      notes <<-'END'
        ```python
        mo.callout(mo.md("**Warning:** This is important!"), kind="warn")
        # kind: "info" | "success" | "warn" | "danger"
        ```
      END
    end

    entry do
      name 'Stat display'
      notes <<-'END'
        ```python
        mo.stat(value="42", label="Total users", caption="as of today")
        ```
      END
    end
  end

  category do
    id 'Layout'

    entry do
      name 'Horizontal stack'
      notes <<-'END'
        ```python
        mo.hstack([mo.md("Left"), mo.md("Right")])
        mo.hstack([item1, item2], gap=2, justify="space-between")
        ```
      END
    end

    entry do
      name 'Vertical stack'
      notes <<-'END'
        ```python
        mo.vstack([mo.md("Top"), mo.md("Bottom")])
        mo.vstack([item1, item2], gap=1, align="stretch")
        ```
      END
    end

    entry do
      name 'Accordion (collapsible)'
      notes <<-'END'
        ```python
        mo.accordion({
            "Section 1": mo.md("Content of section 1"),
            "Section 2": mo.md("Content of section 2"),
        })
        ```
      END
    end

    entry do
      name 'Tabs'
      notes <<-'END'
        ```python
        tabs = mo.ui.tabs({
            "Tab A": mo.md("Content A"),
            "Tab B": mo.md("Content B"),
        })
        tabs
        # Access selected tab: tabs.value
        ```
      END
    end

    entry do
      name 'Sidebar'
      notes <<-'END'
        ```python
        mo.sidebar(mo.md("Sidebar content"))
        ```
      END
    end

    entry do
      name 'Align content'
      notes <<-'END'
        ```python
        mo.center(mo.md("Centered text"))
        mo.left(mo.md("Left-aligned"))
        mo.right(mo.md("Right-aligned"))
        ```
      END
    end

    entry do
      name 'Carousel'
      notes <<-'END'
        ```python
        mo.carousel([mo.md("Slide 1"), mo.md("Slide 2"), mo.md("Slide 3")])
        ```
      END
    end

    entry do
      name 'Lazy load'
      notes <<-'END'
        ```python
        mo.lazy(expensive_computation())
        ```

        Defers rendering until the element is visible in the viewport.
      END
    end
  end

  category do
    id 'UI Inputs - Basic'

    entry do
      name 'Slider'
      notes <<-'END'
        ```python
        slider = mo.ui.slider(start=0, stop=100, step=1, value=50)
        slider
        # Access value: slider.value
        ```
      END
    end

    entry do
      name 'Range slider'
      notes <<-'END'
        ```python
        range_slider = mo.ui.range_slider(start=0, stop=100, value=[20, 80])
        range_slider
        # Access value: range_slider.value  # [low, high]
        ```
      END
    end

    entry do
      name 'Number input'
      notes <<-'END'
        ```python
        num = mo.ui.number(start=0, stop=100, step=0.5, value=10)
        num
        # Access value: num.value
        ```
      END
    end

    entry do
      name 'Text input'
      notes <<-'END'
        ```python
        text = mo.ui.text(placeholder="Enter text...", label="Name")
        text
        # Access value: text.value
        ```
      END
    end

    entry do
      name 'Text area'
      notes <<-'END'
        ```python
        area = mo.ui.text_area(placeholder="Enter multiline text...", rows=5)
        area
        # Access value: area.value
        ```
      END
    end

    entry do
      name 'Checkbox'
      notes <<-'END'
        ```python
        cb = mo.ui.checkbox(label="Enable feature", value=False)
        cb
        # Access value: cb.value  # True or False
        ```
      END
    end

    entry do
      name 'Switch'
      notes <<-'END'
        ```python
        sw = mo.ui.switch(label="Dark mode", value=False)
        sw
        # Access value: sw.value  # True or False
        ```
      END
    end

    entry do
      name 'Dropdown'
      notes <<-'END'
        ```python
        dd = mo.ui.dropdown(
            options=["Option A", "Option B", "Option C"],
            value="Option A",
            label="Choose one",
        )
        dd
        # Access value: dd.value
        ```
      END
    end

    entry do
      name 'Radio buttons'
      notes <<-'END'
        ```python
        radio = mo.ui.radio(
            options=["Red", "Green", "Blue"],
            value="Red",
            label="Pick a color",
        )
        radio
        # Access value: radio.value
        ```
      END
    end

    entry do
      name 'Multiselect'
      notes <<-'END'
        ```python
        ms = mo.ui.multiselect(
            options=["A", "B", "C", "D"],
            label="Select multiple",
        )
        ms
        # Access value: ms.value  # list of selected items
        ```
      END
    end
  end

  category do
    id 'UI Inputs - Advanced'

    entry do
      name 'Button'
      notes <<-'END'
        ```python
        btn = mo.ui.button(label="Click me", kind="success")
        btn
        # Access click count: btn.value
        ```
      END
    end

    entry do
      name 'Run button (prevents auto-execution)'
      notes <<-'END'
        ```python
        run_btn = mo.ui.run_button(label="Run computation")
        run_btn
        # Cell with run_btn.value only executes when button is clicked
        ```
      END
    end

    entry do
      name 'Date picker'
      notes <<-'END'
        ```python
        date = mo.ui.date(label="Pick a date")
        date
        # Access value: date.value  # datetime.date object
        ```
      END
    end

    entry do
      name 'Date range picker'
      notes <<-'END'
        ```python
        dr = mo.ui.date_range(label="Date range")
        dr
        # Access value: dr.value  # (start_date, end_date)
        ```
      END
    end

    entry do
      name 'File upload'
      notes <<-'END'
        ```python
        upload = mo.ui.file(label="Upload a file", filetypes=[".csv", ".json"])
        upload
        # Access contents: upload.contents()  # bytes
        # Access name: upload.name()
        ```
      END
    end

    entry do
      name 'File browser'
      notes <<-'END'
        ```python
        browser = mo.ui.file_browser(initial_path=".", multiple=False)
        browser
        # Access path: browser.path()
        ```
      END
    end

    entry do
      name 'Interactive table'
      notes <<-'END'
        ```python
        table = mo.ui.table(
            data=[{"name": "Alice", "age": 30}, {"name": "Bob", "age": 25}],
            selection="single",  # "single" | "multi" | None
        )
        table
        # Access selected rows: table.value
        ```
      END
    end

    entry do
      name 'Interactive dataframe'
      notes <<-'END'
        ```python
        df_ui = mo.ui.dataframe(df)
        df_ui
        # Access transformed dataframe: df_ui.value
        ```
      END
    end

    entry do
      name 'Code editor'
      notes <<-'END'
        ```python
        editor = mo.ui.code_editor(value="print('hello')", language="python")
        editor
        # Access value: editor.value
        ```
      END
    end

    entry do
      name 'Chat interface'
      notes <<-'END'
        ```python
        def respond(messages, config):
            return "Echo: " + messages[-1].content

        chat = mo.ui.chat(respond, prompts=["Hello", "Tell me a joke"])
        chat
        ```
      END
    end

    entry do
      name 'Form (submit on button click)'
      notes <<-'END'
        ```python
        form = mo.ui.text(label="Your name").form()
        form
        # Access submitted value: form.value
        ```
      END
    end

    entry do
      name 'Array of inputs'
      notes <<-'END'
        ```python
        arr = mo.ui.array([mo.ui.slider(1, 10), mo.ui.slider(1, 10)])
        arr
        # Access values: arr.value  # list of values
        ```
      END
    end

    entry do
      name 'Dictionary of inputs'
      notes <<-'END'
        ```python
        d = mo.ui.dictionary({
            "x": mo.ui.slider(1, 10),
            "y": mo.ui.slider(1, 10),
        })
        d
        # Access values: d.value  # {"x": ..., "y": ...}
        ```
      END
    end

    entry do
      name 'Refresh button'
      notes <<-'END'
        ```python
        refresh = mo.ui.refresh(default_interval="1s")
        refresh
        # Cell re-runs at the given interval while refresh is active
        ```
      END
    end
  end

  category do
    id 'Interactive Plotting'

    entry do
      name 'Altair chart (interactive)'
      notes <<-'END'
        ```python
        import altair as alt

        chart = alt.Chart(df).mark_point().encode(x="x", y="y")
        chart_ui = mo.ui.altair_chart(chart)
        chart_ui
        # Access selected points: chart_ui.value  # filtered DataFrame
        ```
      END
    end

    entry do
      name 'Plotly chart (interactive)'
      notes <<-'END'
        ```python
        import plotly.express as px

        fig = px.scatter(df, x="x", y="y")
        chart_ui = mo.ui.plotly(fig)
        chart_ui
        # Access selected data: chart_ui.value
        ```
      END
    end

    entry do
      name 'Matplotlib figure'
      notes <<-'END'
        ```python
        import matplotlib.pyplot as plt

        fig, ax = plt.subplots()
        ax.plot([1, 2, 3], [4, 5, 6])
        mo.ui.matplotlib(fig)
        ```
      END
    end
  end

  category do
    id 'State Management'

    entry do
      name 'Create reactive state'
      notes <<-'END'
        ```python
        get_count, set_count = mo.state(0)

        # Read value
        current = get_count()

        # Update value (triggers dependent cells to re-run)
        set_count(current + 1)
        ```
      END
    end

    entry do
      name 'State with button'
      notes <<-'END'
        ```python
        get_count, set_count = mo.state(0)

        increment = mo.ui.button(
            label="Increment",
            on_click=lambda _: set_count(get_count() + 1),
        )
        increment
        ```

        Then in another cell:
        ```python
        mo.md(f"Count: **{get_count()}**")
        ```
      END
    end
  end

  category do
    id 'Control Flow'

    entry do
      name 'Stop execution conditionally'
      notes <<-'END'
        ```python
        mo.stop(condition, output=mo.md("Stopped because condition was met"))
        ```

        Halts the current cell and downstream cells when `condition` is True.
      END
    end

    entry do
      name 'Show loading spinner'
      notes <<-'END'
        ```python
        with mo.status.spinner(title="Loading..."):
            result = long_running_function()
        ```
      END
    end

    entry do
      name 'Progress bar'
      notes <<-'END'
        ```python
        with mo.status.progress_bar(range(100)) as bar:
            for i in bar:
                do_work(i)
        ```
      END
    end

  end

  category do
    id 'SQL'

    entry do
      name 'Query a DataFrame with SQL'
      notes <<-'END'
        In a SQL cell (toggle cell language to SQL), write:
        ```sql
        SELECT * FROM df WHERE age > 30
        ```

        The result is automatically stored in the `_df` variable (or a
        custom variable name set in the cell options).
      END
    end

    entry do
      name 'DuckDB query in Python'
      notes <<-'END'
        ```python
        import duckdb

        result = duckdb.sql("SELECT * FROM df WHERE age > 30").df()
        ```
      END
    end
  end

  category do
    id 'Keyboard Shortcuts'

    entry do
      command 'Ctrl/Cmd-Enter'
      name 'Run cell'
    end

    entry do
      command 'Shift-Enter'
      name 'Run cell and create new cell below'
    end

    entry do
      command 'Ctrl/Cmd-Shift-Enter'
      name 'Run all stale cells'
    end

    entry do
      command 'Ctrl/Cmd-S'
      name 'Save notebook'
    end

    entry do
      command 'Ctrl/Cmd-Shift-H'
      name 'Open hotkeys menu'
    end

    entry do
      command 'Ctrl/Cmd-Shift-P'
      name 'Open command palette'
    end

    entry do
      command 'Ctrl/Cmd-Shift-F'
      name 'Find and replace'
    end

    entry do
      command 'Ctrl/Cmd-Shift-K'
      name 'Delete cell'
    end

    entry do
      command 'Ctrl/Cmd-Shift-.'
      name 'Interrupt kernel'
    end

    entry do
      command 'Ctrl/Cmd-Shift-`'
      name 'Toggle terminal'
    end

    entry do
      command 'Ctrl/Cmd-Shift-M'
      name 'Toggle minimap'
    end

    entry do
      command 'Ctrl/Cmd-Shift-B'
      name 'Toggle sidebar'
    end

    entry do
      command 'Ctrl/Cmd-Shift-L'
      name 'Format all cells (with Ruff)'
    end
  end

  category do
    id 'Running as App'

    entry do
      name 'Run as web app'
      notes <<-'END'
        ```bash
        marimo run notebook.py
        ```

        Serves the notebook as a read-only interactive app. Users can interact
        with UI elements but cannot edit code.
      END
    end

    entry do
      name 'Run app on specific port'
      notes <<-'END'
        ```bash
        marimo run notebook.py --port 8080
        ```
      END
    end

    entry do
      name 'Pass CLI arguments to notebook'
      notes <<-'END'
        ```python
        # In notebook, access args with:
        args = mo.cli_args()
        name = args.get("name", "world")
        mo.md(f"Hello, {name}!")
        ```

        ```bash
        marimo run notebook.py -- --name Alice
        ```
      END
    end
  end

  notes <<-'END'
    * Based on [Marimo documentation](https://docs.marimo.io/)
    * Marimo is open source: [github.com/marimo-team/marimo](https://github.com/marimo-team/marimo)
    * Notebooks are stored as pure Python files, making them git-friendly
    * CheatSheet author: Ismail Hatim
  END
end
