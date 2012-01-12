module ActiveGeoDb
  class Railtie < Rails::Railtie
    initializer("active_geo_db.initialize") do |application|
      ActiveGeoDb.initialize(application)
    end
  end
end
