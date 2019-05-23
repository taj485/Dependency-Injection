require 'excercise1'

describe Note do
  let(:note) { Note.new("james","bond") }
  it 'can initialize it self' do
  expect(Note.new("hello","james")).to be_an_instance_of(Note)
  end

  it 'can display the note formated' do
  format_double = double :formatter, format:("Title: #{note.title}\n#{note.body}")
  note = Note.new("james","bond",format_double)
  expect(note.display).to eql("Title: james\nbond")
  end
end
