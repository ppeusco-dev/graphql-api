# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
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

    field :users, [Types::UserType], null: false,
      description: "Returns a list of all users."

    def users
      User.all
    end

    field :user, Types::UserType, null: false,
      description: "Returns a user by ID." do
        argument :id, ID, required: true
      end

    def user(id:)
      User.find(id)
    end

    field :posts_with_comments, [Types::PostType], null: false,
      description: "Returns a list of all posts with their comments."

    def posts_with_comments
      Post.includes(:comments).all
    end

    field :users_with_posts_and_comments, [Types::UserType], null: false,
      description: "Returns a list of all users with their posts and comments."

    def users_with_posts_and_comments
      User.includes(posts: :comments).all
    end
  end
end
