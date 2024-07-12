# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Event.create(name: "rajaAndrani", description: "raja weds rani",address: "mumbai,india", image_url: "https://
# content.api.news/v3/images/bin/287141f386853951caaf9ac01a7683a0", start_time: '2025-02-28', end_time: '2025-05-30')

# second=Event.create(name: "ramAndsita", description: "ram weds sita",address: "jaipur,india", image_url: "https://
# content.api.news/v3/images/bin/287141f386853951caaf9ac01a7683a0", start_time: '2025-02-20', end_time: '2025-02-22')

# third=Event.create(name: "JoeAndJan", description: "joe weds jan",address: "seattle,USA", image_url: "https://
# content.api.news/v3/images/bin/287141f386853951caaf9ac01a7683a0", start_time: '2024-12-20', end_time: '2024-12-21')

# five=Event.create(name: "The Johns", description: "Ray weds sally",address: "Dallas,USA", image_url: "https://
# content.api.news/v3/images/bin/287141f386853951caaf9ac01a7683a0", start_time: '2025-03-2', end_time: '2025-03-4')