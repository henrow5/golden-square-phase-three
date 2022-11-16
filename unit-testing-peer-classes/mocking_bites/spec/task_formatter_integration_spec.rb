require "task"
require "task_formatter"

describe "TaskFormatter integration" do
  it "returns an incompleted task formatted as a string" do
    task = Task.new("go shopping")
    task_formatter = TaskFormatter.new(task)
    expect(task_formatter.format).to eq "- [ ] go shopping"
  end

  it "returns a completed task formatted as a string" do
    task = Task.new("go shopping")
    task_formatter = TaskFormatter.new(task)
    task.mark_complete
    expect(task_formatter.format).to eq "- [x] go shopping"
  end
end
