package com.slidesix.vo.slideshows
{    
	import flash.events.EventDispatcher;

	[RemoteClass(alias="com.slidesix.vo.slideshows.Slide")]
	[Entity]
	public class Slide extends EventDispatcher
	{  
		[Bindable]
		[Id]
		public var ID:int;
		[Bindable]
		public var HASMEDIA:Boolean;
		[Bindable]
		public var PATHTOSLIDEMEDIA:String;
		[Bindable]
		public var HEIGHT:int;
		[Bindable]
		public var PATHTOSLIDETHUMB:String;
		[Bindable]
		public var PATHTOSLIDE:String;
		[Bindable]
		public var WIDTH:int;
		[Bindable]
		public var CREATEDON:Date;
		[Bindable]
		public var TEXT:String;
		[Bindable]
		public var EXTERNALMEDIAID:String;
		[Bindable]
		public var SLIDENUMBER:int;
		[Bindable]
		public var SHOWNOTES:Boolean;
		[Bindable]
		public var HASNARRATION:Boolean;
		[Bindable]
		public var NOTES:String;
		[Bindable]
		public var TITLE:String;
		[Bindable]
		public var EXTERNALMEDIASOURCE:String;

		public function Slide()
		{
		}   
	}
}
