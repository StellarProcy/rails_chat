require 'test_helper'

class MessagesChannelTest < ActionCable::Channel::TestCase
  def test_broadcasts
    # Check the number of messages broadcasted to the stream
    assert_broadcasts 'conversation', 0
    ActionCable.server.broadcast 'messages', { text: 'hello' }
    assert_broadcasts 'conversation', 1

    # Check the number of messages broadcasted to the stream within a block
    assert_broadcasts('conversation', 1) do
      ActionCable.server.broadcast 'conversation', { text: 'hello' }
    end

    # Check that no broadcasts has been made
    assert_no_broadcasts('conversation') do
      ActionCable.server.broadcast 'another_stream', { text: 'hello' }
    end
  end

  def test_subscribed_with_room_number
    # Simulate a subscription creation
    subscribe room_number: 1

    # Asserts that the subscription was successfully created
    assert subscription.confirmed?

    # Asserts that the channel subscribes connection to a stream
    assert_has_stream 'conversation'

    # Asserts that the channel subscribes connection to a specific
    # stream created for a model
    assert_has_stream_for Room.find(1)
  end

  def test_does_not_stream_with_incorrect_room_number
    subscribe room_number: -1

    # Asserts that not streams was started
    assert_no_streams
  end

  def test_does_not_subscribe_without_room_number
    subscribe

    # Asserts that the subscription was rejected
    assert subscription.rejected?
  end
end
