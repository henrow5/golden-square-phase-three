require "secret_diary"

describe SecretDiary do
  describe "#read" do
    it "raises the error 'Go away!' if the diary is locked" do
      diary = double(:diary, read: "nice day")
      secret = SecretDiary.new(diary)
      expect { secret.read }.to raise_error "Go away!"
    end

    it "returns the diary's contents if the diary is unlocked" do
      diary = double(:diary, read: "nice day")
      secret = SecretDiary.new(diary)
      secret.unlock
      expect(secret.read).to eq "nice day"
    end
  end

  describe "#lock" do
    it "locks the diary" do
      diary = double(:diary, read: "nice day")
      secret = SecretDiary.new(diary)
      secret.unlock
      secret.lock
      expect { secret.read }.to raise_error "Go away!"
    end
  end
end
