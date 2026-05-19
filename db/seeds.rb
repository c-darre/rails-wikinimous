puts "Cleanin database…"
Article.destroy_all

puts "Creating 10 fake articles…"
10.times do
  Article.create!(
    title: Faker: :Book.title,
    content: Faker: :Lorem.paragraphs(number: 3).join("\n\n")
  )
end

puts "Finished! #{Article.count}" articles created."
