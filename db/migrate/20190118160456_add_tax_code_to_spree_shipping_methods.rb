class AddTaxCodeToSpreeShippingMethods < SpreeExtension::Migration[4.2]
  def change
    return if column_exists?(:spree_shipping_methods, :tax_code)

    add_column :spree_shipping_methods, :tax_code, :string
  end
end
