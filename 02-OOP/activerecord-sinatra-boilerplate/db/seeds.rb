require 'faker'

10.times do
  Simpson.create!(
    name: Faker::TvShows::Simpsons.character,
    quote: Faker::TvShows::Simpsons.quote
  )
end
