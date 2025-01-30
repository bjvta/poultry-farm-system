require 'rails_helper'

RSpec.describe 'GraphQL Mutations', type: :request do
  it 'creates a new pullet' do
    query = <<~GQL
      mutation($entryDate: ISO8601Date!, $ageInDays: Int!, $quantity: Int!, $averageWeight: Float){
        createPullet(input: {
          entryDate: $entryDate,
          ageInDays: $ageInDays,
          quantity: $quantity,
          averageWeight: $averageWeight
        }) {
          id
          entryDate
          ageInDays
          quantity
        }
      }
    GQL

    result = BackendSchema.execute(query, 
                                   variables: { 
                                    entryDate: "2025-01-30", 
                                    ageInDays: 50,
                                    quantity: 100,
                                    averageWeight: 1.5
                                  })
    
    pullet = result.dig('data', 'createPullet')
    # TODO: missing the errors
    
    expect(pullet['quantity']).to eq(100)
  end
end
