require "rails_helper"


RSpec.describe("Customer Show page") do
  before(:each) do
    @walmart = Supermarket.create!(    name: "Walmart",     location: "123 Main St")
    @customer1 = Customer.create!(    name: "Cx1")
    @item1 = @walmart.items.create!(    name: "Banana",     price: 1)
    @item2 = @walmart.items.create!(    name: "Apple",     price: 2)
    @cx_item1 = Customeritem.create!(    customer: @customer1,     item: @item1)
    @cx_item2 = Customeritem.create!(    customer: @customer1,     item: @item2)
  end

  describe("see the cx's name") do
    describe("list of its items") do
      it(" list name,price and name of Supermarket") do
        visit("/customers/#{@customer1.id}")
        save_and_open_page
        expect(page).to(have_content("Name:#{@customer1.name}"))
        expect(page).to(have_content("#{@item1.name}"))
        expect(page).to(have_content("Price:#{@item1.price}"))
        expect(page).to(have_content("#{@walmart.name}"))
      end
    end
  end
end
