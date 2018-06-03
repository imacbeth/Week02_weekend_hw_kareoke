class Guest

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def sufficient_funds?(room)
    return wallet >= room.entry_fee
  end

  def guest_pays_entry(room)
    if sufficient_funds?(room)
      @wallet -= room.entry_fee
    end
  end

end
