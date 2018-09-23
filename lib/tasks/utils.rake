namespace :utils do
  desc "Cria Administadores Fake"
  task generate_admins: :environment do
    10.times do
      Admin.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: "123456",
        password_confirmation: "123456",
        role: [0,1,1,1,1].sample
      )
    end
    puts "Administradores Fakes cadastrado com sucesso"
  end

end
