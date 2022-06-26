require 'rails_helper'

describe "add a review" do
  before:each do
    visit new_product_path
    click_link'Sign up'
    fill_in'Email', with: 'userexample@gmail.com'
    fill_in'Password', with: 'userpassword'
    fill_in'Password confirmation', with: 'userpassword'
    click_button'Sign up'
  end
  
  it "adds a review" do
    product = Product.create(:name => 'Snickers', :cost => '1.50', :origin => 'United States of America')
    # visit new_product_path
    visit product_path(product)
    # click_link 'Snickers'
    click_link 'Add a review for this product'
    fill_in 'Author', :with => "Bob"
    fill_in 'review_content_body', :with => "Blah Blah Blah lalallalalalalalalalalalallalalallalalalalalalalalalalla."
    fill_in 'Rating', :with => 3
    click_on 'Create Review'
    expect(page).to have_content 'Bob'
  end

  it "returns an error if form left blank" do
    product = Product.create(:name => 'Mars', :cost => '1.50', :origin => 'United States of America')
    visit new_product_review_path(product)
    click_on 'Create Review'
    expect(page).to have_content 'Can not be left blank, please fix:'
  end
end