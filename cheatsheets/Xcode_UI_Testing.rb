cheatsheet do
    title 'Xcode UI Testing'
    docset_file_name 'Xcode_UI_Testing'
    keyword 'xctui'
    source_url 'http://cheat.kapeli.com'

    category do
        id 'Basic Functionality'
        entry do
            name 'Testing if an element exists'
            notes '
          ```swift
          XCTAssert(app.staticTexts["Welcome"].exists)
          ```
          '
        end
        entry do
            name 'Testing if text with an ellipse exists'
            notes '
          A full text match will find an element even if the displayed text has an ellipse due to truncation.

          ```swift
          let longNameCell = app.staticTexts["Adolph Blaine Charles David Earl Frederick Gerald Hubert Irvin John Kenneth Lloyd Martin Nero Oliver Paul Quincy Randolph Sherman Thomas Uncas Victor William Xerxes Yancy Wolfeschlegelsteinhausenbergerdorff, Senior"]
          XCTAssert(longNameCell.exists) // displayed text is "Adolph Blaine Charles David Earl Freder..."
          ```
          '
        end
        entry do
            name 'Waiting for an element to appear'
            notes '
          Set up an expectation to use with XCTest. The predicate will wait until the element\'s `-exist` property is true.

          ```swift
          let goLabel = self.app.staticTexts["Go!"]
          XCTAssertFalse(goLabel.exists)

          let exists = NSPredicate(format: "exists == true")
          expectationForPredicate(exists, evaluatedWithObject: goLabel, handler: nil)

          app.buttons["Ready, set..."].tap()
          waitForExpectationsWithTimeout(5, handler: nil)
          XCTAssert(goLabel.exists)
          ```
          '
        end
    end

    category do
        id 'Interacting with System Controls'
        entry do
            name 'Tapping buttons'
            notes '
          Identify buttons by their accessibility label.

          ```swift
          app.buttons["Add"].tap()
          ```
          '
        end
        entry do
            name 'Typing text'
            notes '
          First make sure the text field has focus by tapping on it.

          ```swift
          let textField = app.textFields["Username"]
          textField.tap()
          textField.typeText("joemasilotti")
          ```
          '
        end
        entry do
            name 'Dismissing alerts'
            notes '
          ```swift
          app.alerts["Alert Title"].buttons["Button Title"].tap()
          ```
          '
        end
        entry do
            name 'Handling system alerts'
            notes '
          Present a location services authorization dialog to the user and dismiss it with the following code.

          Before presenting the alert add a UI Interuption Handler. When this fires, dismiss with the "Allow" button.

          ```swift
          addUIInterruptionMonitorWithDescription("Location Services") { (alert) -> Bool in
            alert.buttons["Allow"].tap()
            return true
          }

          app.buttons["Request Location"].tap()
          app.tap() // need to interact with the app again for the handler to fire
          ```
          '
        end
        entry do
            name 'Sliding sliders'
            notes '
          This will slide the value of the slider to 70%.

          ```swift
          app.sliders.element.adjustToNormalizedSliderPosition(0.7)
          ```
          '
        end
        entry do
            name 'Interacting with pickers'
            notes '
          A picker with one wheel:

          ```swift
          app.pickerWheels.element.adjustToPickerWheelValue("Picker Wheel Item Title")
          ```

          A picker with multiple wheels. Make sure to set the accessibility delegate so the framework can identify the different wheels.

          ```swift
          let firstPredicate = NSPredicate(format: "label BEGINSWITH \'First Picker\'")
          let firstPicker = app.pickerWheels.elementMatchingPredicate(firstPredicate)
          firstPicker.adjustToPickerWheelValue("first value")

          let secondPredicate = NSPredicate(format: "label BEGINSWITH \'Second Picker\'")
          let secondPicker = app.pickerWheels.elementMatchingPredicate(secondPredicate)
          secondPicker.adjustToPickerWheelValue("second value")
          ```
          '
        end
        entry do
            name 'Tapping links in web views'
            notes '
          ```swift
          app.links["Tweet this"].tap()
          ```
          '
        end
    end


    category do
        id 'Interactions'
        entry do
            name 'Verifying the current controller\'s title'
            notes '
          ```swift
          XCTAssert(app.navigationBars["Details"].exists)
          ```
          '
        end
        entry do
            name 'Reordering table cells'
            notes '
          If you have a `UITableViewCell` with default style and set the text to "Title", the reorder control\'s accessibility label becomes "Reorder Title".

          Using this we can drag one reorder control to another, essentially reordering the cells.

          ```swift
          let topButton = app.buttons["Reorder Top Cell"]
          let bottomButton = app.buttons["Reorder Bottom Cell"]
          bottomButton.pressForDuration(0.5, thenDragToElement: topButton)

          XCTAssertLessThanOrEqual(bottomButton.frame.maxY, topButton.frame.minY)
          ```
          '
        end
        entry do
            name 'Pull to refresh'
            notes '
          Create a `XCUICoordinate` from the first cell in your table and another one with a `dy` of six. Then drag the first coordinate to the second.

          ```swift
          let firstCell = app.staticTexts["Adrienne"]
          let start = firstCell.coordinateWithNormalizedOffset(CGVectorMake(0, 0))
          let finish = firstCell.coordinateWithNormalizedOffset(CGVectorMake(0, 6))
          start.pressForDuration(0, thenDragToCoordinate: finish)
          ```
          '
        end
        entry do
            name 'Pushing and popping view controllers'
            notes '
          Test if a view controller was pushed onto the navigation stack.

          ```swift
          app.buttons["More Info"].tap()
          XCTAssert(app.navigationBars["Volleyball?"].exists)
          ```

          Pop a view controller by tapping the back button in the navigation bar and assert that the title in the navigation bar has changed.

          ```swift
          app.navigationBars.buttons.elementBoundByIndex(0).tap()
          XCTAssert(app.navigationBars["Volley"].exists)
          ```
          '
        end
    end


    notes <<-'END'
  * Based on a [cheat sheet](https://github.com/joemasilotti/UI-Testing-Cheat-Sheet) by [joemasilotti](https://twitter.com/joemasilotti)
    END

end