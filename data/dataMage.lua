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
spellDataMAGE = {
  -- ARCANE
  [5143] = { name="Arcane Missiles", rank=1, isChanDmg=true, dotV=78, duration=3, dmgType=7, overTimeCoeff=0.396 },
  [5144] = { name="Arcane Missiles", rank=2, isChanDmg=true, dotV=152, duration=4, dmgType=7, overTimeCoeff=0.816 },
  [5145] = { name="Arcane Missiles", rank=3, isChanDmg=true, dotV=290, duration=5, dmgType=7, overTimeCoeff=1.2 },
  [8416] = { name="Arcane Missiles", rank=4, isChanDmg=true, dotV=430, duration=5, dmgType=7, overTimeCoeff=1.2 },
  [8417] = { name="Arcane Missiles", rank=5, isChanDmg=true, dotV=590, duration=5, dmgType=7, overTimeCoeff=1.2 },
  [10211] = { name="Arcane Missiles", rank=6, isChanDmg=true, dotV=775, duration=5, dmgType=7, overTimeCoeff=1.2 },
  [10212] = { name="Arcane Missiles", rank=7, isChanDmg=true, dotV=980, duration=5, dmgType=7, overTimeCoeff=1.2 },
  [25345] = { name="Arcane Missiles", rank=8, isChanDmg=true, dotV=1150, duration=5, dmgType=7, overTimeCoeff=1.2 },

  [1449] = { name="Arcane Explosion", rank=1, isCastDmg=true, isCastDmgAE=true, minDmgV=34, maxDmgV=38, maxTargets=5, dmgType=7, instantCoeff=0.111 },
  [8437] = { name="Arcane Explosion", rank=2, isCastDmg=true, isCastDmgAE=true, minDmgV=60, maxDmgV=66, maxTargets=5, dmgType=7, instantCoeff=0.143 },
  [8438] = { name="Arcane Explosion", rank=3, isCastDmg=true, isCastDmgAE=true, minDmgV=101, maxDmgV=110, maxTargets=5, dmgType=7, instantCoeff=0.143 },
  [8439] = { name="Arcane Explosion", rank=4, isCastDmg=true, isCastDmgAE=true, minDmgV=143, maxDmgV=156, maxTargets=5, dmgType=7, instantCoeff=0.143 },
  [10201] = { name="Arcane Explosion", rank=5, isCastDmg=true, isCastDmgAE=true, minDmgV=191, maxDmgV=208, maxTargets=5, dmgType=7, instantCoeff=0.143 },
  [10202] = { name="Arcane Explosion", rank=6, isCastDmg=true, isCastDmgAE=true, minDmgV=249, maxDmgV=270, maxTargets=5, dmgType=7, instantCoeff=0.143 },


  -- FIRE
  [133] = { name="Fireball", rank=1, isCastDmg=true, isDot = true, minDmgV=16, maxDmgV=25, dotV=2, duration=4, dmgType=3, instantCoeff=0.123, overTimeCoeff=0 },
  [143] = { name="Fireball", rank=2, isCastDmg=true, isDot = true, minDmgV=34, maxDmgV=49, dotV=3, duration=6, dmgType=3, instantCoeff=0.271, overTimeCoeff=0 },
  [145] = { name="Fireball", rank=3, isCastDmg=true, isDot = true, minDmgV=57, maxDmgV=77, dotV=6, duration=6, dmgType=3, instantCoeff=0.5, overTimeCoeff=0 },
  [3140] = { name="Fireball", rank=4, isCastDmg=true, isDot = true, minDmgV=89, maxDmgV=122, dotV=12, duration=8, dmgType=3, instantCoeff=0.793, overTimeCoeff=0 },
  [8400] = { name="Fireball", rank=5, isCastDmg=true, isDot = true, minDmgV=146, maxDmgV=195, dotV=20, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },
  [8401] = { name="Fireball", rank=6, isCastDmg=true, isDot = true, minDmgV=207, maxDmgV=274, dotV=28, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },
  [8402] = { name="Fireball", rank=7, isCastDmg=true, isDot = true, minDmgV=264, maxDmgV=345, dotV=32, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },
  [10148] = { name="Fireball", rank=8, isCastDmg=true, isDot = true, minDmgV=328, maxDmgV=425, dotV=40, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },
  [10149] = { name="Fireball", rank=9, isCastDmg=true, isDot = true, minDmgV=404, maxDmgV=518, dotV=52, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },
  [10150] = { name="Fireball", rank=10, isCastDmg=true, isDot = true, minDmgV=488, maxDmgV=623, dotV=60, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },
  [10151] = { name="Fireball", rank=11, isCastDmg=true, isDot = true, minDmgV=561, maxDmgV=715, dotV=72, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },
  [25306] = { name="Fireball", rank=12, isCastDmg=true, isDot = true, minDmgV=596, maxDmgV=760, dotV=76, duration=8, dmgType=3, instantCoeff=1, overTimeCoeff=0 },

  [2136] = { name="Fire Blast", rank=1, isCastDmg=true, minDmgV=27, maxDmgV=35, dmgType=3, instantCoeff=0.204 },
  [2137] = { name="Fire Blast", rank=2, isCastDmg=true, minDmgV=62, maxDmgV=76, dmgType=3, instantCoeff=0.332 },
  [2138] = { name="Fire Blast", rank=3, isCastDmg=true, minDmgV=110, maxDmgV=134, dmgType=3, instantCoeff=0.429 },
  [8412] = { name="Fire Blast", rank=4, isCastDmg=true, minDmgV=177, maxDmgV=211, dmgType=3, instantCoeff=0.429 },
  [8413] = { name="Fire Blast", rank=5, isCastDmg=true, minDmgV=253, maxDmgV=301, dmgType=3, instantCoeff=0.429 },
  [10197] = { name="Fire Blast", rank=6, isCastDmg=true, minDmgV=345, maxDmgV=407, dmgType=3, instantCoeff=0.429 },
  [10199] = { name="Fire Blast", rank=7, isCastDmg=true, minDmgV=446, maxDmgV=524, dmgType=3, instantCoeff=0.429 },

  [2120] = { name="Flamestrike", rank=1, isCastDmg=true, isDot = true, isCastDmgAE=true, minDmgV=55, maxDmgV=71, dotV=48, duration=8, maxTargets=5, dmgType=3, instantCoeff=0.134, overTimeCoeff=0.068 },
  [2121] = { name="Flamestrike", rank=2, isCastDmg=true, isDot = true, isCastDmgAE=true, minDmgV=100, maxDmgV=126, dotV=88, duration=8, maxTargets=5, dmgType=3, instantCoeff=0.157, overTimeCoeff=0.08 },
  [8422] = { name="Flamestrike", rank=3, isCastDmg=true, isDot = true, isCastDmgAE=true, minDmgV=159, maxDmgV=197, dotV=140, duration=8, maxTargets=5, dmgType=3, instantCoeff=0.157, overTimeCoeff=0.08 },
  [8423] = { name="Flamestrike", rank=4, isCastDmg=true, isDot = true, isCastDmgAE=true, minDmgV=226, maxDmgV=279, dotV=196, duration=8, maxTargets=5, dmgType=3, instantCoeff=0.157, overTimeCoeff=0.08 },
  [10215] = { name="Flamestrike", rank=5, isCastDmg=true, isDot = true, isCastDmgAE=true, minDmgV=298, maxDmgV=367, dotV=264, duration=8, maxTargets=5, dmgType=3, instantCoeff=0.157, overTimeCoeff=0.08 },
  [10216] = { name="Flamestrike", rank=6, isCastDmg=true, isDot = true, isCastDmgAE=true, minDmgV=381, maxDmgV=466, dotV=340, duration=8, maxTargets=5, dmgType=3, instantCoeff=0.157, overTimeCoeff=0.08 },

  [11366] = { name="Pyroblast", rank=1, isCastDmg=true, isDot = true, minDmgV=148, maxDmgV=195, dotV=56, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },
  [12505] = { name="Pyroblast", rank=2, isCastDmg=true, isDot = true, minDmgV=193, maxDmgV=250, dotV=72, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },
  [12522] = { name="Pyroblast", rank=3, isCastDmg=true, isDot = true, minDmgV=270, maxDmgV=343, dotV=96, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },
  [12523] = { name="Pyroblast", rank=4, isCastDmg=true, isDot = true, minDmgV=347, maxDmgV=437, dotV=124, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },
  [12524] = { name="Pyroblast", rank=5, isCastDmg=true, isDot = true, minDmgV=427, maxDmgV=536, dotV=156, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },
  [12525] = { name="Pyroblast", rank=6, isCastDmg=true, isDot = true, minDmgV=525, maxDmgV=654, dotV=188, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },
  [12526] = { name="Pyroblast", rank=7, isCastDmg=true, isDot = true, minDmgV=625, maxDmgV=776, dotV=228, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },
  [18809] = { name="Pyroblast", rank=8, isCastDmg=true, isDot = true, minDmgV=716, maxDmgV=890, dotV=268, duration=12, dmgType=3, instantCoeff=1, overTimeCoeff=0.6 },

  [2948] = { name="Scorch", rank=1, isCastDmg=true, minDmgV=56, maxDmgV=69, dmgType=3, instantCoeff=0.429 },
  [8444] = { name="Scorch", rank=2, isCastDmg=true, minDmgV=81, maxDmgV=98, dmgType=3, instantCoeff=0.429 },
  [8445] = { name="Scorch", rank=3, isCastDmg=true, minDmgV=105, maxDmgV=126, dmgType=3, instantCoeff=0.429 },
  [8446] = { name="Scorch", rank=4, isCastDmg=true, minDmgV=139, maxDmgV=165, dmgType=3, instantCoeff=0.429 },
  [10205] = { name="Scorch", rank=5, isCastDmg=true, minDmgV=168, maxDmgV=199, dmgType=3, instantCoeff=0.429 },
  [10206] = { name="Scorch", rank=6, isCastDmg=true, minDmgV=207, maxDmgV=247, dmgType=3, instantCoeff=0.429 },
  [10207] = { name="Scorch", rank=7, isCastDmg=true, minDmgV=237, maxDmgV=280, dmgType=3, instantCoeff=0.429 },

  -- FROST
  [116] = { name="Frostbolt", rank=1, isCastDmg=true, minDmgV=20, maxDmgV=22, dmgType=5, instantCoeff=0.163 },
  [205] = { name="Frostbolt", rank=2, isCastDmg=true, minDmgV=33, maxDmgV=38, dmgType=5, instantCoeff=0.269 },
  [837] = { name="Frostbolt", rank=3, isCastDmg=true, minDmgV=54, maxDmgV=61, dmgType=5, instantCoeff=0.463 },
  [7322] = { name="Frostbolt", rank=4, isCastDmg=true, minDmgV=78, maxDmgV=87, dmgType=5, instantCoeff=0.706 },
  [8406] = { name="Frostbolt", rank=5, isCastDmg=true, minDmgV=132, maxDmgV=144, dmgType=5, instantCoeff=0.814 },
  [8407] = { name="Frostbolt", rank=6, isCastDmg=true, minDmgV=180, maxDmgV=197, dmgType=5, instantCoeff=0.814 },
  [8408] = { name="Frostbolt", rank=7, isCastDmg=true, minDmgV=235, maxDmgV=255, dmgType=5, instantCoeff=0.814 },
  [10179] = { name="Frostbolt", rank=8, isCastDmg=true, minDmgV=301, maxDmgV=326, dmgType=5, instantCoeff=0.814 },
  [10180] = { name="Frostbolt", rank=9, isCastDmg=true, minDmgV=363, maxDmgV=394, dmgType=5, instantCoeff=0.814 },
  [10181] = { name="Frostbolt", rank=10, isCastDmg=true, minDmgV=440, maxDmgV=475, dmgType=5, instantCoeff=0.814 },
  [25304] = { name="Frostbolt", rank=11, isCastDmg=true, minDmgV=515, maxDmgV=555, dmgType=5, instantCoeff=0.814 },

  [122] = { name="Frost Nova", rank=1, isCastDmg=true, isCastDmgAE=true, minDmgV=21, maxDmgV=24, maxTargets=5, dmgType=5, instantCoeff=0.018 },
  [865] = { name="Frost Nova", rank=2, isCastDmg=true, isCastDmgAE=true, minDmgV=35, maxDmgV=40, maxTargets=5, dmgType=5, instantCoeff=0.029 },
  [6131] = { name="Frost Nova", rank=3, isCastDmg=true, isCastDmgAE=true, minDmgV=54, maxDmgV=61, maxTargets=5, dmgType=5, instantCoeff=0.029 },
  [10230] = { name="Frost Nova", rank=4, isCastDmg=true, isCastDmgAE=true, minDmgV=73, maxDmgV=82, maxTargets=5, dmgType=5, instantCoeff=0.029 },

  [10] = { name="Blizzard", rank=1, isChanDmg=true, isDmgAE=true, dotV=200, duration=8, maxTargets=5, dmgType=5, overTimeCoeff=0.336 },
  [6141] = { name="Blizzard", rank=2, isChanDmg=true, isDmgAE=true, dotV=352, duration=8, maxTargets=5, dmgType=5, overTimeCoeff=0.336 },
  [8427] = { name="Blizzard", rank=3, isChanDmg=true, isDmgAE=true, dotV=520, duration=8, maxTargets=5, dmgType=5, overTimeCoeff=0.336 },
  [10185] = { name="Blizzard", rank=4, isChanDmg=true, isDmgAE=true, dotV=720, duration=8, maxTargets=5, dmgType=5, overTimeCoeff=0.336 },
  [10186] = { name="Blizzard", rank=5, isChanDmg=true, isDmgAE=true, dotV=936, duration=8, maxTargets=5, dmgType=5, overTimeCoeff=0.336 },
  [10187] = { name="Blizzard", rank=6, isChanDmg=true, isDmgAE=true, dotV=1192, duration=8, maxTargets=5, dmgType=5, overTimeCoeff=0.336 },

  -- [Cone of Cold]
}



-- adds damage and healing value based on talents
function ChimaSpellTheory_AddTalentValueMAGE(spellID, value, valueType)
  -- ARCANE


  -- FIRE


  -- FROST
  return value
end
