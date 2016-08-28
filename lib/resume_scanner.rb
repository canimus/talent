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
          # :get_words,
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

  def get_words
    @tgr.get_words(@tagged).delete_if do |k,v|
      k.length == 1 and not(k.eql?("r") and k.eql?("c"))
      #self.get_links.keys.include?(k) or k.length == 1
      # self.get_links.keys.include?(k)
    # end.delete_if do |k,v|
    #    k.length == 1
    end
  end
  # end
  #
  # def get_links
  #   @tgr.get_words(@tagged).select {|k,v| k.match("^://.*") }
  # end


end
