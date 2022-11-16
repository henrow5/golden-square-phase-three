require "task_formatter"

describe TaskFormatter do
  describe "#format" do
    it "returns an incompleted task formatted as a string" do
      task = double(:task, title: "go shopping", complete?: false)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] go shopping"
    end

    it "returns a completed task formatted as a string" do
      task = double(:task, title: "go shopping", complete?: true)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] go shopping"
    end
  end
end
