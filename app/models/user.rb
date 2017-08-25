class User < ApplicationRecord
  NAME_LENGTH = 8
  validates :last_name, :presence => true
  validates :email, :uniqueness => true, :presence => true

  before_save :process_values
  before_create :create_api_key
  has_secure_password
 
  def full_name
    [self.last_name, self.first_name].join(' ')
  end

  protected
  def process_values
    self.email.downcase!
    if (not self.first_name?) and not self.last_name?
      self.first_name = generate_random_string(NAME_LENGTH)
      self.last_name = generate_random_string(NAME_LENGTH)
    else
      self.first_name = self.last_name if not self.first_name?
      self.last_name = self.first_name if not self.last_name?
    end
    self.first_name.capitalize!
    self.last_name.capitalize!
  end

  def generate_random_string(length=6)
    string = ""
    chars = ("A".."Z").to_a + ('a'..'z').to_a + ('0'..'9').to_a 
    length.times do
      string << chars[rand(chars.length-1)]
    end
    string
  end

  def create_api_key
    self.api_key=generate_random_string(16)
  end

end
