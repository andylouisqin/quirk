require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Exam Ple", email: "example@example.org")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should not be a blank string" do
    @user.name = "    "
    assert_not @user.valid?
  end

  test "email should not be a blank string" do
    @user.email = "    "
    assert_not @user.valid?
  end

  test "name can't be too long" do
    @user.name = "k" * 51
    assert_not @user.valid?
  end

  test "email can't be too long" do
    @user.email = "k" * 244 + "@example.org"
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
end
