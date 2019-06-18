puts "Cleaning database..."
User.destroy_all
Blog.destroy_all
Consultation.destroy_all
Service.destroy_all
puts "Database empty!"

puts "Creating services..."

types = [
  {service_type: "online", image: "online.jpg"},
  {service_type: "in person", image: "in_person.jpeg"},
  {service_type: "group", image: "group.jpg"}
]

Service.create!(types)

puts "Services 'online', 'in person' and 'group' created!"
puts "Creating Users..."

users = [
  {
    first_name: "Ash",
    last_name: "Wills",
    email: "Ash@gmail.com",
    phone: "07988 276 273",
    admin: true
  },
  {
    first_name: "Ant",
    last_name: "Wild",
    email: "ant@gmail.com",
    phone: "07921 927 384",
  }
]

User.create!(users)

puts "Users created!"

puts "Creating blogs..."

blogs = [
  {
    user_id: 1,
    title: "Eat food, Not Too Much, Mostly Meat",
    content: "I passed a big milestone this week; my two month anniversary as a ‘hypercarnivore’. Yep you read that right. I’d been toying with the idea of going ‘full carnivore’ for a while, and as I returned from a meat feast of a holiday in the Philippines, the time felt right.  I’m not the first one to attempt such a feat, the internet is now awash with people turning to a carnivorous style diet in an attempt to fix underlying health issues, or simply to shred body fat.  From what I can tell though, from reading articles and anecdotes on the internet, a lot of people do a week or two and then quit because it’s too hard.  Two months in, I have to say, I’ve found it a relative doddle. What is a hypercarnivore?  I googled around and it appears the accepted definition is a creature (or plant – looking at you Venus fly trap) which relies on animal flesh for 70% or more of its caloric intake."
  },
  {
    user_id: 1,
    title: "Shamans and Sobbing",
    content: "3am.  After a merciful couple of weeks of half decent sleep the insomnia came back with a vengeance last night.  Having fallen asleep shortly before midnight I woke up a few hours later and laid awake for two hours hoping sleep would come back to me.  It was not to be, so I’ve fired up the laptop to write about what I experienced yesterday instead. Something popped up on my Facebook feed a month or so ago, a shamanic breathwork workshop.  God knows what led me to splashing out $80 on this, but I figured what the hell, nothing ventured, nothing gained.  It was held at the same venue where I’d had the transformational ecstatic dance experience roughly this time last year (link here).  The very experience that led to the creation of this blog and all that has come since.  I figured that if it provided even a quarter of the crazy high I received from that limb-flailing, beautiful nonsense then it was money well spent.  It did not disappoint. As usual with these things, I entered the room feeling a bit nervous, and unsurprisingly the group gathered was overwhelmingly female.  I was one of four men, the other twenty or so hopeful breathers were women.  The lithe and noticeably chipper young woman who was running the workshop embraced me in a hug as I entered the room.  Everything about her was warm.  She glowed radiant with positive energy.  As we gathered on yoga mats on the floor she took her place at the front, straddling a couple of cushions with the ease of someone who does a lot of yoga.  She looked like she did a lot of yoga.  I’m not sure how to explain this, but there was something about this woman that oozed sexuality.  I could feel it, in the way she moved, the way she talked, and the way she held eye contact with what felt like complete comfort.  She was fidgety, ditsy and lighthearted, but struck me as someone who was just completely at ease in her own skin. She was immensely likable. “Has anyone NOT breathed before?” thought this was a joke question, but half the room raised their hands.  She nodded knowingly and took this as her cue to walk us through what we could expect.  As we rapidly inhaled and exhaled we would be over-oxygenating our blood, our hands and feet would likely tingle, we may experience cramping, light-headedness, coughing, overwhelming emotion, groaning, moaning, orgasms, crying, wailing, nausea, vomiting and well, that was enough, surely?  I thought to myself “yeah, all right, love, I don’t think so”.There is a clue in the title of this piece.  I’m finding that the older I get, the more I realise I haven’t got a fucking clue.  I understand now that when I was young(er) and thought I had all the answers, really I was just a fool.  There is a strange satisfaction to be had from knowing you’re an idiot and submitting to it.  Or at least that’s what I’ve found. Before we got stuck in to the exercise the teacher asked us to answer a few questions on a piece of paper, the usual stuff.  What was our intention for the evening?  What would we like to let go of?  What would we like call more of into our lives?  I’ve done enough of this stuff, and yoga to know that fear is the root of all evil, and love is the answer to most problems, so I went with that.  I’ve been feeling a tiny bit anxious about life recently in the face of the recent mould revelation (link here), so I guess I was hoping to release some of that anxiety and know that everything was going to be ok."
  },
  {
    user_id: 1,
    title: "Losing the battles, Winning the War",
    content: "It’s a funny thing, if you had told me a year ago that I would be writing and publishing my memoirs for all and sundry to read on the internet I would have likely scoffed.  Don’t get me wrong, I had thought about writing a blog long before I actually got round to doing it.  It was just one of those things that I thought about sometimes, a bit like climbing Mount Kilimanjaro, yoga teacher training in Bali, snorkelling in Palawan, a threesome with two blonde Scandinavians, learning to play the guitar, or starting a family.  Just another item on the bucket list of life.  Something to dream of, not necessarily achieve.  Yet here I am, ten months on since penning that first piece, just back from snorkelling in Palawan, still writing blog posts. Tick. And. Tick. I started out with the intention to use this post to write more about my experiences in the Philippines, but as I sat down and began to type, I found myself drawn towards an entirely different topic.  Rather than deny my intuition, I’ve allowed it to dictate my pen. So what have you got instead?  Well… Me.  I know.  Sorry.  To be fair, the blog is called ‘Redesigning My Best Self’, it was always going to be somewhat self indulgent twaddle.  A friend told me it’s not a blog, it’s an open diary.  Fair comment.  Before I get going on my chosen subject, I should warn you, this is not Fun Time Frankie content.  I said in my very first post that I would be honest to fuck, so here we are, yet again, laying myself bare.  It does, however, have an upbeat ending that I think is worth the investment of your time. My first proper post last June (link here) came about after a crisis of health; it sounds dramatic, I know, but something has been going on with my body for several years, that no matter what I try, I have not been able to find an answer to.  It has undeniably been an almost constant source of frustration, angst, and illness; physical and mental.  I have seen countless doctors, including functional practitioners, at my own considerable private expense.  Some provided theories and recommendations, others just shrugged and said “you’re fine, it’s all in your head”.  I have undertaken all manner of tests.  I have consumed just about every supplement under the sun.  I have eaten the ‘healthiest’ organic paleo diet of anyone I know.  I work out, I walk, I get in the sun, I socialise, I try new things, I try to do good for others, and I look on the bright side, most of the time.  I do everything one is supposed to do to live a healthy, happy life.  What has been the result of these endeavours?  I am a bit better than I was two years ago when I was barely functioning at all.  I am, however, not well. Anyone who reads this blog regularly will probably have gathered that my health has been an ongoing problem.  Sometimes I disguise my torment with stories of experiences, escapades and observational theories about life; at other times it has been all too obvious from my writing that I am struggling, with ‘something’.  Nothing, and no one, has been able to give me an answer, or a solution to that ‘something’.  Not even my fave personal development guru, Tony Robbins. Until now. It is the “something” in that sentence above that has been the most problematic.  Symptoms can be tolerated, managed to some extent even, but the not knowing why I have those symptoms has been by far the most difficult element of the experience.  The complete inability to label what I am experiencing has lead to feelings of weakness, inadequacy, confusion, frustration, desperation and loneliness. It’s not loneliness derived from a lack of people around me, I have friends, but without a label for what I have been experiencing, it has been nigh on impossible to explain, or relate.  Unlike an alcoholic or a cancer patient, there is no forum or support group.  I have not been able to identify a fellow sufferer who gets what I’ve been going through, or can tell me that it will get better.  Occasionally I try to explain to people how I feel; chronically tired and unwell; that I have weird symptoms that come and go; or that my brain simply doesn’t work properly a lot of the time.  Inevitably I walk away from such exchanges feeling deflated, boring, lost, and honestly? Like a pathetic hypochondriac.  I hate it.  I’ve lost interest in my career.  I’ve lost interest in relationships and sex.  I have lost interest in food, and drink.  I rarely play sport after a series of little injuries culminated in a broken ankle late last year.  I used to be quite the socialite, now I’m borderline reclusive.  I used to religiously read the news, today’s current affairs hold little interest. To be completely honest with you, dear reader, there is little that I get excited about anymore.  Not even Netflix. Everything I do has been shadowed by this mystery illness.  Holidays, parties, days outs, weekend trips, gigs, work events, weddings, everything.  That isn’t to say that I haven’t tried damn hard to maintain and develop my life, but I have failed.  The scope of my life has gradually shrunk.  I have striven to keep a positive manner about me as the losses mount up;  Friendships, hobbies, interests, and general enjoyment of life have all dwindled.  Potential relationships have been tragically stunted before they had a chance to flourish.  But at no point have I given up.  I fight everyday to laugh and joke, to be good company, to see the good stuff, to hope for better days, but the sad reality is that I have come to the point where I have just one solitary focus: Getting better. Everything else feels like background noise.  Everything.  I have tunnel vision.  Maybe that is selfish, but devoid of any help, I’ve had to be that way.  When I’m not undertaking the basics of being alive and trying to keep my job, my mind has been interested in only one thing; Fixing myself (ok, and writing this blog).  I’m not depressed, there is no black cloud, I enjoy frequent moments of joy throughout most days, and my spirits remain remarkably high, but I am, underneath the surface, battle weary.  Fighting the good fight for the past three years has undoubtedly taken its toll. So what are these symptoms that have had such a detrimental impact on my life?  Invariably I sleep badly, waking up through the night.  Most days I arise feeling sluggish and tired, my head aches, my eyes are puffy, with dark circles, my sinuses congested.  My energy in the mornings is low, I cannot remember the last time I sprung from my bed ready to tackle the day.  My brain fails to perform, especially in the mornings.  I forget what I’m saying half way through sentences, I miss words, I forget names.  I don’t know what the early stages of Alzheimer’s feels like, but I imagine it’s something like this.  In meetings at work I have to plan my sentences in my mind ahead of saying them, and hope they come out as I intend.  Often I miss my cue to speak.  My responsiveness, spontaneity, wit and creativity are all curtailed.  My digestion is crap, my skin gets weird breakouts, I have persistent muscle pains, especially in my back and neck, my joints crack, my toes tingle, and my libido is whack.  The neurological symptoms tend improve as the day goes on, but they nearly always return with a vengeance each morning.  It’s like I go to bed and someone slips me poison whilst I sleep.  It’s a problem, it’s not sustainable, and alarmingly, it has been getting progressively worse."
  }
]

Blog.create!(blogs)
puts "Blogs created!"

# puts "Creating consultations..."

# consultations = [
#   {
#     date: '2019-06-29',
#     time: '2019-06-29-18-20-00',
#     users_id: User.find(1)
#     services_id: Service.find(1)
#   },
#   {
#     date: '2019-08-05',
#     time: '2019-08-05-10-45-00',
#     users_id: User.find(2)
#     services_id: Service.find(3)
#   }
# ]

# Consultation.create!(consultations)

# puts "Consultations created!"
