require "spec_helper"

describe Person do
  it "requires a name to be valid" do
    # Write your spec here.
    person = Person.new
    expect(person.valid?).to be(false)

    person.first_name = 'kingsley'
    expect(person.valid?).to be(true)
  end
end
