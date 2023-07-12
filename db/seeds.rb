# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Task.create!(
  firstname: "John",
  lastname: "Doe",
  phonenumber: "123-456-7890",
  emailaddress: "johndoe@example.com",
  image: "https://cdn.leonardo.ai/users/42f9429d-850a-4280-aacc-6f7d1643c99b/generations/c21b0ddb-d91e-43ee-b6b2-9e61e631e6e4/variations/Default_A_closeup_of_a_Vietnamese_old_mans_face_illuminated_by_0_c21b0ddb-d91e-43ee-b6b2-9e61e631e6e4_1.jpg?w=512"
)

Task.create!(
  firstname: "Jane",
  lastname: "Doe",
  phonenumber: "987-654-3210",
  emailaddress: "janedoe@example.com",
  image: "https://cdn.leonardo.ai/users/8443c141-23d4-437d-a957-a223d2e70b7f/generations/cf51a1cf-4f53-4058-8432-cceedccf8e6b/variations/Default_Intricate_portrait_of_a_very_old_African_woman_with_wr_1_cf51a1cf-4f53-4058-8432-cceedccf8e6b_1.jpg?w=512"
)

# Add more contacts as needed
