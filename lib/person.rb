# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account, :hygiene
  attr_reader :name, :happiness

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def happiness=(happy_level)
    happy_level >=10 ? @happiness = 10 : happy_level <= 0 ? @happiness = 0 : @happiness = happy_level
  end

  def hygiene=(hygiene_level)
    hygiene_level >=10 ? @hygiene = 10 : hygiene_level <= 0 ? @hygiene = 0 : @hygiene = hygiene_level
  end

  def get_paid(amt)
    @bank_account += amt
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = (@hygiene + 4)
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out

    self.hygiene=(@hygiene - 3)
    self.happiness=(@happiness + 2)
    '♪ another one bites the dust ♫'
   
  end

  def call_friend(friend_info)
    self.happiness=(@happiness + 3)
    friend_info.happiness =(friend_info.happiness + 3)
    "Hi #{friend_info.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics" 
      self.happiness = (@happiness - 2)
      person.happiness = (person.happiness - 2)
      'blah blah partisan blah lobbyist'
    elsif topic == "weather" 
      self.happiness = (@happiness + 1)
      person.happiness = (person.happiness + 1)
      'blah blah sun blah rain'
    else
      'blah blah blah blah blah'
    end
  end

  
end

