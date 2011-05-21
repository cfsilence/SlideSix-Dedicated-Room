package com.slidesix.vo.groups
{
	import flash.events.EventDispatcher;
	
	[RemoteClass(alias="com.slidesix.vo.groups.GroupMember")]
	[Entity]
	public class GroupMember extends EventDispatcher 
	{
		[Bindable]
		public var USERNAME:String;
		[Bindable]
		public var FIRSTNAME:String;
		[Bindable]
		public var LASTNAME:String;
		[Bindable]
		public var JOINEDON:Date;
		[Bindable]
		public var ISAPPROVED:Boolean;
		[Bindable]
		public var ISOWNER:Boolean;
		[Bindable]
		public var GROUPMEMBERSHIPID:int;
		[Bindable]
		public var GROUPID:int;
		[Bindable]
		public var USERID:int;
		public function GroupMember()
		{
		}
	}
}