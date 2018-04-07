User.create!(
  email: "anthonydo11@yahoo.com",
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
  name: "Tony User",
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
    body: "This hike took 9 hours to complete and 2 liters of water. It was 14 miles and the views were magnificent. I went with Allyson Royall and we hiked all the way to the top of Mount Timpanogos. We woke up at 6 and drove all the way down to American Fork Canyon. That's where we found the Timpooneke Trail. It was so beautiful from the beginning. It was the best way to enjoy nature and breathe the fresh air. About 1.5 miles in, we stumbled upon a huge waterfall and got to go behind it. It was the coolest experience I have ever done! Later, we came across a field of flowers that stretched across the mountain. It was filled with many colors and types. That's where I had a mini photo shoot with Ally. This is also the part where I got bitten by a plethora of insects. Like true hikers, we ended up getting lost and losing the trail. The snowbanks were slick and covered most of the trail. On one of the snowbanks, we came across a mini snow Doughnut Falls from the snow melt. At this spot, I got scratched up from some sticks that were stuck in the snow. I had to stop for 10 minutes to halt the bleeding from my cut. I was so excited to hike this hike that I didn't even think of bringing band-aids. I had to use some of my drinking water to wash the cut. After all that, we found the trail again and continued on. Later, we stumbled across a drop off of snow that required sticks to cross. We found some sticks and impaled the snow like the hikers from Everest to cross. After the final stretch, our bodies started dying off and we had to take a plethora of rests. We could see the summit from this point and we got motivated to continue. Finally, we made it to the first summit and enjoyed the most amazing view! It was getting late and we had to head back. The quickest way was to slide down the snow banks and I accidentally slipped and started sledding down the mountain. It was really fun and scary at the same time! Ally quickly followed and it was the best experience ever. Near the bottom, it started raining and we rushed to my car. After that, the weather was changing so rapidly; it started with a mix of rain, hail, fog, and sunshine. It was the natural beauty of Utah weather. I was so amazed by the beauty of a storm in the middle of a canyon. With everything that happened, I recommend this hike for those that are locating difficult hikes. 10/10 would recommend. This is one of the beauties of Utah and I wish you could enjoy it too! Go follow my other adventures on social media!",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

1.times do |skill|
  Skill.create!(
    title: "Adobe Lightroom",
    percent_utilized: 100
    )
end
 
1.times do |skill|
  Skill.create!(
    title: "Adobe Photoshop",
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
      title: "Mount Timpanogos",
      subtitle: "Travels",
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