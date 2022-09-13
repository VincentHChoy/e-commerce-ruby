require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do
      @category = Category.new(:name => "smoll tree")
      @product = Product.new(:name => "bonsai tree", :price => 15, :quantity => 10, :category => @category)
    end

  it "product name exists" do
    expect(@product.name).not_to eq(nil) 
    expect(@product.name).to be_a_kind_of(String)
  end

  it "product price exists" do
    expect(@product.price).not_to eq(nil) 
    expect(@product.price.fractional).to be_a_kind_of(Numeric)
  end

  it "product quantity exists" do
    expect(@product.quantity).not_to eq(nil) 
    expect(@product.quantity).to be_a_kind_of(Integer)
  end

  it "product category exists" do
    expect(@product.category).not_to eq(nil) 
    expect(@product.category).to be_a_kind_of(Object)
  end

  end 
end
