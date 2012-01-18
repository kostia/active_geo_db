require "singleton"
require "yaml"

module ActiveGeoDb
  class ConnectionConfiguration
    include Singleton

    # Key in Rails database configuration under which the configuration for OpenGeoDb database
    # can be found
    CONFIGURATION_KEY = "open_geo_db"

    # Read configuration file and load appropriate section
    def load_file(path)
      @configuration_data = YAML.load_file(path)[CONFIGURATION_KEY]
    end

    # Return previously loaded configuration
    def to_hash
      @configuration_data
    end
  end
end
