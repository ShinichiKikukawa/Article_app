class AddConfirmableToDevise < ActiveRecord::Migration[6.1]
  def up
    unless column_exists?(:users, :confirmation_token)
      add_column :users, :confirmation_token, :string
      add_index :users, :confirmation_token, unique: true
    end
    unless column_exists?(:users, :confirmed_at)
      add_column :users, :confirmed_at, :datetime
    end
    unless column_exists?(:users, :confirmation_sent_at)
      add_column :users, :confirmation_sent_at, :datetime
    end
    unless column_exists?(:users, :unconfirmed_email)
      add_column :users, :unconfirmed_email, :string
    end

    # すべての既存のユーザーを "confirmed" として更新
    User.update_all(confirmed_at: Time.now) unless User.where(confirmed_at: nil).empty?
  end

  def down
    remove_columns :users, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email if column_exists?(:users, :confirmation_token)
  end
end
