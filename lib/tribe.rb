class Tribe
    attr_accessor :name, :members

    def initialize(options={})
        @name = options[:name] if :name != nil
        @members = options[:members] if :members != nil
        puts "The members of #{name} are: "
        @members.each do |member|
            puts "#{member.name}"
        end
    end


    def tribal_council(args={})
        immunes = @members.reject{|value| value == args[:immune]}
        untouchable = immunes.sample
        @members.delete(untouchable)
        untouchable
    end

    def to_s
        @name
    end

end
