require "diary"

describe Diary do
  it "constructs" do
    diary = Diary.new("nice day")
    expect(diary.read).to eq "nice day"
  end
end
