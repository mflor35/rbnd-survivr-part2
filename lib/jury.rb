class Jury
    attr_accessor :members
    :votes
    def initialize
        @members = []
        @votes = {}
    end

    def add_member(new_member)
        @members.push(new_member)
    end

    def cast_votes(finalists)
        finalists.each do |finalist|
            @votes[finalist] = 0
        end

        members.each do |member|
            finalist = finalists[rand(2)]
            @votes[finalist] += 1
            puts "#{member} #{finalist}"
        end
        @votes
    end

    def report_votes(votes)
        votes.each do |key, value|
            puts "#{key} #{value}"
        end
    end

    def announce_winner(votes)
        votes.max_by{|finalist,value| value}[0]
    end

end
