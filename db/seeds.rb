User.create!(
  email: "admin@admin.com",
  password: "04221963Ad",
  password_confirmation: "04221963Ad",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test@test.com",
  password: "123456",
  password_confirmation: "123456",
  name: "Regular User",
)

puts "1 Regular user created"

1.times do |topic|
  Topic.create!(
    title: "Photography"
  )
end

1.times do |topic|
  Topic.create!(
    title: "Adventures"
  )
end

1.times do |topic|
  Topic.create!(
    title: "Personal"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Default",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

1.times do |skill|
  Skill.create!(
    title: "Nikon",
    percent_utilized: 75
    )
end
 
1.times do |skill|
  Skill.create!(
    title: "Canon",
    percent_utilized: 25
    )
end
  
  puts "2 skills created"
  
  8.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Ruby on Rails",
      body: "Default",
      main_image: "http://via.placeholder.com/600x400" ,
      thumb_image: "http://via.placeholder.com/350x200"
      )
end

  1.times do |portfolio_item|
    Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "Angular",
      body: "Default",
      main_image: "http://via.placeholder.com/600x400" ,
      thumb_image: "http://via.placeholder.com/350x200"
      )
end
  
  puts "9 portfolio items created"
  
  3.times do |technology|
    Portfolio.last.technologies.create!(
      name: "Technology #{technology}"
      )
  end
  
  puts "3 technologies created"