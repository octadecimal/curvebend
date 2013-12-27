/*
 MCommand: CCreatePanels
 Author:   Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.controller 
{
	import org.puremvc.as3.multicore.patterns.command.MacroCommand;
	
	/**
	 * A MacroCommand
	 */
	public class CCreatePanels extends MacroCommand 
	{
	
		/**
		 * Initialize the MacroCommand by adding its SubCommands.
		 * 
		 */
		override protected function initializeMacroCommand():void 
		{
			addSubCommand(CCreateSidebar);
			addSubCommand(CCreateToolsPanel);
			addSubCommand(CCreateCurvesPanel);
			addSubCommand(CCreatePosesPanel);
			addSubCommand(CCreateParametersPanel);
		}
		
	}
}
