require 'rails_helper'

describe "get all cards route", type: :request do
  let!(:cards) { FactoryBot.create_list(:card, 3) }
  
  before { get "/api/v1/cards" }

  it "returns status code 200" do
    expect(response).to have_http_status(:success)
  end

  it "finds the correct number of elements in the json array" do
    expect(JSON.parse(response.body).size).to eq(3)
  end
end