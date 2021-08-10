FactoryBot.define do
  sequence :string, aliases: %i[firstname lastname password] do |n|
    "string-#{n}"
  end

  sequence :email do |n|
    "email-#{n}@email.com"
  end
end
