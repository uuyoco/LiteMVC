package com.xin.mvc.message
{
import flash.events.Event;

	/**
	 * 系统事件
	 * @author xin
	 * 
	 */	
	public class MessageEvent extends Event
	{
		/**
		 * 事件数据
		 */		
		public var data:Object;
		/**
		 * 事件action
		 */		
		public var action:String;
		
		public function MessageEvent(type:String, data:Object = null, action:String = null)
		{
			this.data = data;
			this.action = action;
			
			super(type, false, false);
		}
		
		public override function clone():Event
		{
			return new MessageEvent(type, data, action);
		}
	}
}