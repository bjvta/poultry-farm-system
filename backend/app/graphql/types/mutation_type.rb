# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_pullet, mutation: Mutations::CreatePullet
  end
end
