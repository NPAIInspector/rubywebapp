require "test_helper"

class IdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @id = ids(:one)
  end

  test "should get index" do
    get ids_url
    assert_response :success
  end

  test "should get new" do
    get new_id_url
    assert_response :success
  end

  test "should create id" do
    assert_difference("Id.count") do
      post ids_url, params: { id: { name: @id.name, place: @id.place } }
    end

    assert_redirected_to id_url(Id.last)
  end

  test "should show id" do
    get id_url(@id)
    assert_response :success
  end

  test "should get edit" do
    get edit_id_url(@id)
    assert_response :success
  end

  test "should update id" do
    patch id_url(@id), params: { id: { name: @id.name, place: @id.place } }
    assert_redirected_to id_url(@id)
  end

  test "should destroy id" do
    assert_difference("Id.count", -1) do
      delete id_url(@id)
    end

    assert_redirected_to ids_url
  end
end
