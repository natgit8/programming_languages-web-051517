def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |type, hash|
    hash.each do |name, category|
      new_hash[name] ||= category
      new_hash[name][:style] ||= []
      new_hash[name][:style] << type
    end
  end
  new_hash
end
