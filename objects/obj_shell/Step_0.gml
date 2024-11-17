var _exception;
if (!isOpen)
{
    if self.keyComboPressed(openModifiers, openKey)
        self.open()
}
else
{
    var prevConsoleString = consoleString
    if (metaDeleted && keyboard_check_released(vk_backspace))
        metaDeleted = false
    if (metaMovedLeft && keyboard_check_released(vk_left))
        metaMovedLeft = false
    if (metaMovedRight && keyboard_check_released(vk_right))
        metaMovedRight = false
    if keyboard_check_pressed(vk_escape)
    {
        if isAutocompleteOpen
            self.close_autocomplete()
        else
            self.close()
    }
    else if self.keyComboPressed([metaKey], 65)
    {
        cursorPos = 1
        targetScrollPosition = maxScrollPosition
    }
    else if self.keyComboPressed([metaKey], 69)
    {
        cursorPos = string_length(consoleString) + 1
        targetScrollPosition = maxScrollPosition
    }
    else if self.keyComboPressed([metaKey], 75)
    {
        var leftSide = string_copy(consoleString, 0, (cursorPos - 1))
        var rightSide = string_copy(consoleString, cursorPos, (string_length(consoleString) - cursorPos + 1))
        killedString = rightSide
        consoleString = leftSide
        cursorPos = string_length(consoleString) + 1
        targetScrollPosition = maxScrollPosition
    }
    else if self.keyComboPressed([metaKey], 89)
    {
        consoleString += killedString
        killedString = ""
        cursorPos = string_length(consoleString) + 1
        targetScrollPosition = maxScrollPosition
    }
    else if (self.keyComboPressed([metaKey], 8) || (metaKey == 17 && ord(keyboard_string) == 127))
    {
        var precedingSpaceIndex = 1
        var i = cursorPos - 2
        while (i > 1)
        {
            if (string_char_at(consoleString, i) == " ")
            {
                precedingSpaceIndex = i
                break
            }
            else
                i--
        }
        consoleString = string_delete(consoleString, precedingSpaceIndex, (cursorPos - precedingSpaceIndex))
        cursorPos = precedingSpaceIndex
        targetScrollPosition = maxScrollPosition
        keyboard_string = ""
        metaDeleted = true
    }
    else if self.keyComboPressed([metaKey], 37)
    {
        precedingSpaceIndex = 1
        i = cursorPos - 2
        while (i > 1)
        {
            if (string_char_at(consoleString, i) == " ")
            {
                precedingSpaceIndex = i
                break
            }
            else
                i--
        }
        cursorPos = precedingSpaceIndex
        targetScrollPosition = maxScrollPosition
        metaMovedLeft = true
    }
    else if self.keyComboPressed([metaKey], 39)
    {
        var nextSpaceIndex = string_length(consoleString) + 1
        i = cursorPos + 2
        while (i <= (string_length(consoleString) + 1))
        {
            if (string_char_at(consoleString, i) == " ")
            {
                nextSpaceIndex = i
                break
            }
            else
                i++
        }
        cursorPos = nextSpaceIndex
        targetScrollPosition = maxScrollPosition
        metaMovedRight = true
    }
    else if self.keyboardCheckDelay(8)
    {
        if (!metaDeleted)
        {
            consoleString = string_delete(consoleString, (cursorPos - 1), 1)
            cursorPos = max(1, (cursorPos - 1))
            targetScrollPosition = maxScrollPosition
        }
    }
    else if self.keyboardCheckDelay(46)
    {
        consoleString = string_delete(consoleString, cursorPos, 1)
        targetScrollPosition = maxScrollPosition
    }
    else if self.keyboardCheckDelay(37)
    {
        if (!metaMovedLeft)
        {
            cursorPos = max(1, (cursorPos - 1))
            targetScrollPosition = maxScrollPosition
        }
    }
    else if self.keyboardCheckDelay(39)
    {
        if (!metaMovedRight)
        {
            if (cursorPos == (string_length(consoleString) + 1) && array_length(filteredSuggestions) != 0)
            {
                var suggestion = filteredSuggestions[suggestionIndex]
                var consoleWords = self.string_split(consoleString, " ")
                var currentWordLength = string_length(consoleWords[(array_length(consoleWords) - 1)])
                consoleString += string_copy(suggestion, (currentWordLength + 1), (string_length(suggestion) - currentWordLength))
                cursorPos = string_length(consoleString) + 1
            }
            else
                cursorPos = min((string_length(consoleString) + 1), (cursorPos + 1))
            targetScrollPosition = maxScrollPosition
        }
    }
    else if self.keyComboPressed(historyUpModifiers, historyUpKey)
    {
        if (historyPos == array_length(history))
            savedConsoleString = consoleString
        historyPos = max(0, (historyPos - 1))
        if (array_length(history) != 0)
        {
            consoleString = array_get(history, historyPos)
            cursorPos = string_length(consoleString) + 1
        }
        targetScrollPosition = maxScrollPosition
    }
    else if self.keyComboPressed(historyDownModifiers, historyDownKey)
    {
        if (historyPos < array_length(history))
        {
            historyPos = min(array_length(history), (historyPos + 1))
            if (historyPos == array_length(history))
                consoleString = savedConsoleString
            else
                consoleString = array_get(history, historyPos)
            cursorPos = string_length(consoleString) + 1
        }
        targetScrollPosition = maxScrollPosition
    }
    else if keyboard_check_pressed(vk_return)
    {
        if isAutocompleteOpen
            self.confirmCurrentSuggestion()
        else
        {
            var args = self.string_split(consoleString, " ")
            if (array_length(args) > 0)
            {
                var script = variable_global_get("sh_" + args[0])
                if (script != undefined)
                {
                    try_hook(3680, 3936)
                    var response = script_execute(asset_get_index(script_get_name(script)), args)
                    try_unhook()
                    array_push(history, consoleString)
                    if (response != "")
                        array_push(output, (">" + consoleString))
                    if (response != 0)
                        array_push(output, response)
                    historyPos = array_length(history)
                    consoleString = ""
                    savedConsoleString = ""
                    cursorPos = 1
                }
                else
                {
                    if scr_fartcommand(consoleString)
                    {
                        var d3_shellquip = "..."
                        if (global.fartcounter <= 3)
                            d3_shellquip = "..."
                        else if (global.fartcounter == 4)
                            d3_shellquip = "...."
                        else if (global.fartcounter == 5)
                            d3_shellquip = "....."
                        else if (global.fartcounter == 6)
                            d3_shellquip = ".."
                        else if (global.fartcounter >= 7 && global.fartcounter < 10)
                            d3_shellquip = choose("...", "...?", "...!", "...!?")
                        else
                            d3_shellquip = choose("....", ".....", "..", "Don't you have anything else to do?", "Please Stop.", "...!", "...?", "...!?", "Hey, that smells!", ("You've been saying that for " + (string(global.fartcounter + 1)) + " times by now, Cut it out!"), "Stop that!")
                        array_push(output, (">" + consoleString))
                        array_push(output, d3_shellquip)
                        array_push(history, consoleString)
                        audio_sound_gain(audio_play_sound(sfx_fart, 1, false), (1 * global.soundeffectsvolume), 0)
                        global.fartcounter += 1
                    }
                    else
                    {
                        array_push(output, (">" + consoleString))
                        array_push(output, ("No such command: " + consoleString))
                        array_push(history, consoleString)
                    }
                    historyPos = array_length(history)
                    consoleString = ""
                    savedConsoleString = ""
                    cursorPos = 1
                }
            }
            else
            {
                array_push(output, ">")
                consoleString = ""
                savedConsoleString = ""
                cursorPos = 1
            }
        }
        commandSubmitted = true
    }
    else if self.keyComboPressed(cycleSuggestionsModifiers, cycleSuggestionsKey)
    {
        if (array_length(filteredSuggestions) != 0)
        {
            var uncompleted = consoleString
            consoleString = self.findCommonPrefix()
            cursorPos = string_length(consoleString) + 1
            if (uncompleted == consoleString)
            {
                suggestionIndex = (suggestionIndex + 1) % array_length(filteredSuggestions)
                if isAutocompleteOpen
                    self.calculate_scroll_from_suggestion_index()
            }
        }
    }
    else if self.keyComboPressed(cycleSuggestionsReverseModifiers, cycleSuggestionsReverseKey)
    {
        suggestionIndex = (suggestionIndex + array_length(filteredSuggestions) - 1) % array_length(filteredSuggestions)
        if isAutocompleteOpen
            self.calculate_scroll_from_suggestion_index()
    }
    else if keyboard_check_pressed(vk_insert)
        insertMode = (!insertMode)
    else if (keyboard_string != "")
    {
        var t = keyboard_string
        if (!insertMode)
            consoleString = string_delete(consoleString, cursorPos, string_length(t))
        consoleString = string_insert(t, consoleString, cursorPos)
        cursorPos += string_length(t)
        keyboard_string = ""
        targetScrollPosition = maxScrollPosition
    }
    if isAutocompleteOpen
    {
        var x1 = autocompleteOriginX
        var y1 = autocompleteOriginY
        var x2 = x1 + autocompleteMaxWidth + font_get_size(consoleFont) + autocompletePadding * 2 - scrollbarWidth
        var y2 = y1 + string_height(prompt) * (min(array_length(filteredSuggestions), autocompleteMaxLines)) + autocompletePadding
        if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x1, y1, x2, y2)
        {
            if mouse_wheel_down()
            {
                autocompleteScrollPosition++
                autocompleteScrollPosition = clamp((array_length(filteredSuggestions) - autocompleteMaxLines), 0, autocompleteScrollPosition)
            }
            if mouse_wheel_up()
            {
                autocompleteScrollPosition--
                autocompleteScrollPosition = max(autocompleteScrollPosition, 0)
            }
        }
        else if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), shellOriginX, shellOriginY, (shellOriginX + width), (shellOriginY + height))
        {
            if mouse_wheel_down()
                targetScrollPosition += scrollSpeed
            if mouse_wheel_up()
                targetScrollPosition -= scrollSpeed
        }
    }
    else if point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), shellOriginX, shellOriginY, (shellOriginX + width), (shellOriginY + height))
    {
        if mouse_wheel_down()
            targetScrollPosition += scrollSpeed
        if mouse_wheel_up()
            targetScrollPosition -= scrollSpeed
    }
    var lerpValue = (scrollSmoothness == 0 ? 1 : self.remap(scrollSmoothness, 1, 0, 0.08, 0.4))
    scrollPosition = lerp(scrollPosition, targetScrollPosition, lerpValue)
    scrollPosition = clamp(scrollPosition, 0, maxScrollPosition)
    if (scrollPosition == 0 || scrollPosition == maxScrollPosition)
        targetScrollPosition = clamp(targetScrollPosition, 0, maxScrollPosition)
    if (consoleString != prevConsoleString)
    {
        self.updateFilteredSuggestions()
        autocompleteScrollPosition = 0
    }
    if (self.shell_properties_hash() != shellPropertiesHash)
        self.recalculate_shell_properties()
}
