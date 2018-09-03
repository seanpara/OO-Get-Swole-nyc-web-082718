
class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def membership
    Membership.all.select { |membership| membership.lifter == self }
  end

  def all_gyms
    self.membership.map { |membership| membership.gym}
  end

  def self.average_total
    avg_ary = self.all.map {|lifter| lifter.lift_total}
    avg_ary.reduce(:+) / avg_ary.size.to_f
  end

  def membership_cost
    self.membership.map {|membership| membership.cost}.reduce(:+)
  end

  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end
end
