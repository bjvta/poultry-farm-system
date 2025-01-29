require 'rails_helper'

RSpec.describe 'GraphQL Queries', type: :request do
  let!(:pullets) { create_list(:pullet, 3) }

  xit 'fetches all pullets' do
    query = <<~GQL
      {
        pullets {
          id
          entryDate
          ageInDays
          quantity
          averageWeight
        }
      }
    GQL

    post '/graphql', params: { query: query }

    json = JSON.parse(response.body)
    data = json['data']['pullets']

    expect(response).to have_http_status(:ok)
    expect(data.count).to eq(3)
  end
end