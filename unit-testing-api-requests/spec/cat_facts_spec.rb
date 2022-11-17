require "cat_facts"

describe CatFacts do
  it "returns a cat fact in a formatted string" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"A domestic cat can run at speeds of 30 mph.","length":43}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: A domestic cat can run at speeds of 30 mph."
  end
end
