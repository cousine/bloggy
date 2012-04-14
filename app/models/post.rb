class Post
  include Mongoid::Document

  # Search
  include Tire::Model::Search
  include Tire::Model::Callbacks

  # Attributes
  field :title, :type => String
  field :body, :type => String

  # Search index
  mapping do
    indexes :title
    indexes :body
  end
end
