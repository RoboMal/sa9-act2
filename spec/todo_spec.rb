
require 'todo'

RSpec.describe TodoList do
  errands = TodoList.new()
    describe "#add" do
      it "adds a todo to the list" do
        errands.add('Buy milk')
        errands.add('Walk dog')
        errands.add('Finish homework')
        expect(errands.todos). to eq ['Buy milk', 'Walk dog', 'Finish homework']
      end
    end

    describe "#remove" do
      it "removes a todo from the list" do
        errands.remove('Finish homework')
        expect(errands.todos). to eq ['Buy milk', 'Walk dog']
      end
    end

    describe "#todos" do
      it "returns all todos" do
        expect(errands.todos). to eq errands.todos
      end
    end
  end
