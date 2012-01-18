require "open_geo_db/database"

namespace(:active_geo_db) do
  def database
    OpenGeoDb::Database.new(ActiveGeoDb::ConnectionConfiguration.instance.to_hash)
  end

  desc("Create and populate database")
  task(:create => :environment) do
    database.execute(:create)
  end

  desc("Destroy database")
  task(:destroy => :environment) do
    database.execute(:destroy)
  end
end
