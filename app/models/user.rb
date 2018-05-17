class User < ApplicationRecord
    #Validando dados do user
    validates :nome,:email,:cargo,:registro, presence: true
    validates :pin, length: {is: 4}
    
end
