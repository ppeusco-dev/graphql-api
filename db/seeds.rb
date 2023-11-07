
user = User.create(name: "John Doe", email: "john@example.com")

post1 = user.posts.create(title: "First post", body: "This is the first post.")
post2 = user.posts.create(title: "Second post", body: "This is the second post.")

post1.comments.create(body: "This is a comment on the first post.", user: user)
post2.comments.create(body: "This is a comment on the second post.", user: user)
