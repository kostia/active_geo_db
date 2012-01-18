module ActiveGeoDb
  class Railtie < Rails::Railtie
    initializer("active_geo_db.initialize") do |application|
      ActiveGeoDb.initialize(application)
    end

    rake_tasks do
      load "active_geo_db/active_geo_db.rake"
    end
  end
end
