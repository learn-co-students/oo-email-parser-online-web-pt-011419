require "pry"
class EmailParser
  
  attr_accessor :emails 

  def initialize(emails)
    @emails = emails
  end
  
  def parse 
    emails.split.collect do |address|
      address.split(',')
    end.flatten.uniq 
  end 
end

email_1 ="avi@test.com, arel@test.com test@avi.com, test@arel.com"
parser_1 = EmailParser.new(email_1)
parser_1.parse 

email_2 ="avi@test.com, arel@test.com test@avi.com, test@arel.com"
parser_2 = EmailParser.new(email_2)
parser_2.parse