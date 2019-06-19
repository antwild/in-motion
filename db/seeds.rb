puts "Cleaning database..."
Blog.destroy_all
Preconsultation.destroy_all
User.destroy_all
Service.destroy_all
puts "Database empty!"

puts "Creating services..."

types = [
  {service_type: "online", image: "https://res.cloudinary.com/dvh0qbhxn/image/upload/v1560880223/xd4sbdfstfldv692yj7d.jpg"},
  {service_type: "in person", image: "https://res.cloudinary.com/dvh0qbhxn/image/upload/v1560880210/ajnea8cnrazxryz1grdd.jpg"},
  {service_type: "group", image: "https://res.cloudinary.com/dvh0qbhxn/image/upload/v1560880197/xqf0f458ymynl3cdv15z.jpg"}
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
    title: "West Ham United sign Spain playmaker Pablo Fornals",
    content: "West Ham United is delighted to announce the signing of highly sought-after Spain international attacking midfielder Pablo Fornals. A creative, technically-gifted playmaker with an eye for goal, Fornals joins the Hammers from Villarreal, for whom he has excelled in both La Liga and the UEFA Europa League. Fornals, who becomes the second most-expensive signing in the Club’s history behind Felipe Anderson, has signed a five-year contract, with an option of a further year, after undergoing a successful medical at Spire London East Hospital. Just 23, the Castellon-born player has already made more than 150 senior appearances and will join up with Manuel Pellegrini’s squad after representing his country at this summer’s UEFA European U21 Championship finals.",
    cover_image: "https://res.cloudinary.com/dvh0qbhxn/image/upload/v1560879829/r7oqusxtpbfmgwvtcpfg.jpg"
  },
  {
    user_id: 1,
    title: "Eat food, Not Too Much, Mostly Meat",
    content: "I passed a big milestone this week; my two month anniversary as a ‘hypercarnivore’. Yep you read that right. I’d been toying with the idea of going ‘full carnivore’ for a while, and as I returned from a meat feast of a holiday in the Philippines, the time felt right.  I’m not the first one to attempt such a feat, the internet is now awash with people turning to a carnivorous style diet in an attempt to fix underlying health issues, or simply to shred body fat.  From what I can tell though, from reading articles and anecdotes on the internet, a lot of people do a week or two and then quit because it’s too hard.  Two months in, I have to say, I’ve found it a relative doddle. What is a hypercarnivore?  I googled around and it appears the accepted definition is a creature (or plant – looking at you Venus fly trap) which relies on animal flesh for 70% or more of its caloric intake."
  },
  {
    user_id: 1,
    title: "Shamans and Sobbing",
    content: "3am.  After a merciful couple of weeks of half decent sleep the insomnia came back with a vengeance last night.  Having fallen asleep shortly before midnight I woke up a few hours later and laid awake for two hours hoping sleep would come back to me.  It was not to be, so I’ve fired up the laptop to write about what I experienced yesterday instead. Something popped up on my Facebook feed a month or so ago, a shamanic breathwork workshop.  God knows what led me to splashing out $80 on this, but I figured what the hell, nothing ventured, nothing gained.  It was held at the same venue where I’d had the transformational ecstatic dance experience roughly this time last year (link here).  The very experience that led to the creation of this blog and all that has come since.  I figured that if it provided even a quarter of the crazy high I received from that limb-flailing, beautiful nonsense then it was money well spent.  It did not disappoint. As usual with these things, I entered the room feeling a bit nervous, and unsurprisingly the group gathered was overwhelmingly female.  I was one of four men, the other twenty or so hopeful breathers were women.  The lithe and noticeably chipper young woman who was running the workshop embraced me in a hug as I entered the room.  Everything about her was warm.  She glowed radiant with positive energy.  As we gathered on yoga mats on the floor she took her place at the front, straddling a couple of cushions with the ease of someone who does a lot of yoga.  She looked like she did a lot of yoga.  I’m not sure how to explain this, but there was something about this woman that oozed sexuality.  I could feel it, in the way she moved, the way she talked, and the way she held eye contact with what felt like complete comfort.  She was fidgety, ditsy and lighthearted, but struck me as someone who was just completely at ease in her own skin. She was immensely likable. “Has anyone NOT breathed before?” thought this was a joke question, but half the room raised their hands.  She nodded knowingly and took this as her cue to walk us through what we could expect.  As we rapidly inhaled and exhaled we would be over-oxygenating our blood, our hands and feet would likely tingle, we may experience cramping, light-headedness, coughing, overwhelming emotion, groaning, moaning, orgasms, crying, wailing, nausea, vomiting and well, that was enough, surely?  I thought to myself “yeah, all right, love, I don’t think so”.There is a clue in the title of this piece.  I’m finding that the older I get, the more I realise I haven’t got a fucking clue.  I understand now that when I was young(er) and thought I had all the answers, really I was just a fool.  There is a strange satisfaction to be had from knowing you’re an idiot and submitting to it.  Or at least that’s what I’ve found. Before we got stuck in to the exercise the teacher asked us to answer a few questions on a piece of paper, the usual stuff.  What was our intention for the evening?  What would we like to let go of?  What would we like call more of into our lives?  I’ve done enough of this stuff, and yoga to know that fear is the root of all evil, and love is the answer to most problems, so I went with that.  I’ve been feeling a tiny bit anxious about life recently in the face of the recent mould revelation (link here), so I guess I was hoping to release some of that anxiety and know that everything was going to be ok."
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
