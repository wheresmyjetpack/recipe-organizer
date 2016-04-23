require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

  # User.name tests

  test "name should be present" do
    @user.name = "         "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "         "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 51
    assert_not @user.valid?
  end

  # User.email tests

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[users@example.com fooBarBAZ@this.ORG 1_2seventy-FIVE@sub.domain.net]

    valid_addresses.each do |a|
      @user.email = a
      assert @user.valid?, "#{a.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user@example. user@example..com]

    invalid_addresses.each do |ia|
      @user.email = ia
      assert_not @user.valid?, "#{ia.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "emails addresses should be lowercase" do
    @user.email = "uSeR@EXamPlE.com"
    @user.save
    assert @user.email == "user@example.com"
  end
end
