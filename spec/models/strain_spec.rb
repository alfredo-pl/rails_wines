require 'rails_helper'

RSpec.describe Strain, :type => :model do
    it 'The strains should not have the same name' do
        Strain.create(name: 'Merlot')
        expect(Strain.new(name: 'Merlot')).to_not be_valid
    end
    it 'The name of the strain cannot be empty' do
        expect(Strain.new(name: ' ')).to_not be_valid
        expect(Strain.new(name: 'Merlot')).to be_valid
        expect(Strain.new(name: nil)).to_not be_valid
    end
end