# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :emails
  
  def initialize(emails)
    @emails = emails
  end

  def parse
    array = @emails.split(/[, ]/).uniq # separate emails by comma or space # and remove duplicates 
    array.reject!{|email| email.empty?} # delete empty emails
    array  # return array of unique emails
  end
end