require "lita"

module Lita
  module Handlers
    class LiterallyLita < Handler
      route(/cocktail/i, :cocktail)
      route(/XD/, :xd)

      def cocktail(response)
        response.reply("Did someone mention cocktails? XD")
      end

      def xd(response)
        response.reply("XD")
      end
    end

    Lita.register_handler(LiterallyLita)
  end
end
