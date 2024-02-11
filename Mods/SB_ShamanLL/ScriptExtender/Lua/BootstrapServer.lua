Ext.Osiris.RegisterListener("LeveledUp", 1, "after", function(characterGUID)
  if HasShamanTag(characterGUID) then
    Osi.TimerLaunch("Trigger_Shaman_Totems", 10000)
    _P("Shaman: Created Timer for Totem Check")
  end
end)

Ext.Osiris.RegisterListener("TimerFinished", 1, "after", function(finishedTimer)
  if finishedTimer == "Trigger_Shaman_Totems" then
    _P("Shaman: Timer finished, Checking Totems")
    local characterGUID = Osi.GetHostCharacter()
    applyShamanTotemPassives(characterGUID)
  end
end)

Ext.Osiris.RegisterListener("PingRequested", 1, "after", function(characterGUID)
  if HasShamanTag(characterGUID) then
    _P("Shaman: PingRequested")
    applyShamanTotemPassives(characterGUID)
  end
end)

Ext.Osiris.RegisterListener("RespecCompleted", 1, "after", function(characterGUID)
    _P("Shaman: RespecCompleted")
    removeShamanTotemPassives(characterGUID)
end)

function HasShamanTag(characterGUID)
  return Osi.IsTagged(characterGUID, "af7298c0-4340-4e48-ab53-7205daa763a6") == 1
end

function applyShamanTotemPassives(characterGUID)
  local hasChanged = false
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_BearUnlock") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Bear") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Bear")
    hasChanged = true
    _P("Shaman: Removed Totem of the Bear")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_BearUnlock") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Bear") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Bear")
    hasChanged = true
    _P("Shaman: Added Totem of the Bear")
  end

  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Crossroads") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Crossroads") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Crossroads")
    hasChanged = true
    _P("Shaman: Removed Totem of the Crossroads")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Crossroads") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Crossroads") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Crossroads")
    hasChanged = true
    _P("Shaman: Added Totem of the Crossroads ")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Eagle") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eagle") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Eagle")
    hasChanged = true
    _P("Shaman: Removed Totem of the Eagle")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Eagle") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eagle") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Eagle")
    hasChanged = true
    _P("Shaman: Added Totem of the Eagle")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_EarthquakeUnlock") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Earthquake") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Earthquake")
    hasChanged = true
    _P("Shaman: Removed Totem of the Earthquake")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_EarthquakeUnlock") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Earthquake") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Earthquake")
    hasChanged = true
    _P("Shaman: Added Totem of the Earthquake ")
  end
    
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Hound") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Hound") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Hound")
    hasChanged = true
    _P("Shaman: Removed Totem of the Hound")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Hound") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Hound") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Hound")
    hasChanged = true
    _P("Shaman: Added Totem of the Hound")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Mountain") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mountain") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Mountain")
    hasChanged = true
    _P("Shaman: Removed Totem of the Mountain")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Mountain") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mountain") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Mountain")
    hasChanged = true
    _P("Shaman: Added Totem of the Mountain")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Panther") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Panther") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Panther")
    hasChanged = true
    _P("Shaman: Removed Totem of the Panther")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Panther") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Panther") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Panther")
    hasChanged = true
    _P("Shaman: Added Totem of the Panther")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Quagmire") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Quagmire") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Quagmire")
    hasChanged = true
    _P("Shaman: Removed Totem of the Quagmire")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Quagmire") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Quagmire") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Quagmire")
    hasChanged = true
    _P("Shaman: Added Totem of the Quagmire")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Rains") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Rains") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Rains")
    hasChanged = true
    _P("Shaman: Removed Totem of the Rains")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Rains") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Rains") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Rains")
    hasChanged = true
    _P("Shaman: Added Totem of the Rains")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Twilight") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Twilight") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Twilight")
    hasChanged = true
    _P("Shaman: Removed Totem of Twilight")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Twilight") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Twilight") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Twilight")
    hasChanged = true
    _P("Shaman: Added Totem of Twilight")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Winds") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Winds") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Winds")
    hasChanged = true
    _P("Shaman: Removed Totem of the Winds")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Winds") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Winds") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Winds")
    hasChanged = true
    _P("Shaman: Added Totem of the Winds")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_EruptionUnlock") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eruption") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Eruption")
    hasChanged = true
    _P("Shaman: Removed Totem of the Eruption")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_EruptionUnlock") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eruption") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Eruption")
    hasChanged = true
    _P("Shaman: Added Totem of the Eruption")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_GrowthUnlock") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Growth") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Eruption")
    hasChanged = true
    _P("Shaman: Removed Totem of the Growth")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_GrowthUnlock") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Growth") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Growth")
    hasChanged = true
    _P("Shaman: Added Totem of the Growth")
  end

  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Hunt") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Hunt") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Hunt")
    hasChanged = true
    _P("Shaman: Removed Totem of the Hunt")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Hunt") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Hunt") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Hunt")
    hasChanged = true
    _P("Shaman: Added Totem of the Hunt")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Light") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Light") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Light")
    hasChanged = true
    _P("Shaman: Removed Totem of Light")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Light") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Light") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Light")
    hasChanged = true
    _P("Shaman: Added Totem of Light")
  end  
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Mirth_Unlock") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mirth") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Mirth")
    hasChanged = true
    _P("Shaman: Removed Totem of Mirth")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Mirth_Unlock") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mirth") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Mirth")
    hasChanged = true
    _P("Shaman: Added Totem of Mirth")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Mystic") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mystic") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Mystic")
    hasChanged = true
    _P("Shaman: Removed Totem of the Mystic")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Mystic") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mystic") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Mystic")
    hasChanged = true
    _P("Shaman: Added Totem of the Mystic")
  end
  
  if (Osi.HasSpell(characterGUID, "SB_Target_Totems_Wild") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Wild") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Wild")
    hasChanged = true
    _P("Shaman: Removed Totem of the Wild")
  elseif (Osi.HasSpell(characterGUID, "SB_Target_Totems_Wild") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Wild") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Wild")
    hasChanged = true
    _P("Shaman: Added Totem of the Wild")
  end

  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_WhirlwindUnlock") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Whirlwind") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Whirlwind")
    hasChanged = true
    _P("Shaman: Removed Totem of the Whirlwind")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_WhirlwindUnlock") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Whirlwind") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Whirlwind")
    hasChanged = true
    _P("Shaman: Added Totem of the Whirlwind")
  end

  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Wrath") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Wrath") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Wrath")
    hasChanged = true
    _P("Shaman: Removed Totem of Wrath")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Wrath") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Wrath") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Wrath")
    hasChanged = true
    _P("Shaman: Added Totem of Wrath")
  end  
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Sun") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Sun") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Sun")
    hasChanged = true
    _P("Shaman: Removed Totem of the Sun")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Sun") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Sun") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Sun")
    hasChanged = true
    _P("Shaman: Added Totem of the Sun")
  end  
  
  if (Osi.HasSpell(characterGUID, "SB_Target_Totems_Vine_Container") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Vine") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Vine")
    hasChanged = true
    _P("Shaman: Removed Totem of the Vine")
  elseif (Osi.HasSpell(characterGUID, "SB_Target_Totems_Vine_Container") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Vine") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Vine")
    hasChanged = true
    _P("Shaman: Added Totem of the Vine")
  end  
  
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Sapling") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Sapling") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Sapling")
    hasChanged = true
    _P("Shaman: Removed Totem of the Sapling")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Sapling") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Sapling") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Sapling")
    hasChanged = true
    _P("Shaman: Added Totem of the Sapling")
  end  
    
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Eclipse") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eclipse") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Eclipse")
    hasChanged = true
    _P("Shaman: Removed Totem of the Eclipse")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Eclipse") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eclipse") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Eclipse", -1)
    hasChanged = true
    _P("Shaman: Added Totem of the Eclipse")
  end  
    
  if (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Skies") == 0) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Skies") == 1) then
    Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Skies")
    hasChanged = true
    _P("Shaman: Removed Totem of the Skies")
  elseif (Osi.HasSpell(characterGUID, "SB_Shout_Totems_Skies") == 1) and (Osi.HasPassive(characterGUID, "SB_Passive_Totems_Skies") == 0) then
    Osi.AddPassive(characterGUID, "SB_Passive_Totems_Skies", -1)
    hasChanged = true
    _P("Shaman: Added Totem of the Skies")
  end  
  
  if(hasChanged) then
    _P("Shaman: Finished Applying Changes in Totems")
  else
    _P("Shaman: No Changes in Totems Detected")
  end
