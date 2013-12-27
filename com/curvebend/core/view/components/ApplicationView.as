/*
 View:   ApplicationView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.core.view.components 
{
	import com.curvebend.CurveBend;
	import com.mocha.Mocha;
	import com.mocha.util.Debug;
	import flash.display.Sprite;
	import flash.events.Event;
	import org.puremvc.as3.multicore.utilities.pipes.interfaces.*;
	import org.puremvc.as3.multicore.utilities.pipes.plumbing.*;
	
	/**
	 * ApplicationView View.
	 */
	public class ApplicationView extends Sprite implements IPipeAware
	{
		
		// CONSTRUCTOR
		// =========================================================================================
		
		/**
		 * Constructor
		 */
		public function ApplicationView() 
		{
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		
		// EVENTS
		// =========================================================================================
		
		private function onAddedToStage(e:Event):void 
		{
			// Startup Mocha
			Mocha.startup(this.stage);
			
			// Startup CurveBend
			CurveBend.startup(this);
			
			// Clean
			removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		
        
		// PIPES
		// =========================================================================================
		
		/**
		 * Accepts an input pipe.
		 */
		public function acceptInputPipe(name:String, pipe:IPipeFitting):void
		{
			CurveBend.getInstance(CurveBend.NAME).sendNotification(JunctionMediator.ACCEPT_INPUT_PIPE, pipe, name);
			//Debug.data(this, "Input pipe:  " + name + "->" + pipe);
		}
		
		/**
		 * Accepts an output pipe.
		 */
		public function acceptOutputPipe(name:String, pipe:IPipeFitting):void
		{
			CurveBend.getInstance(CurveBend.NAME).sendNotification(JunctionMediator.ACCEPT_OUTPUT_PIPE, pipe, name);
			//Debug.data(this, "Output pipe: " + name + "->" + pipe);
		}
	}
	
}