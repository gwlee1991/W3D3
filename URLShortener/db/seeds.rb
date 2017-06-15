# User.destroy_all
# Visit.destroy_all
# ShortenedUrl.destroy_all
#
# h = User.new(email: 'h@gmail.com')
# a = User.new(email: 'a@gmail.com')
# h.save
# a.save
#
# url1 = ShortenedUrl.create!(h, 'www.google.com')
# url2 = ShortenedUrl.create!(a, 'www.yahoo.com')
# url1.save
# url2.save
#
# v1 = Visit.record_visit!(h, url1)
# v2 = Visit.record_visit!(h, url2)
# v3 = Visit.record_visit!(a, url1)
# v4 = Visit.record_visit!(h, url1)
# v1.save
# v2.save
# v3.save
# v4.save
