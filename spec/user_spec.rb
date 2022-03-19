require 'rails_helper'


RSpec.describe User, :type => :model do
  subject {
    User.new(name: "Anything",
                        age: 10,
                        hobby: "Painting",
                        address: "123 Hobby Street",
                        email: "hi@hi.com",
                        password: "password")
    }
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a name" do
    subject.name = nil

    expect(subject).to_not be_valid
  end
  it "is not valid without an age" do
    subject.age = nil

    expect(subject).to_not be_valid
  end
  it "is not valid without a hobby" do
    subject.hobby = nil

    expect(subject).to_not be_valid
  end
  it "is not valid without an address" do
    subject.address = nil

    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.email = nil

    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil

    expect(subject).to_not be_valid
  end
end
