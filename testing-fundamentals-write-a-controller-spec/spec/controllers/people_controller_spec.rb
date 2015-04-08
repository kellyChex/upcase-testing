require "rails_helper"

describe PeopleController do
  describe "#create" do
    context "when person is valid" do
      it "redirects to #show" do
        allow_any_instance_of(Person).to receive(:valid?).and_return(true)
        post 'create', person: {first_name: 'kingsley'}
        expect(response).to redirect_to(person_path(assigns[:person]))
      end
    end

    context "when person is invalid" do
      it "redirects to #new" do
        allow_any_instance_of(Person).to receive(:valid?).and_return(false)
        post 'create', person: {first_name: nil}
        expect(response).to render_template :new
      end
    end
  end
end
