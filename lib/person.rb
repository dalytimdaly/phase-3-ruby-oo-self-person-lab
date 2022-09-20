# your code goes here
class Person

    attr_reader :name, :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0, 10)
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0, 10) 
    end

    def happy?
       self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end   
    end


end