class Person
  #generates a getter (returns to the outside world)
  attr_reader :first_name, :dob

  #generates both a getter and a setter (returns to outside & you can set it)
  attr_accessor :last_name

#instance variables are bound to the object
#attaches data to the object
#rathe thanthrowing it away at the end of the method
#instance variables are a property of the object once they're set

#when you create a newe instance of a class
#the initialize method is called
#w/o initialize it gets init from highest obj class

  def initialize(fname, lname, dob_str)
    @first_name = fname
    @last_name = lname
    @dob = Date.strptime(dob_str, '%m-%d-%Y') #Y is 4 digit, y is 2 digits
  end

  def first_name
    @first_name
  end #this is a getter method

  def last_name
    @last_name
  end #getter method

  #setter method *doesn't have last name until here bc no lname setter in
  #initialize method
  #method=(argument) is the convention for setter methods
  def last_name=(lname)
    @last_name = lname
  end

  def full_name
    full_name = @first_name + ' ' + @last_name
  end

  def age
    now = Date.today
    now.year - @dob.year
  end
