module AuthEngine
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true

    config_path = AuthEngine::Engine.root.join("config/database.yml")
    db_config = YAML.load(ERB.new(File.read(config_path)).result)

    establish_connection db_config[Rails.env]
  end
end
