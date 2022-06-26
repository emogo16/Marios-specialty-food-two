require 'rails_helper'

describe "edit product process" do
  before:each do
    visit new_product_path
    click_link'Sign up'
    fill_in'Email', with: 'userexample@gmail.com'
    fill_in'Password', with: 'userpassword'
    fill_in'Password confirmation', with: 'userpassword'
    click_button'Sign up'
    @user = User.last
    @user.update(admin: true)
  end
  
  it "edits a product" do
    product = Product.create(:name => 'Mars', :cost => '1.50', :origin => "United States of America")
    visit edit_product_path(product)
    fill_in 'Name', :with => 'Earth'
    click_on 'Update Product'
    expect(page).to have_content 'Earth'
  end

  it "returns an error if description is left blank" do
    product = Product.create(:name => 'Mars', :cost => '1.50', :origin => 'United States of America')
    visit edit_product_path(product)
    fill_in 'Name', :with => ''
    click_button 'Update Product'
    expect(page).to have_content 'Can not be left blank, please fix:'
  end

  it "delete a product" do
    product = Product.create(:name => 'Mars', :cost => '1.50', :origin => 'United States of America')
    visit product_path(product)
    click_on 'Delete'
    expect(page).not_to have_content 'Planets'
  end
end