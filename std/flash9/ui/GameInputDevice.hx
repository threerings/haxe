package flash.ui;

@:require(flash11_2) @:final extern class GameInputDevice extends flash.events.EventDispatcher {
	var enabled : Bool;
	var id(default,null) : String;
	var name(default,null) : String;
	var numControls(default,null) : Int;
	var sampleInterval : Int;
	function new() : Void;
	function getCachedSamples(data : flash.utils.ByteArray, append : Bool = false) : Int;
	function getControlAt(i : Int) : GameInputControl;
	function startCachingSamples(numSamples : Int, controls : flash.Vector<Int>) : Void;
	function stopCachingSamples() : Void;
	static var MAX_BUFFER_SIZE : Int;
}
