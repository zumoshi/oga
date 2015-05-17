module Oga
  ##
  # @api private
  #
  class Whitelist < Blacklist
    ##
    # @return [TrueClass|FalseClass]
    #
    def allow?(name)
      return names.include?(name)
    end

    ##
    # @return [Oga::Blacklist]
    #
    def to_blacklist
      return Blacklist.new(names)
    end
  end # Whitelist
end # Oga
