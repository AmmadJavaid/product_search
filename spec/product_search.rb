require 'rails_helper'

describe Product, search: true do
  it "country filters" do
    Product.create!(title: "Pratic Shawl", country: "United States")
    Product.create!(title: "Pratic Shawl 2", country: "United States")
    Product.create!(title: "Pratic Shawl 2", country: "Germany")
    Product.search_index.refresh

    assert_equal 2, Product.search_for_index({country: 'United States'}).count
  end

  it "keyword search" do
    file = File.open(Rails.root.join('public', 'SpocketProducts.json'))
    data = JSON.load file
    data.each do |record|
      record["tags"] = record["tags"].to_s.split(',')
      Product.create!(record)
    end

    Product.search_index.refresh

    assert_equal 5, Product.search_for_index({keyword: 'cotton'}).count
  end
end
