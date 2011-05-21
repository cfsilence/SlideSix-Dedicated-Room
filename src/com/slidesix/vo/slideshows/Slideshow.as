package com.slidesix.vo.slideshows
{    
	import flash.events.EventDispatcher;

	[RemoteClass(alias="com.slidesix.vo.slideshows.Slideshow")]
	[Entity]
	public class Slideshow extends EventDispatcher
	{   
		[Bindable]
		[Id]
		public var ID:int;
		[Bindable]
		public var NUMCOMMENTS:int;
		[Bindable]
		public var NUMSLIDES:int;
		[Bindable]
		public var COUNTRANK:int;
		[Bindable]
		public var AVGRANK:int;
		[Bindable]
		public var GROUPNAME:String	
		[Bindable]
		public var PATHTOATTACHMENT:String;
		[Bindable]
		public var NUMEMBEDDEDVIEWS:int;
		[Bindable]
		public var ISCONVERTING:Boolean;
		[Bindable]
		public var UPDATEDON:Date;
		[Bindable]
		public var CREATEDBY:int;
		[Bindable]
		public var CREATEDBYBIO:String;
		[Bindable]
		public var CREATEDBYIMG:String;
		[Bindable]
		public var CREATEDBYFULLNAME:String;
		[Bindable]
		public var CREATEDBYUSERNAME:String;
		[Bindable]
		public var CREATEDBYUSERID:String;
		[Bindable]
		public var NUMFAVORITES:int;
		[Bindable]
		public var TAGLIST:String;	
		[Bindable]
		public var ALLOWCOMMENTS:Boolean;
		[Bindable]
		public var ABSTRACT:String;
		[Bindable]
		public var CREATEDON:Date;
		[Bindable]
		public var LASTBUILDDATE:Date;
		[Bindable]
		public var PASSWORD:String;	
		[Bindable]
		public var GROUPID:String;	
		[Bindable]
		public var NUMVIEWS:int;
		[Bindable]
		public var HASERRORS:Boolean;
		[Bindable]
		public var ALIAS:String;
		[Bindable]
		public var SLIDESHOWROOTDIR:String;
		[Bindable]
		public var PATHTOTHUMB:String	
		[Bindable]
		public var ISPUBLISHING:Boolean;
		[Bindable]
		public var NOTIFYCOMMENTS:Boolean;
		[Bindable]
		public var TITLE:String;			
		[Bindable]
		public var ISFEATURED:Boolean;
		
		public function Slideshow()
		{
		}   
	}
}
