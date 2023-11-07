# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :createUser, Types::UserType, null: false,
      description: "Creates a new user." do
        argument :input, Types::UserInputType, required: true
      end

    def createUser(input:)
      User.create(name: input[:name], email: input[:email])
    end
  end
end
