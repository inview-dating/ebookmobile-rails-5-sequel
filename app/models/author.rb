class Author < Sequel::Model
  Author.plugin :timestamps, update_on_create: true
end
