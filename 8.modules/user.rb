#!/usr/bin/ruby

# $LOAD_PATH << '.'
require_relative "user_tools.rb"
# require_relative "user_tools" also works
# require_relative "Tools"  #! ERROR

include Tools

Tools.sayhi("Arunava")
Tools.greet
Tools.ask
Tools.saybye("Arunava")