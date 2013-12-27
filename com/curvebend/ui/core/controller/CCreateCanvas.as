/*
 Command: CCreateCanvas
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.core.controller 
{
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
	import org.puremvc.as3.multicore.patterns.observer.Notification;
    
	/**
	 * SimpleCommand
	 */
	public class CCreateCanvas extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			var name:String = note.getBody() as String;
			
			// 
		}
		
	}
}