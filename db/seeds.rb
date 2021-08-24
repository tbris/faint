# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
phrases = [
  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean feugiat, odio eu facilisis bibendum, lorem justo imperdiet ante, eget sagittis ipsum justo eu turpis. Nullam dignissim pretium diam.",
  "Praesent dignissim augue vestibulum, varius nibh id, lobortis justo.",
  "Nullam ut lobortis neque. Pellentesque in lorem et purus commodo volutpat vitae non urna. Aenean quis pretium ligula.",
  "Nam odio risus, volutpat faucibus finibus in, ullamcorper quis quam.",
  "Nullam vel augue malesuada, mollis neque a, semper velit. Integer tempor nisi vel sapien vestibulum efficitur. Quisque vehicula vestibulum mi, vitae facilisis lorem porttitor porttitor. Integer sed enim arcu.",
  "In lectus odio, finibus nec eros nec, ultricies venenatis turpis.",
  "Curabitur tempor feugiat tincidunt. Mauris sagittis, nulla id euismod congue, sem urna consequat lacus, nec dictum erat ligula ac leo. Nullam nec dui sit amet erat laoreet ornare vitae eget sapien.",
  "Ut arcu est, molestie non elit porttitor, eleifend pulvinar massa. Etiam turpis mauris, finibus vitae mi eget, eleifend facilisis leo.",
  "Proin felis orci, placerat ut odio eget, congue aliquet mi.",
  "Morbi nulla ante, consequat a eros quis, pharetra vehicula nulla.",
  "Nunc eget ipsum convallis,",
  "fringilla elit mollis,",
  "vehicula dui.",
  "Aliquam pretium augue elit, id finibus ante fermentum vitae.",
  "Nullam ac scelerisque enim.",
  "In arcu urna, sodales in mollis quis, tempor et urna. Suspendisse viverra maximus nisi.",
  "In ornare massa malesuada gravida viverra.",
  "Quisque vel bibendum mi.",
  "",
  "",
]

10.times do
  post = Post.create!(subject: phrases.sample, comment: phrases.sample)
  (rand * 20).round.times do
    post.replies.create!(comment: phrases.sample)
  end
end
