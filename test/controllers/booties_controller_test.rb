require 'test_helper'

class BootiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booty = booties(:one)
  end

  test "should get index" do
    get booties_url, as: :json
    assert_response :success
  end

  test "should create booty" do
    assert_difference('Booty.count') do
      post booties_url, params: { booty: { gold: @booty.gold, woodenChest: @booty.woodenChest } }, as: :json
    end

    assert_response 201
  end

  test "should show booty" do
    get booty_url(@booty), as: :json
    assert_response :success
  end

  test "should update booty" do
    patch booty_url(@booty), params: { booty: { gold: @booty.gold, woodenChest: @booty.woodenChest } }, as: :json
    assert_response 200
  end

  test "should destroy booty" do
    assert_difference('Booty.count', -1) do
      delete booty_url(@booty), as: :json
    end

    assert_response 204
  end
end
