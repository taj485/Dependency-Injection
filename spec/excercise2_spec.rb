require 'excercise2'

describe Diary do
  let(:entry_double) {double (:entry)}
  let(:entry_class_double) { double(:Entry, new: entry_double) }


  it 'can add to entries' do
    diary = Diary.new(entry_class_double)
    diary.add("hello","james")
    expect(diary.entries).to include(entry_double)
  end

end
