--[[Made by Adam James]]--

local CATEGORY_NAME = "DarkRP"

function ulx.demote(calling_ply, target_ply, reason)
	if target_ply:Team()== 1 then
		ULib.tsay(calling_ply, target_ply:Nick()..' Is already a citizen!')
	else
		if reason then
			target_ply:changeTeam(1, true)
			ULib.tsay(_, calling_ply:Nick()..' has demoted '..target_ply:Nick()..'. Reason: '..reason)
		elseif reason == nil or '' then
			target_ply:changeTeam(1, true)
			ULib.tsay(_, calling_ply:Nick()..' has demoted '..target_ply:Nick())
		end
	end
	
end
local demote = ulx.command(CATEGORY_NAME, 'ulx demote', ulx.demote, '!demote', true)
demote:addParam{type=ULib.cmds.PlayerArg}
demote:defaultAccess(ULib.ACCESS_ADMIN)
demote:addParam{type=ULib.cmds.StringArg, hint="reason", ULib.cmds.optional, ULib.cmds.takeRestOfLine}
demote:help('Demotes a player from their job to citizen for reason. ')