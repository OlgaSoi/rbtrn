class UserResource < JSONAPI::Resource
  attributes :first_name, :last_name, :email, :password, :api_key, 
             :created_at, :updated_at
  filters :api_key
end

