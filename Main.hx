package;

import js.Browser;
import js.html.DivElement;
import js.html.Headers;

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
	private static var imageContainer:DivElement = getElement("screenshot_container");

	private static function main():Void {
		var main = new Main();
	}

	private inline function new() {
		Browser.window.onload = onWindowLoaded;
	}
	
	private inline function init():Void {
		var rootDir:String = "assets/images";
		var geometrizeVersion:String = "geometrize_1_0"; // Use the Geometrize 1.0 screenshots folder. Will add new ones when bumping the Geometrize version for official releases
		var basePath = rootDir + "/" + geometrizeVersion + "/";
		
		var filePaths = [
			"launch_window", "launch_window_file_menu", "launch_window_view_menu", "launch_window_help_menu",
			
			"launch_window_open_image_dialog", "launch_window_download_webpage_dialog", "launch_window_run_script_dialog",
			
			"global_settings_load_dialog", "global_settings_save_dialog",
			
			"about_dialog", "credits_dialog", "license_dialog",
			
			"image_task_window_with_task_settings", "image_task_window_with_exporters", "image_task_load_settings_dialog", "image_task_save_settings_dialog", "image_task_file_menu", "image_task_view_menu",
			
			"exporter_save_image_dialog", "exporter_save_images_dialog", "exporter_save_svg_dialog", "exporter_save_gif_dialog", "exporter_save_HTML5_webpage_dialog", "exporter_save_WebGL_webpage_dialog", "exporter_save_geometry_data_dialog",
			
			"global_preferences_general_section", "global_preferences_display_section", "global_preferences_performance_section", "global_preferences_language_section",
			
			"script_editor_window"
		];
		
		for (filePath in filePaths) {
			appendItem(filePath, basePath + filePath + ".png");
		}
	}
	
	private inline function appendItem(fileHeader:String, filePath:String):Void {
		var titleElement = js.Browser.document.createElement("h2");
		titleElement.textContent = fileHeader;
		
		var imageElement = js.Browser.document.createImageElement();
		imageElement.src = filePath;
		
		imageContainer.appendChild(Browser.document.createBRElement());
		imageContainer.appendChild(titleElement);
		imageContainer.appendChild(Browser.document.createBRElement());
		imageContainer.appendChild(imageElement);
		imageContainer.appendChild(Browser.document.createBRElement());
	}

	private inline function onWindowLoaded():Void {
		init();
	}
}