# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    require 'set'
    attr_accessor :email_list

    def initialize(email_list)
        @email_list = email_list
    end

    def parse
        @email_list.scan(/\w+@\w+.com/).to_set.to_a
    end
end
