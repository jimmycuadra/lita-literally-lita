require "spec_helper"

describe Lita::Handlers::LiterallyLita, lita_handler: true do
  it { routes("cocktail").to(:cocktail) }

  describe "#cocktail" do
    it "wants to confirm that someone is discussing cocktails" do
      send_message("Anyone want to go for cocktails?")
      expect(replies.last).to include("Did someone mention cocktails?")
    end
  end
end
