package aerys.minko.type.stream
{
	import aerys.minko.render.ressource.VertexBufferRessource;
	import aerys.minko.type.IVersionnable;
	import aerys.minko.type.stream.format.VertexComponent;
	import aerys.minko.type.stream.format.VertexFormat;

	public interface IVertexStream extends IVersionnable
	{
		function get format() 			: VertexFormat;
		function get length()			: uint;
		function get dynamic()			: Boolean;
		
		function deleteVertexByIndex(index : uint) : Boolean;
		function getSubStreamByComponent(vertexComponent : VertexComponent) : VertexStream;
		function getSubStreamById(id : int) : VertexStream;
	}
}