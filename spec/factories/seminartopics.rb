FactoryGirl.define do
  factory :seminartopics do
    title "title"
  descripton "seminar"
    studname "dharani"
    user_id "1"

    association :user
  end
end
