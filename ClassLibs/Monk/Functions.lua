if select(3,UnitClass("player")) == 10 then

--[[           ]]	--[[]]	   --[[]]	--[[]]	   --[[]]	--[[   		   ]]	--[[   		   ]]	--[[   		   ]]	--[[           ]]	--[[]]	   --[[]]
--[[           ]]	--[[]]	   --[[]]	--[[  ]]   --[[]]	--[[   		   ]]	--[[   		   ]]	--[[   		   ]]	--[[           ]]	--[[  ]]   --[[]]
--[[]]				--[[]]	   --[[]]	--[[    ]] --[[]]   --[[]]					 --[[ ]]			 --[[ ]]		--[[]]	   --[[]]	--[[    ]] --[[]]
--[[           ]]	--[[]]	   --[[]]	--[[           ]]	--[[]]					 --[[ ]]			 --[[ ]]		--[[]]	   --[[]]	--[[           ]]
--[[           ]]	--[[]]	   --[[]]	--[[   		   ]]	--[[]]					 --[[ ]]			 --[[ ]]		--[[]]	   --[[]]	--[[   		   ]]
--[[]]	   			--[[           ]]	--[[]]	 --[[  ]]	--[[   		   ]]		 --[[ ]]		--[[   		   ]]	--[[           ]]	--[[]]	 --[[  ]]
--[[]]	   			--[[           ]]	--[[]]	   --[[]]	--[[   		   ]]		 --[[ ]]		--[[   		   ]]	--[[           ]]	--[[]]	   --[[]]



--[[           ]]	--[[           ]]	--[[           ]]	--[[]] 	   --[[]]
--[[           ]]	--[[           ]]	--[[           ]]	--[[]] 	   --[[]]	
--[[]]	   --[[]]	--[[]]	   --[[]]	--[[]]				--[[ ]]   --[[ ]]
--[[         ]]		--[[           ]]	--[[           ]]	--[[           ]]
--[[]]	   --[[]]	--[[        ]]		--[[]]				--[[           ]]
--[[           ]]	--[[]]	  --[[]]	--[[           ]]	--[[ ]]   --[[ ]]
--[[           ]]	--[[]]	   --[[]]	--[[           ]]	 --[[]]   --[[]]

--[[]]     --[[]]	--[[           ]]	--[[           ]]	--[[           ]]
--[[ ]]   --[[ ]] 		 --[[ ]]		--[[           ]]	--[[           ]]
--[[           ]] 		 --[[ ]]		--[[]]	   				 --[[ ]]
--[[           ]]		 --[[ ]]		--[[           ]]		 --[[ ]]
--[[]] 	   --[[]]		 --[[ ]]				   --[[]]		 --[[ ]]
--[[]]	   --[[]]		 --[[ ]]		--[[           ]]		 --[[ ]]
--[[]]	   --[[]]	--[[           ]]	--[[           ]]		 --[[ ]]

--[[]] 	   --[[]]	--[[           ]]	--[[]]	   --[[]]	--[[         ]]
--[[]] 	   --[[]]		  --[[]]		--[[  ]]   --[[]]	--[[          ]]
--[[ ]]   --[[ ]]		  --[[]]		--[[    ]] --[[]]	--[[]]	   --[[]]
--[[           ]]		  --[[]]		--[[           ]]	--[[]]	   --[[]]
--[[           ]]		  --[[]]		--[[   		   ]]	--[[]]	   --[[]]
--[[ ]]   --[[ ]]		  --[[]]		--[[]]	 --[[  ]]	--[[          ]]
 --[[]]   --[[]]	--[[           ]]	--[[]]	   --[[]]	--[[         ]]
