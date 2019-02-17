class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @pass = Pass.new(password)
  end

  def authenticate(candidate_password)
    @pass.authenticate(candidate_password)
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Pass
  def initialize(password)
    @password = password
  end

  def authenticate(candidate_password)
    return true if candidate_password == @password
    false
  end
end

user = User.new("jill", "staff", 20, 1234)
puts user.authenticate(1234)
puts user.profile
