Sequel.migration do 
  change do

    create_table :authors do
      primary_key :id
      String :first_name
      String :last_name
      String :genre
      Integer :birth_year
      Integer :death_year

      DateTime :created_at
      DateTime :updated_at
    end

  end
end