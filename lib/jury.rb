class Jury
    attr_accessor :members
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
            puts "#{member} voted for #{finalist}".green
        end
        @votes
    end

    def report_votes(votes)
        votes.each do |key, value|
            puts "#{key}: #{value}".blue
        end
    end

    def announce_winner(votes)
      winner = votes.max_by{|finalist,value| value}[0]
      puts "#{winner} is the WINNER!".yellow
    end

end
