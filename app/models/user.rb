class User
    attr_accessor :username, :password, :name, :street, :city, :state, :postal, :country, :email
    def initialize(username, password, name, street, city, state, postal, country, email)
        @username = username
        @password = password
        @name = name
        @street = street
        @city = city
        @state = state
        @postal = postal
        @country = country
        @email = email
    end

    def show_username
      @username
    end

    def show_password
      @password
    end


end
