/*
 View:   SidebarView
 Author: Dylan Heyes
 Copyright 2010, Dylan Heyes
*/
package com.curvebend.ui.panels.view.components 
{
	import com.mocha.core.model.params.Parameters;
	import com.mocha.widgets.model.params.ContainerParameters;
	import com.mocha.widgets.view.components.PanelView;
	
	/**
	 * SidebarView View.
	 */
	public class SidebarPanelView extends PanelView
	{
		public static const NAME:String = "SidebarPanel";
		
		/**
		 * Constructor
		 */
		public function SidebarPanelView(name:String, params:ContainerParameters=null) 
		{
			super(name, params);
			_params = this.parameters as ContainerParameters;
			
			//_params.autosize = true;
			_params.width = 200;
			_params.color = 0x101010;
			//_params.color = Math.random() * uint.MAX_VALUE
			_params.width = 190;
			_params.height = 100;
		}
		
		
        
		// API
		// =========================================================================================
		
		
		
        
		// VIEW MANIPULATION
		// =========================================================================================
		
		override public function update(change:int):void 
		{
			super.update(change);
			
			//_params.width++;
		}
		
		
        
		// EVENTS
		// =========================================================================================
		
		
		
        
		// PRIVATE
		// =========================================================================================
		
		private var _params:ContainerParameters;
	}
	
}