class Game
    attr_accessor :tribes
    def initialize(tribe_a, tribe_b)
        @tribes = [tribe_a,tribe_b]
    end

    def add_tribe(tribe)
        @tribes.push(tribe)
    end

    def immunity_challenge
        @tribes.sample
    end

    def clear_tribes
        @tribes = []
    end

    def merge(new_tribe)
        merged_tribe = []
        @tribes.each {|tribe| merged_tribe += tribe.members}
        merged_tribe = Tribe.new({name:new_tribe,members:merged_tribe})
        merged_tribe
    end

    def individual_immunity_challenge
        @tribes[1].members.sample
    end
end
