/*
 MCommand: CInitialize
 Author:   Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.core.controller 
{
	import com.curvebend.ui.core.controller.CCreateUI;
	import com.curvebend.ui.panels.controller.CCreatePanels;
	import org.puremvc.as3.multicore.patterns.command.MacroCommand;
	
	/**
	 * A MacroCommand
	 */
	public class CInitialize extends MacroCommand 
	{
		/**
		 * Initialize the MacroCommand by adding its SubCommands.
		 * 
		 */
		override protected function initializeMacroCommand():void 
		{
			addSubCommand(CCreateUI);
			//addSubCommand(CCreatePanels);
		}
		
	}
}
