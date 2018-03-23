module UsersHelper
    def options_for_seasons
      [['Male', 'male'], ['Female', 'female'], ['Not Specified', 'Not Specified']]
    end

    def options_for_rains
      [['University', 'University'], ['College', 'College'], ['High School', 'High School'], ['Other', 'Other']]
    end

    def options_for_boys
      [['Single', 'Single'], ['Married', 'Married']]
    end

    def options_for_girls
      [['University', 'University'], ['College', 'College'], ['High School', 'High School'], ['Other', 'Other']]
    end
  
    def is_current_user?(user)
      user == current_user
    end

    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end

    
end