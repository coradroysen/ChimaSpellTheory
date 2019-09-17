local timeSinceLastUpdate = 0

function UpdateValues(self, elapsed)
  timeSinceLastUpdate = timeSinceLastUpdate + elapsed

  if timeSinceLastUpdate > .5 then
    timeSinceLastUpdate = 0

    SetButtonText("ActionButton", "actionBarValue")
    SetButtonText("MultiBarBottomLeftButton", "multiBarBottomLeftActionBarValue")
    SetButtonText("MultiBarBottomRightButton", "multiBarBottomRightActionBarValue")
    SetButtonText("MultiBarLeftButton", "multiBarLeftActionBarValue")
    SetButtonText("MultiBarRightButton", "multiBarRightActionBarValue")
  end
end

function SetButtonText(buttonType, valueType)
  for i = 1, 12 do
    local actionID = ActionButton_GetPagedID(_G[buttonType .. i])
    if HasAction(actionID) then
      local actionType, id, subType = GetActionInfo(actionID);
      local buttonText = DetermineButtonValue(id)
      _G[valueType .. i]:SetText(buttonText)
    else
      _G[valueType .. i]:SetText("")
    end
  end
end

function DetermineButtonValue(spellID)
  if _G["spellData" .. playerClass][spellID] ~= nil then
    local name, rank, icon, castTime, minRange, maxRange, spellId = GetSpellInfo(id)
    local valueHeal = 0
    local valueHot = 0
    local valueDmg = 0
    local valueDot = 0

    if _G["spellData" .. playerClass][spellID].isHeal then
      local bonusHeal = GetSpellBonusHealing() * _G["spellData" .. playerClass][spellID].instantCoeff
      local baseHeal = (_G["spellData" .. playerClass][spellID].minHealV + _G["spellData" .. playerClass][spellID].maxHealV) / 2
      valueHeal = baseHeal + bonusHeal
    end

    if _G["spellData" .. playerClass][spellID].isHot or _G["spellData" .. playerClass][spellID].isChanHeal then
      local bonusHeal = GetSpellBonusHealing() * _G["spellData" .. playerClass][spellID].overTimeCoeff
      local baseHeal = _G["spellData" .. playerClass][spellID].fullHealV
      valueHot = baseHeal + bonusHeal
    end

    if _G["spellData" .. playerClass][spellID].isDmg then

    local bonusDmg = GetSpellBonusDamage(_G["spellData" .. playerClass][spellID].dmgType);
      local bonusDmg = GetSpellBonusDamage(_G["spellData" .. playerClass][spellID].dmgType) * _G["spellData" .. playerClass][spellID].instantCoeff
      local baseDmg = (_G["spellData" .. playerClass][spellID].minDmgV + _G["spellData" .. playerClass][spellID].maxDmgV) / 2
      valueDmg = baseDmg + bonusDmg
    end

    if _G["spellData" .. playerClass][spellID].isDot or _G["spellData" .. playerClass][spellID].isChanDmg then
      local bonusDmg = GetSpellBonusDamage(_G["spellData" .. playerClass][spellID].dmgType) * _G["spellData" .. playerClass][spellID].overTimeCoeff
      local baseDmg = _G["spellData" .. playerClass][spellID].fullDmgV
      valueDot = baseDmg + bonusDmg
    end

    if (valueHeal + valueHot) ~= 0 then
      return math.floor(valueHeal + valueHot);
    else
      return math.floor(valueDmg + valueDot);
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
    self:UnregisterEvent("ADDON_LOADED");

    local localizedClass, englishClass, classIndex = UnitClass("player");
    _G["playerClass"] = englishClass
    CreateValues();
    theoryFrame:SetScript("OnUpdate", UpdateValues);
	end
end
