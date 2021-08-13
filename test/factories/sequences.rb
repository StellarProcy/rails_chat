FactoryBot.define do
  sequence :string, aliases: %i[login firstname lastname password nickname] do |n|
    "string-#{n}"
  end

  sequence :text, aliases: %i[description]

  sequence :email do |n|
    "email-#{n}@email.com"
  end
end
