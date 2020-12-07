--
--	Function: PrintToArea()
--	Purpose : version of PrintToPlayer that passes to messageserver
--	Example : player:PrintToArea("Im a real boy!", tpz.msg.channel.SHOUT, tpz.msg.area.SYSTEM, "Pinocchio");
--          : would print a shout type message from Pinocchio to the entire server
--
require("scripts/globals/msg");

cmdprops =
{
    permission = 1,
    parameters = "s"
};

function onTrigger(player, message)
	player:PrintToArea(message, tpz.msg.channel.SYSTEM_2, tpz.msg.area.SYSTEM, "Vivian")
end
