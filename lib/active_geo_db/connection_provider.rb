module ActiveGeoDb
  # This class maintains connections to OpenGeoDb database using ActiveRecord
  class ConnectionProvider < ::ActiveRecord::Base
    # Tell ActiveRecord to NOT to look for an appropriate table
    abstract_class = true
  end
end
