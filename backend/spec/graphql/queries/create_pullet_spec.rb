require 'rails_helper'

RSpec.describe 'GraphQL Mutations', type: :request do
  xit 'creates a new pullet' do
    query = <<~GQL
      mutation {
        createPullet(input: {
          entryDate: "2025-01-30",
          ageInDays: 50,
          quantity: 100,
          averageWeight: 1.5
        }) {
          id
          entryDate
          ageInDays
          quantity
        }
      }
    GQL

    post '/graphql', params: { query: query }
    
    json = JSON.parse(response.body)
    data = json['data']['createPullet']

    expect(response).to have_http_status(:ok)
    expect(data['quantity']).to eq(100)
  end
end