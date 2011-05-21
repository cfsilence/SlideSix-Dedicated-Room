package com.slidesix.vo.users
{    
	[RemoteClass(alias="com.slidesix.vo.users.User")]
	[Entity]
	public class User
	{   
		[Bindable]
        [Id]
        public var ID:int;
		[Bindable]
		public var LASTLOGGEDINON:Date;
		[Bindable]
		public var ISSUBSCRIBED:Boolean;
		[Bindable]
		public var ISARCHIVED:Boolean;
		[Bindable]
		public var ISVERIFIED:Boolean;
		[Bindable]
		public var UPDATEDON:Date;
		[Bindable]
		public var PATHTOIMAGETHUMB:String;
		[Bindable]
		public var FIRSTNAME:String;
		[Bindable]
		public var VERIFYKEY:String;
		[Bindable]
		public var PATHTOIMAGE:String;
		[Bindable]
		public var ISADMIN:Boolean;
		[Bindable]
		public var BIO:String;
		[Bindable]
		public var CREATEDON:Date;
		[Bindable]
		public var USERNAME:String;
		[Bindable]
		public var EMAIL:String;
		[Bindable]
		public var PASSWORD:String;
		[Bindable]
		public var LASTNAME:String;
		[Bindable]
		public var DEDICATEDROOMPASSWORD:String;
		[Bindable]
		public var ISFEATURED:Boolean;
        public function User()
	    {
		}   
	}
}
