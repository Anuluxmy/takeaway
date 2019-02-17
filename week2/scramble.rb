class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def do(things)
    @contents = things.execute()
  end
end

class ScrambleAdvance
  def initialize(contents, steps = nil)
    @contents = contents
    @steps = steps
  end

  def execute
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    @contents = scrambled_chars.join
  end
end

class UnscrambleAdvance
  def initialize(contents, steps = nil)
    @contents = contents
    @steps = steps
  end

   def execute
     scrambled_chars = @contents.chars
     plain_chars = scrambled_chars.map do |char|
       (char.ord - @steps).chr
     end
     @contents = plain_chars.join
   end
 end

class ScrambleReverse
  def initialize(contents)
    @contents = contents
  end

   def execute
     @contents = @contents.reverse
   end
 end

 class UnscrambleReverse
   def initialize(contents)
     @contents = contents
   end

   def execute
     @contents = @contents.reverse
   end

 end
