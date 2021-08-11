FactoryBot.define do
  sequence :string, aliases: %i[login firstname lastname password nickname] do |n|
    "string-#{n}"
  end

  sequence :email do |n|
    "email-#{n}@email.com"
  end
end
