package com.xin.mvc.message
{
import flash.events.EventDispatcher;
/**
 * 消息机制
 * @author daichangxin
 */
public class MessageFacade
{
	private static var _instance:MessageFacade;
	
	private var _dispather:EventDispatcher;
	
	public function MessageFacade()
	{
		if (_instance == null)
		{
			_instance = this;
			_dispather = new EventDispatcher();
		}
	}
	
	/**
	 * 添加消息侦听
	 * @param listener 侦听函数参数为MessageEvent
	 */
	public function addMessageListener(type:String, listener:Function):void
	{
		_dispather.addEventListener(type, listener);
	}
	
	/**
	 * 移除消息侦听
	 */
	public function removeMessageListener(type:String, listener:Function):void
	{
		_dispather.removeEventListener(type, listener);
	}
	
	/**
	 * 派发消息和随消息的数据和行为
	 */
	public function dispathMessage(type:String, data:Object = null, action:String = null):void
	{
		_dispather.dispatchEvent(new MessageEvent(type, data, action));
	}
	
	public static function getInstance():MessageFacade
	{
		if (_instance == null)
		{
			_instance = new MessageFacade();
		}
		return _instance;
	}
}
}
