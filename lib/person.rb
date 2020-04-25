require "pry"
class Person
attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness= (num)
        @happiness = num
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end
    def hygiene= (num)
        @hygiene = num
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end
    def happy?
        if self.happiness > 7
            return true
        end
        false
    end
    def clean?
        if self.hygiene > 7
            return true
        end
        false
    end

    def get_paid (salary)
        @bank_account += salary
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

    def call_friend(name)
        self.happiness += 3
        name.happiness +=3
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (name, topic)
        text = {
            "politics" => "blah blah partisan blah lobbyist",
            "weather" =>  "blah blah sun blah rain",
            "programming" => "blah blah blah blah blah"
        }
        if topic == "politics"
            [self, name].each {|o| o.happiness -= 2}
        elsif topic == "weather"
            [self, name].each {|o| o.happiness += 1}
        end
        return text[topic]
    end
end