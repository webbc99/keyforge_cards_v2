require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get cards_url, as: :json
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post cards_url, params: { card: { amber: @card.amber, armor: @card.armor, card_id: @card.card_id, card_number: @card.card_number, card_text: @card.card_text, card_title: @card.card_title, card_type: @card.card_type, expansion: @card.expansion, flavor_text: @card.flavor_text, front_image: @card.front_image, house: @card.house, is_anomaly: @card.is_anomaly, is_enhanced: @card.is_enhanced, is_maverick: @card.is_maverick, power: @card.power, rarity: @card.rarity, traits: @card.traits } }, as: :json
    end

    assert_response 201
  end

  test "should show card" do
    get card_url(@card), as: :json
    assert_response :success
  end

  test "should update card" do
    patch card_url(@card), params: { card: { amber: @card.amber, armor: @card.armor, card_id: @card.card_id, card_number: @card.card_number, card_text: @card.card_text, card_title: @card.card_title, card_type: @card.card_type, expansion: @card.expansion, flavor_text: @card.flavor_text, front_image: @card.front_image, house: @card.house, is_anomaly: @card.is_anomaly, is_enhanced: @card.is_enhanced, is_maverick: @card.is_maverick, power: @card.power, rarity: @card.rarity, traits: @card.traits } }, as: :json
    assert_response 200
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete card_url(@card), as: :json
    end

    assert_response 204
  end
end
