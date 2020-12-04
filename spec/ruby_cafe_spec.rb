require_relative '../menu_item'
require_relative '../menu'
require_relative '../order'
require_relative '../cafe'

describe MenuItem do
    it 'should return the price of the item' do
        name = "latte"
        price = 4.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.price).to eq(price)
    end
    it 'should return the name of the item' do
        name = "latte"
        price = 4.00
        menu_item = MenuItem.new(name, price)
        expect(menu_item.name).to eq(name)
    end
end

describe Menu do
    it "should be able to get an item's price" do
        name = "latte"
        price = 4.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.get_price(name)).to eq(price)
    end
    it "should be able to add an item" do
        name = "latte"
        price = 4.00
        menu = Menu.new
        menu.add_item(name, price)
        expect(menu.get_items().length).to be(1)
    end
end

describe Order do
    it "should add an item to the order" do
        order = Order.new
        name = "latte"
        quantity = 2
        order.add_item("latte", 2)
        expect(order.get_items().length).to be(2)
    end
    it "should update an item quantity for items already ordered" do
        order = Order.new
        name = "latte"
        quantity = 2
        quantity_add = 3
        order.add_item(name, quantity)
        order.add_item(name, quantity_add)
        expect(order.get_items().length).to be(5)
    end
end

describe Cafe do
    it 'should define a welcome method' do
        name = "My Cafe"
        menu_items = {latte: 4.00, tea: 2.00}
        cafe = Cafe.new(name, menu_items)
        expect(cafe.welcome).to eq(nil)
    end
    it 'should define a print menu method' do
        name = "My Cafe"
        menu_items = {latte: 4.00, tea: 2.00}
        cafe = Cafe.new(name, menu_items)
        expect(cafe.print_menu).to eq(nil)
    end
end