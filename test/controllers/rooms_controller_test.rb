require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test 'Should get index page' do
    get rooms_path
    assert_response :success
  end

  test 'should get show page' do
    get new_room_path
    assert_response :success
  end

  test 'Should post room' do 
    room_attrs = attributes_for :room

    post room_path, params: { room: room_attrs }
    assert_response :redirect

    room = Room.last
    assert_equal room_attrs[:name], room.name
  end

  test 'Should get edit page' do
    get edit_room_path(@room)
    assert_response :success
  end

  test 'Should patch room' do
    room_attrs = attributes_for :room
    room_attrs[:name] = generate :name

    patch room_path(@room), params: { room: room_attrs }
    assert_response :redirect

    @room.reload
    assert_equal room_attrs[:name], @room.name
  end
end
