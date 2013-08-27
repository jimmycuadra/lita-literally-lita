require "lita"

module Lita
  module Handlers
    class LiterallyLita < Handler
      route(/cocktail/, :cocktail)

      def cocktail(response)
        response.reply("Did someone mention cocktails? XD")
      end
    end

    Lita.register_handler(LiterallyLita)
  end
end
