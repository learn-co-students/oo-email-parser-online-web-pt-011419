# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  attr_accessor :email
  
  def initialize(emails)
    @email = emails
  end

  def parse
    #separate emails by comma or space
    email_arr = @email.split(/[, ]/).uniq
    #remove empty emails
    email_arr.reject! {|value| value.empty?}
    #return only unique emails
    email_arr
  end
end