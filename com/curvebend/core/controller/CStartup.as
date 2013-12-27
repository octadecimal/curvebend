/*
 Command: CStartup
 Author:  Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.core.controller 
{
	import com.curvebend.core.ApplicationMediator;
	import com.curvebend.core.view.components.ApplicationView;
	import com.curvebend.CurveBend;
	import com.mocha.core.model.params.Parameters;
	import com.mocha.core.model.vo.WidgetVO;
	import com.mocha.Mocha;
	import com.mocha.util.Debug;
	import com.mocha.widgets.model.ContainerProxy;
	import com.mocha.widgets.view.components.ContainerView;
	import com.mocha.widgets.view.ContainerMediator;
	import org.puremvc.as3.multicore.interfaces.INotification;
	import org.puremvc.as3.multicore.patterns.command.SimpleCommand;
    
	/**
	 * SimpleCommand
	 */
	public class CStartup extends SimpleCommand 
	{	
		override public function execute(note:INotification):void 
		{
			/// STARTUP
			
			Debug.dline();
			Debug.info(this, "CurveBend " + CurveBend.VERSION + " starting...");
			Debug.info(this, "Copyright (c) 2010 Dylan Heyes. All rights reserved.");
			Debug.line();
			
			// Application
			facade.registerMediator(new ApplicationMediator(note.getBody() as ApplicationView));
			
			// Connect
			Mocha.send(Mocha.CONNECT, note.getBody() as ApplicationView);
			
			// Initialize
			sendNotification(CurveBend.INITIALIZE);
			
			// Temp canvas
			//var canvas:ContainerView = Mocha.widget("TestCanvas", "UIMediator", ContainerView, ContainerMediator) as ContainerView;
			//canvas.width = 600;
			//canvas.parameters.color = 0x1e1e1e;
			//canvas.parameters.autosize = true;
			
			Debug.line();
			Debug.info(this, "CurveBend started.");
			Debug.line();
		}
	}
}