end

function removeShamanTotemPassives(characterGUID)
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Bear") == 1) then
      _P("Shaman: Removed Totem of the Bear")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Bear")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Crossroads") == 1) then
      _P("Shaman: Removed Totem of the Crossroads")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Crossroads")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eagle") == 1) then
      _P("Shaman: Removed Totem of the Eagle")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Eagle")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Earthquake") == 1) then
      _P("Shaman: Removed Totem of the Earthquake")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Earthquake")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Hound") == 1) then
      _P("Shaman: Removed Totem of the Hound")
      Osi.RemovePassive(characterGUID,"SB_Passive_Totems_Hound")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mountain") == 1) then
      _P("Shaman: Removed Totem of the Mountain")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Mountain")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Panther") == 1) then
      _P("Shaman: Removed Totem of the Panther")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Panther")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Quagmire") == 1) then
      _P("Shaman: Removed Totem of the Quagmire")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Quagmire")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Rains") == 1) then
      _P("Shaman: Removed Totem of the Rains")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Rains")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Twilight") == 1) then
      _P("Shaman: Removed Totem of Twilight")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Twilight")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Whirlwind") == 1) then
      _P("Shaman: Removed Totem of the Whirlwind")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Whirlwind")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Wild") == 1) then
      _P("Shaman: Removed Totem of the Wild")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Wild")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Winds") == 1) then
      _P("Shaman: Removed Totem of the Winds")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Winds")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eruption") == 1) then
      _P("Shaman: Removed Totem of the Eruption")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Eruption")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Growth") == 1) then
      _P("Shaman: Removed Totem of Growth")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Growth")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Hunt") == 1) then
      _P("Shaman: Removed Totem of the Hunt")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Hunt")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Light") == 1) then
      _P("Shaman: Removed Totem of Light")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Light")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mirth") == 1) then
      _P("Shaman: Removed Totem of Mirth")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Mirth")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Mystic") == 1) then
      _P("Shaman: Removed Totem of the Mystic")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Mystic")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Wrath") == 1) then
      _P("Shaman: Removed Totem of Wrath")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Wrath")
    end

    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Sun") == 1) then
      _P("Shaman: Removed Totem of the Sun")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Sun")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Vine") == 1) then
      _P("Shaman: Removed Totem of the Vine")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Vine")
    end

    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Eclipse") == 1) then
      _P("Shaman: Removed Totem of the Eclipse")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Eclipse")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Sapling") == 1) then
      _P("Shaman: Removed Totem of the Sapling")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Sapling")
    end
    if(Osi.HasPassive(characterGUID, "SB_Passive_Totems_Skies") == 1) then
      _P("Shaman: Removed Totem of the Skies")
      Osi.RemovePassive(characterGUID, "SB_Passive_Totems_Skies")
    end

    _P("Shaman: Finished Removing all Passives")
end