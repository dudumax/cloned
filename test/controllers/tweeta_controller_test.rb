require 'test_helper'

class TweetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweetum = tweeta(:one)
  end

  test "should get index" do
    get tweeta_url
    assert_response :success
  end

  test "should get new" do
    get new_tweetum_url
    assert_response :success
  end

  test "should create tweetum" do
    assert_difference('Tweetum.count') do
      post tweeta_url, params: { tweetum: { tweta: @tweetum.tweta } }
    end

    assert_redirected_to tweetum_url(Tweetum.last)
  end

  test "should show tweetum" do
    get tweetum_url(@tweetum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweetum_url(@tweetum)
    assert_response :success
  end

  test "should update tweetum" do
    patch tweetum_url(@tweetum), params: { tweetum: { tweta: @tweetum.tweta } }
    assert_redirected_to tweetum_url(@tweetum)
  end

  test "should destroy tweetum" do
    assert_difference('Tweetum.count', -1) do
      delete tweetum_url(@tweetum)
    end

    assert_redirected_to tweeta_url
  end
end
