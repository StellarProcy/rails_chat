class Web::Admin::AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = create(:admin)
  end

  test 'Should get all admins' do
    get admin_admins_path
    assert_response :success
  end

  test 'Should get new admin page' do
    get new_admin_admin_path
    assert_response :success
  end

  test 'Should post admin' do
    admin_attrs = attributes_for :admin

    post admin_admins_path params: { admin: admin_attrs }
    assert_response :redirect

    admin = Admin.last
    assert_equal admin_attrs[:email], admin.email
  end
end
