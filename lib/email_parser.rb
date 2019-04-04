require 'pry'
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email, :emails
  @@emailList = []

  # def self.all
  #   @@emaiList
  # end

  def initialize(emails)
    @emails = emails
    @@emailList.clear
  end

  def parse
    parsed = @emails.gsub(/[ ,]/, ' ').split(" ")
    parsed.each do |em|
      ##binding.pry
      @@emailList << em if !@@emailList.include?(em)
    end
    @@emailList
  end

end
