class UserForm
  include ActiveModel::Model

  attr_accessor :name, :email, :age, :country, :sex, :introduction, :status

  def save
    return false if invalid?
    true
  end
end
