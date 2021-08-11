require "test_helper"

class AdminTest < ActiveSupport::TestCase
  test 'Should create admin' do
    admin = build(:admin)
    admin.save

    created_admin = Admin.last
    assert_equal(admin.email, created_admin.email)
  end

  test 'Should not create admin without email' do
    admin = build :admin, email: nil
    admin.save

    created_admin = Admin.last
    assert_nil created_admin
  end

  test 'email should be unique' do
    first_admin = build :admin, email: 'test@gmail.com'
    first_admin.save

    second_admin = build :admin, email: 'test@gmail.com'
    assert_not second_admin.save
  end

  test 'password should be longer than 6 characters' do
    admin = build :admin, password: '1234'
    admin.save

    created_admin = Admin.last
    assert_nil created_admin
  end
end
