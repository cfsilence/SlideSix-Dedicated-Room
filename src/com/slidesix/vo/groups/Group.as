package com.slidesix.vo.groups
{
	import flash.events.EventDispatcher;
	
	[RemoteClass(alias="com.slidesix.vo.groups.Group")]
	[Entity]
	public class Group extends EventDispatcher 
	{
		[Bindable]
		[Id]
		public var ID:int;
		[Bindable]
		public var PATHTOIMAGETHUMB:String;
		[Bindable]
		public var PATHTOIMAGE:String;
		[Bindable]
		public var NAME:String;
		[Bindable]
		public var JOINEDON:Date;
		[Bindable]
		public var DESCRIPTION:String;
		[Bindable]
		public var CREATEDON:Date;
		[Bindable]
		public var PENDINGMEMBERS:int;
		[Bindable]
		public var ISOWNER:Boolean;
		[Bindable]
		public var AUTOACCEPTMEMBERS:Boolean;
		[Bindable]
		public var ISAPPROVED:Boolean;
		[Bindable]
		public var ALIAS:String;
		[Bindable]
		public var ISFEATURED:Boolean;
		
		public function Group()
		{
		}
	}
}