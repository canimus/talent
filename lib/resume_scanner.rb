require 'treat'
require 'engtagger'

class ResumeScanner
  include Treat::Core::DSL

  def initialize(file_location)
    @document = document file_location
    @text = @document.value.downcase
    @tgr = EngTagger.new
    @tagged = @tgr.add_tags(@text)
  end

  verbs = [
          :get_words,
          :get_sentences,
          :get_infinitive_verbs,
          :get_past_tense_verbs,
          :get_gerund_verbs,
          :get_passive_verbs,
          :get_base_present_verbs,
          :get_present_verbs
          ]

    verbs.each do |m|
      define_method(m) {
        @tgr.send(m, @tagged)
      }
    end
end
