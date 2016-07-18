FactoryGirl.define do
  to_create {|instance| instance.save }
  
  factory :author do
    first_name "MyString"
    last_name "MyString"
    genre "MyString"
    birth_year 1
    death_year 1
  end
end
