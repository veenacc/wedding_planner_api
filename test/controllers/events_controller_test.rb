require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # test for event index
  test "index" do
    get "/weddings.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Event.count, data.length
  end

   # test for event show
  test "show" do
    get "/weddings/#{Event.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "address", "image_url","start_time", "end_time"], data.keys
  end
end
