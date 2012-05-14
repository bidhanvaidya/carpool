Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '363467483692946', 'ea2887ff9e64626cdfac2d40be6e47f3',
  				 :scope => 'email,user_birthday,user_interests,user_education_user,user_action.music,user_location'
end

