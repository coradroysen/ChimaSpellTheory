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
spellDataDRUID = {
  -- BALANCE
  [5176] = { name="Wrath", rank=1, isCastDmg=true, minDmgV=13, maxDmgV=16, dmgType=4, instantCoeff=0.123 },
  [5177] = { name="Wrath", rank=2, isCastDmg=true, minDmgV=28, maxDmgV=33, dmgType=4, instantCoeff=0.231 },
  [5178] = { name="Wrath", rank=3, isCastDmg=true, minDmgV=48, maxDmgV=57, dmgType=4, instantCoeff=0.443 },
  [5179] = { name="Wrath", rank=4, isCastDmg=true, minDmgV=69, maxDmgV=79, dmgType=4, instantCoeff=0.571 },
  [5180] = { name="Wrath", rank=5, isCastDmg=true, minDmgV=108, maxDmgV=123, dmgType=4, instantCoeff=0.571 },
  [6780] = { name="Wrath", rank=6, isCastDmg=true, minDmgV=148, maxDmgV=167, dmgType=4, instantCoeff=0.571 },
  [8905] = { name="Wrath", rank=7, isCastDmg=true, minDmgV=198, maxDmgV=221, dmgType=4, instantCoeff=0.571 },
  [9912] = { name="Wrath", rank=8, isCastDmg=true, minDmgV=248, maxDmgV=277, dmgType=4, instantCoeff=0.571 },

  [8921] = { name="Moonfire", rank=1, isCastDmg=true, isDot = true, minDmgV=9, maxDmgV=12, dotV=12, duration=9, dmgType=7, instantCoeff=0.06, overTimeCoeff=0.156 },
  [8924] = { name="Moonfire", rank=2, isCastDmg=true, isDot = true, minDmgV=17, maxDmgV=21, dotV=32, duration=12, dmgType=7, instantCoeff=0.094, overTimeCoeff=0.324 },
  [8925] = { name="Moonfire", rank=3, isCastDmg=true, isDot = true, minDmgV=30, maxDmgV=37, dotV=52, duration=12, dmgType=7, instantCoeff=0.128, overTimeCoeff=0.444 },
  [8926] = { name="Moonfire", rank=4, isCastDmg=true, isDot = true, minDmgV=47, maxDmgV=55, dotV=80, duration=12, dmgType=7, instantCoeff=0.15, overTimeCoeff=0.521 },
  [8927] = { name="Moonfire", rank=5, isCastDmg=true, isDot = true, minDmgV=70, maxDmgV=82, dotV=124, duration=12, dmgType=7, instantCoeff=0.15, overTimeCoeff=0.521 },
  [8928] = { name="Moonfire", rank=6, isCastDmg=true, isDot = true, minDmgV=91, maxDmgV=108, dotV=164, duration=12, dmgType=7, instantCoeff=0.15, overTimeCoeff=0.521 },
  [8929] = { name="Moonfire", rank=7, isCastDmg=true, isDot = true, minDmgV=117, maxDmgV=137, dotV=212, duration=12, dmgType=7, instantCoeff=0.15, overTimeCoeff=0.521 },
  [9833] = { name="Moonfire", rank=8, isCastDmg=true, isDot = true, minDmgV=143, maxDmgV=168, dotV=264, duration=12, dmgType=7, instantCoeff=0.15, overTimeCoeff=0.521 },
  [9834] = { name="Moonfire", rank=9, isCastDmg=true, isDot = true, minDmgV=172, maxDmgV=200, dotV=320, duration=12, dmgType=7, instantCoeff=0.15, overTimeCoeff=0.521 },
  [9835] = { name="Moonfire", rank=10, isCastDmg=true, isDot = true, minDmgV=195, maxDmgV=228, dotV=384, duration=12, dmgType=7, instantCoeff=0.15, overTimeCoeff=0.521 },

  [339] = { name="Entangling Roots", rank=1, isDot=true, dotV=20, duration=12, dmgType=4, overTimeCoeff=0.132 },
  [1062] = { name="Entangling Roots", rank=2, isDot=true, dotV=50, duration=15, dmgType=4, overTimeCoeff=0.28 },
  [5195] = { name="Entangling Roots", rank=3, isDot=true, dotV=90, duration=18, dmgType=4, overTimeCoeff=0.3 },
  [5196] = { name="Entangling Roots", rank=4, isDot=true, dotV=140, duration=21, dmgType=4, overTimeCoeff=0.3 },
  [9852] = { name="Entangling Roots", rank=5, isDot=true, dotV=200, duration=24, dmgType=4, overTimeCoeff=0.3 },
  [9853] = { name="Entangling Roots", rank=6, isDot=true, dotV=270, duration=27, dmgType=4, overTimeCoeff=0.3 },

  [2912] = { name="Starfire", rank=1, isCastDmg=true, minDmgV=95, maxDmgV=115, dmgType=7, instantCoeff=1 },
  [8949] = { name="Starfire", rank=2, isCastDmg=true, minDmgV=146, maxDmgV=177, dmgType=7, instantCoeff=1 },
  [8950] = { name="Starfire", rank=3, isCastDmg=true, minDmgV=212, maxDmgV=253, dmgType=7, instantCoeff=1 },
  [8951] = { name="Starfire", rank=4, isCastDmg=true, minDmgV=293, maxDmgV=293, dmgType=7, instantCoeff=1 },
  [9875] = { name="Starfire", rank=5, isCastDmg=true, minDmgV=378, maxDmgV=445, dmgType=7, instantCoeff=1 },
  [9876] = { name="Starfire", rank=6, isCastDmg=true, minDmgV=451, maxDmgV=531, dmgType=7, instantCoeff=1 },
  [25298] = { name="Starfire", rank=7, isCastDmg=true, minDmgV=496, maxDmgV=584, dmgType=7, instantCoeff=1 },

  [16914] = { name="Hurricane", rank=1, isChanDmg=true, isDmgAE=true, dotV=72, duration=10, maxTargets=5, dmgType=4, overTimeCoeff=0.316 },
  [17401] = { name="Hurricane", rank=2, isChanDmg=true, isDmgAE=true, dotV=102, duration=10, maxTargets=5, dmgType=4, overTimeCoeff=0.316 },
  [17402] = { name="Hurricane", rank=3, isChanDmg=true, isDmgAE=true, dotV=134, duration=10, maxTargets=5, dmgType=4, overTimeCoeff=0.316 },


  -- FERAL COMBAT
  -- [6807] = { name="Maul", rank=1, isMeleeDmg=true, dmgV=18, dmgType=1, instantCoeff=1 },
  -- [6808] = { name="Maul", rank=2, isMeleeDmg=true, dmgV=27, dmgType=1, instantCoeff=1 },
  -- [6809] = { name="Maul", rank=3, isMeleeDmg=true, dmgV=37, dmgType=1, instantCoeff=1 },
  -- [8972] = { name="Maul", rank=4, isMeleeDmg=true, dmgV=49, dmgType=1, instantCoeff=1 },
  -- [9745] = { name="Maul", rank=5, isMeleeDmg=true, dmgV=71, dmgType=1, instantCoeff=1 },
  -- [9880] = { name="Maul", rank=6, isMeleeDmg=true, dmgV=101, dmgType=1, instantCoeff=1 },
  -- [9881] = { name="Maul", rank=7, isMeleeDmg=true, dmgV=128, dmgType=1, instantCoeff=1 },

  -- [779] = { name="Swipe", rank=1, isMeleeDmg=true, isDmgAE=true, dmgV=18, maxTargets=3, dmgType=1, instantCoeff=1 },
  -- [780] = { name="Swipe", rank=2, isMeleeDmg=true, isDmgAE=true, dmgV=25, maxTargets=3, dmgType=1, instantCoeff=1 },
  -- [769] = { name="Swipe", rank=3, isMeleeDmg=true, isDmgAE=true, dmgV=36, maxTargets=3, dmgType=1, instantCoeff=1 },
  -- [9754] = { name="Swipe", rank=4, isMeleeDmg=true, isDmgAE=true, dmgV=60, maxTargets=3, dmgType=1, instantCoeff=1 },
  -- [9908] = { name="Swipe", rank=5, isMeleeDmg=true, isDmgAE=true, dmgV=83, maxTargets=3, dmgType=1, instantCoeff=1 },

  -- [9908] = { name="Rip", rank=5, isMeleeDmg=true, isCombo=true, isDmgAE=true, dmgV=83, maxTargets=3, dmgType=1, instantCoeff=1 },

  -- [Claw]

  -- [Shred]

  -- [Rake]

  -- [Ferocious Bite]

  -- [Ravage]

  -- [Pounce]


  -- RESTORATION
  [5185] = { name="Healing Touch", rank=1, isHeal=true, minHealV=40, maxHealV=55, instantCoeff=0.123 },
  [5186] = { name="Healing Touch", rank=2, isHeal=true, minHealV=94, maxHealV=119, instantCoeff=0.314 },
  [5187] = { name="Healing Touch", rank=3, isHeal=true, minHealV=204, maxHealV=253, instantCoeff=0.554 },
  [5188] = { name="Healing Touch", rank=4, isHeal=true, minHealV=376, maxHealV=459, instantCoeff=0.857 },
  [5189] = { name="Healing Touch", rank=5, isHeal=true, minHealV=589, maxHealV=712, instantCoeff=1 },
  [6778] = { name="Healing Touch", rank=6, isHeal=true, minHealV=762, maxHealV=914, instantCoeff=1 },
  [8903] = { name="Healing Touch", rank=7, isHeal=true, minHealV=958, maxHealV=1143, instantCoeff=1 },
  [9758] = { name="Healing Touch", rank=8, isHeal=true, minHealV=1225, maxHealV=1453, instantCoeff=1 },
  [9888] = { name="Healing Touch", rank=9, isHeal=true, minHealV=1545, maxHealV=1826, instantCoeff=1 },
  [9889] = { name="Healing Touch", rank=10, isHeal=true, minHealV=1916, maxHealV=2257, instantCoeff=1 },
  [25297] = { name="Healing Touch", rank=11, isHeal=true, minHealV=2267, maxHealV=2677, instantCoeff=1 },

  [774] = { name="Rejuvenation", rank=1, isHot=true, hotV=32, duration=12, overTimeCoeff=0.32 },
  [1058] = { name="Rejuvenation", rank=2, isHot=true, hotV=56, duration=12, overTimeCoeff=0.5 },
  [1430] = { name="Rejuvenation", rank=3, isHot=true, hotV=116, duration=12, overTimeCoeff=0.68 },
  [2090] = { name="Rejuvenation", rank=4, isHot=true, hotV=180, duration=12, overTimeCoeff=0.8 },
  [2091] = { name="Rejuvenation", rank=5, isHot=true, hotV=244, duration=12, overTimeCoeff=0.8 },
  [3627] = { name="Rejuvenation", rank=6, isHot=true, hotV=304, duration=12, overTimeCoeff=0.8 },
  [8910] = { name="Rejuvenation", rank=7, isHot=true, hotV=388, duration=12, overTimeCoeff=0.8 },
  [9839] = { name="Rejuvenation", rank=8, isHot=true, hotV=488, duration=12, overTimeCoeff=0.8 },
  [9840] = { name="Rejuvenation", rank=9, isHot=true, hotV=608, duration=12, overTimeCoeff=0.8 },
  [9841] = { name="Rejuvenation", rank=10, isHot=true, hotV=756, duration=12, overTimeCoeff=0.8 },
  [25299] = { name="Rejuvenation", rank=11, isHot=true, hotV=888, duration=12, overTimeCoeff=0.8 },

  [8936] = { name="Regrowth", rank=1, isHeal=true, isHot=true, minHealV=93, maxHealV=107, hotV=98, duration=21, instantCoeff=0.2, overTimeCoeff=0.35 },
  [8938] = { name="Regrowth", rank=2, isHeal=true, isHot=true, minHealV=176, maxHealV=201, hotV=175, duration=21, instantCoeff=0.264, overTimeCoeff=0.462 },
  [8939] = { name="Regrowth", rank=3, isHeal=true, isHot=true, minHealV=255, maxHealV=290, hotV=259, duration=21, instantCoeff=0.286, overTimeCoeff=0.497 },
  [8940] = { name="Regrowth", rank=4, isHeal=true, isHot=true, minHealV=336, maxHealV=378, hotV=343, duration=21, instantCoeff=0.286, overTimeCoeff=0.497 },
  [8941] = { name="Regrowth", rank=5, isHeal=true, isHot=true, minHealV=425, maxHealV=478, hotV=427, duration=21, instantCoeff=0.286, overTimeCoeff=0.497 },
  [9750] = { name="Regrowth", rank=6, isHeal=true, isHot=true, minHealV=534, maxHealV=599, hotV=546, duration=21, instantCoeff=0.286, overTimeCoeff=0.497 },
  [9856] = { name="Regrowth", rank=7, isHeal=true, isHot=true, minHealV=672, maxHealV=751, hotV=686, duration=21, instantCoeff=0.286, overTimeCoeff=0.497 },
  [9857] = { name="Regrowth", rank=8, isHeal=true, isHot=true, minHealV=839, maxHealV=935, hotV=861, duration=21, instantCoeff=0.286, overTimeCoeff=0.497 },
  [9858] = { name="Regrowth", rank=9, isHeal=true, isHot=true, minHealV=1003, maxHealV=1119, hotV=1064, duration=21, instantCoeff=0.286, overTimeCoeff=0.497 },

  [740] = { name="Tranquility", rank=1, isChanHeal=true, isHealAE=true, hotV=98, duration=10, maxTargets=5, overTimeCoeff=0.33 },
  [8918] = { name="Tranquility", rank=2, isChanHeal=true, isHealAE=true, hotV=143, duration=10, maxTargets=5, overTimeCoeff=0.33 },
  [9862] = { name="Tranquility", rank=3, isChanHeal=true, isHealAE=true, hotV=211, duration=10, maxTargets=5, overTimeCoeff=0.33 },
  [9863] = { name="Tranquility", rank=4, isChanHeal=true, isHealAE=true, hotV=294, duration=10, maxTargets=5, overTimeCoeff=0.33 },

  [5570] = { name="Insect Swarm", rank=1, isDot=true, dotV=66, duration=12, dmgType=4, overTimeCoeff=0.948 },
  [24974] = { name="Insect Swarm", rank=1, isDot=true, dotV=138, duration=12, dmgType=4, overTimeCoeff=0.948 },
  [24975] = { name="Insect Swarm", rank=1, isDot=true, dotV=174, duration=12, dmgType=4, overTimeCoeff=0.948 },
  [24976] = { name="Insect Swarm", rank=1, isDot=true, dotV=264, duration=12, dmgType=4, overTimeCoeff=0.948 },
  [24977] = { name="Insect Swarm", rank=1, isDot=true, dotV=324, duration=12, dmgType=4, overTimeCoeff=0.948 },
}



-- adds damage and healing value based on talents
function ChimaSpellTheory_AddTalentValueDRUID(spellID, value, valueType)
  -- BALANCE
  if spellDataDRUID[spellID].name == "Wrath" then
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(1, 15)) -- Moonfury
  end

  if spellDataDRUID[spellID].name == "Moonfire" then
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(1, 5)) -- Improved Moonfire
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(1, 15)) -- Moonfury
  end

  if spellDataDRUID[spellID].name == "Starfire" then
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(1, 15)) -- Moonfury
  end


  -- RESTORATION
  if spellDataDRUID[spellID].name == "Healing Touch" then
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(3, 12)) -- Gift of Nature
  end

  if spellDataDRUID[spellID].name == "Rejuvenation" then
    value = value + value * (0.05 * ChimaSpellTheory_GetTalentPoints(3, 10)) -- Improved Rejuvenation
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(3, 12)) -- Gift of Nature
  end

  if spellDataDRUID[spellID].name == "Regrowth" then
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(3, 12)) -- Gift of Nature
  end

  if spellDataDRUID[spellID].name == "Tranquility" then
    value = value + value * (0.02 * ChimaSpellTheory_GetTalentPoints(3, 12)) -- Gift of Nature
  end

  return value
end
