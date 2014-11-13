require 'spec_helper'

describe "NYC Pigeon Organizer" do
  let(:pigeon_data) {
    {
      :color => {
        :purple => ["Theo", "Peter Jr.", "Lucky"],
        :grey => ["Theo", "Peter Jr.", "Ms .K"],
        :white => ["Queenie", "Andrew", "Ms .K", "Alex"],
        :brown => ["Queenie", "Alex"]
      },
      :gender => {
        :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
        :female => ["Queenie", "Ms .K"]
      },
      :lives => {
        "Subway" => ["Theo", "Queenie"],
        "Central Park" => ["Alex", "Ms .K", "Lucky"],
        "Library" => ["Peter Jr."],
        "City Hall" => ["Andrew"]
      }
    }
  }

  let(:organized_pigeon_data) {
    {
      "Theo" => {
        :color => ["purple", "grey"],
        :gender => ["male"],
        :lives => ["Subway"]
      },
      "Peter Jr." => {
        :color => ["purple", "grey"],
        :gender => ["male"],
        :lives => ["Library"]
      },
      "Lucky" => {
        :color => ["purple"],
        :gender => ["male"],
        :lives => ["Central Park"]
      },
      "Ms .K" => {
        :color => ["grey", "white"],
        :gender => ["female"],
        :lives => ["Central Park"]
      },
      "Queenie" => {
        :color => ["white", "brown"],
        :gender => ["female"],
        :lives => ["Subway"]
      },
      "Andrew" => {
        :color => ["white"],
        :gender => ["male"],
        :lives => ["City Hall"]
      },
      "Alex" => {
        :color => ["white", "brown"],
        :gender => ["male"],
        :lives => ["Central Park"]
      }
    }
  }

  describe "#nyc_pigeon_organizer" do
    it "should collect the data and organize it by pigeon" do
      expect(nyc_pigeon_organizer(pigeon_data)). to eq(organized_pigeon_data)
    end
  end

end