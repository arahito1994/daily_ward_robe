FactoryBot.define do
  factory :item do
    title               { 'コーディネート' }
    style_text          { 'コーディネート説明' }
    outer_item          { 'アウター' }
    tops_item           { 'シャツ' }
    bottoms_item        { 'デニム' }
    shoes_item          { 'スニーカー' }
    goods_item          { 'キャップ' }
    association :user

    after(:build) do |items|
      items.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

    trait :images2 do
      after(:build) do |items|
        1.times do
          items.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
        end
      end
    end

    trait :images3 do
      after(:build) do |items|
        2.times do
          items.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
        end
      end
    end

    trait :images4 do
      after(:build) do |items|
        3.times do
          items.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
        end
      end
    end

    trait :images5 do
      after(:build) do |items|
        4.times do
          items.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
        end
      end
    end

    trait :images6 do
      after(:build) do |items|
        5.times do
          items.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
        end
      end
    end

    trait :images do
      after(:build) do |items|
        6.times do
          items.images.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
        end
      end
    end

    trait :image_jpg do
      after(:build) do |items|
        items.images.attach(io: File.open('public/images/test.jpg'), filename: 'test.jpg')
      end
    end

    trait :image_gif do
      after(:build) do |items|
        items.images.attach(io: File.open('public/images/sample.gif'), filename: 'sample.gif')
      end
    end
  end
end
