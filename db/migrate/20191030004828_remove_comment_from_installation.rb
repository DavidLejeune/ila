class RemoveCommentFromInstallation < ActiveRecord::Migration[6.0]
  def change

    remove_column :installations, :comment, :text
  end
end
