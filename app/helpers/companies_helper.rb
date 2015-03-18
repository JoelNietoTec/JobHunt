module CompaniesHelper
  def current_company
     Company.where("user_id = ?", current_user.id).first
  end
end
