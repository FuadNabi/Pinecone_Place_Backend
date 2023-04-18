require 'swagger_helper'

RSpec.describe Room do
  it 'Room Api should be valid' do
    room = Room.create(name: '',
                       photo: '',
                       price: '',
                       city: '',
                       description: '')
    expect(room).to_not be_valid
  end

  it 'Room Api should have a name' do
    room = Room.create(name: 'Name',
                       photo: 'photo.png',
                       price: '100',
                       city: 'City',
                       description: 'Description')
    expect(room.name).to eql('Name')
  end
  
  it 'Room Api should have a photo' do
    room = Room.create(name: 'Name',
                       photo: 'photo.png',
                       price: '100',
                       city: 'City',
                       description: 'Description')
    expect(room.photo).to eql('photo.png')
  end

  it 'Room Api should have a price' do
    room = Room.create(name: 'Name',
                       photo: 'photo.png',
                       price: '100',
                       city: 'City',
                       description: 'Description')
    expect(room.price).to eql(100)
  end
end
