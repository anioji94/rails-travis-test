describe 'test' do
	it 'should work' do
		expect(1 + 1).to eq 2
	end

	it 'should also work' do
		expect(1 + 2).not_to eq 2
	end

	it 'should work too' do
		expect(1 - 1).to eq 0
	end

	it 'should fail if wrong' do
		expect('travis').not_to eq 'good'
	end

	# switching!
end