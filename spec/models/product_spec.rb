require 'rails_helper'



RSpec.describe Product, type: :model do
  describe 'Validations' do

    before (:each) do
      @category = Category.create(name: 'test_category')
      # @product.valid?
      @product = @category.products.create(name: 'g-unit', price: 99.99, description: "really cool", quantity: '100')

    end

      it "is a valid product" do
        @product.name = nil
        @product.price_cents = nil
        @product.quantity = nil
        @product.category = nil
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include("Name can't be blank", "Price is not a number", "Quantity can't be blank")
      end

      it 'has a valid name' do
       # @product = @category.products.create( price: 99.99, quantity: '100')
       @product.name = nil
        # p @product.errors.messages
        expect(@product).not_to be_valid
        expect(@product.errors.full_messages).to include ("Name can't be blank")
      end

      it 'has a valid price' do
        @product.price_cents = nil
        # p @product.errors.messages
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include ("Price is not a number")

      end

      it 'has a valid quantity' do
        @product.quantity = nil
        # p @product.errors.messages
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include ("Quantity can't be blank")

      end

      it 'has a valid category' do
        @product.category = nil
        # p @product.errors.messages
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include ("Category can't be blank")
      end
  end
end



