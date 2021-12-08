(function ($global) { "use strict";
var Main = function() {
	window.onload = $bind(this,this.onWindowLoaded);
};
Main.main = function() {
	var main = new Main();
};
Main.prototype = {
	onWindowLoaded: function() {
		var rootDir = "assets/images";
		var geometrizeVersion = "geometrize_1_0";
		var basePath = rootDir + "/" + geometrizeVersion + "/";
		var filePaths = ["launch_window","launch_window_file_menu","launch_window_view_menu","launch_window_help_menu","launch_window_open_image_dialog","launch_window_download_webpage_dialog","launch_window_run_script_dialog","global_settings_load_dialog","global_settings_save_dialog","about_dialog","credits_dialog","license_dialog","image_task_window_with_task_settings","image_task_window_with_exporters","image_task_load_settings_dialog","image_task_save_settings_dialog","image_task_file_menu","image_task_view_menu","exporter_save_image_dialog","exporter_save_images_dialog","exporter_save_svg_dialog","exporter_save_gif_dialog","exporter_save_HTML5_webpage_dialog","exporter_save_WebGL_webpage_dialog","exporter_save_geometry_data_dialog","global_preferences_general_section","global_preferences_display_section","global_preferences_performance_section","global_preferences_language_section","script_editor_window"];
		var _g = 0;
		while(_g < filePaths.length) {
			var filePath = filePaths[_g];
			++_g;
			var titleElement = window.document.createElement("h2");
			titleElement.textContent = StringTools.replace(filePath,"_"," ");
			var imageElement = window.document.createElement("img");
			imageElement.src = basePath + filePath + ".png";
			imageElement.className = "container";
			Main.imageContainer.appendChild(window.document.createElement("br"));
			Main.imageContainer.appendChild(titleElement);
			Main.imageContainer.appendChild(window.document.createElement("br"));
			Main.imageContainer.appendChild(imageElement);
			Main.imageContainer.appendChild(window.document.createElement("br"));
		}
	}
};
var StringTools = function() { };
StringTools.replace = function(s,sub,by) {
	return s.split(sub).join(by);
};
var haxe_iterators_ArrayIterator = function(array) {
	this.current = 0;
	this.array = array;
};
haxe_iterators_ArrayIterator.prototype = {
	hasNext: function() {
		return this.current < this.array.length;
	}
	,next: function() {
		return this.array[this.current++];
	}
};
var $_;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $global.$haxeUID++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = m.bind(o); o.hx__closures__[m.__id__] = f; } return f; }
$global.$haxeUID |= 0;
Main.imageContainer = window.document.getElementById("screenshot_container");
Main.main();
})(typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : this);
