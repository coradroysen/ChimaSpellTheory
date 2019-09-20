-- HealTypes:
-- isHeal => minHealV, maxHealV, instantCoeff
-- isHot => hotV, duration, overTimeCoeff
-- isChanHeal => hotV, duration, overTimeCoeff
-- Additional types:
-- isHealAE => + maxTargets

-- DmgTypes:
-- isCastDmg => minDmgV, maxDmgV, dmgType, instantCoeff
-- isCastDot => dotV, duration, dmgType, overTimeCoeff
-- isChanDmg => dotV, duration, dmgType, overTimeCoeff
-- isMeleeDmg => dmgV, dmgType, instantCoeff
-- Additional Types:
-- isDmgAE => + maxTargets
-- isCombo => Table: One element for each CP

-- Spell Trees (dmgType):
-- 1 for Physical
-- 2 for Holy
-- 3 for Fire
-- 4 for Nature
-- 5 for Frost
-- 6 for Shadow
-- 7 for Arcane



-- spell base values
spellDataPRIEST = {
  -- DISCIPLINE
  [17] = { name="Power Word: Shield", rank=1, isHeal=true, minHealV=48, maxHealV=48, instantCoeff=0.1 },
  [592] = { name="Power Word: Shield", rank=2, isHeal=true, minHealV=94, maxHealV=94, instantCoeff=0.1 },
  [600] = { name="Power Word: Shield", rank=3, isHeal=true, minHealV=166, maxHealV=166, instantCoeff=0.1 },
  [3747] = { name="Power Word: Shield", rank=4, isHeal=true, minHealV=244, maxHealV=244, instantCoeff=0.1 },
  [6065] = { name="Power Word: Shield", rank=5, isHeal=true, minHealV=313, maxHealV=313, instantCoeff=0.1 },
  [6066] = { name="Power Word: Shield", rank=6, isHeal=true, minHealV=394, maxHealV=394, instantCoeff=0.1 },
  [10898] = { name="Power Word: Shield", rank=7, isHeal=true, minHealV=499, maxHealV=499, instantCoeff=0.1 },
  [10899] = { name="Power Word: Shield", rank=8, isHeal=true, minHealV=622, maxHealV=622, instantCoeff=0.1 },
  [10900] = { name="Power Word: Shield", rank=9, isHeal=true, minHealV=783, maxHealV=783, instantCoeff=0.1 },
  [10901] = { name="Power Word: Shield", rank=10, isHeal=true, minHealV=942, maxHealV=942, instantCoeff=0.1 },

  [10797] = { name="Starshards", rank=1, isChanDmg=true, dotV=84, duration=6, dmgType=7, overTimeCoeff=0.624 },
  [19296] = { name="Starshards", rank=2, isChanDmg=true, dotV=162, duration=6, dmgType=7, overTimeCoeff=0.924 },
  [19299] = { name="Starshards", rank=3, isChanDmg=true, dotV=288, duration=6, dmgType=7, overTimeCoeff=1 },
  [19302] = { name="Starshards", rank=4, isChanDmg=true, dotV=414, duration=6, dmgType=7, overTimeCoeff=1 },
  [19303] = { name="Starshards", rank=5, isChanDmg=true, dotV=570, duration=6, dmgType=7, overTimeCoeff=1 },
  [19304] = { name="Starshards", rank=6, isChanDmg=true, dotV=756, duration=6, dmgType=7, overTimeCoeff=1 },
  [19305] = { name="Starshards", rank=7, isChanDmg=true, dotV=936, duration=6, dmgType=7, overTimeCoeff=1 },

  [8129] = { name="Mana Burn", rank=1, isCastDmg=true, minDmgV=99, maxDmgV=105.5, dmgType=6, instantCoeff=0 },
  [8131] = { name="Mana Burn", rank=2, isCastDmg=true, minDmgV=157.5, maxDmgV=168, dmgType=6, instantCoeff=0 },
  [10874] = { name="Mana Burn", rank=3, isCastDmg=true, minDmgV=225, maxDmgV=238, dmgType=6, instantCoeff=0 },
  [10875] = { name="Mana Burn", rank=4, isCastDmg=true, minDmgV=292.5, maxDmgV=310, dmgType=6, instantCoeff=0 },
  [10876] = { name="Mana Burn", rank=5, isCastDmg=true, minDmgV=373, maxDmgV=394.5, dmgType=6, instantCoeff=0 },


  -- HOLY
  [585] = { name="Smite", rank=1, isCastDmg=true, minDmgV=15, maxDmgV=20, dmgType=2, instantCoeff=0.123 },
  [591] = { name="Smite", rank=2, isCastDmg=true, minDmgV=28, maxDmgV=34, dmgType=2, instantCoeff=0.271 },
  [598] = { name="Smite", rank=3, isCastDmg=true, minDmgV=58, maxDmgV=67, dmgType=2, instantCoeff=0.554 },
  [984] = { name="Smite", rank=4, isCastDmg=true, minDmgV=97, maxDmgV=112, dmgType=2, instantCoeff=0.714 },
  [1004] = { name="Smite", rank=5, isCastDmg=true, minDmgV=158, maxDmgV=178, dmgType=2, instantCoeff=0.714 },
  [6060] = { name="Smite", rank=6, isCastDmg=true, minDmgV=222, maxDmgV=250, dmgType=2, instantCoeff=0.714 },
  [10933] = { name="Smite", rank=7, isCastDmg=true, minDmgV=298, maxDmgV=335, dmgType=2, instantCoeff=0.714 },
  [10934] = { name="Smite", rank=8, isCastDmg=true, minDmgV=384, maxDmgV=429, dmgType=2, instantCoeff=0.714 },

  [2050] = { name="Lesser Heal", rank=1, isHeal=true, minHealV=47, maxHealV=58, instantCoeff=0.123 },
  [2052] = { name="Lesser Heal", rank=2, isHeal=true, minHealV=76, maxHealV=91, instantCoeff=0.229 },
  [2053] = { name="Lesser Heal", rank=3, isHeal=true, minHealV=143, maxHealV=165, instantCoeff=0.446 },

  [139] = { name="Renew", rank=1, isHot=true, hotV=45, duration=15, overTimeCoeff=0.55 },
  [6074] = { name="Renew", rank=2, isHot=true, hotV=100, duration=15, overTimeCoeff=0.775 },
  [6075] = { name="Renew", rank=3, isHot=true, hotV=175, duration=15, overTimeCoeff=1 },
  [6076] = { name="Renew", rank=4, isHot=true, hotV=245, duration=15, overTimeCoeff=1 },
  [6077] = { name="Renew", rank=5, isHot=true, hotV=315, duration=15, overTimeCoeff=1 },
  [6078] = { name="Renew", rank=6, isHot=true, hotV=400, duration=15, overTimeCoeff=1 },
  [10927] = { name="Renew", rank=7, isHot=true, hotV=510, duration=15, overTimeCoeff=1 },
  [10928] = { name="Renew", rank=8, isHot=true, hotV=650, duration=15, overTimeCoeff=1 },
  [10929] = { name="Renew", rank=9, isHot=true, hotV=810, duration=15, overTimeCoeff=1 },
  [25315] = { name="Renew", rank=10, isHot=true, hotV=970, duration=15, overTimeCoeff=1 },

  [13908] = { name="Desperate Prayer", rank=1, isHeal=true, minHealV=148, maxHealV=185, instantCoeff=0.268 },
  [19236] = { name="Desperate Prayer", rank=2, isHeal=true, minHealV=283, maxHealV=346, instantCoeff=0.396 },
  [19238] = { name="Desperate Prayer", rank=3, isHeal=true, minHealV=474, maxHealV=570, instantCoeff=0.429 },
  [19240] = { name="Desperate Prayer", rank=4, isHeal=true, minHealV=619, maxHealV=740, instantCoeff=0.429 },
  [19241] = { name="Desperate Prayer", rank=5, isHeal=true, minHealV=872, maxHealV=1033, instantCoeff=0.429 },
  [19242] = { name="Desperate Prayer", rank=6, isHeal=true, minHealV=1145, maxHealV=1350, instantCoeff=0.429 },
  [19243] = { name="Desperate Prayer", rank=7, isHeal=true, minHealV=1340, maxHealV=1579, instantCoeff=0.429 },

  [2054] = { name="Heal", rank=1, isHeal=true, minHealV=307, maxHealV=353, instantCoeff=0.729 },
  [2055] = { name="Heal", rank=2, isHeal=true, minHealV=445, maxHealV=507, instantCoeff=0.857 },
  [6063] = { name="Heal", rank=3, isHeal=true, minHealV=586, maxHealV=662, instantCoeff=0.857 },
  [6064] = { name="Heal", rank=4, isHeal=true, minHealV=734, maxHealV=827, instantCoeff=0.857 },

  [14914] = { name="Holy Fire", rank=1, isCastDmg=true, isDot = true, minDmgV=84, maxDmgV=104, dotV=30, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },
  [15262] = { name="Holy Fire", rank=2, isCastDmg=true, isDot = true, minDmgV=106, maxDmgV=131, dotV=40, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },
  [15263] = { name="Holy Fire", rank=3, isCastDmg=true, isDot = true, minDmgV=144, maxDmgV=178, dotV=55, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },
  [15264] = { name="Holy Fire", rank=4, isCastDmg=true, isDot = true, minDmgV=178, maxDmgV=223, dotV=65, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },
  [15265] = { name="Holy Fire", rank=5, isCastDmg=true, isDot = true, minDmgV=219, maxDmgV=273, dotV=85, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },
  [15266] = { name="Holy Fire", rank=6, isCastDmg=true, isDot = true, minDmgV=271, maxDmgV=340, dotV=100, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },
  [15267] = { name="Holy Fire", rank=7, isCastDmg=true, isDot = true, minDmgV=323, maxDmgV=406, dotV=125, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },
  [15261] = { name="Holy Fire", rank=8, isCastDmg=true, isDot = true, minDmgV=355, maxDmgV=449, dotV=145, duration=10, dmgType=2, instantCoeff=0.75, overTimeCoeff=0.25 },

  [2061] = { name="Flash Heal", rank=1, isHeal=true, minHealV=202, maxHealV=247, instantCoeff=0.429 },
  [9472] = { name="Flash Heal", rank=2, isHeal=true, minHealV=269, maxHealV=325, instantCoeff=0.429 },
  [9473] = { name="Flash Heal", rank=3, isHeal=true, minHealV=339, maxHealV=406, instantCoeff=0.429 },
  [9474] = { name="Flash Heal", rank=4, isHeal=true, minHealV=414, maxHealV=492, instantCoeff=0.429 },
  [10915] = { name="Flash Heal", rank=5, isHeal=true, minHealV=534, maxHealV=633, instantCoeff=0.429 },
  [10916] = { name="Flash Heal", rank=6, isHeal=true, minHealV=662, maxHealV=783, instantCoeff=0.429 },
  [10917] = { name="Flash Heal", rank=7, isHeal=true, minHealV=828, maxHealV=975, instantCoeff=0.429 },

  [15237] = { name="Holy Nova", rank=1, isCastDmg=true, isCastDmgAE=true, isHeal=true, isHealAE=true, minDmgV=29, maxDmgV=34, minHealV=54, maxHealV=63, maxTargets=5, dmgType=2, instantCoeff=0.107 },
  [15430] = { name="Holy Nova", rank=2, isCastDmg=true, isCastDmgAE=true, isHeal=true, isHealAE=true, minDmgV=52, maxDmgV=61, minHealV=89, maxHealV=101, maxTargets=5, dmgType=2, instantCoeff=0.107 },
  [15431] = { name="Holy Nova", rank=3, isCastDmg=true, isCastDmgAE=true, isHeal=true, isHealAE=true, minDmgV=79, maxDmgV=92, minHealV=124, maxHealV=143, maxTargets=5, dmgType=2, instantCoeff=0.107 },
  [27799] = { name="Holy Nova", rank=4, isCastDmg=true, isCastDmgAE=true, isHeal=true, isHealAE=true, minDmgV=110, maxDmgV=127, minHealV=165, maxHealV=192, maxTargets=5, dmgType=2, instantCoeff=0.107 },
  [27800] = { name="Holy Nova", rank=5, isCastDmg=true, isCastDmgAE=true, isHeal=true, isHealAE=true, minDmgV=146, maxDmgV=168, minHealV=239, maxHealV=276, maxTargets=5, dmgType=2, instantCoeff=0.107 },
  [27801] = { name="Holy Nova", rank=6, isCastDmg=true, isCastDmgAE=true, isHeal=true, isHealAE=true, minDmgV=181, maxDmgV=209, minHealV=302, maxHealV=350, maxTargets=5, dmgType=2, instantCoeff=0.107 },

  [596] = { name="Prayer of Healing", rank=1, isHeal=true, isHealAE=true, minHealV=312, maxHealV=333, maxTargets=5, instantCoeff=0.286 },
  [996] = { name="Prayer of Healing", rank=2, isHeal=true, isHealAE=true, minHealV=458, maxHealV=487, maxTargets=5, instantCoeff=0.286 },
  [10960] = { name="Prayer of Healing", rank=3, isHeal=true, isHealAE=true, minHealV=675, maxHealV=713, maxTargets=5, instantCoeff=0.286 },
  [10961] = { name="Prayer of Healing", rank=4, isHeal=true, isHealAE=true, minHealV=939, maxHealV=991, maxTargets=5, instantCoeff=0.286 },
  [25316] = { name="Prayer of Healing", rank=5, isHeal=true, isHealAE=true, minHealV=1041, maxHealV=1099, maxTargets=5, instantCoeff=0.286 },

  [2060] = { name="Greater Heal", rank=1, isHeal=true, minHealV=924, maxHealV=1039, instantCoeff=0.857 },
  [10963] = { name="Greater Heal", rank=2, isHeal=true, minHealV=1178, maxHealV=1318, instantCoeff=0.857 },
  [10964] = { name="Greater Heal", rank=3, isHeal=true, minHealV=1470, maxHealV=1642, instantCoeff=0.857 },
  [10965] = { name="Greater Heal", rank=4, isHeal=true, minHealV=1813, maxHealV=2021, instantCoeff=0.857 },
  [25314] = { name="Greater Heal", rank=5, isHeal=true, minHealV=1966, maxHealV=2194, instantCoeff=0.857 },


  -- SHADOW
  [589] = { name="Shadow Word: Pain", rank=1, isDot=true, dotV=30, duration=18, dmgType=6, overTimeCoeff=0.4 },
  [594] = { name="Shadow Word: Pain", rank=2, isDot=true, dotV=66, duration=18, dmgType=6, overTimeCoeff=0.624 },
  [970] = { name="Shadow Word: Pain", rank=3, isDot=true, dotV=132, duration=18, dmgType=6, overTimeCoeff=0.924 },
  [992] = { name="Shadow Word: Pain", rank=4, isDot=true, dotV=234, duration=18, dmgType=6, overTimeCoeff=1 },
  [2767] = { name="Shadow Word: Pain", rank=5, isDot=true, dotV=366, duration=18, dmgType=6, overTimeCoeff=1 },
  [10892] = { name="Shadow Word: Pain", rank=6, isDot=true, dotV=510, duration=18, dmgType=6, overTimeCoeff=1 },
  [10893] = { name="Shadow Word: Pain", rank=7, isDot=true, dotV=672, duration=18, dmgType=6, overTimeCoeff=1 },
  [10894] = { name="Shadow Word: Pain", rank=8, isDot=true, dotV=852, duration=18, dmgType=6, overTimeCoeff=1 },

  [8092] = { name="Mind Blast", rank=1, isCastDmg=true, minDmgV=42, maxDmgV=46, dmgType=6, instantCoeff=0.268 },
  [8102] = { name="Mind Blast", rank=2, isCastDmg=true, minDmgV=76, maxDmgV=83, dmgType=6, instantCoeff=0.364 },
  [8103] = { name="Mind Blast", rank=3, isCastDmg=true, minDmgV=117, maxDmgV=126, dmgType=6, instantCoeff=0.429 },
  [8104] = { name="Mind Blast", rank=4, isCastDmg=true, minDmgV=174, maxDmgV=184, dmgType=6, instantCoeff=0.429 },
  [8105] = { name="Mind Blast", rank=5, isCastDmg=true, minDmgV=225, maxDmgV=239, dmgType=6, instantCoeff=0.429 },
  [8106] = { name="Mind Blast", rank=6, isCastDmg=true, minDmgV=288, maxDmgV=307, dmgType=6, instantCoeff=0.429 },
  [10945] = { name="Mind Blast", rank=7, isCastDmg=true, minDmgV=356, maxDmgV=377, dmgType=6, instantCoeff=0.429 },
  [10946] = { name="Mind Blast", rank=8, isCastDmg=true, minDmgV=437, maxDmgV=461, dmgType=6, instantCoeff=0.429 },
  [10947] = { name="Mind Blast", rank=9, isCastDmg=true, minDmgV=508, maxDmgV=537, dmgType=6, instantCoeff=0.429 },

  [2944] = { name="Devouring Plague", rank=1, isDot=true, dotV=152, duration=24, dmgType=6, overTimeCoeff=0.5 },
  [19276] = { name="Devouring Plague", rank=2, isDot=true, dotV=272, duration=24, dmgType=6, overTimeCoeff=0.5 },
  [19277] = { name="Devouring Plague", rank=3, isDot=true, dotV=400, duration=24, dmgType=6, overTimeCoeff=0.5 },
  [19278] = { name="Devouring Plague", rank=4, isDot=true, dotV=544, duration=24, dmgType=6, overTimeCoeff=0.5 },
  [19279] = { name="Devouring Plague", rank=5, isDot=true, dotV=712, duration=24, dmgType=6, overTimeCoeff=0.5 },
  [19280] = { name="Devouring Plague", rank=6, isDot=true, dotV=904, duration=24, dmgType=6, overTimeCoeff=0.5 },

  [15407] = { name="Mind Flay", rank=1, isChanDmg=true, dotV=75, duration=3, dmgType=6, overTimeCoeff=0.45 },
  [17311] = { name="Mind Flay", rank=2, isChanDmg=true, dotV=126, duration=3, dmgType=6, overTimeCoeff=0.45 },
  [17312] = { name="Mind Flay", rank=3, isChanDmg=true, dotV=186, duration=3, dmgType=6, overTimeCoeff=0.45 },
  [17313] = { name="Mind Flay", rank=4, isChanDmg=true, dotV=261, duration=3, dmgType=6, overTimeCoeff=0.45 },
  [17314] = { name="Mind Flay", rank=5, isChanDmg=true, dotV=330, duration=3, dmgType=6, overTimeCoeff=0.45 },
  [18807] = { name="Mind Flay", rank=6, isChanDmg=true, dotV=426, duration=3, dmgType=6, overTimeCoeff=0.45 },
}



