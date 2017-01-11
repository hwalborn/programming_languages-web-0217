require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  formatted_hash = {}
  languages.each {|style, lang|
    lang.each {|type, value|
      if formatted_hash.include?(type)
        formatted_hash[type][:style] << style
      else
        formatted_hash[type] = {type: value[:type], style: [] << style}
      end
    }
  }
  formatted_hash
end

reformat_languages(languages)
