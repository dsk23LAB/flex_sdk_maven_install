package away3d.events
{
	import away3d.loading.IResource;

	import flash.events.Event;

	/**
	 * The ResourceEvent is dispatched when a change of state occurs pertaining to resource management.
	 */
	public class ResourceEvent extends Event
	{
		/**
		 * Dispatched when a resource and all of its dependencies is retrieved.
		 */
		public static const RESOURCE_RETRIEVED : String = "resourceRetrieved";

		/**
		 * Dispatched when a resource's dependency is retrieved and resolved.
		 */
		public static const DEPENDENCY_RETRIEVED : String = "dependencyRetrieved";

        private var _resource : IResource;
        private var _uri : String;

		/**
		 * Create a new ResourceEvent object
		 * @param type The type of the event.
		 * @param resource A reference to the resource.
		 * @param uri An identifier (url or id) of the resource.
		 */
		public function ResourceEvent(type:String, resource : IResource, uri : String = null)
		{
			super(type);
            _resource = resource;
            _uri = uri;
		}

		/**
		 * A reference to the resource.
		 */
        public function get resource() : IResource
        {
            return _resource;
        }

		/**
		 * An identifier (url or id) of the resource.
		 */
        public function get uri() : String
        {
            return _uri;
        }

		/**
		 * Creates a copy of the current object.
		 */
        public override function clone() : Event
		{
			return new ResourceEvent(type, _resource, _uri);
		}
	}
}