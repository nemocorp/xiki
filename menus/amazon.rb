require 'view'
require 'effects'

class Amazon

  def self.menu line=nil
    # If no arg, prompt to type something

    return View.prompt "Type something to search on amazon" if line.nil?

    # If arg, look it up

    Firefox.url "http://www.amazon.com/s?field-keywords=#{line}"
    nil
  end
end
