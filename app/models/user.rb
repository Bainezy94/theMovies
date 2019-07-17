class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


    def admin?
        role == "admin"
    end

    def staff?
        role == "staff"
    end

    def customer?
        role == "customer"
    end

    def guest?
        role == "guest"
    end

end
