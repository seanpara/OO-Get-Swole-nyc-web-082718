class Gym
 @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end


  def all_memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def all_lifters
    self.all_memberships.map { |membership| membership.lifter  }
  end

  def all_lifter_names
    self.all_lifters.map { |lifter| lifter.name }
  end

  def gym_lift_total
    #this should be an average but whatever
    self.all_memberships.map { |membership| membership.lifter }.map { |lifter| lifter.lift_total }.reduce(:+)
  end
end
