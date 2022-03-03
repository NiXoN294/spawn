hook.Add("PlayerSpawn","Modulo:SpawnRPTeamAtPoint",function(ply)
 local PlayerTeam = RPExtraTeams[ply:Team()]
     if PlayerTeam != nil and PlayerTeam.SpawnPoint != nil then
         if ply.ModuloSetSpawn then return end
         if istable(PlayerTeam.SpawnPoint) then
             local val = math.random(1, #PlayerTeam.SpawnPoint)
             print(val)
             timer.Simple(0,function() ply:SetPos(PlayerTeam.SpawnPoint[val]) end)
         else
             timer.Simple(0,function() ply:SetPos(PlayerTeam.SpawnPoint) end)
         end
    end
    if ply.AlreadyUsedArmory != nil then
        ply.AlreadyUsedArmory = false
    end
end)