------Abilities------
_BlackoutKick           	=   100784  --Blackout Kick
_ChiBrew					=	115399	--Chi Brew
_ChiWave                	=   115098  --Chi Wave
_CracklingJadeLightning 	=   117952  --Crackling Jade Lightning
_DampenHarm             	=   122278  --Dampen Harm
_Disable                	=   116095  --Disable
_Detox                  	=   115450  --Detox
_EnergizingBrew				=   115288  --Energizing Brew
_ExpelHarm					=   115072  --Expel Harm
_FistsOfFury				=   113656  --Fists of Fury
_FlyingSerpentKick			=   101545  --Flying Serpent Kick
_FortifyingBrew				=   115203  --Fortifying Brew
_GrapleWaepon				=   117368  --Grapple Weapon
_InvokeXuen					=   123904  --Invoke Xuen
_Jab						=   115698  --Jab
_LegacyOfTheEmperor			=   115921  --Legacy of the Emperor
_LegSweep					=   119381  --Leg Sweep
_LegacyOfTheWhiteTiger		=   116781  --Legacy of the White Tiger
_NimbleBrew					=   137562  --Nimble Brew
_Paralysis					=   115078  --Paralysis
_Provoke					=   115546  --Provoke
_QuakingPalm				=   107079  --Quaking Palm
_Resuscitate				=   115178  --Resuscitate
_Roll						=   121827--109132  --Roll
_RaisingSunKick				=   107428  --Raising Sun Kick
_SpinningCraneKick			=   101546  --Spinning Crane Kick
_SpinningFireBlossom		=   115073  --Spinning Fire Blossom
_StanceOfTheFierceTiger		=   103985  --Stance of the Fierce Tiger
_SpearHandStrike			=   116705  --Spear Hand Strike
_TigereyeBrew				=   116740  --Tigereye Brew
_TigerPalm					=   100787  --Tiger Palm
_TouchOfDeath				=   115080  --Touch of Death
_TouchOfKarma 				=   122470  --Touch of Karma
_ZenPilgramage				=   126892  --Zen Pilgramage
_ZenSphere					=   124081  --Zen Sphere

------Buffs/Debuffs------
_DeathNote					=   121125 --Tracking Touch of Death Availability
_TigerPower					=   125359 --Tiger Power
_ComboBreakerTigerPalm		=   118864 --Combo Breaker: Tiger Palm
_ComboBreakerBlackoutKick	=   116768 --Combo Breaker: Blackout Kick
_ZenSphereBuff				=   124081 --Zen Sphere Buff
_TigereyeBrewStacks			=   125195 --Tigereye Brew Stacks
_DisableDebuff				=   116706 --Disable (root)

------Racials------
_GiftOfTheNaaru			 =   59547   --Gift of the Naaru

------Member Check------
function CalculateHP(unit)
  incomingheals = UnitGetIncomingHeals(unit) or 0
  return 100 * ( UnitHealth(unit) + incomingheals ) / UnitHealthMax(unit)
end

function GroupInfo()
    members, group = { { Unit = "player", HP = CalculateHP("player") } }, { low = 0, tanks = { } }      
    group.type = IsInRaid() and "raid" or "party" 
    group.number = GetNumGroupMembers()
    if group.number > 0 then
        for i=1,group.number do 
            if canHeal(group.type..i) then 
                local unit, hp = group.type..i, CalculateHP(group.type..i) 
                table.insert( members,{ Unit = unit, HP = hp } ) 
                if hp < 90 then group.low = group.low + 1 end 
                if UnitGroupRolesAssigned(unit) == "TANK" then table.insert(group.tanks,unit) end 
            end 
        end 
        if group.type == "raid" and #members > 1 then table.remove(members,1) end 
        table.sort(members, function(x,y) return x.HP < y.HP end)
        --local customtarget = canHeal("target") and "target" -- or CanHeal("mouseover") and GetMouseFocus() ~= WorldFrame and "mouseover" 
        --if customtarget then table.sort(members, function(x) return UnitIsUnit(customtarget,x.Unit) end) end 
    end
end

------Tracking------
-- Raising Sun Kick Debuff Remain
function getRSR()
	if UnitDebuffID("target",_RaisingSunKick,"player") then
		return (select(7, UnitDebuffID("target",_RaisingSunKick,"player")) - GetTime())
	else
		if UnitLevel("player")>=56 then
			if getSpellCD(_RaisingSunKick)~=0 then
				return 999
			else
				return 0
			end
		else
			return 999
		end
	end
end
-- Raising Sun Kick Cooldown
function getRSRCD()
	if UnitLevel("player")<56 then
		return 8
	else
		return getSpellCD(_RaisingSunKick)
	end
end
-- Fists of Fury Haste
function getFistsOfFuryHaste()
	return (4 / (1 + UnitSpellHaste("player") / 100))
end

function useAoE()
    if ((BadBoy_data['AoE'] == 1 and getNumEnnemies("player",8) >= 3) or BadBoy_data['AoE'] == 2) and UnitLevel("player")>=46 then
        return true
    else
        return false
    end
end

--Calculate Agility
function getAgility()
    local AgiBase, AgiStat, AgiPos, AgiNeg = UnitStat("player",2)
    local Agi = AgiBase + AgiPos + AgiNeg
    return Agi
end

-- if AgiSnap == nil then AgiSnap = 0; end
-- if isInCombat("player") and AgiSnap == 0 then
-- 	AgiSnap = getAgility()
-- end
-- if not isInCombat("player") and AgiSnap>0 then
-- 	AgiSnap = 0
-- end

end