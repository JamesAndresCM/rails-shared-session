class User < AuthEngine::User
  has_many :posts
end
