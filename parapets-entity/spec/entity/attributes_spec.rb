require 'spec_helper'
require 'classes/address'
require 'classes/person'
require 'classes/employee'

describe Parapets::Entity::Attributes do
  it "Should support simple attributes" do
    address = Address.new({
      street: "444 Castro Street, Suite 1200",
      zipcode: 94041,
      city: "Mountain View"
    })

    expect(address).to be_kind_of Address
    expect(address.city).to eq "Mountain View"
  end

  it "should have an id attribute" do
    address = Address.new
    expect(address).to respond_to :id
  end

  it "should support entities relations" do
    person = Person.new({
      first_name: "John",
      address: {
        city: "Santiago"
      }
    })

    expect(person.first_name).to eq "John"
    expect(person.address).to be_kind_of Address
    expect(person.address.city).to eq "Santiago"
  end

  it "should support circular relations" do
    expect{
      require "classes/foobar"
    }.not_to raise_error

    foo = Foo.new
    bar = Bar.new
    foo.bar = bar
    bar.foo = foo

    expect(foo.bar).to be_kind_of Bar
    expect(foo.bar).to equal bar
    expect(bar.foo).to be_kind_of Foo
    expect(bar.foo).to equal foo
  end

  it "should support subclassing" do
    employee = Employee.new({
      first_name: "Seba",
      position: "CTO"
    })

    expect(employee).to be_kind_of Person
    expect(employee.first_name).to eq "Seba"
    expect(employee.position).to eq "CTO"
  end
end
