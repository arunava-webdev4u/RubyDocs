class Baseball
end
# p Baseball.new.swing  #err


class Baseball
  def swing
    "Homerun"
  end
end
p Baseball.new.swing

class Baseball
  def swing
    "Strike"
  end
end
p Baseball.new.swing

# It will take the latest definition
