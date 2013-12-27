/*
 View:   CurvesPanelView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.view.components 
{
	import com.mocha.core.model.params.Parameters;
	import com.mocha.Mocha;
	import com.mocha.widgets.model.params.ButtonParameters;
	import com.mocha.widgets.model.params.ContainerParameters;
	import com.mocha.widgets.model.params.ContainerParameters;
	import com.mocha.widgets.view.ButtonMediator;
	import com.mocha.widgets.view.components.ButtonView;
	import com.mocha.widgets.view.components.ContainerView;
	import com.mocha.widgets.view.components.PanelView;
	import flash.events.Event;
	
	/**
	 * CurvesPanelView View.
	 */
	public class CurvesPanelView extends PanelView
	{
		public static const NAME:String = "CurvesPanel";
		
		/**
		 * Constructor
		 */
		public function CurvesPanelView(name:String, params:ContainerParameters=null) 
		{
			super(name, params);
			_params = this.parameters as ContainerParameters;
			
			//_params.height = 200;
			_params.autosize = false;
		}
		
		
        
		// API
		// =========================================================================================
		
		
		
        
		// VIEW MANIPULATION
		// =========================================================================================
		
		
		
        
		// EVENTS
		// =========================================================================================
		
		override protected function onAddedToStage(e:Event):void 
		{
			super.onAddedToStage(e);
			
			// Add temp buttons
			for (var i:uint = 0; i < 3; i++)
			{
				var button:ContainerView = Mocha.widget("Button2" + i, this.name, ButtonView, ButtonMediator) as ContainerView;
				
				button.parameters.width  = 10;
				button.parameters.height = 30;
				button.parameters.autosize = false;
				//button.parameters.color = Math.random() * uint.MAX_VALUE;
				button.parameters.color = 0x171717;
				
				ButtonParameters(button.parameters).group = "Curves";
			}
		}
		
		
        
		// PRIVATE
		// =========================================================================================
		
		private var _params:ContainerParameters;
	}
	
}