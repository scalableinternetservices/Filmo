# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

1.upto(10) do |i|
	u= User.create!(email: "user#{i}@gmail.com",
			password: "hello1234",
			encrypted_password: "$2a$10$fodgTaXVpGxCKrsbTX13ouvChIUlj2Tfxvw.kfrGM42reH0938dK6",
			sign_in_count: '1',
			current_sign_in_at: '2015-11-28 07:56:18',
			last_sign_in_at: '2015-11-28 07:56:18',
			current_sign_in_ip: '127.0.0.1',
			last_sign_in_ip: '127.0.0.1',
			created_at: '2015-11-28 07:56:18',
		        updated_at: '2015-11-28 07:56:18');
	u.save!;
end

1.upto(10000) do |i|
	if ((i % 2) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Action',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 3) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Adventure',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 4) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Animation',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 5) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Comedy',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 6) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Crime',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 7) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Drama',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 8) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Family',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 9) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Fantasy',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 10) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'History',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 11) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Horror',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 12) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Music',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 13) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Musical',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 14) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Mystery',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 15) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Romance',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 16) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Sci-Fi',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 17) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Sport',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 18) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Thriller',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	elsif ((i % 19) == 0)
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'War',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	else
		p = Post.create!(title: "Post #{i}",
						content: Faker::Lorem.paragraph,
						genres: 'Western',
						created_at: '10/10/2015 17:00',
						updated_at: '10/10/2015 17:00',
						user_id: "#{i}");
		p.save!;
	end
end

1.upto(10000) do |i|
	c = Comment.create!(comment: Faker::Lorem.paragraph,
				post_id: "#{i}",
				user_id: '1',
				created_at: '10/10/2015 17:00',
				updated_at: '10/10/2015 17:00');
	c.save!;

	c1 = Comment.create!(comment: Faker::Lorem.paragraph,
				post_id: "#{i}",
				user_id: '1',
				created_at: '10/11/2015 17:00',
				updated_at: '10/11/2015 17:00');
	c1.save!;
end

