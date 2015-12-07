class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :characters

def get_user_names
  name_list = []
  User.all.each do |user|
    name_list.push(user.name)
  end
  return name_list
end

end
