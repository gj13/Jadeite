---------------------------------------------------------------------------------------------------
-- func: cs
-- desc: Starts the given event for the player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "ssssssssss"
}

function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer("!cs <csID> {op1} {op2} {op3} {op4} {op5} {op6} {op7} {op8} {texttable}")
end

function onTrigger(player, csid, target, op1, op2, op3, op4, op5, op6, op7, op8, texttable)
    local targ
	-- validate csid
    if (csid == nil) then
        error(player, "You must enter a cutscene id.")
        return
    end
	if target == nil then
		targ = player
	else 
		targ = GetPlayerByName( target );
		if (targ == nil) then
			player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) );
			return;
		end
	end
   
    -- play cutscene
    if (op1 == nil) then
        targ:startEvent(csid);
    else
        targ:startEvent(csid, op1, op2, op3, op4, op5, op6, op7, op8, texttable);
    end
end
