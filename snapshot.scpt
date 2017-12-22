tell application "System Events"
	
	(* Note: If used as the default two mouse-click solution then use as is, nothing else needs to be done. *)
	
	keystroke "$" using {command down}
	delay 0.25
	keystroke space
	
	(* Note: If using as the one mouse-click solution or Automator Service, uncomment the 
    two lines below having double-dashes in front by removing the double-dashes. 
    Also when using as the one mouse-click solution, set a value on the 'delay' command 
    below to an appropriate value which allows you the time necessary to move the mouse  
    over the target window before that delay command times out and the snapshot is taken.
    The default of '1.5' is in this use case is a somewhat arbitrary value, set it to suite.

    Note: When using as an Automator Service set the 'delay' command below to '0.25', 
    the same as in the first 'delay' command. *)
	
	delay 0.25
	do shell script "/usr/local/bin/cliclick c:."
	
end tell
