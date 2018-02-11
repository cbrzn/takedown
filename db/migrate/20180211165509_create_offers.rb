class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :offerType
      t.string :paymentMethodID
      t.string :localCurrency
      t.float :exchangeRate
      t.string :location
      t.string :headline
      t.string :termsAgreement
      t.string :standardHours
      t.integer :user_id

      t.timestamps
    end
  end
end
