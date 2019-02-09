require 'pry'

class EmailParser
  attr_accessor :emails 
  
  def initialize(email)
    @emails = email
  end 
  
  def parse 
    data = emails.split.collect{|email| email.split(",").join}
    data.uniq
  end 
end 
  