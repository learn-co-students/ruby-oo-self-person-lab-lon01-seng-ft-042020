# your code goes here

class Person
    attr_accessor :bank_account,:happiness,:hygiene
    attr_reader :name ,:balance
   
    def initialize (name,balance=25)
        @name = name
        @bank_account = balance
        @balance = balance
        @happiness = 8
        @hygiene = 8
    end 
    
    def happiness=(new_happiness)
        if new_happiness > 10
            @happiness = 10
        elsif new_happiness < 0
            @happiness = 0
        else
            @happiness = new_happiness
        end
       end 
    
       def hygiene=(maxhy)
        if maxhy > 10
            @hygiene = 10
        elsif
            maxhy < 0
            @hygiene = 0
        else
        @hygiene = maxhy
        end 
        end 

        def happy?
            if @happiness > 7
            return true 
            else
                false
            end 
        end 

        def clean?
            if @hygiene > 7
                return true 
            else 
                false
            end
        end

        def get_paid(salary)
           @bank_account =+ salary +balance
           "all about the benjamins"
        end
    
        
        def take_bath
            self.hygiene += 4
            "♪ Rub-a-dub just relaxing in the tub ♫"
        end

        def work_out 
            self.hygiene -= 3
            self.happiness += 2
            "♪ another one bites the dust ♫"
        end

        def call_friend (friend)
            self.happiness += 3
            friend.happiness += 3
            "Hi #{friend.name}! It's #{self.name}. How are you?"
            
        end 
      
       def  start_conversation (person ,topic) 
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
       elsif
        topic=="weather"
        person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
       else
        topic == "programming"
        "blah blah blah blah blah"
        
       end
    end

end 

