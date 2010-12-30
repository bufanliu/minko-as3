package aerys.minko.scene.mesh.modifier
{
	import aerys.minko.render.visitor.IScene3DVisitor;
	import aerys.minko.scene.mesh.IMesh3D;
	import aerys.minko.type.stream.IndexStream3D;
	import aerys.minko.type.stream.VertexStream3D;
	
	public class AbstractMeshModifier3D implements IMeshModifier3D
	{
		private var _target : IMesh3D	= null;
		
		public function AbstractMeshModifier3D(target : IMesh3D)
		{
			_target = target;
		}
		
		public function get target() : IMesh3D
		{
			return _target;
		}
		
		public function get vertexStream() : VertexStream3D
		{
			return _target.vertexStream;
		}
		
		public function get indexStream() : IndexStream3D
		{
			return _target.indexStream;
		}
		
		public function visited(visitor : IScene3DVisitor) : void
		{
			visitor.visit(_target);
		}
		
		public function get name() : String
		{
			return null;
		}
	}
}