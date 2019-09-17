local TimeSinceLastUpdate = 0

function UpdateValues(self, elapsed)
  TimeSinceLastUpdate = TimeSinceLastUpdate + elapsed

  if TimeSinceLastUpdate > .05 then
    TimeSinceLastUpdate = 0

    for i = 1, 12 do
      -- ActionBar
      local actionID = ActionButton_GetPagedID(_G["ActionButton" .. i])
      if HasAction(actionID) then
        local actionType, id, subType = GetActionInfo(actionID);
        _G["actionBarValue" .. i]:SetText(id)
      else
        _G["actionBarValue" .. i]:SetText("")
      end

      -- MultiBarBottomLeft
      local multiBarBottomLeftActionID = ActionButton_GetPagedID(_G["MultiBarBottomLeftButton" .. i])
      if HasAction(multiBarBottomLeftActionID) then
        local actionType, id, subType = GetActionInfo(multiBarBottomLeftActionID);
        _G["multiBarBottomLeftActionBarValue" .. i]:SetText(id)
      else
        _G["multiBarBottomLeftActionBarValue" .. i]:SetText("")
      end

      -- MultiBarBottomRight
      local multiBarBottomRightActionID = ActionButton_GetPagedID(_G["MultiBarBottomRightButton" .. i])
      if HasAction(multiBarBottomRightActionID) then
        local actionType, id, subType = GetActionInfo(multiBarBottomRightActionID);
        _G["multiBarBottomRightActionBarValue" .. i]:SetText(id)
      else
        _G["multiBarBottomRightActionBarValue" .. i]:SetText("")
      end

      -- MultiBarLeft
      local multiBarLeftActionID = ActionButton_GetPagedID(_G["MultiBarLeftButton" .. i])
      if HasAction(multiBarLeftActionID) then
        local actionType, id, subType = GetActionInfo(multiBarLeftActionID);
        _G["multiBarLeftActionBarValue" .. i]:SetText(id)
      else
        _G["multiBarLeftActionBarValue" .. i]:SetText("")
      end

      -- MultiBarRight
      local multiBarRightActionID = ActionButton_GetPagedID(_G["MultiBarRightButton" .. i])
      if HasAction(multiBarRightActionID) then
        local actionType, id, subType = GetActionInfo(multiBarRightActionID);
        _G["multiBarRightActionBarValue" .. i]:SetText(id)
      else
        _G["multiBarRightActionBarValue" .. i]:SetText("")
      end
    end
  end
end


function CreateValues(self, elapsed)
  for i = 1, 12 do
    _G["ActionButton" .. i]:CreateFontString("actionBarValue" .. i, "ARTWORK", nil)
    _G["actionBarValue" .. i]:SetPoint("CENTER", 0, -10)
    _G["actionBarValue" .. i]:SetFont("Fonts\\FRIZQT__.TTF", 9, "THICKOUTLINE")
    _G["actionBarValue" .. i]:SetText("")
    _G["actionBarValue" .. i]:Show()

    _G["MultiBarBottomLeftButton" .. i]:CreateFontString("multiBarBottomLeftActionBarValue" .. i, "ARTWORK", nil)
    _G["multiBarBottomLeftActionBarValue" .. i]:SetPoint("CENTER", 0, -10)
    _G["multiBarBottomLeftActionBarValue" .. i]:SetFont("Fonts\\FRIZQT__.TTF", 9, "THICKOUTLINE")
    _G["multiBarBottomLeftActionBarValue" .. i]:SetText("")
    _G["multiBarBottomLeftActionBarValue" .. i]:Show()

    _G["MultiBarBottomRightButton" .. i]:CreateFontString("multiBarBottomRightActionBarValue" .. i, "ARTWORK", nil)
    _G["multiBarBottomRightActionBarValue" .. i]:SetPoint("CENTER", 0, -10)
    _G["multiBarBottomRightActionBarValue" .. i]:SetFont("Fonts\\FRIZQT__.TTF", 9, "THICKOUTLINE")
    _G["multiBarBottomRightActionBarValue" .. i]:SetText("")
    _G["multiBarBottomRightActionBarValue" .. i]:Show()

    _G["MultiBarLeftButton" .. i]:CreateFontString("multiBarLeftActionBarValue" .. i, "ARTWORK", nil)
    _G["multiBarLeftActionBarValue" .. i]:SetPoint("CENTER", 0, -10)
    _G["multiBarLeftActionBarValue" .. i]:SetFont("Fonts\\FRIZQT__.TTF", 9, "THICKOUTLINE")
    _G["multiBarLeftActionBarValue" .. i]:SetText("")
    _G["multiBarLeftActionBarValue" .. i]:Show()

    _G["MultiBarRightButton" .. i]:CreateFontString("multiBarRightActionBarValue" .. i, "ARTWORK", nil)
    _G["multiBarRightActionBarValue" .. i]:SetPoint("CENTER", 0, -10)
    _G["multiBarRightActionBarValue" .. i]:SetFont("Fonts\\FRIZQT__.TTF", 9, "THICKOUTLINE")
    _G["multiBarRightActionBarValue" .. i]:SetText("")
    _G["multiBarRightActionBarValue" .. i]:Show()
  end
end



function ChimaTheory_OnLoad(self, event, ...)
  self:RegisterEvent("ADDON_LOADED")
end

function ChimaTheory_OnEvent(self, event, ...)
  if event == "ADDON_LOADED" and ... == "ChimaTheory" then
    self:UnregisterEvent("ADDON_LOADED")
    CreateValues();
    theoryFrame:SetScript("OnUpdate", UpdateValues)
	end
end


function reportActionButtons()
	local lActionSlot = 0;
	for lActionSlot = 1, 120 do
		local lActionText = GetActionText(lActionSlot);
		local lActionTexture = GetActionTexture(lActionSlot);
		if lActionTexture then
			local lMessage = "Slot " .. lActionSlot .. ": [" .. lActionTexture .. "]";
			if lActionText then
				lMessage = lMessage .. " \"" .. lActionText .. "\"";
			end
			DEFAULT_CHAT_FRAME:AddMessage(lMessage);
		end
	end
end
