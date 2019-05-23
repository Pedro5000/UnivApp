class AddColumnUserProfilePicture < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :profile_pic, :string, :default => "https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/ruby-on-rails-512.png"
  end
end
