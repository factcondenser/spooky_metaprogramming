class SuburbanTeen < ApplicationRecord
  attr_accessor :cursed

  def say_something
    Faker::StrangerThings.quote
  end

  def watch_cursed_tape
    ActiveSupport::Duration.class_eval do
      def from_now(time = ::Time.current)
        if self >= 7.days
          vars = ::TOPLEVEL_BINDING.eval('local_variables')
          teens = vars.select { |var| ::TOPLEVEL_BINDING.eval("#{var}&.class&.name == 'SuburbanTeen'") }
          teens.each do |teen|
            ::TOPLEVEL_BINDING.eval(
              <<-HEREDOC
                if #{teen}.cursed
                  #{teen}.destroy
                  #{teen} = nil
                end
              HEREDOC
            )
          end
        end
        sum(1, time)
      end
    end
    self.cursed = true
  end
end
