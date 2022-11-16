require "secret_diary"
require "diary"

describe "integration" do
  it "raises the error 'Go away!' if the diary is locked" do
    diary = Diary.new("nice day")
    secret = SecretDiary.new(diary)
    expect { secret.read }.to raise_error "Go away!"
  end

  it "returns the diary's contents if the diary is unlocked" do
    diary = Diary.new("nice day")
    secret = SecretDiary.new(diary)
    secret.unlock
    expect(secret.read).to eq "nice day"
  end

  it "raises an error after diary is locked" do
    diary = Diary.new("nice day")
    secret = SecretDiary.new(diary)
    secret.unlock
    secret.lock
    expect { secret.read }.to raise_error "Go away!"
  end
end
