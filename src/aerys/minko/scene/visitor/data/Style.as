package aerys.minko.scene.visitor.data
{
	import aerys.minko.type.IVersionnable;

	public class Style implements IVersionnable
	{
		private static var _nextId		: uint	= 0;
		private static var _idToName	: Array	= new Array();
		
		internal var	_data 		: Array	= new Array();
		private var		_version 	: uint	= 0;
		
		public static function getStyleName(styleId : uint) : String
		{
			return _idToName[styleId];
		}
		
		public static function getStyleId(styleName : String) : uint
		{
			_idToName[_nextId] = styleName;
			
			return _nextId++;
		}
		
		public function get version() : uint	
		{
			return _version;
		}
		
		public function Style()
		{
		}
		
		public function get(styleId : int, defaultValue : Object = null) : Object 
		{
			var data : Object = _data[styleId];
			
			if (data !== null)
				return data;
			
			throw new Error();
		}
		
		public function set(styleId : int, value : Object) : Style 
		{
			_data[styleId] = value;
			++_version;
			
			return this;
		}
		
		public function clear() : Style
		{
			_data.length = 0;;
			_version = 0;
			
			return this;
		}
		
	}
}
