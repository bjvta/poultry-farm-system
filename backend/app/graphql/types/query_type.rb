# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :pullets, [Types::PulletType], null: false, description: "Fetch all pullet batches"
    field :expenses, [Types::ExpenseType], null: false, description: "Fetch all farm expenses"


    field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
      argument :id, ID, required: true, description: "ID of the object."
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
      argument :ids, [ID], required: true, description: "IDs of the objects."
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    def pullets
      Pullet.all
    end

    def expenses
      Expense.all
    end
    
  end
end
