class Tribe
    attr_accessor :name, :members

    def initialize(options={})
        @name = options[:name] if :name
        @members = options[:members] if :members
        @members.each do |member|
            puts "#{member}"
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
