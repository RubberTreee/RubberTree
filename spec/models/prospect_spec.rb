RSpec.describe Prospect do
  let(:complete_attributes) do
    {
      first_name: 'pros',
      last_name: 'pect',
      email: 'pros@pect.com',
      mobile: '00123456789',
      how_heard: 'word of mouth',
      marketing: false
    }
  end

  describe 'a complete prospect' do
    it 'contains all the required information' do
      expect(Prospect.new(complete_attributes)).to be_valid
    end
  end

  describe 'an incomplete prospect' do
    attribute_list = %i{
      first_name last_name email mobile how_heard marketing
    }

    attribute_list.each do |attribute|
      it "is not valid when #{attribute} is null" do
        prospect = Prospect.new(attribute => nil)
        expect(prospect).to_not be_valid
      end
    end
  end
end
