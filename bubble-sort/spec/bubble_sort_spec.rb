require_relative "../bubble_sort.rb"

RSpec.describe "#bubble_sort" do
  it "returns a sorted array of 5 elements" do
    unsorted_array = [5, 16, 1, 3, 9]
    sorted_array = bubble_sort(unsorted_array)

    expect(sorted_array).to eq([1, 3, 5, 9, 16])
  end

  it "returns a sorted array of 6 elements" do
    unsorted_array = [4, 3, 78, 2, 0, 2]
    sorted_array = bubble_sort(unsorted_array)

    expect(sorted_array).to eq([0, 2, 2, 3, 4, 78])
  end

  it "returns a sorted array of 7 elements" do
    unsorted_array = [4, 25, 1, 15, 23, 4, 22]
    sorted_array = bubble_sort(unsorted_array)

    expect(sorted_array).to eq([1, 4, 4, 15, 22, 23, 25])
  end

  it "returns a sorted array of 8 elements" do
    unsorted_array = [5, 2, 1, 0, 5, 2, 1, 0]
    sorted_array = bubble_sort(unsorted_array)

    expect(sorted_array).to eq([0, 0, 1, 1, 2, 2, 5, 5])
  end
end