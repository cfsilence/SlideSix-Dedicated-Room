package com.slidesix.vo.slideshows
{    
	import flash.events.EventDispatcher;

	[RemoteClass(alias="com.slidesix.vo.slideshows.Comment")]
	[Entity]
	public class Comment extends EventDispatcher
	{   
		[Bindable]
		[Id]
		public var ID:int;
		[Bindable]
		public var NAME:String;
		[Bindable]
		public var EMAIL:String;
		[Bindable]
		public var URL:String;
		[Bindable]
		public var COMMENT:String;
		[Bindable]
		public var CREATEDON:Date;
		[Bindable]
		public var ISSUBSCRIBED:Boolean;
		
		public function Comment()
		{
		}   
	}
}
