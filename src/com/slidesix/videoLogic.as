
import flash.events.TimerEvent;
import flash.media.Video;
import flash.net.NetConnection;
import flash.net.NetStream;
import flash.utils.Timer;

import mx.events.ResizeEvent;

private var connection:NetConnection;
private var videoStream:NetStream;
private var screenStream:NetStream;
private var rtmpURL:String;
private var video:Video;
public var screenVideo:Video;
public var screenStreamName:String;
public var screenPlayingTimer:Timer = new Timer(2500,0);

[Bindable] public var broadcastStatus:String = 'Not Broadcasting';
[Bindable] public var isBroadcasting:Boolean = false;
[Bindable] public var isScreenSharing:Boolean = false;

public function initVideo():void{
	screenPlayingTimer.addEventListener("timer", timerHandler);
	rtmpURL = 'rtmp://' + host + '/livestream';
	initNetConnection();
}

public function broadcast(action:String):void{
	switch(action){
		case 'start':
			isBroadcasting = true;
			break;
		case 'stop':
			isBroadcasting = false;
			//disconnectNetConnection();
			//disconnectVideoStream();
			break;
	}
}

public function disconnectVideoStream():void{
	videoStream.close();
}
public function initNetConnection():void{
	connection = new NetConnection();
	connection.client = this;
    connection.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
    connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
    connection.connect(rtmpURL);
}
public function disconnectNetConnection():void{
	connection.close();
}

public function netStatusHandler(e:NetStatusEvent):void{
	var whichStream:String = e.info.details;
	//Alert.show(e.info.code + ' ' + whichStream);
	switch (e.info.code) {
        case "NetConnection.Connect.Success":
        	if(whichStream == room || whichStream == null){
        		connectVideoStream();
        	}
        	//keep the screen stream always open:
        	connectScreenStream();
            break;
        case "NetStream.Play.StreamNotFound":
        	broadcastStatus = 'Error';
            //trace("Stream not found: " + rtmpURL);
            break;
        case "NetStream.Play.UnpublishNotify":
        	if(whichStream == room || whichStream == null){
        		isBroadcasting = false;
        		//disconnectVideoStream();
        	}
        	else if(whichStream == screenStreamName){
        		screenPlayingTimer.stop();
        		isScreenSharing = false;
        	}
        	break;
        case "NetStream.Play.PublishNotify":
        	if(whichStream == room || whichStream == null){
        		isBroadcasting = true;
        		connectVideoStream();
        	}
        	else if(whichStream == screenStreamName){
        		isScreenSharing = true;
        		connectScreenStream();
        	}
        	break;
       	case "NetStream.Play.Start":
       		if(whichStream == room || whichStream == null){
        	}
        	else if(whichStream == screenStreamName){
        		screenPlayingTimer.start();
        	}
       		break;
   		case "NetStream.Play.Reset":
       		if(whichStream == room || whichStream == null){
        	}
        	else if(whichStream == screenStreamName){
        	}
       		break;
       	case "NetStream.Publish.Start":
       		if(whichStream == room || whichStream == null){
        	}
        	else if(whichStream == screenStreamName){
        		isScreenSharing = true;
        	}
       		broadcastStatus = 'Broadcasting';
       		break;
   		case "NetConnection.Connect.Closed":
   			
   			broadcastStatus = 'Disconnected';
   			break;
    }
}	
private function nsOnMetaData(item:Object):void{
	trace('meta');
}
private function nsOnCuePoint(item:Object):void{
	Alert.show('cue');
}


private function connectVideoStream():void {
	//Alert.show('con vid str');
	//trace('connecting stream');
    videoStream = new NetStream(connection);
    videoStream.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
    var nsClient:Object = {};
    nsClient.onMetaData = nsOnMetaData;
    nsClient.onCuePoint = nsOnCuePoint;
    
    videoStream.client = nsClient;

    video = new Video();
    video.attachNetStream(videoStream);
   
   	videoStream.play(room,-2,-1);
   	
    video.width = vidContainer.width;
    video.height = vidContainer.height;
    vidContainer.addChild(video);
}



private function timerHandler(e:TimerEvent):void{
	if(screenStream.time > 0){
		isScreenSharing = true;
	}
}

private function connectScreenStream():void {
	//Alert.show('con scr str');
	//trace('connecting stream');
    screenStream = new NetStream(connection);
    screenStream.addEventListener(NetStatusEvent.NET_STATUS, netStatusHandler);
    
    var nsClient:Object = {};
    nsClient.onMetaData = nsOnMetaData;
    nsClient.onCuePoint = nsOnCuePoint;
    
    screenStream.client = nsClient;

    screenVideo = new Video();
    screenVideo.attachNetStream(screenStream);
   
   	screenStream.play(screenStreamName,-2,-1);
   	
    screenVideo.width = screenVidContainer.width;
    screenVideo.height = screenVidContainer.height;
    
    screenVidContainer.addChild(screenVideo);
    screenVidContainer.addEventListener(ResizeEvent.RESIZE, function():void{
    	screenVideo.width = screenVidContainer.width;
   	 	screenVideo.height = screenVidContainer.height;
    });
}

public function securityErrorHandler(e:SecurityErrorEvent):void{
	Alert.show('security error');
}

public function onBWDone():void{
}