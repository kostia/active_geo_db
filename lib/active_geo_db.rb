require "active_geo_db/version"
require "active_geo_db/connection_configuration"
require "active_geo_db/connection_provider"
require "active_geo_db/railtie" if defined?(Rails)

module ActiveGeoDb
  # Initialize ActiveGeoDb:
  # * Load configuration
  # * Establish connection to OpenGeoDb database
  def self.initialize(application)
    connection_configuration_path = application.paths["config/database"].first
    ConnectionConfiguration.instance.load_file(connection_configuration_path)
    ConnectionProvider.establish_connection(ConnectionConfiguration.instance.to_hash)
  end

  # Find coordinates for a specific location
  def self.coordinates(location)
    results = ConnectionProvider.connection.execute(%{
      SELECT lat, lon
      FROM geodb_coordinates, geodb_textdata
      WHERE geodb_textdata.text_val = "#{location}"
      AND geodb_textdata.loc_id = geodb_coordinates.loc_id
    }).first
  end
end
