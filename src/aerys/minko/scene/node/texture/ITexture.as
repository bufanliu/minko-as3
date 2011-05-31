package aerys.minko.scene.node.texture
{
	import aerys.minko.scene.node.IScene;
	import aerys.minko.scene.node.ISceneRessource;
	import aerys.minko.type.IVersionnable;
	
	/**
	 * <p>Common interface for all the materials.</p>
	 * <p>Materials use the "decorator" design pattern: each material is defined as a decorator
	 * of another underlaying material. This way, one can easily stack materials
	 * and effects.</p>
	 *
	 * @author Jean-Marc Le Roux
	 *
	 */
	public interface ITexture extends IScene, IVersionnable, ISceneRessource
	{
		function get styleProperty() : int;
	}
}