require_relative "../lib/person"

describe Person do
  describe "#full_name" do
    it "returns the first and last names concatenated" do
      # Write your spec here.
      person = Person.new first_name: 'kingsley', last_name: 'ijomah'
      expect(person.full_name).to eq('kingsley ijomah')
    end
  end
end
