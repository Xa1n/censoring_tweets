test_tweets = [
  "This president sucks!",
  "I hate this Government!",
  "I can't believe we're living with such a bad president. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

re = Regexp.union(banned_phrases)
# => /sucks|bad|hate|foolish|danger\ to\ society/
test_tweets.map{|words| words.gsub(re, "CENSORED")}
# => ["This president CENSORED!", "I CENSORED this Blank House!", 
# => "I can't believe we're living with such a CENSORED leadership. We were so CENSORED", 
# => "President Presidentname is a CENSORED. 
# => I CENSORED that he's so CENSORED – it CENSORED."]
