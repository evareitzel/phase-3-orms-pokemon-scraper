# from pokemon.rb

attr_accessor :name, :type, :db
attr_reader :id

def initialize(id, name, type) #db
  @id = id
  @name = name
  @type = type
end

def self.create_table
  sql = <<-SQL
    CREATE TABLE IF NOT EXISTS pokemons (
      id INTEGER PRIMARY KEY,
      name TEXT, 
      type TEXT
    )
  SQL

  DB[:conn].execute(sql)
end