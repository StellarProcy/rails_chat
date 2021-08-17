FactoryBot.define do
  sequence :string, aliases: %i[login firstname lastname password name] do |n|
    "string-#{n}"
  end

  sequence :text, aliases: %i[description content] do |n|
    "Some-text-#{n}"
  end

  sequence :email do |n|
    "email-#{n}@email.com"
  end
end
