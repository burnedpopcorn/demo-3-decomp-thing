// Note added by UTMTCE: "GMS2.3 object function definitions" has been automatically enabled
depth = -9999
isOpen = false
isAutocompleteOpen = false
shellSurface = -4
scrollSurface = -4
shellOriginX = 0
shellOriginY = 0
visibleWidth = 0
visibleHeight = 0
cursorPos = 1
consoleString = ""
savedConsoleString = ""
scrollPosition = 0
maxScrollPosition = 0
targetScrollPosition = 0
commandSubmitted = false
insertMode = true
historyPos = 0
history = []
output = []
outputHeight = 0
filteredSuggestions = []
inputArray = []
suggestionIndex = 0
autocompleteMaxWidth = 0
autocompleteScrollPosition = 0
autocompleteOriginX = 0
autocompleteOriginY = 0
mousePreviousX = device_mouse_x_to_gui(0)
mousePreviousY = device_mouse_y_to_gui(0)
shellPropertiesHash = ""
killedString = ""
metaDeleted = false
metaMovedLeft = false
metaMovedRight = false
event_user(0)
if (instance_number(object_index) > 1)
    instance_destroy()
function open() //open_gml_Object_obj_shell_Create_0
{
    isOpen = true
    keyboard_string = ""
    if (!is_undefined(openFunction))
        self.openFunction()
}

function close() //close_gml_Object_obj_shell_Create_0
{
    isOpen = false
    if (!is_undefined(closeFunction))
        self.closeFunction()
}

function close_autocomplete() //close_autocomplete_gml_Object_obj_shell_Create_0
{
    array_resize(filteredSuggestions, 0)
}

availableFunctions = []
functionData = {}
var globalVariables = variable_instance_get_names(-5)
for (var i = 0; i < array_length(globalVariables); i++)
{
    if (string_pos("sh_", string_lower(globalVariables[i])) == 1)
        array_push(availableFunctions, string_delete(string_lower(globalVariables[i]), 1, 3))
    array_sort(availableFunctions, true)
    if (string_pos("meta_", string_lower(globalVariables[i])) == 1)
    {
        var name = string_delete(globalVariables[i], 1, 5)
        variable_struct_set(functionData, name, variable_instance_get(-5, globalVariables[i])())
    }
}
function updateFilteredSuggestions() //updateFilteredSuggestions_gml_Object_obj_shell_Create_0
{
    array_resize(filteredSuggestions, 0)
    autocompleteMaxWidth = 0
    suggestionIndex = 0
    var inputString = string(consoleString)
    inputArray = self.string_split(inputString, " ")
    if (string_length(inputString) == 0 || array_length(inputArray) == 0)
        return;
    draw_set_font(consoleFont)
    var spaceCount = string_count(" ", inputString)
    if (spaceCount == 0)
    {
        for (var i = 0; i < array_length(availableFunctions); i++)
        {
            if (string_pos(inputString, availableFunctions[i]) == 1 && inputString != availableFunctions[i])
            {
                array_push(filteredSuggestions, availableFunctions[i])
                autocompleteMaxWidth = max(autocompleteMaxWidth, string_width(availableFunctions[i]))
            }
        }
    }
    else
    {
        var functionName = inputArray[0]
        var argumentIndex = spaceCount - 1
        var dataExists = variable_struct_exists(functionData, functionName)
        var noExtraSpace = string_char_at(inputString, ((string_last_pos(" ", inputString)) - 1)) != " "
        if (dataExists && noExtraSpace && spaceCount <= array_length(inputArray))
        {
            var suggestionData = variable_struct_get(variable_struct_get(functionData, array_get(inputArray, 0)), "suggestions")
            if (argumentIndex < array_length(suggestionData))
            {
                var argumentSuggestions = suggestionData[argumentIndex]
                var currentArgument = inputArray[(array_length(inputArray) - 1)]
                for (i = 0; i < array_length(argumentSuggestions); i++)
                {
                    var prefixMatch = string_pos(currentArgument, string_lower(argumentSuggestions[i])) == 1
                    if (string_last_pos(" ", inputString) == string_length(inputString) || prefixMatch)
                    {
                        array_push(filteredSuggestions, argumentSuggestions[i])
                        autocompleteMaxWidth = max(autocompleteMaxWidth, string_width(argumentSuggestions[i]))
                    }
                }
            }
        }
    }
    array_sort(filteredSuggestions, true)
}

function findCommonPrefix() //findCommonPrefix_gml_Object_obj_shell_Create_0
{
    if (array_length(filteredSuggestions) == 0)
        return "";
    var first = string(filteredSuggestions[0])
    var last = string(filteredSuggestions[(array_length(filteredSuggestions) - 1)])
    var result = ""
    var spaceCount = string_count(" ", consoleString)
    if (spaceCount > 0)
    {
        for (var i = 0; i < spaceCount; i++)
            result += (inputArray[i] + " ")
    }
    i = 1
    while (i < (string_length(first) + 1))
    {
        if (string_char_at(first, i) == string_char_at(last, i))
        {
            result += string_char_at(first, i)
            i++
        }
        else
            break
    }
    return result;
}

