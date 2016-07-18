Sequel.migration do
  change do
    create_table(:authors) do
      primary_key :id
      column :first_name, "varchar(255)"
      column :last_name, "varchar(255)"
      column :genre, "varchar(255)"
      column :birth_year, "integer"
      column :death_year, "integer"
      column :created_at, "timestamp"
      column :updated_at, "timestamp"
    end
    
    create_table(:schema_migrations) do
      column :filename, "varchar(255)", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO `schema_migrations` (`filename`) VALUES ('20160718181948_create_authors.rb')"
  end
end
