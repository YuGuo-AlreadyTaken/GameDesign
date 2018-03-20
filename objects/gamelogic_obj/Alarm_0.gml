/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 000B2CB7
/// @DnDArgument : "times" "2"
repeat(2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 516C8E69
	/// @DnDParent : 000B2CB7
	/// @DnDArgument : "var" "global.PickupsOnMap"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "maxNumOfPickups"
	if(global.PickupsOnMap < maxNumOfPickups)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7C048414
		/// @DnDParent : 516C8E69
		/// @DnDArgument : "xpos" "script_execute(randompickx)"
		/// @DnDArgument : "ypos" "script_execute(randompicky)"
		/// @DnDArgument : "objectid" "trapPickup_obj"
		/// @DnDSaveInfo : "objectid" "5597b08b-444e-4909-8863-5abddebff324"
		instance_create_layer(script_execute(randompickx), script_execute(randompicky), "Instances", trapPickup_obj);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 51C4070F
		/// @DnDParent : 516C8E69
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PickupsOnMap"
		global.PickupsOnMap += 1;
	}
}