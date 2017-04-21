require 'menu'

describe Menu do

  before(:each) do

  end

  it "upload menu from a file" do
    file = '{ "Cafe Latte": 4.75 }'
    subject = Menu.new(file)
    puts JSON.parse(file)
    expect(subject.menu["Cafe Latte"]).to eq 4.75
  end

end
