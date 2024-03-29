-- updates all values
function ChimaSpellTheory_UpdateValues(self, elapsed)
    -- set button texts for each action bar
    ChimaSpellTheory_SetButtonText("Action")
    ChimaSpellTheory_SetButtonText("MultiBarBottomLeft")
    ChimaSpellTheory_SetButtonText("MultiBarBottomRight")
    ChimaSpellTheory_SetButtonText("MultiBarLeft")
    ChimaSpellTheory_SetButtonText("MultiBarRight")

    -- set tooltip text extension
    if not ChimaSpellTheory_CheckTooltipStatus() then ChimaSpellTheory_SetTooltipText() end
  -- end
end

-- assigns text to the 12 action buttons of a specific action bar
-- expects action bar name
function ChimaSpellTheory_SetButtonText(actionBar)
  for i = 1, 12 do
    -- get slotID for current(i) button on the referenced action bar (considers pages, stances, etc.)
    local actionID = ActionButton_GetPagedID(_G[actionBar .. "Button" .. i])

    -- show text on buttons, that refer to a spell; show empty text on empty buttons
    if HasAction(actionID) then
      local actionType, id, subType = GetActionInfo(actionID);
      if _G["spellData" .. playerClass][id] ~= nil then
        local valueHeal, valueDmg = ChimaSpellTheory_CalculateDmgHealValue(id)

        if valueHeal ~= 0 then
          _G[actionBar .. "Value" .. i]:SetText(valueHeal)
          _G[actionBar .. "Value" .. i]:SetTextColor(0.66, 1, 0.5, 1)
        else
          _G[actionBar .. "Value" .. i]:SetText(valueDmg)
          _G[actionBar .. "Value" .. i]:SetTextColor(1, 1, 0.5, 1)
        end
      else
        _G[actionBar .. "Value" .. i]:SetText("")
      end
    else
      _G[actionBar .. "Value" .. i]:SetText("")
    end
  end
end

function ChimaSpellTheory_SetTooltipText()
  local spellName, spellID = GameTooltip:GetSpell();

  -- extend tooltip
  if _G["spellData" .. playerClass][spellID] ~= nil then
    GameTooltip:AddLine("   ") -- IMPORTANT! required for ChimaSpellTheory_CheckTooltipStatus()

    local name, rank, icon, castTime, minRange, maxRange, spellId = GetSpellInfo(spellID)
    local valueHeal, valueDmg = ChimaSpellTheory_CalculateDmgHealValue(spellID)
    local costs = GetSpellPowerCost(spellID)

    if valueHeal ~= 0 then
      GameTooltip:AddDoubleLine("Average Healing", valueHeal, 1, 0.82, 0, 1, 1, 1)
      GameTooltip:AddDoubleLine("Healing per Mana", ChimaSpellTheory_CalculateHealPerMana(spellID), 1, 0.82, 0, 1, 1, 1)
    end

    if valueDmg ~= 0 then
      GameTooltip:AddDoubleLine("Average Damage", valueDmg, 1, 0.82, 0, 1, 1, 1)
      GameTooltip:AddDoubleLine("Damage per Mana", ChimaSpellTheory_CalculateDmgPerMana(spellID), 1, 0.82, 0, 1, 1, 1)
    end

    GameTooltip:Show()
  end
end

-- checks whether the data extension was already added to the tooltip
function ChimaSpellTheory_CheckTooltipStatus()
  local check = false
  for i = 1, GameTooltip:NumLines() do
    if _G["GameTooltipTextLeft" .. i]:GetText() == "   " then check = true end
  end
  return check
end

-- /run for i=1,GameTooltip:NumLines()do local mytext=_G["GameTooltipTextLeft"..i] local text=mytext:GetText()print(text)end


-- creates initial text fields on each action button
-- only get's called once when addon is loaded
function ChimaSpellTheory_CreateValues()
  for i = 1, 12 do
    _G["ActionButton" .. i]:CreateFontString("ActionValue" .. i, "ARTWORK", nil)
    _G["ActionValue" .. i]:SetPoint("CENTER", 0, -11)
    _G["ActionValue" .. i]:SetFont("Fonts\\ARIALN.TTF", 10, "THICKOUTLINE")
    _G["ActionValue" .. i]:SetText("Test")
    _G["ActionValue" .. i]:Show()

    _G["MultiBarBottomLeftButton" .. i]:CreateFontString("MultiBarBottomLeftValue" .. i, "ARTWORK", nil)
    _G["MultiBarBottomLeftValue" .. i]:SetPoint("CENTER", 0, -11)
    _G["MultiBarBottomLeftValue" .. i]:SetFont("Fonts\\ARIALN.TTF", 10, "THICKOUTLINE")
    _G["MultiBarBottomLeftValue" .. i]:SetText("")
    _G["MultiBarBottomLeftValue" .. i]:Show()

    _G["MultiBarBottomRightButton" .. i]:CreateFontString("MultiBarBottomRightValue" .. i, "ARTWORK", nil)
    _G["MultiBarBottomRightValue" .. i]:SetPoint("CENTER", 0, -11)
    _G["MultiBarBottomRightValue" .. i]:SetFont("Fonts\\ARIALN.TTF", 10, "THICKOUTLINE")
    _G["MultiBarBottomRightValue" .. i]:SetText("")
    _G["MultiBarBottomRightValue" .. i]:Show()

    _G["MultiBarLeftButton" .. i]:CreateFontString("MultiBarLeftValue" .. i, "ARTWORK", nil)
    _G["MultiBarLeftValue" .. i]:SetPoint("CENTER", 0, -11)
    _G["MultiBarLeftValue" .. i]:SetFont("Fonts\\ARIALN.TTF", 10, "THICKOUTLINE")
    _G["MultiBarLeftValue" .. i]:SetText("")
    _G["MultiBarLeftValue" .. i]:Show()

    _G["MultiBarRightButton" .. i]:CreateFontString("MultiBarRightValue" .. i, "ARTWORK", nil)
    _G["MultiBarRightValue" .. i]:SetPoint("CENTER", 0, -11)
    _G["MultiBarRightValue" .. i]:SetFont("Fonts\\ARIALN.TTF", 10, "THICKOUTLINE")
    _G["MultiBarRightValue" .. i]:SetText("")
    _G["MultiBarRightValue" .. i]:Show()
  end
end



-- registers to load event
function ChimaSpellTheory_OnLoad(self, event, ...)
  self:RegisterEvent("ADDON_LOADED")
end

-- initiates addon
-- only get's called once when addon is loaded
function ChimaSpellTheory_OnEvent(self, event, ...)
  if event == "ADDON_LOADED" and ... == "ChimaSpellTheory" then
    self:UnregisterEvent("ADDON_LOADED");

    -- determine current class
    local localizedClass, englishClass, classIndex = UnitClass("player");
    _G["playerClass"] = englishClass;

    -- create text fields on action buttons
    ChimaSpellTheory_CreateValues();

    -- initiate update loop, ChimaSpellTheory_UpdateValues gets called indefinitely for each frame
    spellTheoryFrame:SetScript("OnUpdate", ChimaSpellTheory_UpdateValues);
	end
end