-- adds damage and healing value based on talents
function AddTalentValuePRIEST(spellID, value, valueType)
  -- DISCIPLINE
  if spellDataPRIEST[spellID].name == "Power Word: Shield" then
    value = value + value * (0.05 * GetTalentPoints(1, 5)) -- Improved Power Word: Shield
  end


  -- HOLY
  if spellDataPRIEST[spellID].name == "Smite" then
    value = value + value * (0.05 * GetTalentPoints(2, 11)) -- Searing Light
  end

  if spellDataPRIEST[spellID].name == "Lesser Heal" then
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end

  if spellDataPRIEST[spellID].name == "Renew" then
    value = value + value * (0.05 * GetTalentPoints(2, 2)) -- Improved Renew
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end

  if spellDataPRIEST[spellID].name == "Desperate Prayer" then
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end

  if spellDataPRIEST[spellID].name == "Heal" then
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end

  if spellDataPRIEST[spellID].name == "Holy Fire" then
    value = value + value * (0.05 * GetTalentPoints(2, 11)) -- Searing Light
  end

  if spellDataPRIEST[spellID].name == "Flash Heal" then
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end

  if spellDataPRIEST[spellID].name == "Holy Nova" and valueType == heal then
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end

  if spellDataPRIEST[spellID].name == "Prayer of Healing" then
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end

  if spellDataPRIEST[spellID].name == "Greater Heal" then
    value = value + value * (0.02 * GetTalentPoints(2, 15)) -- Spiritual Healing
  end


  -- SHADOW
  if spellDataPRIEST[spellID].name == "Shadow Word: Pain" then
    value = value + value * (0.1666 * GetTalentPoints(3, 4)) -- Improved Shadow Word: Pain
  end

  return value
end
