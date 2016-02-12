require 'data_mapper'
require 'dm-postgres-adapter'

class Links
  include DataMapper::Resource

  property :id,     Serial
  property :title,  String
  property :url,    String

end

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'postgres://localhost/links')
DataMapper.finalize
DataMapper.auto_upgrade!
