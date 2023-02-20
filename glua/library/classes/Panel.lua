---@meta
---@class Panel
Panel = {}
--- Adds the specified object to the panel.
---@param object Panel The panel to be added (parented). Can also be:  * [string](/gmod/string) Class Name - creates panel with the specified name and adds it to the panel.  * [table](/gmod/table) PANEL table - creates a panel from table and adds it to the panel. 
---@return Panel
function Panel:Add( object ) end
--- This function does nothing.
function Panel:AddText(  ) end
--- Aligns the panel on the bottom of its parent with the specified offset.
---@param offset? number The align offset. 
function Panel:AlignBottom( offset ) end
--- Aligns the panel on the left of its parent with the specified offset.
---@param offset? number The align offset. 
function Panel:AlignLeft( offset ) end
--- Aligns the panel on the right of its parent with the specified offset.
---@param offset? number The align offset. 
function Panel:AlignRight( offset ) end
--- Aligns the panel on the top of its parent with the specified offset.
---@param offset? number The align offset. 
function Panel:AlignTop( offset ) end
--- Uses animation to transition the current alpha value of a panel to a new alpha, over a set period of time and after a specified delay.
---@param alpha number The alpha value (0-255) to approach. 
---@param duration number The time in seconds it should take to reach the alpha. 
---@param delay? number The delay before the animation starts. 
---@param callback function The function to be called once the animation finishes. Arguments are:  * [table](/gmod/table) animData - The AnimationData that was used. See [AnimationData](/gmod/Structures/AnimationData)  * [Panel](/gmod/Panel) pnl - The panel object whose alpha was changed. 
function Panel:AlphaTo( alpha, duration, delay, callback ) end
--- Performs the per-frame operations required for panel animations.
--- 
--- This is called every frame by [PANEL:AnimationThink](/gmod/PANEL:AnimationThink).
function Panel:AnimationThinkInternal(  ) end
--- Returns the [SysTime](/gmod/Global.SysTime) value when all animations for this panel object will end.
---@return number
function Panel:AnimTail(  ) end
--- Appends text to a [RichText](/gmod/RichText) element. This does not automatically add a new line.
---@param txt string The text to append (add on). 
function Panel:AppendText( txt ) end
--- Used by [Panel:LoadGWENFile](/gmod/Panel:LoadGWENFile) and [Panel:LoadGWENString](/gmod/Panel:LoadGWENString) to apply a GWEN controls table to a panel object.
--- 
--- You can do this manually using [file.Read](/gmod/file.Read) and [util.JSONToTable](/gmod/util.JSONToTable) to import and create a GWEN table structure from a `.gwen` file. This method can then be called, passing the GWEN table's `Controls` member.
---@param GWENTable table The GWEN controls table to apply to the panel. 
function Panel:ApplyGWEN( GWENTable ) end
--- Centers the panel on its parent.
function Panel:Center(  ) end
--- Centers the panel horizontally with specified fraction.
---@param fraction? number The center fraction. 
function Panel:CenterHorizontal( fraction ) end
--- Centers the panel vertically with specified fraction.
---@param fraction? number The center fraction. 
function Panel:CenterVertical( fraction ) end
--- Returns the amount of children of the of panel.
---@return number
function Panel:ChildCount(  ) end
--- Returns the width and height of the space between the position of the panel (upper-left corner) and the max bound of the children panels (farthest reaching lower-right corner).
---@return number
---@return number
function Panel:ChildrenSize(  ) end
--- Marks all of the panel's children for deletion.
function Panel:Clear(  ) end
--- Fades panels color to specified one. It won't work unless panel has SetColor function.
---@param color table The color to fade to 
---@param length number Length of the animation 
---@param delay number Delay before start fading 
---@param callback function Function to execute when finished 
function Panel:ColorTo( color, length, delay, callback ) end
--- Sends an action command signal to the panel. The response is handled by [PANEL:ActionSignal](/gmod/PANEL:ActionSignal).
---@param command string The command to send to the panel. 
function Panel:Command( command ) end
--- Updates a panel object's associated console variable. This must first be set up with [Derma_Install_Convar_Functions](/gmod/Global.Derma_Install_Convar_Functions), and have a ConVar set using [Panel:SetConVar](/gmod/Panel:SetConVar).
---@param newValue string The new value to set the associated console variable to. 
function Panel:ConVarChanged( newValue ) end
--- A think hook for [Panel](/gmod/Panel)s using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.
--- 
--- This function is best for: checkboxes, sliders, number wangs
--- 
--- For a string alternative, see [Panel:ConVarStringThink](/gmod/Panel:ConVarStringThink).
--- 
--- `Important`: Make sure your Panel has a SetValue function, else you may get errors.
function Panel:ConVarNumberThink(  ) end
--- A think hook for [panels](/gmod/Panel) using ConVars as a value. Call it in the Think hook. Sets the panel's value should the convar change.
--- 
--- This function is best for: text inputs, read-only inputs, dropdown selects
--- 
--- For a number alternative, see [Panel:ConVarNumberThink](/gmod/Panel:ConVarNumberThink).
--- 
--- `Important`: Make sure your Panel has a SetValue function, else you may get errors.
function Panel:ConVarStringThink(  ) end
--- Gets the size, position and dock state of the passed panel object, and applies it to this one.
---@param srcPanel Panel The panel to copy the boundary and dock settings from. 
function Panel:CopyBase( srcPanel ) end
--- Copies position and size of the panel.
---@param base Panel The panel to copy size and position from. 
function Panel:CopyBounds( base ) end
--- Copies the height of the panel.
---@param base Panel Panel to copy the height from. 
function Panel:CopyHeight( base ) end
--- Copies the position of the panel.
---@param base Panel Panel to position the width from. 
function Panel:CopyPos( base ) end
--- Performs the "CONTROL + C" key combination effect ( Copy selection to clipboard ) on selected text.
function Panel:CopySelected(  ) end
--- Copies the width of the panel.
---@param base Panel Panel to copy the width from. 
function Panel:CopyWidth( base ) end
--- Returns the cursor position relative to the top left of the panel.
--- 
--- This is equivalent to calling [gui.MousePos](/gmod/gui.MousePos) and then [Panel:ScreenToLocal](/gmod/Panel:ScreenToLocal).
---@return number
---@return number
function Panel:CursorPos(  ) end
--- Performs the "CONTROL + X" ( delete text and copy it to clipboard buffer ) action on selected text.
function Panel:CutSelected(  ) end
--- Deletes a cookie value using the panel's cookie name ( [Panel:GetCookieName](/gmod/Panel:GetCookieName) ) and the passed extension.
---@param cookieName string The unique cookie name to delete. 
function Panel:DeleteCookie( cookieName ) end
--- Resets the panel object's [Panel:SetPos](/gmod/Panel:SetPos) method and removes its animation table (`Panel.LerpAnim`). This effectively undoes the changes made by [Panel:LerpPositions](/gmod/Panel:LerpPositions).
--- 
--- In order to use Lerp animation again, you must call [Panel:Stop](/gmod/Panel:Stop) before setting its `SetPosReal` property to `nil`. See the example below.
function Panel:DisableLerp(  ) end
--- Returns the linear distance from the center of this panel object and another. **Both panels must have the same parent for this function to work properly.**
---@param tgtPanel Panel The target object with which to compare position. 
---@return number
function Panel:Distance( tgtPanel ) end
--- Returns the distance between the center of this panel object and a specified point **local to the parent panel**.
---@param posX number The horizontal (x) position in pixels of the point to compare with. Local to the parent panel, or container, not the panel the function is called on. 
---@param posY number The vertical (y) position in pixels of the point to compare with. Local to the parent panel, or container, not the panel the function is called on. 
---@return number
function Panel:DistanceFrom( posX, posY ) end
--- Sets the dock type for the panel, making the panel "dock" in a certain direction, modifying it's position and size.
--- 
--- You can set the inner spacing of a panel's docking using [Panel:DockPadding](/gmod/Panel:DockPadding), which will affect docked child panels, and you can set the outer spacing of a panel's docking using [Panel:DockMargin](/gmod/Panel:DockMargin), which affects how docked siblings are positioned/sized.
--- 
--- You may need to use [Panel:SetZPos](/gmod/Panel:SetZPos) to ensure child panels ([DTextEntry](/gmod/DTextEntry)) stay in a specific order.
---@param dockType number Dock type using [DOCK](/gmod/Enums/DOCK). 
function Panel:Dock( dockType ) end
--- Sets the dock margin of the panel.
--- 
--- The dock margin is the extra space that will be left around the edge when this element is docked inside its parent element.
---@param marginLeft number The left margin to the parent. 
---@param marginTop number The top margin to the parent. 
---@param marginRight number The right margin to the parent. 
---@param marginBottom number The bottom margin to the parent. 
function Panel:DockMargin( marginLeft, marginTop, marginRight, marginBottom ) end
--- Sets the dock padding of the panel.
--- 
--- The dock padding is the extra space that will be left around the edge when child elements are docked inside this element.
---@param paddingLeft number The left padding to the parent. 
---@param paddingTop number The top padding to the parent. 
---@param paddingRight number The right padding to the parent. 
---@param paddingBottom number The bottom padding to the parent. 
function Panel:DockPadding( paddingLeft, paddingTop, paddingRight, paddingBottom ) end
--- Makes the panel "lock" the screen until it is removed. All input will be directed to the given panel.
--- 
--- It will silently fail if used while cursor is not visible.
--- Call [Panel:MakePopup](/gmod/Panel:MakePopup) before calling this function.
--- This must be called on a panel derived from [EditablePanel](/gmod/EditablePanel).
function Panel:DoModal(  ) end
--- Called by [Panel:DragMouseRelease](/gmod/Panel:DragMouseRelease) when a user clicks one mouse button whilst dragging with another.
---@return boolean
function Panel:DragClick(  ) end
--- Called by [dragndrop.HoverThink](/gmod/dragndrop.HoverThink) to perform actions on an object that is dragged and hovered over another.
---@param HoverTime number If this time is greater than 0.1, [PANEL:DragHoverClick](/gmod/PANEL:DragHoverClick) is called, passing it as an argument. 
function Panel:DragHover( HoverTime ) end
--- Called to end a drag and hover action. This resets the panel's [PANEL:PaintOver](/gmod/PANEL:PaintOver) method, and is primarily used by [dragndrop.StopDragging](/gmod/dragndrop.StopDragging).
function Panel:DragHoverEnd(  ) end
--- Called to inform the [dragndrop](/gmod/dragndrop) that a mouse button is being held down on a panel object.
---@param mouseCode number The code for the mouse button pressed, passed by, for example, [PANEL:OnMousePressed](/gmod/PANEL:OnMousePressed). See the [MOUSE](/gmod/Enums/MOUSE). 
function Panel:DragMousePress( mouseCode ) end
--- Called to inform the [dragndrop](/gmod/dragndrop) that a mouse button has been depressed on a panel object.
---@param mouseCode number The code for the mouse button pressed, passed by, for example, [PANEL:OnMouseReleased](/gmod/PANEL:OnMouseReleased). See the [MOUSE](/gmod/Enums/MOUSE). 
---@return boolean
function Panel:DragMouseRelease( mouseCode ) end
--- Called to draw the drop target when an object is being dragged across another. See [Panel:SetDropTarget](/gmod/Panel:SetDropTarget).
---@param x number The x coordinate of the top-left corner of the drop area. 
---@param y number The y coordinate of the top-left corner of the drop area. 
---@param width number The width of the drop area. 
---@param height number The height of the drop area. 
function Panel:DrawDragHover( x, y, width, height ) end
--- Draws a coloured rectangle to fill the panel object this method is called on. The colour is set using [surface.SetDrawColor](/gmod/surface.SetDrawColor). This should only be called within the object's [PANEL:Paint](/gmod/PANEL:Paint) or [PANEL:PaintOver](/gmod/PANEL:PaintOver) hooks, as a shortcut for [surface.DrawRect](/gmod/surface.DrawRect).
function Panel:DrawFilledRect(  ) end
--- Draws a hollow rectangle the size of the panel object this method is called on, with a border width of 1 px. The border colour is set using [surface.SetDrawColor](/gmod/surface.SetDrawColor). This should only be called within the object's [PANEL:Paint](/gmod/PANEL:Paint) or [PANEL:PaintOver](/gmod/PANEL:PaintOver) hooks, as a shortcut for [surface.DrawOutlinedRect](/gmod/surface.DrawOutlinedRect).
function Panel:DrawOutlinedRect(  ) end
--- Used to draw the magenta highlight colour of a panel object when it is selected. This should be called in the object's [PANEL:PaintOver](/gmod/PANEL:PaintOver) hook. Once this is implemented, the highlight colour will be displayed only when the object is selectable and selected. This is achieved using [Panel:SetSelectable](/gmod/Panel:SetSelectable) and [Panel:SetSelected](/gmod/Panel:SetSelected) respectively.
function Panel:DrawSelections(  ) end
--- Used to draw the text in a [DTextEntry](/gmod/DTextEntry) within a derma skin. This should be called within the [SKIN:PaintTextEntry](/gmod/SKIN:PaintTextEntry) skin hook.
---@param textCol table The colour of the main text. 
---@param highlightCol table The colour of the selection highlight (when selecting text). 
---@param cursorCol table The colour of the text cursor (or caret). 
function Panel:DrawTextEntryText( textCol, highlightCol, cursorCol ) end
--- Draws a textured rectangle to fill the panel object this method is called on. The texture is set using [surface.SetTexture](/gmod/surface.SetTexture) or [surface.SetMaterial](/gmod/surface.SetMaterial). This should only be called within the object's [PANEL:Paint](/gmod/PANEL:Paint) or [PANEL:PaintOver](/gmod/PANEL:PaintOver) hooks, as a shortcut for [surface.DrawTexturedRect](/gmod/surface.DrawTexturedRect).
function Panel:DrawTexturedRect(  ) end
--- Makes this panel droppable. This is used with [Panel:Receiver](/gmod/Panel:Receiver) to create drag and drop events.
--- 
--- Can be called multiple times with different names allowing to be dropped onto different receivers.
---@param name string Name of your droppable panel 
---@return table
function Panel:Droppable( name ) end
--- Completes a box selection. If the end point of the selection box is within the selection canvas, mouse capture is disabled for the panel object, and the selected state of each child object within the selection box is toggled.
---@return boolean
function Panel:EndBoxSelection(  ) end
--- Used to run commands within a [DHTML](/gmod/DHTML) window.
---@param cmd string The command to be run. 
function Panel:Exec( cmd ) end
--- Finds a panel in its children(and sub children) with the given name.
---@param panelName string The name of the panel that should be found. 
---@return Panel
function Panel:Find( panelName ) end
--- Focuses the next panel in the focus queue.
function Panel:FocusNext(  ) end
--- Focuses the previous panel in the focus queue.
function Panel:FocusPrevious(  ) end
--- Returns the alpha multiplier for this panel.
---@return number
function Panel:GetAlpha(  ) end
--- Returns the background color of a panel such as a [RichText](/gmod/RichText), [Label](/gmod/Label) or [DColorCube](/gmod/DColorCube).
---@return number
function Panel:GetBGColor(  ) end
--- Returns the position and size of the panel.
--- 
--- This is equivalent to calling [Panel:GetPos](/gmod/Panel:GetPos) and [Panel:GetSize](/gmod/Panel:GetSize) together.
---@return number
---@return number
---@return number
---@return number
function Panel:GetBounds(  ) end
--- Returns the position/offset of the caret (or text cursor) in a text-based panel object.
---@return number
function Panel:GetCaretPos(  ) end
--- Gets a child by its index.
---@param childIndex number The index of the child to get. 
function Panel:GetChild( childIndex ) end
--- Gets a child object's position relative to this panel object. The number of levels is not relevant; the child may have many parents between itself and the object on which the method is called.
---@param pnl Panel The panel to get the position of. 
---@return number
---@return number
function Panel:GetChildPosition( pnl ) end
--- Returns a table with all the child panels of the panel.
---@return table
function Panel:GetChildren(  ) end
--- Returns a table of all visible, selectable children of the panel object that lie at least partially within the specified rectangle.
---@param x number The horizontal (x) position of the top-left corner of the rectangle, relative to the panel object. 
---@param y number The vertical (y) position of the top-left corner of the rectangle, relative to the panel object. 
---@param w number The width of the rectangle. 
---@param h number The height of the rectangle. 
---@return table
function Panel:GetChildrenInRect( x, y, w, h ) end
--- Returns the class name of the panel.
---@return string
function Panel:GetClassName(  ) end
--- Returns the child of this panel object that is closest to the specified point. The point is relative to the object on which the method is called. The distance the child is from this point is also returned.
---@param x number The horizontal (x) position of the point. 
---@param y number The vertical (y) position of the point. 
---@return Panel
---@return number
function Panel:GetClosestChild( x, y ) end
--- Gets the size of the content/children within a panel object.
--- 
--- Only works with [Label](/gmod/Label) derived panels by default such as [DLabel](/gmod/DLabel).
--- 
--- Will also work on any panel that manually implements this method.
---@return number
---@return number
function Panel:GetContentSize(  ) end
--- Gets the value of a cookie stored by the panel object. This can also be done with [cookie.GetString](/gmod/cookie.GetString), using the panel's cookie name, a fullstop, and then the actual name of the cookie.
--- 
--- Make sure the panel's cookie name has not changed since writing, or the cookie will not be accessible. This can be done with [Panel:GetCookieName](/gmod/Panel:GetCookieName) and [Panel:SetCookieName](/gmod/Panel:SetCookieName).
---@param cookieName string The name of the cookie from which to retrieve the value. 
---@param default string The default value to return if the cookie does not exist. 
---@return string
function Panel:GetCookie( cookieName, default ) end
--- Gets the name the panel uses to store cookies. This is set with [Panel:SetCookieName](/gmod/Panel:SetCookieName).
---@return string
function Panel:GetCookieName(  ) end
--- Gets the value of a cookie stored by the panel object, as a number. This can also be done with [cookie.GetNumber](/gmod/cookie.GetNumber), using the panel's cookie name, a fullstop, and then the actual name of the cookie.
--- 
--- Make sure the panel's cookie name has not changed since writing, or the cookie will not be accessible. This can be done with [Panel:GetCookieName](/gmod/Panel:GetCookieName) and [Panel:SetCookieName](/gmod/Panel:SetCookieName).
---@param cookieName string The name of the cookie from which to retrieve the value. 
---@param default number The default value to return if the cookie does not exist. 
---@return number
function Panel:GetCookieNumber( cookieName, default ) end
--- Returns a dock enum for the panel's current docking type.
---@return number
function Panel:GetDock(  ) end
--- Returns the docked margins of the panel. (set by [Panel:DockMargin](/gmod/Panel:DockMargin))
---@return number
---@return number
---@return number
---@return number
function Panel:GetDockMargin(  ) end
--- Returns the docked padding of the panel. (set by [Panel:DockPadding](/gmod/Panel:DockPadding))
---@return number
---@return number
---@return number
---@return number
function Panel:GetDockPadding(  ) end
--- Returns the foreground color of the panel.
--- 
--- For a [Label](/gmod/Label) or [RichText](/gmod/RichText), this is the color of its text.
---@return table
function Panel:GetFGColor(  ) end
--- Returns the name of the font that the panel renders its text with.
--- 
--- This is the same font name set with [Panel:SetFontInternal](/gmod/Panel:SetFontInternal).
---@return string
function Panel:GetFont(  ) end
--- Returns the panel's HTML material. Only works with [Awesomium](/gmod/Awesomium), [HTML](/gmod/HTML) and [DHTML](/gmod/DHTML) panels that have been fully loaded.
---@return IMaterial
function Panel:GetHTMLMaterial(  ) end
--- Returns the current maximum character count.
--- 
--- This function will only work on [RichText](/gmod/RichText) and [TextEntry](/gmod/TextEntry) panels and their derivatives.
---@return number
function Panel:GetMaximumCharCount(  ) end
--- Returns the internal name of the panel.
---@return string
function Panel:GetName(  ) end
--- Returns the number of lines in a [RichText](/gmod/RichText). You must wait a couple frames before calling this after using [Panel:AppendText](/gmod/Panel:AppendText) or [Panel:SetText](/gmod/Panel:SetText), otherwise it will return the number of text lines before the text change.
---@return number
function Panel:GetNumLines(  ) end
--- Returns the parent of the panel, returns nil if there is no parent.
---@return Panel
function Panel:GetParent(  ) end
--- Returns the position of the panel relative to its [Panel:GetParent](/gmod/Panel:GetParent).
--- 
--- If you require the panel's position **and** size, consider using [Panel:GetBounds](/gmod/Panel:GetBounds) instead.
--- 
--- If you need the position in screen space, see [Panel:LocalToScreen](/gmod/Panel:LocalToScreen).
--- 
--- See also [Panel:GetX](/gmod/Panel:GetX) and [Panel:GetY](/gmod/Panel:GetY).
---@return number
---@return number
function Panel:GetPos(  ) end
--- Returns a table of all children of the panel object that are selected. This is recursive, and the returned table will include tables for any child objects that also have children. This means that not all first-level members in the returned table will be of type [Panel](/gmod/Panel).
---@return table
function Panel:GetSelectedChildren(  ) end
--- Returns the currently selected range of text.
--- 
--- This function will only work on [RichText](/gmod/RichText) and [TextEntry](/gmod/TextEntry) panels and their derivatives.
---@return number
---@return number
function Panel:GetSelectedTextRange(  ) end
--- Returns the panel object (`self`) if it has been enabled as a selection canvas. This is achieved using [Panel:SetSelectionCanvas](/gmod/Panel:SetSelectionCanvas).
---@return Panel
function Panel:GetSelectionCanvas(  ) end
--- Returns the size of the panel.
--- 
--- If you require both the panel's position and size, consider using [Panel:GetBounds](/gmod/Panel:GetBounds) instead.
---@return number
---@return number
function Panel:GetSize(  ) end
--- Returns the table for the derma skin currently being used by this panel object.
---@return table
function Panel:GetSkin(  ) end
--- Returns the internal Lua table of the panel.
---@return table
function Panel:GetTable(  ) end
--- Returns the height of the panel.
---@return number
function Panel:GetTall(  ) end
--- Returns the panel's text (where applicable).
--- 
--- This method returns a maximum of 1023 bytes, except for [DTextEntry](/gmod/DTextEntry).
---@return string
function Panel:GetText(  ) end
--- Gets the left and top text margins of a text-based panel object, such as a [DButton](/gmod/DButton) or [DLabel](/gmod/DLabel). This is set with [Panel:SetTextInset](/gmod/Panel:SetTextInset).
---@return number
---@return number
function Panel:GetTextInset(  ) end
--- Gets the size of the text within a [Label](/gmod/Label) derived panel.
---@return number
---@return number
function Panel:GetTextSize(  ) end
--- Gets valid receiver slot of currently dragged panel.
---@return Panel
---@return table
function Panel:GetValidReceiverSlot(  ) end
--- Returns the value the panel holds.
--- 
--- In engine is only implemented for [CheckButton](/gmod/CheckButton), [Label](/gmod/Label) and [TextEntry](/gmod/TextEntry) as a string.
---@return any
function Panel:GetValue(  ) end
--- Returns the width of the panel.
---@return number
function Panel:GetWide(  ) end
--- Returns the X position of the panel relative to its [Panel:GetParent](/gmod/Panel:GetParent).
--- 
--- Uses [Panel:GetPos](/gmod/Panel:GetPos) internally.
---@return number
function Panel:GetX(  ) end
--- Returns the Y position of the panel relative to its [Panel:GetParent](/gmod/Panel:GetParent).
--- 
--- Uses [Panel:GetPos](/gmod/Panel:GetPos) internally.
---@return number
function Panel:GetY(  ) end
--- Returns the Z position of the panel.
---@return number
function Panel:GetZPos(  ) end
--- Goes back one page in the HTML panel's history if available.
function Panel:GoBack(  ) end
--- Goes forward one page in the HTML panel's history if available.
function Panel:GoForward(  ) end
--- Goes to the page in the HTML panel's history at the specified relative offset.
---@param offset number The offset in the panel's back/forward history, relative to the current page, that you would like to skip to. Because this is relative, 0 = current page while negative goes back and positive goes forward. For example, -2 will go back 2 pages in the history. 
function Panel:GoToHistoryOffset( offset ) end
--- Causes a [RichText](/gmod/RichText) element to scroll to the bottom of its text.
function Panel:GotoTextEnd(  ) end
--- Causes a [RichText](/gmod/RichText) element to scroll to the top of its text.
function Panel:GotoTextStart(  ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `CheckboxText` property to a [DCheckBoxLabel](/gmod/DCheckBoxLabel). This does exactly the same as [Panel:GWEN_SetText](/gmod/Panel:GWEN_SetText), but exists to cater for the seperate GWEN properties.
---@param txt string The text to be applied to the DCheckBoxLabel. 
function Panel:GWEN_SetCheckboxText( txt ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `ControlName` property to a panel. This calls [Panel:SetName](/gmod/Panel:SetName).
---@param name string The new name to apply to the panel. 
function Panel:GWEN_SetControlName( name ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `Dock` property to a  panel object. This calls [Panel:Dock](/gmod/Panel:Dock).
---@param dockState string The dock mode to pass to the panel's `Dock` method. This reads a string and applies the approriate [DOCK](/gmod/Enums/DOCK).  * `Right`: Dock right.  * `Left`: Dock left.  * `Bottom`: Dock at the bottom.  * `Top`: Dock at the top.  * `Fill`: Fill the parent panel. 
function Panel:GWEN_SetDock( dockState ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `HorizontalAlign` property to a  panel object. This calls [Panel:SetContentAlignment](/gmod/Panel:SetContentAlignment).
---@param hAlign string The alignment, as a string, to pass to [Panel:SetContentAlignment](/gmod/Panel:SetContentAlignment). Accepts:  * `Right`: Align mid-right.  * `Left`: Align mid-left.  * `Center`: Align mid-center. 
function Panel:GWEN_SetHorizontalAlign( hAlign ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `Margin` property to a  panel object. This calls [Panel:DockMargin](/gmod/Panel:DockMargin).
---@param margins table A four-membered table containing the margins as numbers:  * [number](/gmod/number) left - The left margin.  * [number](/gmod/number) top - The top margin.  * [number](/gmod/number) right - The right margin.  * [number](/gmod/number) bottom - The bottom margin. 
function Panel:GWEN_SetMargin( margins ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `Max` property to a  [DNumberWang](/gmod/DNumberWang), [Slider](/gmod/Slider), [DNumSlider](/gmod/DNumSlider) or [DNumberScratch](/gmod/DNumberScratch). This calls `SetMax` on one of the previously listed methods.
---@param maxValue number The maximum value the element is to permit. 
function Panel:GWEN_SetMax( maxValue ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `Min` property to a  [DNumberWang](/gmod/DNumberWang), [Slider](/gmod/Slider), [DNumSlider](/gmod/DNumSlider) or [DNumberScratch](/gmod/DNumberScratch). This calls `SetMin` on one of the previously listed methods.
---@param minValue number The minimum value the element is to permit. 
function Panel:GWEN_SetMin( minValue ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `Position` property to a  panel object. This calls [Panel:SetPos](/gmod/Panel:SetPos).
---@param pos table A two-membered table containing the x and y coordinates as numbers:  * [number](/gmod/number) x - The x coordinate.  * [number](/gmod/number) y - The y coordinate. 
function Panel:GWEN_SetPosition( pos ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `Size` property to a  panel object. This calls [Panel:SetSize](/gmod/Panel:SetSize).
---@param size table A two-membered table containing the width and heights as numbers:  * [number](/gmod/number) w - The width.  * [number](/gmod/number) h - The height. 
function Panel:GWEN_SetSize( size ) end
--- Used by [Panel:ApplyGWEN](/gmod/Panel:ApplyGWEN) to apply the `Text` property to a panel.
---@param txt string The text to be applied to the panel. 
function Panel:GWEN_SetText( txt ) end
--- Returns whenever the panel has child panels.
---@return boolean
function Panel:HasChildren(  ) end
--- Returns if the panel is focused.
---@return boolean
function Panel:HasFocus(  ) end
--- Returns if the panel or any of its children(sub children and so on) has the focus.
---@return boolean
function Panel:HasHierarchicalFocus(  ) end
--- Returns whether the panel is a descendent of the given panel.
---@param parentPanel Panel
---@return boolean
function Panel:HasParent( parentPanel ) end
--- Makes a panel invisible.
function Panel:Hide(  ) end
--- Marks the end of a clickable text segment in a [RichText](/gmod/RichText) element, started with [Panel:InsertClickableTextStart](/gmod/Panel:InsertClickableTextStart).
function Panel:InsertClickableTextEnd(  ) end
--- Starts the insertion of clickable text for a [RichText](/gmod/RichText) element. Any text appended with [Panel:AppendText](/gmod/Panel:AppendText) between this call and [Panel:InsertClickableTextEnd](/gmod/Panel:InsertClickableTextEnd) will become clickable text.
--- 
--- The hook [PANEL:ActionSignal](/gmod/PANEL:ActionSignal) is called when the text is clicked, with "TextClicked" as the signal name and `signalValue` as the signal value.
---@param signalValue string The text passed as the action signal's value. 
function Panel:InsertClickableTextStart( signalValue ) end
--- Inserts a color change in a [RichText](/gmod/RichText) element, which affects the color of all text added with [Panel:AppendText](/gmod/Panel:AppendText) until another color change is applied.
---@param r number The red value `(0 - 255)`. 
---@param g number The green value `(0 - 255)`. 
---@param b number The blue value `(0 - 255)`. 
---@param a number The alpha value `(0 - 255)`. 
function Panel:InsertColorChange( r, g, b, a ) end
--- Begins a text fade for a [RichText](/gmod/RichText) element where the last appended text segment is fully faded out after a specific amount of time, at a specific speed.
--- 
--- The alpha of the text at any given time is determined by the text's base alpha * ((`sustain` - [CurTime](/gmod/Global.CurTime)) / `length`) where [CurTime](/gmod/Global.CurTime) is added to `sustain` when this method is called.
---@param sustain number The number of seconds the text remains visible. 
---@param length number The number of seconds it takes the text to fade out.    If set **lower** than `sustain`, the text will not begin fading out until (`sustain` - `length`) seconds have passed.    If set **higher** than `sustain`, the text will begin fading out immediately at a fraction of the base alpha.    If set to **-1**, the text doesn't fade out. 
function Panel:InsertFade( sustain, length ) end
--- Invalidates the layout of this panel object and all its children. This will cause these objects to re-layout immediately, calling [PANEL:PerformLayout](/gmod/PANEL:PerformLayout). If you want to perform the layout in the next frame, you will have loop manually through all children, and call [Panel:InvalidateLayout](/gmod/Panel:InvalidateLayout) on each.
---@param recursive? boolean If `true`, the method will recursively invalidate the layout of all children. Otherwise, only immediate children are affected. 
function Panel:InvalidateChildren( recursive ) end
--- Causes the panel to re-layout in the next frame. During the layout process  [PANEL:PerformLayout](/gmod/PANEL:PerformLayout) will be called on the target panel.
--- 
--- You should avoid calling this function every frame.
---@param layoutNow? boolean If true the panel will re-layout instantly and not wait for the next frame. 
function Panel:InvalidateLayout( layoutNow ) end
--- Calls [Panel:InvalidateLayout](/gmod/Panel:InvalidateLayout) on the panel's [parent](/gmod/Panel:GetParent). This function will silently fail if the panel has no parent.
--- 
--- This will cause the parent panel to re-layout, calling [PANEL:PerformLayout](/gmod/PANEL:PerformLayout).
--- 
--- Internally sets `LayingOutParent` to `true` on this panel, and will silently fail if it is already set.
---@param layoutNow? boolean If `true`, the re-layout will occur immediately, otherwise it will be performed in the next frame. 
function Panel:InvalidateParent( layoutNow ) end
--- Determines whether the mouse cursor is hovered over one of this panel object's children. This is a reverse process using [vgui.GetHoveredPanel](/gmod/vgui.GetHoveredPanel), and looks upward to find the parent.
---@param immediate? boolean Set to true to check only the immediate children of given panel ( first level ) 
---@return boolean
function Panel:IsChildHovered( immediate ) end
--- Returns whether this panel is draggable ( if user is able to drag it ) or not.
---@return boolean
function Panel:IsDraggable(  ) end
--- Returns whether this panel is currently being dragged or not.
---@return boolean
function Panel:IsDragging(  ) end
--- Returns whether the the panel is enabled or disabled.
--- 
--- See [Panel:SetEnabled](/gmod/Panel:SetEnabled) for a function that makes the panel enabled or disabled.
---@return boolean
function Panel:IsEnabled(  ) end
--- Returns whether the mouse cursor is hovering over this panel or not
--- 
--- Uses [vgui.GetHoveredPanel](/gmod/vgui.GetHoveredPanel) internally.
--- 
--- Requires [Panel:SetMouseInputEnabled](/gmod/Panel:SetMouseInputEnabled) to be set to true.
---@return boolean
function Panel:IsHovered(  ) end
--- Returns true if the panel can receive keyboard input.
---@return boolean
function Panel:IsKeyboardInputEnabled(  ) end
--- Determines whether or not a [HTML](/gmod/HTML) or [DHTML](/gmod/DHTML) element is currently loading a page.
---@return boolean
function Panel:IsLoading(  ) end
--- Returns if the panel is going to be deleted in the next frame.
---@return boolean
function Panel:IsMarkedForDeletion(  ) end
--- Returns whether the panel was made modal or not. See [Panel:DoModal](/gmod/Panel:DoModal).
---@return boolean
function Panel:IsModal(  ) end
--- Returns true if the panel can receive mouse input.
---@return boolean
function Panel:IsMouseInputEnabled(  ) end
--- Returns whether the panel contains the given panel, recursively.
---@param childPanel Panel
---@return boolean
function Panel:IsOurChild( childPanel ) end
--- Returns if the panel was made popup or not. See [Panel:MakePopup](/gmod/Panel:MakePopup)
---@return boolean
function Panel:IsPopup(  ) end
--- Determines if the panel object is selectable (like icons in the Spawn Menu, holding ). This is set with [Panel:SetSelectable](/gmod/Panel:SetSelectable).
---@return boolean
function Panel:IsSelectable(  ) end
--- Returns if the panel object is selected (like icons in the Spawn Menu, holding ). This can be set in Lua using [Panel:SetSelected](/gmod/Panel:SetSelected).
---@return boolean
function Panel:IsSelected(  ) end
--- Determines if the panel object is a selection canvas or not. This is set with [Panel:SetSelectionCanvas](/gmod/Panel:SetSelectionCanvas).
---@return any
function Panel:IsSelectionCanvas(  ) end
--- Returns if the panel is valid and not marked for deletion.
---@return boolean
function Panel:IsValid(  ) end
--- Returns if the panel is visible. This will **NOT** take into account visibility of the parent.
---@return boolean
function Panel:IsVisible(  ) end
--- Returns if a panel allows world clicking set by [Panel:SetWorldClicker](/gmod/Panel:SetWorldClicker).
---@return boolean
function Panel:IsWorldClicker(  ) end
--- Remove the focus from the panel.
function Panel:KillFocus(  ) end
--- Redefines the panel object's [Panel:SetPos](/gmod/Panel:SetPos) method to operate using frame-by-frame linear interpolation ([Lerp](/gmod/Global.Lerp)). When the panel's position is changed, it will move to the target position at the speed defined. You can undo this with [Panel:DisableLerp](/gmod/Panel:DisableLerp).
--- 
--- Unlike the other panel animation functions, such as [Panel:MoveTo](/gmod/Panel:MoveTo), this animation method will not operate whilst the game is paused. This is because it relies on [FrameTime](/gmod/Global.FrameTime).
---@param speed number The speed at which to move the panel. This is affected by the value of `easeOut`. Recommended values are:  * **0.1 - 10** when `easeOut` is `false`.  * **0.1 - 1** when `easeOut` is `true`. 
---@param easeOut boolean This causes the panel object to 'jump' at the target, slowing as it approaches. This affects the `speed` value significantly, see above. 
function Panel:LerpPositions( speed, easeOut ) end
--- Similar to [Panel:LoadControlsFromString](/gmod/Panel:LoadControlsFromString) but loads controls from a file.
---@param path string The path to load the controls from. 
function Panel:LoadControlsFromFile( path ) end
--- Loads controls(positions, etc) from given data. This is what the default options menu uses.
---@param data string The data to load controls from. Format unknown. 
function Panel:LoadControlsFromString( data ) end
--- Loads a .gwen file (created by GWEN Designer) and calls [Panel:LoadGWENString](/gmod/Panel:LoadGWENString) with the contents of the loaded file.
--- 
--- Used to load panel controls from a file.
---@param filename string The file to open. The path is relative to garrysmod/garrysmod/. 
---@param path? string The path used to look up the file.    * "GAME" Structured like base folder (garrysmod/), searches all the mounted content (main folder, addons, mounted games etc)  * "LUA" or "lsv" - All Lua folders (lua/) including gamesmodes and addons  * "DATA" Data folder (garrysmod/data)  * "MOD" Strictly the game folder (garrysmod/), ignores mounting. 
function Panel:LoadGWENFile( filename, path ) end
--- Loads controls for the panel from a JSON string.
---@param str string JSON string containing information about controls to create. 
function Panel:LoadGWENString( str ) end
--- Sets a new image to be loaded by a [TGAImage](/gmod/TGAImage).
---@param imageName string The file path. 
---@param strPath string The PATH to search in. See [File Search Paths](/gmod/File%20Search%20Paths).    This isn't used internally. 
function Panel:LoadTGAImage( imageName, strPath ) end
--- Returns the cursor position local to the position of the panel (usually the upper-left corner).
---@return number
---@return number
function Panel:LocalCursorPos(  ) end
--- Gets the absolute screen position of the position specified relative to the panel.
--- 
--- See also [Panel:ScreenToLocal](/gmod/Panel:ScreenToLocal).
---@param posX number The X coordinate of the position on the panel to translate. 
---@param posY number The Y coordinate of the position on the panel to translate. 
---@return number
---@return number
function Panel:LocalToScreen( posX, posY ) end
--- Focuses the panel and enables it to receive input.
--- 
--- This automatically calls [Panel:SetMouseInputEnabled](/gmod/Panel:SetMouseInputEnabled) and [Panel:SetKeyboardInputEnabled](/gmod/Panel:SetKeyboardInputEnabled) and sets them to `true`.
function Panel:MakePopup(  ) end
--- Allows the panel to receive mouse input even if the mouse cursor is outside the bounds of the panel.
---@param doCapture boolean Set to true to enable, set to false to disable. 
function Panel:MouseCapture( doCapture ) end
--- Places the panel above the passed panel with the specified offset.
---@param panel Panel Panel to position relatively to. 
---@param offset? number The align offset. 
function Panel:MoveAbove( panel, offset ) end
--- Places the panel below the passed panel with the specified offset.
---@param panel Panel Panel to position relatively to. 
---@param offset? number The align offset. 
function Panel:MoveBelow( panel, offset ) end
--- Moves the panel by the specified coordinates using animation.
---@param moveX number The number of pixels to move by in the horizontal (x) direction. 
---@param moveY number The number of pixels to move by in the vertical (y) direction. 
---@param time number The time (in seconds) in which to perform the animation. 
---@param delay? number The delay (in seconds) before the animation begins. 
---@param ease? number The easing of the start and/or end speed of the animation. See [Panel:NewAnimation](/gmod/Panel:NewAnimation) for how this works. 
---@param callback? function The function to be called once the animation is complete. Arguments are:  * [table](/gmod/table) animData - The [AnimationData that was used.](/gmod/AnimationData%20that%20was%20used.)  * [Panel](/gmod/Panel) pnl - The panel object that was moved. 
function Panel:MoveBy( moveX, moveY, time, delay, ease, callback ) end
--- Places the panel left to the passed panel with the specified offset.
---@param panel Panel Panel to position relatively to. 
---@param offset? number The align offset. 
function Panel:MoveLeftOf( panel, offset ) end
--- Places the panel right to the passed panel with the specified offset.
---@param panel Panel Panel to position relatively to. 
---@param offset? number The align offset. 
function Panel:MoveRightOf( panel, offset ) end
--- Moves the panel to the specified position using animation.
---@param posX number The target x coordinate of the panel. 
---@param posY number The target y coordinate of the panel. 
---@param time number The time to perform the animation within. 
---@param delay? number The delay before the animation starts. 
---@param ease? number The easing of the start and/or end speed of the animation. See [Panel:NewAnimation](/gmod/Panel:NewAnimation) for how this works. 
---@param callback function The function to be called once the animation finishes. Arguments are:  * [table](/gmod/table) animData - The [AnimationData](/gmod/Structures/AnimationData) that was used.  * [Panel](/gmod/Panel) pnl - The panel object that was moved. 
function Panel:MoveTo( posX, posY, time, delay, ease, callback ) end
--- Moves this panel object in front of the specified sibling (child of the same parent) in the render order, and shuffles up the Z-positions of siblings now behind.
---@param siblingPanel Panel The panel to move this one in front of. Must be a child of the same parent panel. 
---@return boolean
function Panel:MoveToAfter( siblingPanel ) end
--- Moves the panel object behind all other panels on screen. If the panel has been made a pop-up with [Panel:MakePopup](/gmod/Panel:MakePopup), it will still draw in front of any panels that haven't.
function Panel:MoveToBack(  ) end
--- Moves this panel object behind the specified sibling (child of the same parent) in the render order, and shuffles up the [Panel:SetZPos](/gmod/Panel:SetZPos) of siblings now in front.
---@param siblingPanel Panel The panel to move this one behind. Must be a child of the same parent panel. 
---@return boolean
function Panel:MoveToBefore( siblingPanel ) end
--- Moves the panel in front of all other panels on screen. Unless the panel has been made a pop-up using [Panel:MakePopup](/gmod/Panel:MakePopup), it will still draw behind any that have.
function Panel:MoveToFront(  ) end
--- Creates a new animation for the panel object.
--- 
--- Methods that use this function:
--- * [Panel:MoveTo](/gmod/Panel:MoveTo)
--- * [Panel:SizeTo](/gmod/Panel:SizeTo)
--- * [Panel:SlideUp](/gmod/Panel:SlideUp)
--- * [Panel:SlideDown](/gmod/Panel:SlideDown)
--- * [Panel:ColorTo](/gmod/Panel:ColorTo)
--- * [Panel:AlphaTo](/gmod/Panel:AlphaTo)
--- * [Panel:MoveBy](/gmod/Panel:MoveBy)
--- * [Panel:LerpPositions](/gmod/Panel:LerpPositions)
---@param length number The length of the animation in seconds. 
---@param delay? number The delay before the animation starts. 
---@param ease? number The power/index to use for easing.  * Positive values greater than 1 will ease in; the higher the number, the sharper the curve's gradient (less linear).  * A value of 1 removes all easing.  * Positive values between 0 and 1 ease out; values closer to 0 increase the curve's gradient (less linear).  * A value of 0 will break the animation and should be avoided.  * Any value less than zero will ease in/out; the value has no effect on the gradient. 
---@param callback? function The function to be called when the animation ends. Arguments passed are:  * [table](/gmod/table) animTable - The [AnimationData](/gmod/Structures/AnimationData) that was used.  * [Panel](/gmod/Panel) tgtPanel - The panel object that was animated. 
---@return table
function Panel:NewAnimation( length, delay, ease, callback ) end
---@param objectName string
function Panel:NewObject( objectName ) end
---@param objectName string
---@param callbackName string
function Panel:NewObjectCallback( objectName, callbackName ) end
--- Sets whether this panel's drawings should be clipped within the parent panel's bounds.
--- 
--- See also [DisableClipping](/gmod/Global.DisableClipping).
---@param clip boolean Whether to clip or not. 
function Panel:NoClipping( clip ) end
--- Returns the number of children of the panel object that are selected. This is equivalent to calling [Panel:IsSelected](/gmod/Panel:IsSelected) on all child objects and counting the number of returns that are `true`.
---@return number
function Panel:NumSelectedChildren(  ) end
--- Paints a ghost copy of the panel at the given position.
---@param posX number The x coordinate to draw the panel from. 
---@param posY number The y coordinate to draw the panel from. 
function Panel:PaintAt( posX, posY ) end
--- Paints the panel at its current position. To use this you must call [Panel:SetPaintedManually](/gmod/Panel:SetPaintedManually)(true).
function Panel:PaintManual(  ) end
--- Parents the panel to the HUD.
--- Makes it invisible on the escape-menu and disables controls.
function Panel:ParentToHUD(  ) end
--- Only works for TextEntries.
--- 
--- Pastes the contents of the clipboard into the TextEntry.
function Panel:Paste(  ) end
--- Sets the width and position of a [DLabel](/gmod/DLabel) and places the passed panel object directly to the right of it. Returns the `y` value of the bottom of the tallest object. The panel on which this method is run is not relevant; only the passed objects are affected.
---@param lblWidth number The width to set the label to. 
---@param x number The horizontal (x) position at which to place the label. 
---@param y number The vertical (y) position at which to place the label. 
---@param lbl Panel The label to resize and position. 
---@param panelObj Panel The panel object to place to the right of the label. 
---@return number
function Panel:PositionLabel( lblWidth, x, y, lbl, panelObj ) end
--- Sends a command to the panel.
---@param messageName string The name of the message. 
---@param valueType string The type of the variable to post. 
---@param value string The value to post. 
function Panel:PostMessage( messageName, valueType, value ) end
--- Installs Lua defined functions into the panel.
function Panel:Prepare(  ) end
--- Enables the queue for panel animations. If enabled, the next new animation will begin after all current animations have ended. This must be called before [Panel:NewAnimation](/gmod/Panel:NewAnimation) to work, and only applies to the next new animation. If you want to queue many, you must call this before each.
function Panel:Queue(  ) end
--- Causes a [SpawnIcon](/gmod/SpawnIcon) to rebuild its model image.
function Panel:RebuildSpawnIcon(  ) end
--- Re-renders a spawn icon with customized cam data.
--- 
--- [PositionSpawnIcon](/gmod/Global.PositionSpawnIcon) can be used to easily calculate the necessary camera parameters.
---@param data table A four-membered table containing the information needed to re-render:  * [Vector](/gmod/Vector) cam_pos - The relative camera position the model is viewed from.  * [Angle](/gmod/Angle) cam_ang - The camera angle the model is viewed from.  * [number](/gmod/number) cam_fov - The camera's field of view (FOV).  * [Entity](/gmod/Entity) ent - The entity object of the model.  See the example below for how to retrieve these values. 
function Panel:RebuildSpawnIconEx( data ) end
--- Allows the panel to receive drag and drop events. Can be called multiple times with different names to receive multiple different draggable panel events.
---@param name string Name of DnD panels to receive. This is set on the drag'n'drop-able panels via  [Panel:Droppable](/gmod/Panel:Droppable) 
---@param func function This function is called whenever a panel with valid name is hovering above and dropped on this panel. It has next arguments:  * [Panel](/gmod/Panel) pnl - The receiver panel  * [table](/gmod/table) tbl - A table of panels dropped onto receiver panel  * [boolean](/gmod/boolean) dropped - False if hovering over, true if dropped onto  * [number](/gmod/number) menuIndex - Index of clicked menu item from third argument of [Panel:Receiver](/gmod/Panel:Receiver)  * [number](/gmod/number) x - Cursor pos, relative to the receiver  * [number](/gmod/number) y - Cursor pos, relative to the receiver 
---@param menu table A table of strings that will act as a menu if drag'n'drop was performed with a right click 
function Panel:Receiver( name, func, menu ) end
--- Refreshes the HTML panel's current page.
---@param ignoreCache? boolean If true, the refresh will ignore cached content similar to "ctrl+f5" in most browsers. 
function Panel:Refresh( ignoreCache ) end
--- Marks a panel for deletion so it will be deleted on the next frame.
--- 
--- This will not mark child panels for deletion this frame, but they will be marked and deleted in the next frame.
--- 
--- See also [Panel:IsMarkedForDeletion](/gmod/Panel:IsMarkedForDeletion)
--- 
--- Will automatically call [Panel:InvalidateParent](/gmod/Panel:InvalidateParent).
function Panel:Remove(  ) end
--- Attempts to obtain focus for this panel.
function Panel:RequestFocus(  ) end
--- Resets all text fades in a [RichText](/gmod/RichText) element made with [Panel:InsertFade](/gmod/Panel:InsertFade).
---@param hold boolean True to reset fades, false otherwise. 
---@param expiredOnly boolean Any value equating to `true` will reset fades only on text segments that are completely faded out. 
---@param newSustain number The new sustain value of each faded text segment. Set to -1 to keep the old sustain value. 
function Panel:ResetAllFades( hold, expiredOnly, newSustain ) end
--- Runs/Executes a string as JavaScript code in a panel.
---@param js string Specify JavaScript code to be executed. 
function Panel:RunJavascript( js ) end
--- Saves the current state (caret position and the text inside) of a [TextEntry](/gmod/TextEntry) as an undo state.
--- 
--- See also [Panel:Undo](/gmod/Panel:Undo).
function Panel:SaveUndoState(  ) end
--- Translates global screen coordinate to coordinates relative to the panel.
--- 
--- See also [Panel:LocalToScreen](/gmod/Panel:LocalToScreen).
---@param screenX number The x coordinate of the screen position to be translated. 
---@param screenY number The y coordinate of the screed position be to translated. 
---@return number
---@return number
function Panel:ScreenToLocal( screenX, screenY ) end
--- Selects all items within a panel or object. For text-based objects, selects all text.
function Panel:SelectAll(  ) end
--- If called on a text entry, clicking the text entry for the first time will automatically select all of the text ready to be copied by the user.
function Panel:SelectAllOnFocus(  ) end
--- Selects all the text in a panel object. Will not select non-text items; for this, use [Panel:SelectAll](/gmod/Panel:SelectAll).
function Panel:SelectAllText(  ) end
--- Deselects all items in a panel object. For text-based objects, this will deselect all text.
function Panel:SelectNone(  ) end
--- Sets the achievement to be displayed by [AchievementIcon](/gmod/AchievementIcon).
---@param id number Achievement number ID 
function Panel:SetAchievement( id ) end
--- Used in [Button](/gmod/Button) to call a function when the button is clicked and in [Slider](/gmod/Slider) when the value changes.
---@param func function Function to call when the [Button](/gmod/Button) is clicked or the [Slider](/gmod/Slider) value is changed.    Arguments given are:  * [Panel](/gmod/Panel) self - The panel itself  * [string](/gmod/string) action - "Command" on button press, "SliderMoved" on slider move.  * [number](/gmod/number) val - The new value of the [Slider](/gmod/Slider). Will always equal 0 for buttons.  * [number](/gmod/number) zed - Always equals 0. 
function Panel:SetActionFunction( func ) end
--- Configures a text input to allow user to type characters that are not included in the US-ASCII (7-bit ASCII) character set.
--- 
--- Characters not included in US-ASCII are multi-byte characters in UTF-8. They can be accented characters, non-Latin characters and special characters.
---@param allowed boolean Set to true in order not to restrict input characters. 
function Panel:SetAllowNonAsciiCharacters( allowed ) end
--- Sets the alpha multiplier for the panel
---@param alpha number The alpha value in the range of 0-255. 
function Panel:SetAlpha( alpha ) end
--- Enables or disables animations for the panel object by overriding the [PANEL:AnimationThink](/gmod/PANEL:AnimationThink) hook to nil and back.
---@param enable boolean Whether to enable or disable animations. 
function Panel:SetAnimationEnabled( enable ) end
--- Sets whenever the panel should be removed if the parent was removed.
---@param autoDelete boolean Whenever to delete if the parent was removed or not. 
function Panel:SetAutoDelete( autoDelete ) end
--- Sets the background color of a panel such as a [RichText](/gmod/RichText), [Label](/gmod/Label) or [DColorCube](/gmod/DColorCube).
--- 
--- For [DLabel](/gmod/DLabel) elements, you must use [Panel:SetPaintBackgroundEnabled](/gmod/Panel:SetPaintBackgroundEnabled)( true ) before applying the color.
--- 
--- This will not work on setup of the panel - you should use this function in a hook like [PANEL:ApplySchemeSettings](/gmod/PANEL:ApplySchemeSettings) or [PANEL:PerformLayout](/gmod/PANEL:PerformLayout).
---@param rorcolor number The red channel of the color, or a [Color](/gmod/Color). If you pass the latter, the following three arguments are ignored. 
---@param g number The green channel of the color. 
---@param b number The blue channel of the color. 
---@param a number The alpha channel of the color. 
function Panel:SetBGColor( rorcolor, g, b, a ) end
--- Sets the background color of the panel.
---@param r number The red channel of the color. 
---@param g number The green channel of the color. 
---@param b number The blue channel of the color. 
---@param a number The alpha channel of the color. 
function Panel:SetBGColorEx( r, g, b, a ) end
--- Sets the position of the caret (or text cursor) in a text-based panel object.
---@param offset number Caret position/offset from the start of text. A value of `0` places the caret before the first character. 
function Panel:SetCaretPos( offset ) end
--- Sets the action signal command that's fired when a [Button](/gmod/Button) is clicked. The hook [PANEL:ActionSignal](/gmod/PANEL:ActionSignal) is called as the click response.
--- 
--- This has no effect on buttons unless it has had its `AddActionSignalTarget` method called (an internal function not available by default in Garry's Mod LUA).
--- 
--- A better alternative is calling [Panel:Command](/gmod/Panel:Command) when a [DButton](/gmod/DButton) is clicked.
function Panel:SetCommand(  ) end
--- Sets the alignment of the contents.
---@param alignment number The direction of the content, based on the number pad.    : **bottom-left**   : **bottom-center**   : **bottom-right**   : **middle-left**   : **center**   : **middle-right**   : **top-left**   : **top-center**   : **top-right** 
function Panel:SetContentAlignment( alignment ) end
--- Sets this panel's convar. When the convar changes this panel will update automatically.
--- 
--- For developer implementation, see [Derma_Install_Convar_Functions](/gmod/Global.Derma_Install_Convar_Functions).
---@param convar string The console variable to check. 
function Panel:SetConVar( convar ) end
--- Stores a string in the named cookie using [Panel:GetCookieName](/gmod/Panel:GetCookieName) as prefix.
--- 
--- You can also retrieve and modify this cookie by using the [cookie](/gmod/cookie). Cookies are stored in this format:
--- 
--- ```
--- panelCookieName.cookieName
--- ```
---@param cookieName string The unique name used to retrieve the cookie later. 
---@param value string The value to store in the cookie. This can be retrieved later as a [string](/gmod/string) or [number](/gmod/number). 
function Panel:SetCookie( cookieName, value ) end
--- Sets the panel's cookie name. Calls [PANEL:LoadCookies](/gmod/PANEL:LoadCookies) if defined.
---@param name string The panel's cookie name. Used as prefix for [Panel:SetCookie](/gmod/Panel:SetCookie) 
function Panel:SetCookieName( name ) end
--- Sets the appearance of the cursor. You can find a list of all available cursors with image previews [here](https://wiki.facepunch.com/gmod/Cursors).
---@param cursor string The cursor to be set. Can be one of the following:    * [arrow](https://wiki.facepunch.com/gmod/Cursors#:~:text=arrow)  * [beam](https://wiki.facepunch.com/gmod/Cursors#:~:text=beam)  * [hourglass](https://wiki.facepunch.com/gmod/Cursors#:~:text=hourglass)  * [waitarrow](https://wiki.facepunch.com/gmod/Cursors#:~:text=waitarrow)  * [crosshair](https://wiki.facepunch.com/gmod/Cursors#:~:text=crosshair)  * [up](https://wiki.facepunch.com/gmod/Cursors#:~:text=up)  * [sizenwse](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizenwse)  * [sizenesw](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizenesw)  * [sizewe](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizewe)  * [sizens](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizens)  * [sizeall](https://wiki.facepunch.com/gmod/Cursors#:~:text=sizeall)  * [no](https://wiki.facepunch.com/gmod/Cursors#:~:text=no)  * [hand](https://wiki.facepunch.com/gmod/Cursors#:~:text=hand)  * [blank](https://wiki.facepunch.com/gmod/Cursors#:~:text=blank)    Set to anything else to set it to "none", the default fallback. Do note that a value of "none" does not, as one might assume, result in no cursor being drawn - hiding the cursor requires a value of "blank" instead. 
function Panel:SetCursor( cursor ) end
--- Sets the drag parent.
--- 
--- Drag parent means that when we start to drag this panel, we'll really start dragging the defined parent.
---@param parent Panel The panel to set as drag parent. 
function Panel:SetDragParent( parent ) end
--- Sets the visibility of the language selection box in a TextEntry when typing in non-English mode.
--- 
--- See [Panel:SetDrawLanguageIDAtLeft](/gmod/Panel:SetDrawLanguageIDAtLeft) for a function that changes the position of the language selection box.
---@param visible boolean true to make it visible, false to hide it. 
function Panel:SetDrawLanguageID( visible ) end
--- Sets where to draw the language selection box.
--- 
--- See [Panel:SetDrawLanguageID](/gmod/Panel:SetDrawLanguageID) for a function that hides or shows the language selection box.
---@param left boolean true = left, false = right 
function Panel:SetDrawLanguageIDAtLeft( left ) end
--- Makes the panel render in front of all others, including the spawn menu and main menu.
--- 
--- Priority is given based on the last call, so of two panels that call this method, the second will draw in front of the first.
---@param drawOnTop? boolean Whether or not to draw the panel in front of all others. 
function Panel:SetDrawOnTop( drawOnTop ) end
--- Sets the target area for dropping when an object is being dragged around this panel using the [dragndrop](/gmod/dragndrop). 
--- 
--- This draws a target box of the specified size and position, until [Panel:DragHoverEnd](/gmod/Panel:DragHoverEnd) is called. It uses [Panel:DrawDragHover](/gmod/Panel:DrawDragHover) to draw this area.
---@param x number The x coordinate of the top-left corner of the drop area. 
---@param y number The y coordinate of the top-left corner of the drop area. 
---@param width number The width of the drop area. 
---@param height number The height of the drop area. 
function Panel:SetDropTarget( x, y, width, height ) end
--- Sets the enabled state of a disable-able panel object, such as a [DButton](/gmod/DButton) or [DTextEntry](/gmod/DTextEntry).
--- 
--- See [Panel:IsEnabled](/gmod/Panel:IsEnabled) for a function that retrieves the "enabled" state of a panel.
---@param enable boolean Whether to enable or disable the panel object. 
function Panel:SetEnabled( enable ) end
--- Adds a shadow falling to the bottom right corner of the panel's text. This has no effect on panels that do not derive from Label.
---@param distance number The distance of the shadow from the panel. 
---@param Color table The color of the shadow. Uses the [Color](/gmod/Color). 
function Panel:SetExpensiveShadow( distance, Color ) end
--- Sets the foreground color of a panel.
--- 
--- For a [Label](/gmod/Label) or [RichText](/gmod/RichText), this is the color of its text.
--- 
--- This function calls [Panel:SetFGColorEx](/gmod/Panel:SetFGColorEx) internally.
---@param rorcolor number The red channel of the color, or a [Color](/gmod/Color). If you pass the latter, the following three arguments are ignored. 
---@param g number The green channel of the color. 
---@param b number The blue channel of the color. 
---@param a number The alpha channel of the color. 
function Panel:SetFGColor( rorcolor, g, b, a ) end
--- Sets the foreground color of the panel.
--- 
--- For labels, this is the color of their text.
---@param r number The red channel of the color. 
---@param g number The green channel of the color. 
---@param b number The blue channel of the color. 
---@param a number The alpha channel of the color. 
function Panel:SetFGColorEx( r, g, b, a ) end
--- Sets the panel that owns this FocusNavGroup to be the root in the focus traversal hierarchy. This function will only work on EditablePanel class panels and its derivatives.
---@param state boolean
function Panel:SetFocusTopLevel( state ) end
--- Sets the font used to render this panel's text.
--- 
--- To retrieve the font used by a panel, call [Panel:GetFont](/gmod/Panel:GetFont).
---@param fontName string The name of the font.    See [here](/gmod/Default_Fonts) for a list of existing fonts.  Alternatively, use [surface.CreateFont](/gmod/surface.CreateFont) to create your own custom font. 
function Panel:SetFontInternal( fontName ) end
--- Sets the height of the panel.
--- 
--- Calls [PANEL:OnSizeChanged](/gmod/PANEL:OnSizeChanged) and marks this panel for layout ([Panel:InvalidateLayout](/gmod/Panel:InvalidateLayout)).
--- 
--- See also [Panel:SetSize](/gmod/Panel:SetSize).
---@param height number The height to be set. 
function Panel:SetHeight( height ) end
--- Allows you to set HTML code within a panel.
---@param HTMLcode string The code to set. 
function Panel:SetHTML( HTMLcode ) end
--- Enables or disables the keyboard input for the panel.
---@param keyboardInput boolean Whether to enable or disable keyboard input. 
function Panel:SetKeyBoardInputEnabled( keyboardInput ) end
--- Sets the maximum character count this panel should have.
--- 
--- This function will only work on [RichText](/gmod/RichText) and [TextEntry](/gmod/TextEntry) panels and their derivatives.
---@param maxChar number The new maximum amount of characters this panel is allowed to contain. 
function Panel:SetMaximumCharCount( maxChar ) end
--- Sets the minimum dimensions of the panel or object.
--- 
--- You can restrict either or both values.
--- 
--- Calling the function without arguments will remove the minimum size.
---@param minW? number The minimum width of the object. 
---@param minH? number The minimum height of the object. 
function Panel:SetMinimumSize( minW, minH ) end
--- Sets the model to be displayed by [SpawnIcon](/gmod/SpawnIcon).
---@param ModelPath string The path of the model to set 
---@param skin? number The skin to set 
---@param bodygroups string The body groups to set. Each single-digit number in the string represents a separate bodygroup, **This argument must be 9 characters in total**. 
function Panel:SetModel( ModelPath, skin, bodygroups ) end
--- Enables or disables the mouse input for the panel.
---@param mouseInput boolean Whenever to enable or disable mouse input. 
function Panel:SetMouseInputEnabled( mouseInput ) end
--- Sets the internal name of the panel.
---@param name string The new name of the panel. 
function Panel:SetName( name ) end
--- Sets whenever all the default background of the panel should be drawn or not.
---@param paintBackground boolean Whenever to draw the background or not. 
function Panel:SetPaintBackgroundEnabled( paintBackground ) end
--- Sets whenever all the default border of the panel should be drawn or not.
---@param paintBorder boolean Whenever to draw the border or not. 
function Panel:SetPaintBorderEnabled( paintBorder ) end
--- Enables or disables painting of the panel manually with [Panel:PaintManual](/gmod/Panel:PaintManual).
---@param paintedManually boolean True if the panel should be painted manually. 
function Panel:SetPaintedManually( paintedManually ) end
--- This function does nothing.
function Panel:SetPaintFunction(  ) end
--- Sets the parent of the panel.
---@param parent Panel The new parent of the panel. 
function Panel:SetParent( parent ) end
--- Used by [AvatarImage](/gmod/AvatarImage) to load an avatar for given player.
---@param player Player The player to use avatar of. 
---@param size number The size of the avatar to use. Acceptable sizes are 32, 64, 184. 
function Panel:SetPlayer( player, size ) end
--- If this panel object has been made a popup with [Panel:MakePopup](/gmod/Panel:MakePopup), this method will prevent it from drawing in front of other panels when it receives input focus.
---@param stayAtBack boolean If `true`, the popup panel will not draw in front of others when it gets focus, for example when it is clicked. 
function Panel:SetPopupStayAtBack( stayAtBack ) end
--- Sets the position of the panel's top left corner.
--- 
--- This will trigger [PANEL:PerformLayout](/gmod/PANEL:PerformLayout). You should avoid calling this function in [PANEL:PerformLayout](/gmod/PANEL:PerformLayout) to avoid infinite loops.
--- 
--- See also [Panel:SetX](/gmod/Panel:SetX) and [Panel:SetY](/gmod/Panel:SetY).
---@param posX number The x coordinate of the position. 
---@param posY number The y coordinate of the position. 
function Panel:SetPos( posX, posY ) end
--- Sets whenever the panel should be rendered in the next screenshot.
---@param renderInScreenshot boolean Whenever to render or not. 
function Panel:SetRenderInScreenshots( renderInScreenshot ) end
--- Sets whether the panel object can be selected or not (like icons in the Spawn Menu, holding ). If enabled, this will affect the function of a [DButton](/gmod/DButton) whilst  is pressed. [Panel:SetSelected](/gmod/Panel:SetSelected) can be used to select/deselect the object.
---@param selectable boolean Whether the panel object should be selectable or not. 
function Panel:SetSelectable( selectable ) end
--- Sets the selected state of a selectable panel object. This functionality is set with [Panel:SetSelectable](/gmod/Panel:SetSelectable) and checked with [Panel:IsSelectable](/gmod/Panel:IsSelectable).
---@param selected? boolean Whether the object should be selected or deselected. [Panel:IsSelected](/gmod/Panel:IsSelected) can be used to determine the selected state of the object. 
function Panel:SetSelected( selected ) end
--- Enables the panel object for selection (much like the spawn menu).
---@param selCanvas any Any value other than `nil` or `false` will enable the panel object for selection. It is recommended to pass `true`. 
function Panel:SetSelectionCanvas( selCanvas ) end
--- Sets the size of the panel.
--- 
--- Calls [PANEL:OnSizeChanged](/gmod/PANEL:OnSizeChanged) and marks this panel for layout ([Panel:InvalidateLayout](/gmod/Panel:InvalidateLayout)).
--- 
--- See also [Panel:SetWidth](/gmod/Panel:SetWidth) and [Panel:SetHeight](/gmod/Panel:SetHeight).
---@param width number The width of the panel. 
---@param height number The height of the panel. 
function Panel:SetSize( width, height ) end
--- Sets the derma skin that the panel object will use, and refreshes all panels with [derma.RefreshSkins](/gmod/derma.RefreshSkins).
---@param skinName string The name of the skin to use. The default derma skin is `Default`. 
function Panel:SetSkin( skinName ) end
--- Sets the `.png` image to be displayed on a  [SpawnIcon](/gmod/SpawnIcon) or the panel it is based on - [ModelImage](/gmod/ModelImage).
--- 
--- Only `.png` images can be used with this function.
---@param icon string A path to the .png material, for example one of the [Silkicons](/gmod/Silkicons) shipped with the game. 
function Panel:SetSpawnIcon( icon ) end
--- Used by [AvatarImage](/gmod/AvatarImage) panels to load an avatar by its 64-bit Steam ID (community ID).
---@param steamid string The 64bit SteamID of the player to load avatar of 
---@param size number The size of the avatar to use. Acceptable sizes are 32, 64, 184. 
function Panel:SetSteamID( steamid, size ) end
--- When TAB is pressed, the next selectable panel in the number sequence is selected.
---@param position number
function Panel:SetTabPosition( position ) end
--- Sets height of a panel. An alias of [Panel:SetHeight](/gmod/Panel:SetHeight).
---@param height number Desired height to set 
function Panel:SetTall( height ) end
--- Removes the panel after given time in seconds.
---@param delay number Delay in seconds after which the panel should be removed. 
function Panel:SetTerm( delay ) end
--- Sets the text value of a panel object containing text, such as a [Label](/gmod/Label), [TextEntry](/gmod/TextEntry) or  [RichText](/gmod/RichText) and their derivatives, such as [DLabel](/gmod/DLabel), [DTextEntry](/gmod/DTextEntry) or [DButton](/gmod/DButton).
---@param text string The text value to set. 
function Panel:SetText( text ) end
--- Sets the left and top text margins of a text-based panel object, such as a [DButton](/gmod/DButton) or [DLabel](/gmod/DLabel).
---@param insetX number The left margin for the text, in pixels. This will only affect centered text if the margin is greater than its x-coordinate. 
---@param insetY number The top margin for the text, in pixels. 
function Panel:SetTextInset( insetX, insetY ) end
--- Sets the height of a [RichText](/gmod/RichText) element to accommodate the text inside.
function Panel:SetToFullHeight(  ) end
--- Sets the tooltip to be displayed when a player hovers over the panel object with their cursor.
---@param str string The text to be displayed in the tooltip. Set false to disable it. 
function Panel:SetTooltip( str ) end
--- Sets the panel to be displayed as contents of a [DTooltip](/gmod/DTooltip) when a player hovers over the panel object with their cursor. See [Panel:SetTooltipPanelOverride](/gmod/Panel:SetTooltipPanelOverride) if you are looking to override [DTooltip](/gmod/DTooltip) itself.
---@param tooltipPanel? Panel The panel to use as the tooltip. 
function Panel:SetTooltipPanel( tooltipPanel ) end
--- Sets the panel class to be created instead of [DTooltip](/gmod/DTooltip) when the player hovers over this panel and a tooltip needs creating.
---@param override string The panel class to override the default [DTooltip](/gmod/DTooltip). The new panel class must have the following methods:  * [SetText](/gmod/Panel:SetText) - If you are using [Panel:SetTooltip](/gmod/Panel:SetTooltip).  * [SetContents](/gmod/DTooltip:SetContents) - If you are using [Panel:SetTooltipPanel](/gmod/Panel:SetTooltipPanel).  * [OpenForPanel](/gmod/DTooltip:OpenForPanel) - A "hook" type function that gets called shortly after creation (and after the above 2) to open and position the tooltip. You can see this logic in `lua/includes/util/tooltips.lua`. 
function Panel:SetTooltipPanelOverride( override ) end
--- Sets the underlined font for use by clickable text in a [RichText](/gmod/RichText). See also [Panel:InsertClickableTextStart](/gmod/Panel:InsertClickableTextStart)
--- 
--- This function will only work on [RichText](/gmod/RichText) panels.
---@param fontName string The name of the font.    See [here](/gmod/Default_Fonts) for a list of existing fonts.  Alternatively, use [surface.CreateFont](/gmod/surface.CreateFont) to create your own custom font. 
function Panel:SetUnderlineFont( fontName ) end
--- Sets the URL of a link-based panel such as [DLabelURL](/gmod/DLabelURL).
---@param url string The URL to set. It **must** begin with either `http://` or `https://`. 
function Panel:SetURL( url ) end
--- Sets the visibility of the vertical scrollbar.
--- 
--- Works for [RichText](/gmod/RichText) and [TextEntry](/gmod/TextEntry).
---@param display? boolean True to display the vertical text scroll bar, false to hide it. 
function Panel:SetVerticalScrollbarEnabled( display ) end
--- Sets the "visibility" of the panel.
---@param visible boolean The visibility of the panel. 
function Panel:SetVisible( visible ) end
--- Sets width of a panel. An alias of [Panel:SetWidth](/gmod/Panel:SetWidth).
---@param width number Desired width to set 
function Panel:SetWide( width ) end
--- Sets the width of the panel.
--- 
--- Calls [PANEL:OnSizeChanged](/gmod/PANEL:OnSizeChanged) and marks this panel for layout ([Panel:InvalidateLayout](/gmod/Panel:InvalidateLayout)).
--- 
--- See also [Panel:SetSize](/gmod/Panel:SetSize).
---@param width number The new width of the panel. 
function Panel:SetWidth( width ) end
--- This makes it so that when you're hovering over this panel you can `click` on the world. Your viewmodel will aim etc. This is primarily used for the Sandbox context menu.
---@param enabled boolean
function Panel:SetWorldClicker( enabled ) end
--- Sets whether text wrapping should be enabled or disabled on [Label](/gmod/Label) and [DLabel](/gmod/DLabel) panels.
--- Use [DLabel:SetAutoStretchVertical](/gmod/DLabel:SetAutoStretchVertical) to automatically correct vertical size; [Panel:SizeToContents](/gmod/Panel:SizeToContents) will not set the correct height.
---@param wrap boolean `True` to enable text wrapping, `false` otherwise. 
function Panel:SetWrap( wrap ) end
--- Sets the X position of the panel.
--- 
--- Uses [Panel:SetPos](/gmod/Panel:SetPos) internally.
---@param x number The X coordinate of the position. 
function Panel:SetX( x ) end
--- Sets the Y position of the panel.
--- 
--- Uses [Panel:SetPos](/gmod/Panel:SetPos) internally.
---@param y number The Y coordinate of the position. 
function Panel:SetY( y ) end
--- Sets the panels z position which determines the rendering order.
--- 
--- Panels with lower z positions appear behind panels with higher z positions.
--- 
--- This also controls in which order panels docked with [Panel:Dock](/gmod/Panel:Dock) appears.
---@param zIndex number The z position of the panel.   Can't be lower than -32768 or higher than 32767. 
function Panel:SetZPos( zIndex ) end
--- Makes a panel visible.
function Panel:Show(  ) end
--- Uses animation to resize the panel to the specified size.
---@param sizeW? number The target width of the panel. Use -1 to retain the current width. 
---@param sizeH? number The target height of the panel. Use -1 to retain the current height. 
---@param time number The time to perform the animation within. 
---@param delay? number The delay before the animation starts. 
---@param ease? number Easing of the start and/or end speed of the animation. See [Panel:NewAnimation](/gmod/Panel:NewAnimation) for how this works. 
---@param callback function The function to be called once the animation finishes. Arguments are:  * [table](/gmod/table) animData - The [AnimationData](/gmod/Structures/AnimationData) that was used.  * [Panel](/gmod/Panel) pnl - The panel object that was resized. 
function Panel:SizeTo( sizeW, sizeH, time, delay, ease, callback ) end
--- Resizes the panel to fit the bounds of its children.
---@param sizeW? boolean Resize with width of the panel. 
---@param sizeH? boolean Resize the height of the panel. 
function Panel:SizeToChildren( sizeW, sizeH ) end
--- Resizes the panel so that its width and height fit all of the content inside.
function Panel:SizeToContents(  ) end
--- Resizes the panel object's width to accommodate all child objects/contents.
--- 
--- Only works on [Label](/gmod/Label) derived panels such as [DLabel](/gmod/DLabel) by default, and on any panel that manually implemented [Panel:GetContentSize](/gmod/Panel:GetContentSize) method.
---@param addVal? number The number of extra pixels to add to the width. Can be a negative number, to reduce the width. 
function Panel:SizeToContentsX( addVal ) end
--- Resizes the panel object's height to accommodate all child objects/contents.
--- 
--- Only works on [Label](/gmod/Label) derived panels such as [DLabel](/gmod/DLabel) by default, and on any panel that manually implemented [Panel:GetContentSize](/gmod/Panel:GetContentSize) method.
---@param addVal? number The number of extra pixels to add to the height. 
function Panel:SizeToContentsY( addVal ) end
--- Slides the panel in from above.
---@param Length number Time to complete the animation. 
function Panel:SlideDown( Length ) end
--- Slides the panel out to the top.
---@param Length number Time to complete the animation. 
function Panel:SlideUp( Length ) end
--- Begins a box selection, enables mouse capture for the panel object, and sets the start point of the selection box to the mouse cursor's position, relative to this object. For this to work, either the object or its parent must be enabled as a selection canvas. This is set using [Panel:SetSelectionCanvas](/gmod/Panel:SetSelectionCanvas).
function Panel:StartBoxSelection(  ) end
--- Stops all panel animations by clearing its animation list. This also clears all delayed animations.
function Panel:Stop(  ) end
--- Resizes the panel object's height so that its bottom is aligned with the top of the passed panel. An offset greater than zero will reduce the panel's height to leave a gap between it and the passed panel.
---@param tgtPanel Panel The panel to align the bottom of this one with. 
---@param offset? number The gap to leave between this and the passed panel. Negative values will cause the panel's height to increase, forming an overlap. 
function Panel:StretchBottomTo( tgtPanel, offset ) end
--- Resizes the panel object's width so that its right edge is aligned with the left of the passed panel. An offset greater than zero will reduce the panel's width to leave a gap between it and the passed panel.
---@param tgtPanel Panel The panel to align the right edge of this one with. 
---@param offset? number The gap to leave between this and the passed panel. Negative values will cause the panel's width to increase, forming an overlap. 
function Panel:StretchRightTo( tgtPanel, offset ) end
--- Sets the dimensions of the panel to fill its parent. It will only stretch in directions that aren't nil.
---@param offsetLeft number The left offset to the parent. 
---@param offsetTop number The top offset to the parent. 
---@param offsetRight number The right offset to the parent. 
---@param offsetBottom number The bottom offset to the parent. 
function Panel:StretchToParent( offsetLeft, offsetTop, offsetRight, offsetBottom ) end
--- Toggles the selected state of a selectable panel object. This functionality is set with [Panel:SetSelectable](/gmod/Panel:SetSelectable) and checked with [Panel:IsSelectable](/gmod/Panel:IsSelectable). To check whether the object is selected or not, [Panel:IsSelected](/gmod/Panel:IsSelected) is used.
function Panel:ToggleSelection(  ) end
--- Toggles the visibility of a panel and all its children.
function Panel:ToggleVisible(  ) end
--- Restores the last saved state (caret position and the text inside) of a [TextEntry](/gmod/TextEntry). Should act identically to pressing CTRL+Z in a [TextEntry](/gmod/TextEntry).
--- 
--- See also [Panel:SaveUndoState](/gmod/Panel:SaveUndoState).
function Panel:Undo(  ) end
--- Recursively deselects this panel object and all of its children. This will cascade to all child objects at every level below the parent.
function Panel:UnselectAll(  ) end
--- Forcibly updates the panels' HTML Material, similar to when Paint is called on it.This is only useful if the panel is not normally visible, i.e the panel exists purely for its HTML Material.
function Panel:UpdateHTMLTexture(  ) end
--- Returns if a given panel is valid or not.
---@return boolean
function Panel:Valid(  ) end
