require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  test "a user should enter fn" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter ln" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

   test "a user should enter pn" do 
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "profile name should be unique" do
  	user = User.new
  	user.profile_name = "dinotembo"
  	user.first_name = "dino"
  	user.last_name = "kraljevic"
  	user.email = "dino.kraljevic@gmail.com"
  	user.password = "password"
  	user.password_confirmation = "password"
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end


end