function keyComboPressed(argument0, argument1) //keyComboPressed_gml_Object_obj_shell_Create_0
{
    for (var i = 0; i < array_length(argument0); i++)
    {
        if (!keyboard_check(argument0[i]))
            return false;
    }
    if keyboard_check_pressed(argument1)
    {
        if (array_length(argument0) == 0)
        {
            if (keyboard_check(vk_shift) || keyboard_check(vk_control) || keyboard_check(vk_alt))
                return false;
        }
        return true;
    }
}

delayFrame = 0
delayFrames = 1
function keyboardCheckDelay(argument0) //keyboardCheckDelay_gml_Object_obj_shell_Create_0
{
    if keyboard_check_released(argument0)
    {
        delayFrame = 0
        delayFrames = 1
        return false;
    }
    else if (!keyboard_check(argument0))
        return false;
    delayFrame = (delayFrame + 1) % delayFrames
    if (delayFrame == 0)
        delayFrames = keyRepeatDelay
    if keyboard_check_pressed(argument0)
    {
        delayFrame = 0
        delayFrames = keyRepeatInitialDelay
        return true;
    }
    else if (keyboard_check(argument0) && delayFrame == 0)
        return true;
    return false;
}

function shell_properties_hash() //shell_properties_hash_gml_Object_obj_shell_Create_0
{
    return md5_string_unicode(string(width) + "~" + string(height) + "~" + string(anchorMargin) + "~" + string(consolePaddingH) + "~" + string(scrollbarWidth) + "~" + string(consolePaddingV) + "~" + string(screenAnchorPointH) + "~" + string(screenAnchorPointV));
}

function recalculate_shell_properties() //recalculate_shell_properties_gml_Object_obj_shell_Create_0
{
    var screenCenterX = display_get_gui_width() / 2
    var screenCenterY = display_get_gui_height() / 2
    draw_set_font(consoleFont)
    var emHeight = string_height("M")
    var maxWidth = display_get_gui_width() - anchorMargin * 2
    var maxHeight = display_get_gui_height() - anchorMargin * 2
    width = clamp(width, 50, maxWidth)
    height = clamp(height, emHeight, maxHeight)
    var halfWidth = width / 2
    var halfHeight = height / 2
    switch screenAnchorPointH
    {
        case "left":
            shellOriginX = anchorMargin - 1
            break
        case "center":
            shellOriginX = screenCenterX - halfWidth - 1
            break
        case "right":
            shellOriginX = display_get_gui_width() - width - anchorMargin - 1
            break
    }

    switch screenAnchorPointV
    {
        case "top":
            shellOriginY = anchorMargin - 1
            break
        case "middle":
            shellOriginY = screenCenterY - halfHeight - 1
            break
        case "bottom":
            shellOriginY = display_get_gui_height() - height - anchorMargin - 1
            break
    }

    visibleWidth = width - 2 * anchorMargin - scrollbarWidth - 2 * consolePaddingH
    visibleHeight = height - 2 * consolePaddingV
    shellPropertiesHash = self.shell_properties_hash()
}

function calculate_scroll_from_suggestion_index() //calculate_scroll_from_suggestion_index_gml_Object_obj_shell_Create_0
{
    if (suggestionIndex == 0)
        autocompleteScrollPosition = 0
    else if (suggestionIndex >= (autocompleteScrollPosition + autocompleteMaxLines))
        autocompleteScrollPosition = max(0, (suggestionIndex - autocompleteMaxLines + 1))
    else if (suggestionIndex < autocompleteScrollPosition)
        autocompleteScrollPosition -= suggestionIndex
}

function confirmCurrentSuggestion() //confirmCurrentSuggestion_gml_Object_obj_shell_Create_0
{
    var spaceCount = string_count(" ", consoleString)
    consoleString = ""
    for (var i = 0; i < spaceCount; i++)
        consoleString += (inputArray[i] + " ")
    consoleString += (filteredSuggestions[suggestionIndex] + " ")
    cursorPos = string_length(consoleString) + 1
}

function string_split(argument0, argument1) //string_split_gml_Object_obj_shell_Create_0
{
    var slot = 0
    var splits = []
    var str2 = ""
    for (var i = 1; i < (string_length(argument0) + 1); i++)
    {
        var currStr = string_char_at(argument0, i)
        if (currStr == argument1)
        {
            if (str2 != "")
            {
                splits[slot] = str2
                slot++
            }
            str2 = ""
        }
        else
        {
            str2 = str2 + currStr
            splits[slot] = str2
        }
    }
    if (str2 == "")
        splits[slot] = str2
    return splits;
}

function array_contains(argument0, argument1) //array_contains_gml_Object_obj_shell_Create_0
{
    for (var i = 0; i < array_length(argument0); i++)
    {
        if (argument0[i] == argument1)
            return true;
    }
    return false;
}

function remap(argument0, argument1, argument2, argument3, argument4) //remap_gml_Object_obj_shell_Create_0
{
    var _t = (argument0 - argument1) / (argument2 - argument1)
    return lerp(argument3, argument4, _t);
}

