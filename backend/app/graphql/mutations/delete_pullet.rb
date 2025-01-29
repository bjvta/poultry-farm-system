module Mutations
  class DeletePullet < BaseMutation
    argument :id, ID, required: true

    type Types::PulletType

    def resolve(id:)
      pullet = Pullet.find(id)
      pullet.destroy
      pullet
    end
  end
end