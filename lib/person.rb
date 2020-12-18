# your code goes here
class Person
    
    attr_accessor :bank_account,
      :happiness, :hygiene

      attr_reader :name

      def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
      end

      def name
        @name
      end

      

      def happiness=(happiness)
        @happiness = happiness if happiness.between?(0, 10) 
        @happiness = 10 if happiness > 10
        @happiness = 0 if happiness < 0
      end
      def hygiene=(hygiene)
        @hygiene = hygiene if hygiene.between?(0, 10) 
        @hygiene = 10 if hygiene > 10
        @hygiene = 0 if hygiene < 0
      end

      def clean?
        @hygiene > 7
      end
      def happy?
        @happiness > 7
      end

      def get_paid(salary)
        @bank_account += salary
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
        friend.happiness +=3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
      end

      def start_conversation(friend_name, topic)
        if topic == "politics"
          self.happiness -= 2
          friend_name.happiness -= 2
          return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          self.happiness += 1
          friend_name.happiness += 1
          return "blah blah sun blah rain"
        else
          return "blah blah blah blah blah"
        end
      end

   
end






