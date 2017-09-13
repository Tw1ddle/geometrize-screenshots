package;

import js.Browser;

/**
 * Creates Javascript code for a webpage containing collections of screenshots
 * This is intended to make it easier for translators to translate the Geometrize app into other languages
 * @author Sam Twidale (http://www.geometrize.co.uk/)
 */
class Main {
	private static inline var WEBSITE_URL:String = "http://screenshots.geometrize.co.uk/"; // Hosted site URL
	
	private static inline function getElement(id:String):Dynamic {
		return Browser.document.getElementById(id);
	}

	private static function main():Void {
		var main = new Main();
	}

	private inline function new() {
		Browser.window.onload = onWindowLoaded;
	}
	
	private inline function init():Void {
		var
	}

	private inline function onWindowLoaded():Void {
		init();
	}
}