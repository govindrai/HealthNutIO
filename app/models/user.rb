class User < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_many :messages, dependent: :destroy

  before_save :generate_randomized_profile_url

  def generate_randomized_profile_url
    random = %w(a b c d e f g h i j k l m n o p q r s t u v w y z A B C D E F G H I J K L M N O P Q R S T U V W Y Z 1 2 3 4 5 6 7 8 9)

    random_url = ''
    10.times {|time| random_url += random.sample }
    self.randomized_profile_url = random_url
  end

  def generate_link_to_profile
    random = %w(a b c d e f g h i j k l m n o p q r s t u v w y z A B C D E F G H I J K L M N O P Q R S T U V W Y Z 1 2 3 4 5 6 7 8 9)
    base_url = "https://vildeio.herokuapp.com/profile/#{self.id}?random="
    generate_randomized_profile_url
    random_url = self.randomized_profile_url
    message = "Here is your profile:  "
    message + base_url + random_url
  end

  def get_calories_summary
    calories_consumed = self.meals.where("created_at >= ?", Time.now.beginning_of_day.in_time_zone("Pacific Time (US & Canada)")).pluck(:calories).inject {|acc, sum| acc + sum }
    message = "You have consumed " + calories_consumed.to_s + "calories today."
  end

  def get_suggested_calories
    if self.sex == "male"
      suggested_male_calories
    else
      suggested_female_calories
    end
  end

  def suggested_male_calories
    bmr = 10 * (self.weight_pounds * 0.453592) + 6.25 * (self.height_inches * 2.54) - 5 * self.age + 5
  end

  def suggested_female_calories
    bmr = 10 * (seld.weight_pounds * 0.453592) + 6.25 * (self.height_inches * 2.54) - 5 * self.age - 161
  end


end
