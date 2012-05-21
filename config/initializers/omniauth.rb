Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '363467483692946', 'ea2887ff9e64626cdfac2d40be6e47f3',:scope => 'user_work_history,email,user_education_history,user_interests,user_hometown,user_location,user_actions.music'
end

