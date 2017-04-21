require 'menu'

describe Menu do

  it "uploads menu from a file" do
    file = '{ "Cafe Latte": 4.75 }'
    subject = Menu.new(file)
    expect(subject.menu["Cafe Latte"]).to eq 4.75
  end

  it "displays menu list" do
    file = '[{ "prices": [{"Cafe Latte": 4.75}]}]'
    subject = Menu.new(file)
    expect { subject.display_menu }.to output("Cafe Latte: 4.75\n").to_stdout
  end

end
