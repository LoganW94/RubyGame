require 'gosu'


class State

	attr_accessor :game_state



	def initialize

		@game_state = 0

	end

	def change_state game_state, delta

		@game_state = game_state
		@delta = delta.to_i

		@game_state += delta

		return @game_state

	end
end