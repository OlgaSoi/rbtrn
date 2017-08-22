class UserResource < JSONAPI::Resource
  attributes :first_name, :last_name, :email, :password, 
             :created_at, :updated_at
end

