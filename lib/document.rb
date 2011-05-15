class Document < CouchRest::Model::Base  
  use_database SinatraConfig::CouchDb
  
  property :name,   String
  property :title,  String
end
