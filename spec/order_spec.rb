require 'order'

describe Order do
	let(:ramen) { double :dish, name: "Ramen", price: 8 }
	let(:pizza) { double :dish, name: "Pizza", price: 12 }
	let(:beer) { double :dish, name: "Beer", price: 4 }
	let(:rice) { double :dish, name: "Rice", price: 3 }
	
	describe '#initialize' do
		it 'should provide a cart for each Order' do
			expect(subject.cart).to be_a Array
		end
	end

	describe '#total' do
		it 'should return a number' do
			expect(subject.total).to be_a Integer
		end

		context 'when the cart is full' do
			before do
				@cart = [ramen, pizza, beer, rice]
			end
			it 'should return the total price of all items' do
				puts @cart_total
				expect(subject.total).to be 27
			end
		end

		context 'when the cart is empty' do
			it 'should return a total of 0' do
				expect(subject.total).to be 0
			end
		end
	end
end