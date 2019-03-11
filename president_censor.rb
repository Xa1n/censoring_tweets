test_tweets = [
  "This president sucks!",
  "I hate this Government!",
  "I can't believe we're living with such a bad president. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

re = Regexp.union(banned_phrases)
test_tweets.map{|s| s.gsub(re, "CENSORED")}
