require 'rails_helper'


RSpec.describe Hobby, :type => :model do
  let(:user) {
    User.new(name: "Anything",
                        age: 10,
                        address: "123 Hobby Street",
                        email: "hi@hi.com",
                        password: "password",
                        id: 1)
    }

  subject {
    Hobby.new(name: "Paiting",
              category: "Art",
              user: user)
  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a name" do
    subject.name = nil

    expect(subject).to_not be_valid
  end
  it "is not valid without a category" do
    subject.category = nil

    expect(subject).to_not be_valid
  end

end
