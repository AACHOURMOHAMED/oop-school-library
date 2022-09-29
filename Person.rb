class person
    attr_accessor :id, :name, :age

    def initialize(id, name: 'Unknown', age, parent_permission: true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end
    # getters for @id @name @age

    def id 
        @id
    end

    def name
        @name
    end
    
    def age 
        @age
    end

    #setters for @id @name @age

    def id=(id)
        @id = id
    end

    def name=(name)
        @name = name
    end

    def age=(age)
        @age = age
    end
    #private method
    private
     
    def is_of_age
        @age >= 18
    end


    # public methods

    def can_use_services
        is_of_age || @parent_permission
    end
end