
Admin.create!(
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  role: 0
)

ApiKey.create!(description: "Test key 1")

ApiKey.create!(description: "Test key 2")

Conference.create!(
  title: "Conference 1",
  description: "Porro quisquam voluptatem aliquam adipisci voluptatem quiquia.",
  location: "Leganés",
  start_date: "2015-11-08",
  end_date: "2015-11-12",
  coordinator: "Someone",
  active: "false",
  call_for_papers_enabled: "false",
  voting_enabled: "false",
  show_calendar: "true",
  call_for_papers_start_date: "2015-09-20",
  call_for_papers_end_date: "2015-10-01",
  voting_start_date: "2015-10-02",
  voting_end_date: "2015-10-06"
)

Conference.create!(
  title: "Conference 2",
  description: "Quiquia quiquia labore quiquia aliquam.",
  location: "Leganés",
  start_date: "2016-03-08",
  end_date: "2016-03-12",
  coordinator: "Someone",
  active: "false",
  call_for_papers_enabled: "false",
  voting_enabled: "false",
  show_calendar: "true",
  call_for_papers_start_date: "2016-02-20",
  call_for_papers_end_date: "2016-03-01",
  voting_start_date: "2016-03-02",
  voting_end_date: "2016-03-06"
)

Conference.create!(
  title: "Conference 3",
  description: "Tempora labore sit amet aliquam quaerat magnam.",
  location: "Leganés",
  start_date: "2016-11-08",
  end_date: "2016-11-12",
  coordinator: "Someone",
  active: "false",
  call_for_papers_enabled: "false",
  voting_enabled: "false",
  show_calendar: "true",
  call_for_papers_start_date: "2016-09-20",
  call_for_papers_end_date: "2016-10-01",
  voting_start_date: "2016-10-02",
  voting_end_date: "2016-10-06"
)

Conference.create!(
  title: "Conference 4",
  description: "Tempora eius labore labore modi non.",
  location: "Leganés",
  start_date: "2017-03-08",
  end_date: "2017-03-12",
  coordinator: "Someone",
  active: "false",
  call_for_papers_enabled: "false",
  voting_enabled: "false",
  show_calendar: "true",
  call_for_papers_start_date: "2017-02-20",
  call_for_papers_end_date: "2017-03-01",
  voting_start_date: "2017-03-02",
  voting_end_date: "2017-03-06"
)

Conference.create!(
  title: "Conference 5",
  description: "Quiquia etincidunt dolore quiquia.",
  location: "Leganés",
  start_date: "2017-11-08",
  end_date: "2017-11-12",
  coordinator: "Someone",
  active: "true",
  call_for_papers_enabled: "true",
  voting_enabled: "true",
  show_calendar: "false",
  call_for_papers_start_date: "2017-01-01",
  call_for_papers_end_date: "2019-01-01",
  voting_start_date: "2017-01-01",
  voting_end_date: "2019-01-01"
)

Event.create!(
  title: "Event 1-1",
  summary: "Dolorem magnam dolore sit adipisci eius magnam.",
  description: "Sit dolor quisquam dolor dolore porro ipsum. Quaerat velit ut neque amet sit est. Neque eius consectetur amet dolor est. Numquam numquam ut velit quisquam. Sed tempora porro est tempora modi. Modi dolore non ipsum ut tempora. Dolor amet etincidunt modi.",
  subclass: 1,
  level: 4,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Adipisci sed sit sit velit. Consectetur amet dolore est dolorem. Etincidunt tempora porro eius. Quiquia quaerat etincidunt ut etincidunt voluptatem magnam. Quisquam magnam porro numquam voluptatem dolore eius.",
  duration: 2,
  votes: 8,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['free', 'Java', 'technology', 'Linux']
)

Event.create!(
  title: "Event 1-2",
  summary: "Etincidunt adipisci quiquia voluptatem.",
  description: "Magnam ut aliquam eius eius voluptatem dolorem est. Quisquam neque numquam eius quisquam aliquam velit. Sed non est neque aliquam numquam dolorem non. Est dolor aliquam aliquam sed quiquia. Ut amet sed non dolorem. Quisquam eius etincidunt non modi. Ut eius tempora velit neque consectetur. Voluptatem dolore eius voluptatem numquam dolore dolor. Numquam etincidunt tempora est quaerat ipsum. Dolor voluptatem etincidunt modi quiquia porro.",
  subclass: 0,
  level: 2,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 6,
  votes: 18,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-08 15:00",
  end_dtime: "2015-11-08 16:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['AI', 'PHP', 'web', 'cloud']
)

Event.create!(
  title: "Event 1-3",
  summary: "Porro dolore non quisquam neque eius.",
  description: "Amet eius dolor sit eius. Modi consectetur numquam ut eius. Consectetur quisquam sit adipisci numquam. Consectetur porro quisquam velit quaerat est eius. Etincidunt ut amet porro adipisci adipisci. Dolore dolor aliquam amet modi.",
  subclass: 1,
  level: 1,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 4,
  votes: 19,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-08 16:30",
  end_dtime: "2015-11-08 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 1,
  tag_list: ['random', 'PHP', 'GNU', 'web']
)

Event.create!(
  title: "Event 1-4",
  summary: "Numquam quisquam quiquia quisquam consectetur.",
  description: "Voluptatem quisquam quisquam adipisci quaerat voluptatem. Ipsum dolorem numquam ut quaerat est consectetur eius. Velit etincidunt neque modi est dolor quiquia ipsum. Dolorem quisquam quisquam sit quiquia dolore quiquia. Neque eius ipsum non ut non neque numquam. Quaerat tempora ipsum labore. Adipisci non modi ipsum voluptatem eius voluptatem. Sit aliquam ut velit quaerat magnam dolore. Numquam velit tempora consectetur etincidunt dolor magnam non.",
  subclass: 1,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "Voluptatem amet ut amet sed sed est. Ipsum neque etincidunt dolorem amet. Non numquam voluptatem est dolorem quaerat tempora eius. Aliquam etincidunt sit tempora amet. Numquam ut ut consectetur quaerat eius ut. Numquam neque adipisci labore. Est dolore velit labore dolorem. Aliquam amet aliquam ipsum aliquam quiquia eius adipisci.",
  duration: 5,
  votes: 18,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-09 15:00",
  end_dtime: "2015-11-08 17:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 1,
  tag_list: ['shell', 'cloud', 'AI', 'tags']
)

Event.create!(
  title: "Event 1-5",
  summary: "Neque ipsum dolore amet ipsum.",
  description: "Sed eius est dolore voluptatem quaerat. Labore tempora velit quisquam. Quiquia quaerat quisquam aliquam quisquam voluptatem ipsum. Amet modi dolorem velit amet adipisci porro adipisci. Quiquia ut labore voluptatem quaerat ipsum. Magnam ipsum aliquam ut.",
  subclass: 0,
  level: 5,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Amet quiquia consectetur consectetur porro sed. Consectetur dolor quiquia aliquam neque neque est neque. Non voluptatem sit voluptatem sed. Porro dolore est ipsum. Tempora dolorem magnam eius etincidunt. Consectetur labore neque quisquam amet dolor. Non magnam dolorem quaerat etincidunt tempora labore.",
  duration: 6,
  votes: 0,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-09 17:30",
  end_dtime: "2015-11-09 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 1,
  tag_list: ['Python', 'database', 'Java', 'PHP']
)

Event.create!(
  title: "Event 1-6",
  summary: "Aliquam non quisquam ut quisquam etincidunt ut.",
  description: "Amet sed magnam labore. Amet ipsum sit ipsum modi ut. Amet neque neque porro numquam dolorem. Est etincidunt non numquam quisquam neque. Quaerat numquam dolorem non modi.",
  subclass: 0,
  level: 3,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "",
  duration: 4,
  votes: 3,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-10 15:00",
  end_dtime: "2015-11-10 16:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 1,
  tag_list: ['cloud', 'random', 'Python', 'GNU']
)

Event.create!(
  title: "Event 1-7",
  summary: "Etincidunt est ut ut ipsum.",
  description: "Etincidunt non dolore voluptatem voluptatem modi voluptatem. Dolore eius aliquam aliquam modi labore. Sit quaerat non sit ut porro voluptatem. Dolore neque dolorem dolore quaerat etincidunt. Numquam ipsum sed sed. Quisquam tempora porro dolore amet labore neque velit. Est quisquam dolor est dolorem ipsum quisquam quiquia. Non porro porro etincidunt porro. Sed ut aliquam neque.",
  subclass: 0,
  level: 5,
  content_url: "",
  code_url: "",
  language: "en",
  notes: "Quisquam consectetur non quisquam numquam sed non magnam. Labore non non eius quisquam adipisci. Sit adipisci numquam quaerat aliquam magnam adipisci. Adipisci tempora consectetur dolorem aliquam amet. Numquam tempora etincidunt adipisci tempora aliquam quiquia neque. Aliquam adipisci porro sed voluptatem tempora. Magnam est dolore adipisci eius adipisci. Etincidunt magnam quisquam etincidunt etincidunt magnam. Magnam quiquia labore sit dolorem.",
  duration: 1,
  votes: 32,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['open source', 'Java', 'random', 'software']
)

Event.create!(
  title: "Event 1-8",
  summary: "Quisquam ut etincidunt aliquam ut labore ut.",
  description: "Voluptatem magnam sed consectetur. Sed tempora velit tempora numquam voluptatem. Modi non voluptatem tempora eius sed. Sit neque amet voluptatem. Tempora numquam porro eius. Voluptatem numquam dolore consectetur aliquam. Labore quaerat est modi adipisci tempora amet sit. Dolore tempora dolor ipsum dolore dolore adipisci. Velit etincidunt amet ipsum.",
  subclass: 1,
  level: 3,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 1,
  votes: 8,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['GNU', 'Linux', 'database', 'tags']
)

Event.create!(
  title: "Event 1-9",
  summary: "Consectetur adipisci aliquam sed ut quaerat ut dolor.",
  description: "Ut dolore labore quisquam velit quaerat sed. Quaerat voluptatem voluptatem velit velit neque est quaerat. Quaerat sed labore sit modi eius etincidunt. Aliquam sit voluptatem modi adipisci ipsum. Porro tempora labore adipisci voluptatem dolor ipsum. Porro dolor velit quisquam sed est. Velit non etincidunt eius dolore etincidunt labore.",
  subclass: 0,
  level: 1,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Est amet quiquia ipsum dolorem non. Amet dolore quaerat dolor. Magnam numquam labore labore. Quiquia dolore numquam labore dolor neque quisquam. Magnam non non sed amet. Ut aliquam quisquam tempora sit dolor adipisci. Non labore magnam non voluptatem. Voluptatem consectetur aliquam quaerat.",
  duration: 2,
  votes: 34,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['random', 'GNU', 'tags', 'Linux']
)

Event.create!(
  title: "Event 1-10",
  summary: "Dolore numquam adipisci voluptatem consectetur modi.",
  description: "Sit tempora ipsum labore ipsum est tempora. Consectetur eius dolorem non. Voluptatem voluptatem sit sit. Dolorem porro modi consectetur labore. Dolor adipisci adipisci dolor dolor est. Dolorem quiquia neque modi adipisci consectetur ut. Dolor tempora tempora sit porro non etincidunt amet. Quiquia aliquam ut quiquia neque. Dolorem ipsum dolor numquam labore porro labore. Consectetur quaerat sed quaerat quaerat etincidunt sed neque.",
  subclass: 0,
  level: 0,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Labore dolor quisquam dolorem consectetur neque dolor quisquam. Magnam labore ipsum dolore neque. Quaerat velit quisquam dolor numquam numquam. Non magnam consectetur non neque est etincidunt. Amet velit aliquam quiquia.",
  duration: 2,
  votes: 7,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-10 18:00",
  end_dtime: "2015-11-10 20:00",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "true",
  conference_id: 1,
  tag_list: ['technology', 'tools', 'GNU', 'Python']
)

Event.create!(
  title: "Event 1-11",
  summary: "Amet quiquia amet quiquia modi.",
  description: "Porro sit consectetur sed labore. Adipisci etincidunt neque modi labore labore ut. Quaerat adipisci aliquam eius. Magnam ut voluptatem tempora dolore. Quaerat magnam neque consectetur. Dolorem sed voluptatem dolore dolore. Velit velit sit magnam labore etincidunt. Non quaerat eius ut porro. Magnam eius velit aliquam ut dolore tempora neque.",
  subclass: 1,
  level: 4,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Porro eius voluptatem quiquia aliquam eius magnam ut. Magnam voluptatem labore sed consectetur consectetur quiquia. Sed quisquam sit dolore porro amet quisquam. Numquam etincidunt dolore adipisci. Amet voluptatem dolor sit. Sit consectetur modi numquam est labore. Velit quiquia non dolorem magnam neque porro aliquam. Sed dolore ut magnam dolor labore.",
  duration: 1,
  votes: 15,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-11 15:00",
  end_dtime: "2015-11-11 17:00",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "true",
  conference_id: 1,
  tag_list: ['random', 'technology', 'shell', 'cloud']
)

Event.create!(
  title: "Event 1-12",
  summary: "Velit adipisci porro modi.",
  description: "Non ut eius ut quisquam. Magnam porro sed sed non sed non velit. Ipsum quaerat magnam quiquia dolore labore quaerat adipisci. Modi eius dolore numquam modi labore. Dolore etincidunt amet eius est quisquam. Ut aliquam quaerat non neque. Dolor sed velit consectetur quaerat quisquam sit. Ut quiquia velit quisquam est etincidunt. Numquam quiquia dolore magnam modi non non. Quaerat sit tempora ut.",
  subclass: 0,
  level: 1,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 6,
  votes: 33,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-11 18:00",
  end_dtime: "2015-11-11 19:30",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 1,
  tag_list: ['Python', 'free', 'web', 'GNU']
)

Event.create!(
  title: "Event 1-13",
  summary: "Tempora magnam labore aliquam magnam amet etincidunt.",
  description: "Tempora quiquia quaerat voluptatem aliquam modi. Tempora dolore quaerat adipisci. Dolore adipisci est numquam eius magnam sit. Consectetur tempora consectetur dolore consectetur magnam non. Aliquam ipsum eius non quisquam. Ipsum modi amet adipisci tempora amet.",
  subclass: 1,
  level: 1,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "Dolor labore ipsum modi modi ut etincidunt. Amet magnam velit porro numquam dolorem. Sit non sit quisquam quaerat non est velit. Labore magnam quisquam labore tempora. Eius numquam dolore quaerat voluptatem velit labore tempora. Modi quaerat modi magnam dolore porro. Sit ipsum voluptatem aliquam neque modi dolorem voluptatem. Modi dolore amet consectetur ut dolorem voluptatem quisquam. Porro velit numquam modi.",
  duration: 3,
  votes: 0,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-12 16:00",
  end_dtime: "2015-11-12 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 1,
  tag_list: ['technology', 'PHP', 'GNU', 'Java']
)

Event.create!(
  title: "Event 1-14",
  summary: "Voluptatem quisquam eius sed.",
  description: "Non sed magnam ut. Quaerat magnam dolor modi numquam. Non sit voluptatem est ut non numquam. Non dolore dolorem voluptatem. Quaerat quiquia eius amet eius adipisci.",
  subclass: 0,
  level: 4,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Velit quisquam sed sit sit velit non. Ut adipisci voluptatem velit. Magnam quiquia dolore magnam labore. Dolor amet numquam sed. Adipisci dolore neque neque quiquia non. Dolore adipisci velit dolorem non modi. Voluptatem labore dolorem consectetur ipsum dolor etincidunt. Sit etincidunt adipisci porro. Est quiquia amet eius ipsum neque.",
  duration: 5,
  votes: 3,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2015-11-12 19:00",
  end_dtime: "2015-11-12 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 1,
  tag_list: ['tags', 'Java', 'Linux', 'tools']
)

Event.create!(
  title: "Event 1-15",
  summary: "Consectetur quisquam magnam adipisci consectetur porro voluptatem.",
  description: "Aliquam quiquia dolore ut modi amet porro numquam. Consectetur velit dolore dolore. Ipsum sit etincidunt velit dolorem. Voluptatem consectetur neque labore. Magnam numquam modi ut. Quiquia quaerat consectetur ut non ut. Dolorem quisquam voluptatem eius dolore. Est dolorem sed sit etincidunt. Dolor ipsum dolore est est modi numquam quiquia. Est modi dolore tempora.",
  subclass: 1,
  level: 1,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "Velit modi quiquia quisquam. Velit voluptatem tempora sed etincidunt ipsum. Consectetur est dolore modi amet quisquam. Dolore velit quisquam numquam sed. Neque dolorem neque labore modi non labore aliquam. Non ut adipisci etincidunt amet labore numquam dolore. Quisquam neque consectetur dolorem est non dolore aliquam. Non dolor tempora quaerat dolorem.",
  duration: 4,
  votes: 22,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['tags', 'Linux', 'cloud', 'PHP']
)

Event.create!(
  title: "Event 1-16",
  summary: "Etincidunt aliquam dolorem consectetur ut quiquia labore velit.",
  description: "Porro eius non ut est quiquia velit numquam. Etincidunt velit tempora etincidunt quiquia adipisci modi. Ipsum labore labore tempora ut. Velit dolor consectetur sit. Dolore voluptatem dolorem neque. Voluptatem sit adipisci quaerat modi. Labore non neque amet labore. Adipisci consectetur est amet adipisci velit ipsum velit. Porro non sed magnam. Consectetur quaerat non quaerat etincidunt modi.",
  subclass: 1,
  level: 4,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "Modi consectetur eius neque sed. Aliquam labore labore porro tempora neque. Dolore etincidunt aliquam eius. Quisquam labore sed labore non modi. Quiquia numquam est quaerat neque porro. Amet magnam adipisci numquam aliquam velit. Ut ut porro velit sit. Ipsum non est etincidunt adipisci. Est non ipsum sed etincidunt eius quiquia. Sit amet porro velit.",
  duration: 2,
  votes: 28,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['tags', 'web', 'PHP', 'software']
)

Event.create!(
  title: "Event 1-17",
  summary: "Modi amet magnam ipsum labore ut sit.",
  description: "Non neque magnam labore dolore porro ipsum. Consectetur est quaerat non. Amet tempora quiquia est. Sit labore quaerat labore. Dolorem numquam adipisci velit ut. Sit aliquam tempora porro dolore.",
  subclass: 0,
  level: 4,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Aliquam amet numquam neque. Velit dolore tempora eius dolorem quaerat aliquam magnam. Labore quaerat velit magnam sit quiquia etincidunt. Eius amet consectetur magnam non eius quiquia quaerat. Labore ut quisquam sit dolor. Tempora velit velit non ipsum voluptatem neque. Sit numquam sit quiquia. Numquam ipsum magnam dolorem. Quisquam ut velit adipisci non eius dolor porro. Dolor dolore velit porro.",
  duration: 0,
  votes: 7,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['open source', 'PHP', 'technology', 'Linux']
)

Event.create!(
  title: "Event 1-18",
  summary: "Non ut dolore aliquam tempora quaerat.",
  description: "Modi eius ipsum adipisci neque tempora sit. Numquam aliquam tempora dolore labore amet quaerat. Neque magnam numquam ut sit tempora porro. Labore aliquam dolorem est. Porro sit sit ut magnam velit. Dolorem ut numquam quaerat voluptatem quaerat.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 2,
  votes: 10,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['tools', 'cloud', 'tags', 'open source']
)

Event.create!(
  title: "Event 1-19",
  summary: "Porro dolorem consectetur modi ut.",
  description: "Voluptatem porro modi dolorem consectetur dolore. Tempora tempora aliquam dolor. Ipsum consectetur dolor tempora ut quisquam. Quisquam adipisci sit quiquia tempora quiquia etincidunt tempora. Sed tempora quisquam magnam aliquam. Magnam etincidunt magnam porro neque. Eius quaerat magnam numquam neque ipsum ipsum tempora. Amet dolorem amet dolor etincidunt neque non. Magnam non consectetur voluptatem. Dolore consectetur quisquam dolorem neque consectetur etincidunt.",
  subclass: 1,
  level: 5,
  content_url: "",
  code_url: "",
  language: "en",
  notes: "Sed eius porro consectetur sit porro dolore velit. Sed quaerat non adipisci quisquam quiquia. Amet dolorem dolorem magnam voluptatem. Est dolorem velit etincidunt non consectetur consectetur. Dolore neque numquam numquam quisquam sit. Quiquia eius velit adipisci adipisci.",
  duration: 0,
  votes: 8,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 1,
  tag_list: ['Linux', 'PHP', 'GNU', 'shell']
)

Event.create!(
  title: "Event 2-1",
  summary: "Dolorem velit labore modi numquam porro labore.",
  description: "Ut aliquam porro sit. Consectetur amet quiquia labore quisquam. Dolorem quisquam ipsum velit. Eius non dolore numquam voluptatem quaerat. Adipisci porro labore labore adipisci. Quisquam quaerat porro labore dolorem. Neque neque sed est etincidunt. Adipisci quisquam dolore amet voluptatem.",
  subclass: 0,
  level: 5,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 5,
  votes: 0,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['free', 'AI', 'tools', 'Java']
)

Event.create!(
  title: "Event 2-2",
  summary: "Dolor dolorem ut ut sit non.",
  description: "Amet quaerat velit quisquam. Quisquam sed tempora quiquia dolore tempora. Amet amet quiquia etincidunt. Etincidunt dolorem adipisci neque. Porro dolore voluptatem dolorem consectetur amet. Aliquam dolor ipsum est etincidunt. Non consectetur eius numquam.",
  subclass: 1,
  level: 1,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 3,
  votes: 28,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-08 15:00",
  end_dtime: "2016-03-08 16:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['open source', 'free', 'cloud', 'PHP']
)

Event.create!(
  title: "Event 2-3",
  summary: "Aliquam magnam tempora sed numquam sit velit.",
  description: "Dolorem ipsum ipsum eius sed dolor sed sit. Neque dolorem velit neque quisquam tempora ut. Amet velit adipisci dolorem. Dolorem aliquam quisquam eius sit modi. Etincidunt adipisci sit tempora.",
  subclass: 0,
  level: 3,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "",
  duration: 2,
  votes: 32,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-08 16:30",
  end_dtime: "2016-03-08 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['Java', 'web', 'free', 'shell']
)

Event.create!(
  title: "Event 2-4",
  summary: "Quaerat tempora amet dolor porro ut.",
  description: "Magnam voluptatem neque magnam neque dolore magnam. Etincidunt ipsum sed consectetur. Labore consectetur etincidunt tempora magnam. Adipisci dolore quiquia quiquia velit. Numquam numquam quiquia non magnam amet. Adipisci dolore quaerat eius sit. Numquam dolorem dolore adipisci non. Etincidunt sed velit adipisci amet. Modi magnam non quiquia amet labore quiquia neque.",
  subclass: 1,
  level: 1,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 6,
  votes: 32,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-09 15:00",
  end_dtime: "2016-03-08 17:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['shell', 'database', 'random', 'Java']
)

Event.create!(
  title: "Event 2-5",
  summary: "Dolor ipsum porro quiquia.",
  description: "Modi labore quiquia aliquam. Etincidunt dolorem numquam sit sit non porro aliquam. Neque amet adipisci consectetur magnam dolor tempora porro. Quiquia dolore quiquia ut dolore etincidunt labore non. Tempora adipisci labore velit dolorem quisquam non. Dolor aliquam quiquia tempora modi. Dolorem magnam quaerat ipsum aliquam. Voluptatem dolor labore dolor velit eius neque dolorem. Quaerat sit voluptatem consectetur etincidunt quiquia. Modi amet sed velit velit quiquia.",
  subclass: 0,
  level: 1,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 5,
  votes: 17,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-09 17:30",
  end_dtime: "2016-03-09 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['database', 'cloud', 'software', 'Java']
)

Event.create!(
  title: "Event 2-6",
  summary: "Quiquia etincidunt non aliquam adipisci tempora non tempora.",
  description: "Porro est modi sit dolore. Eius tempora ut dolorem porro adipisci. Est porro labore tempora est quisquam. Aliquam consectetur magnam adipisci voluptatem tempora voluptatem non. Sit non eius dolore ut modi eius.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 3,
  votes: 26,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-10 15:00",
  end_dtime: "2016-03-10 16:00",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "true",
  conference_id: 2,
  tag_list: ['random', 'tags', 'AI', 'database']
)

Event.create!(
  title: "Event 2-7",
  summary: "Eius aliquam quisquam non.",
  description: "Velit ut dolore sed consectetur adipisci numquam. Neque quaerat quaerat magnam neque labore sit dolor. Etincidunt quisquam dolorem ut magnam ut aliquam. Numquam quaerat voluptatem labore. Neque porro dolor sit dolorem quisquam tempora. Ipsum sit adipisci numquam tempora.",
  subclass: 0,
  level: 1,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Eius dolorem non modi. Sed quisquam neque quiquia neque non. Consectetur sit quiquia porro etincidunt quaerat. Dolor amet amet quiquia quaerat magnam ipsum ipsum. Voluptatem consectetur voluptatem dolorem dolorem. Voluptatem quisquam aliquam consectetur sit amet quisquam voluptatem. Dolor quisquam quisquam velit porro sed. Ut etincidunt velit voluptatem adipisci. Modi voluptatem dolorem quisquam quiquia etincidunt sit.",
  duration: 2,
  votes: 1,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['tools', 'shell', 'database', 'open source']
)

Event.create!(
  title: "Event 2-8",
  summary: "Quiquia ut non eius sed etincidunt quiquia quisquam.",
  description: "Adipisci velit numquam quiquia quisquam quaerat. Numquam dolor est eius sit dolore adipisci dolore. Magnam amet est quiquia quaerat modi voluptatem. Tempora tempora dolore non magnam consectetur consectetur. Quisquam dolorem numquam voluptatem porro dolor. Tempora velit consectetur etincidunt.",
  subclass: 0,
  level: 0,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 3,
  votes: 7,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['tools', 'database', 'Linux', 'cloud']
)

Event.create!(
  title: "Event 2-9",
  summary: "Neque modi sed magnam porro.",
  description: "Quisquam numquam dolorem labore ut. Porro aliquam etincidunt amet consectetur. Voluptatem ut etincidunt quiquia numquam. Neque tempora sed voluptatem. Modi eius dolore amet aliquam etincidunt. Voluptatem aliquam est dolorem modi. Aliquam non dolore velit neque porro amet amet.",
  subclass: 1,
  level: 3,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 4,
  votes: 23,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "false",
  conference_id: 2,
  tag_list: ['database', 'random', 'Linux', 'technology']
)

Event.create!(
  title: "Event 2-10",
  summary: "Voluptatem dolor quiquia labore quisquam etincidunt tempora.",
  description: "Dolorem quaerat ipsum voluptatem est. Etincidunt eius sit est voluptatem velit. Est est eius non quaerat quiquia neque dolore. Est aliquam modi sit quiquia voluptatem dolore aliquam. Quaerat labore numquam quisquam amet dolor sit modi. Consectetur eius sed voluptatem magnam sed. Neque modi labore tempora quiquia sed. Dolorem sed non quisquam. Aliquam sed etincidunt dolore quisquam. Quisquam tempora amet aliquam quaerat adipisci.",
  subclass: 1,
  level: 4,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 4,
  votes: 31,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-10 18:00",
  end_dtime: "2016-03-10 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['free', 'open source', 'random', 'Java']
)

Event.create!(
  title: "Event 2-11",
  summary: "Neque sed dolore numquam.",
  description: "Ut quaerat aliquam sit. Magnam etincidunt etincidunt sit ut etincidunt. Quisquam quisquam consectetur labore. Ut dolor eius sed. Numquam modi est adipisci quiquia.",
  subclass: 0,
  level: 3,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "",
  duration: 3,
  votes: 7,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-11 15:00",
  end_dtime: "2016-03-11 17:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['open source', 'PHP', 'random', 'tags']
)

Event.create!(
  title: "Event 2-12",
  summary: "Consectetur numquam modi velit est.",
  description: "Quaerat neque dolor sed sit quaerat. Adipisci etincidunt eius adipisci sed. Quaerat modi quisquam sed consectetur. Neque quisquam quisquam magnam neque voluptatem sed. Quaerat eius velit adipisci sit dolore quisquam dolore. Quisquam magnam adipisci est adipisci sed. Non consectetur numquam ut. Ipsum labore etincidunt quisquam etincidunt.",
  subclass: 1,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 4,
  votes: 18,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-11 18:00",
  end_dtime: "2016-03-11 19:30",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['Java', 'Python', 'random', 'cloud']
)

Event.create!(
  title: "Event 2-13",
  summary: "Dolor modi etincidunt velit.",
  description: "Numquam quaerat sed consectetur magnam est labore labore. Quisquam neque porro amet quaerat aliquam etincidunt neque. Numquam magnam aliquam quaerat aliquam. Eius sit etincidunt ipsum etincidunt. Etincidunt amet ipsum aliquam etincidunt aliquam. Tempora labore magnam quaerat. Dolor dolorem tempora tempora dolor non magnam.",
  subclass: 0,
  level: 1,
  content_url: "",
  code_url: "",
  language: "en",
  notes: "",
  duration: 3,
  votes: 14,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-12 16:00",
  end_dtime: "2016-03-12 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['cloud', 'tags', 'free', 'software']
)

Event.create!(
  title: "Event 2-14",
  summary: "Velit dolor ipsum dolor voluptatem aliquam quisquam.",
  description: "Non consectetur quisquam modi sit etincidunt modi. Ut non sed quisquam. Porro adipisci etincidunt sit. Neque porro ut adipisci dolorem est etincidunt ut. Dolor modi quisquam voluptatem neque. Est dolor quisquam adipisci dolor dolore non.",
  subclass: 0,
  level: 5,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "Quiquia aliquam modi dolore. Quiquia adipisci neque quisquam sed. Etincidunt velit dolor ut magnam. Numquam tempora sit sed quaerat adipisci sit. Neque adipisci tempora tempora quisquam sit adipisci dolorem.",
  duration: 6,
  votes: 10,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-03-12 19:00",
  end_dtime: "2016-03-12 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 2,
  tag_list: ['Python', 'tools', 'open source', 'PHP']
)

Event.create!(
  title: "Event 2-15",
  summary: "Tempora aliquam sed eius modi quaerat tempora.",
  description: "Dolor consectetur velit consectetur neque. Eius magnam sed porro numquam quisquam. Non eius porro dolore ut consectetur sed. Porro sed dolorem ipsum consectetur. Adipisci velit porro numquam modi labore quisquam.",
  subclass: 0,
  level: 4,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "Non quaerat dolorem est. Dolore etincidunt sed numquam consectetur sit. Ipsum adipisci labore eius. Quisquam modi dolore ipsum. Ipsum eius dolor est quiquia non. Eius non quiquia numquam quiquia. Quaerat aliquam ipsum sed modi. Ut eius dolor dolor etincidunt dolore. Non modi quisquam est neque voluptatem ipsum. Magnam est sit modi.",
  duration: 2,
  votes: 21,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['technology', 'PHP', 'database', 'Linux']
)

Event.create!(
  title: "Event 2-16",
  summary: "Ipsum labore quaerat quiquia dolor numquam etincidunt.",
  description: "Porro porro neque labore. Non dolorem eius magnam magnam porro aliquam. Eius quisquam magnam labore numquam velit neque sed. Voluptatem eius magnam quisquam. Dolorem etincidunt quaerat quisquam consectetur. Quisquam eius numquam quiquia dolore. Dolorem etincidunt dolorem sit neque voluptatem quaerat amet. Voluptatem sit ut numquam est sed adipisci dolore. Non quaerat ut porro.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "",
  duration: 6,
  votes: 17,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['open source', 'AI', 'database', 'PHP']
)

Event.create!(
  title: "Event 2-17",
  summary: "Sed neque quaerat dolore etincidunt.",
  description: "Tempora modi magnam eius quisquam quiquia labore amet. Non non ipsum etincidunt. Aliquam magnam sed sed etincidunt dolore quisquam. Quaerat aliquam magnam est magnam dolorem. Eius est consectetur quiquia. Dolorem velit dolor quisquam dolore consectetur modi. Amet sit etincidunt tempora. Tempora sed ut eius. Quaerat quisquam quaerat ipsum modi sed quaerat neque.",
  subclass: 1,
  level: 3,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "",
  duration: 3,
  votes: 28,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['Java', 'shell', 'cloud', 'free']
)

Event.create!(
  title: "Event 2-18",
  summary: "Neque dolor amet magnam quisquam non modi porro.",
  description: "Dolore eius neque ut quaerat eius sit sit. Non velit dolorem quaerat amet neque. Numquam est dolorem modi non. Aliquam numquam consectetur velit dolore voluptatem sed aliquam. Modi non sit adipisci est aliquam tempora.",
  subclass: 1,
  level: 3,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "Velit ipsum eius sed voluptatem etincidunt eius adipisci. Dolore etincidunt etincidunt non aliquam ipsum non porro. Sit porro velit dolorem amet modi modi. Etincidunt sit porro numquam labore quisquam sit. Tempora quisquam tempora dolorem dolore magnam dolorem.",
  duration: 6,
  votes: 32,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['shell', 'Java', 'tools', 'GNU']
)

Event.create!(
  title: "Event 2-19",
  summary: "Ipsum eius modi consectetur consectetur tempora etincidunt dolor.",
  description: "Aliquam porro magnam dolore consectetur eius. Sit quisquam modi ut sed quisquam. Sed non velit quisquam dolorem. Quiquia quaerat etincidunt est labore magnam ipsum. Adipisci magnam modi sed quaerat neque velit. Magnam velit ipsum magnam quaerat non sed velit. Sed consectetur porro labore dolor velit amet sed. Non eius etincidunt non numquam porro. Dolore dolorem dolor numquam. Quiquia porro etincidunt quaerat.",
  subclass: 1,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "",
  duration: 1,
  votes: 20,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 2,
  tag_list: ['tags', 'PHP', 'AI', 'technology']
)

Event.create!(
  title: "Event 3-1",
  summary: "Sed ipsum tempora tempora voluptatem magnam.",
  description: "Tempora ut velit velit porro ipsum consectetur etincidunt. Labore modi adipisci aliquam modi. Numquam adipisci quisquam quisquam numquam sit quisquam. Consectetur quisquam porro sed est ut. Quaerat quaerat consectetur sit ut porro quaerat. Aliquam ipsum labore aliquam etincidunt tempora labore. Porro quaerat porro quiquia sit porro ut. Ut est dolorem consectetur dolore dolor dolore. Neque modi modi labore consectetur aliquam. Est eius non ut non.",
  subclass: 1,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "Tempora modi aliquam ipsum. Sit neque quisquam quaerat. Sed porro porro dolor. Aliquam non voluptatem consectetur modi neque dolorem. Magnam tempora est non aliquam.",
  duration: 6,
  votes: 17,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['shell', 'Java', 'open source', 'technology']
)

Event.create!(
  title: "Event 3-2",
  summary: "Aliquam etincidunt dolore dolorem voluptatem neque sit.",
  description: "Modi dolor neque adipisci porro dolore modi. Etincidunt voluptatem sit ut velit quaerat ut. Est porro adipisci non dolor adipisci. Numquam aliquam sed quiquia dolore non sed non. Modi voluptatem quiquia quaerat velit quisquam consectetur. Modi sit adipisci sed. Sit sed quisquam dolore velit. Ut dolor tempora porro. Dolorem quaerat amet quiquia numquam.",
  subclass: 0,
  level: 1,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Est amet sed quisquam consectetur aliquam. Porro eius quisquam labore dolorem. Velit sed aliquam ut sit adipisci. Adipisci aliquam sed dolorem. Non ut velit sit amet magnam velit. Aliquam magnam quisquam ut sed tempora voluptatem. Quaerat magnam consectetur adipisci non sed dolore neque. Porro dolor amet porro magnam amet sit. Etincidunt porro est labore amet quiquia. Quiquia non non voluptatem sed eius consectetur consectetur.",
  duration: 5,
  votes: 10,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-08 15:00",
  end_dtime: "2016-11-08 16:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['GNU', 'software', 'PHP', 'tools']
)

Event.create!(
  title: "Event 3-3",
  summary: "Quaerat aliquam quaerat dolorem tempora etincidunt modi labore.",
  description: "Porro quisquam numquam labore sit est porro. Tempora adipisci neque modi. Quaerat ut aliquam dolorem ipsum. Non est consectetur non modi numquam. Neque dolor modi labore magnam sed neque. Modi voluptatem tempora modi sed dolorem ipsum.",
  subclass: 1,
  level: 4,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "Sit est quaerat ut voluptatem. Porro eius ut consectetur neque. Numquam voluptatem dolorem magnam velit modi est numquam. Eius labore modi eius modi labore voluptatem quiquia. Numquam ipsum magnam sed est. Ut modi sit velit.",
  duration: 0,
  votes: 2,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-08 16:30",
  end_dtime: "2016-11-08 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['free', 'tags', 'tools', 'Java']
)

Event.create!(
  title: "Event 3-4",
  summary: "Voluptatem numquam neque etincidunt etincidunt adipisci est.",
  description: "Quisquam dolore labore amet. Adipisci dolore sed eius dolor. Quisquam amet neque est dolore etincidunt est. Sit dolorem quiquia ut quaerat modi. Modi aliquam dolore voluptatem. Non quaerat ut labore voluptatem sit.",
  subclass: 0,
  level: 0,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Consectetur numquam magnam magnam magnam eius amet. Modi quaerat dolor dolor quaerat. Ut ut velit eius est magnam amet. Sit etincidunt quaerat tempora sit velit velit. Modi non quaerat ut numquam sed etincidunt tempora. Aliquam amet voluptatem quiquia neque quiquia quiquia.",
  duration: 3,
  votes: 13,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-09 15:00",
  end_dtime: "2016-11-08 17:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['cloud', 'AI', 'random', 'free']
)

Event.create!(
  title: "Event 3-5",
  summary: "Consectetur neque consectetur modi modi sit adipisci modi.",
  description: "Quaerat numquam aliquam velit sit eius consectetur. Voluptatem labore quaerat adipisci velit. Consectetur dolore voluptatem quaerat quiquia. Etincidunt ipsum numquam adipisci. Eius tempora velit etincidunt tempora sed ut. Voluptatem dolorem modi eius sit. Neque labore voluptatem quiquia neque dolorem. Adipisci dolor quiquia tempora neque dolorem. Magnam neque dolorem eius labore modi non. Modi magnam neque quiquia ut voluptatem.",
  subclass: 1,
  level: 3,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 0,
  votes: 21,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-09 17:30",
  end_dtime: "2016-11-09 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['database', 'software', 'tags', 'cloud']
)

Event.create!(
  title: "Event 3-6",
  summary: "Dolor sed labore dolore porro.",
  description: "Non voluptatem quisquam quaerat. Aliquam est ipsum sed neque. Etincidunt aliquam voluptatem labore dolor quaerat. Sit labore amet ut. Adipisci ipsum aliquam aliquam labore tempora voluptatem. Tempora sed dolor ut labore. Tempora quaerat non magnam. Quisquam sit voluptatem labore eius. Amet quaerat ut est tempora. Voluptatem amet magnam numquam modi adipisci etincidunt consectetur.",
  subclass: 1,
  level: 0,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 5,
  votes: 23,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-10 15:00",
  end_dtime: "2016-11-10 16:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['technology', 'cloud', 'shell', 'PHP']
)

Event.create!(
  title: "Event 3-7",
  summary: "Magnam dolorem tempora consectetur non voluptatem ipsum aliquam.",
  description: "Dolore sit neque sit sit. Velit aliquam dolorem ut numquam. Porro dolor non eius. Quiquia dolore dolor neque porro. Neque neque aliquam etincidunt neque. Adipisci dolor sed modi amet dolor neque sed. Etincidunt dolorem voluptatem dolore aliquam. Sed neque dolore quiquia quisquam. Modi voluptatem numquam quisquam dolore ut tempora modi. Aliquam modi quisquam dolore quiquia.",
  subclass: 1,
  level: 4,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 3,
  votes: 20,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['open source', 'database', 'random', 'technology']
)

Event.create!(
  title: "Event 3-8",
  summary: "Sit sit sed sed sit ipsum non.",
  description: "Dolor sed labore modi modi. Eius non quisquam dolorem. Tempora non eius quisquam voluptatem eius amet. Eius labore porro quisquam. Aliquam ut eius amet. Consectetur non est porro. Quiquia non quiquia consectetur eius ut numquam ut. Dolorem sit modi sit. Modi labore dolore amet porro aliquam quisquam.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "",
  duration: 3,
  votes: 15,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['AI', 'tools', 'open source', 'shell']
)

Event.create!(
  title: "Event 3-9",
  summary: "Consectetur adipisci adipisci numquam quaerat.",
  description: "Dolore tempora porro modi quisquam. Sed sit amet quaerat dolore eius etincidunt. Labore modi quisquam velit sit est non quaerat. Dolor consectetur etincidunt velit numquam numquam. Quiquia tempora neque numquam velit. Labore dolor numquam consectetur etincidunt tempora non. Sit dolorem quisquam neque. Ut adipisci ut sit dolor quaerat.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "Adipisci ipsum amet est labore numquam neque modi. Tempora dolorem modi dolor dolor ut labore. Quiquia quaerat dolor eius adipisci porro. Adipisci modi velit modi modi. Magnam non tempora sed magnam. Porro ipsum porro consectetur. Dolorem numquam adipisci quisquam voluptatem velit. Non voluptatem dolor neque tempora consectetur sed eius.",
  duration: 0,
  votes: 8,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "false",
  conference_id: 3,
  tag_list: ['random', 'open source', 'PHP', 'Java']
)

Event.create!(
  title: "Event 3-10",
  summary: "Sit est porro amet dolore.",
  description: "Consectetur quaerat sed dolorem dolore modi. Sit modi dolor dolorem. Ut sed porro ipsum porro. Amet consectetur porro labore sed aliquam magnam dolorem. Sed etincidunt est adipisci. Modi quaerat modi tempora porro etincidunt. Eius neque dolorem ipsum eius sit quaerat amet. Est quisquam non adipisci modi.",
  subclass: 1,
  level: 3,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "Porro modi ipsum dolorem magnam adipisci ipsum. Adipisci est dolore quaerat ipsum neque porro. Modi quiquia est numquam aliquam dolor. Sed ipsum est amet. Est magnam eius magnam adipisci sed labore. Ut velit ipsum quisquam ut. Labore numquam consectetur porro dolorem voluptatem non. Eius quisquam tempora ipsum dolorem est non. Sed numquam eius labore porro sit dolorem.",
  duration: 2,
  votes: 20,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-10 18:00",
  end_dtime: "2016-11-10 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['random', 'tags', 'tools', 'cloud']
)

Event.create!(
  title: "Event 3-11",
  summary: "Tempora adipisci eius dolor porro ut.",
  description: "Labore aliquam adipisci sed. Dolore voluptatem velit quisquam. Etincidunt dolorem ut voluptatem magnam. Dolore non magnam dolorem amet ut. Non labore quaerat quiquia. Magnam sed etincidunt labore consectetur eius quiquia. Etincidunt dolor voluptatem porro dolore.",
  subclass: 0,
  level: 1,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "Velit quiquia dolor tempora sed amet. Sed sed dolorem eius sit ipsum etincidunt ipsum. Consectetur dolore numquam tempora quaerat. Magnam eius adipisci adipisci non quiquia porro dolor. Magnam velit neque consectetur etincidunt.",
  duration: 0,
  votes: 32,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-11 15:00",
  end_dtime: "2016-11-11 17:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['technology', 'database', 'free', 'cloud']
)

Event.create!(
  title: "Event 3-12",
  summary: "Amet modi magnam dolor.",
  description: "Dolorem eius aliquam quaerat amet. Aliquam quaerat ipsum est quaerat labore velit dolore. Dolor quisquam quiquia quiquia non. Dolor sed modi magnam amet. Aliquam ipsum ipsum sit sit quisquam sed. Sed numquam etincidunt eius. Voluptatem labore magnam etincidunt aliquam. Dolor est aliquam dolore quiquia dolor dolore. Consectetur ut velit dolorem tempora dolore quisquam etincidunt. Numquam ut quiquia adipisci tempora neque etincidunt dolorem.",
  subclass: 1,
  level: 3,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 2,
  votes: 30,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-11 18:00",
  end_dtime: "2016-11-11 19:30",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['web', 'software', 'shell', 'GNU']
)

Event.create!(
  title: "Event 3-13",
  summary: "Adipisci velit quaerat quiquia.",
  description: "Dolor dolor ipsum sit est ipsum est. Voluptatem numquam amet consectetur dolor labore magnam dolorem. Etincidunt eius quiquia quaerat. Dolorem adipisci est amet etincidunt tempora velit. Velit aliquam quisquam labore. Consectetur ut non ipsum. Magnam amet ut labore velit velit dolore ipsum. Eius dolor quiquia sit ipsum amet numquam dolore. Amet adipisci labore quaerat dolore. Velit quiquia magnam neque ipsum quiquia dolore.",
  subclass: 0,
  level: 0,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Dolorem porro dolorem dolor sit. Tempora labore dolor modi dolor aliquam dolorem labore. Amet non consectetur adipisci labore etincidunt etincidunt adipisci. Ipsum dolor non tempora quisquam dolore quaerat. Labore modi dolorem amet velit est amet. Modi quisquam amet voluptatem adipisci sit magnam adipisci.",
  duration: 6,
  votes: 11,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-12 16:00",
  end_dtime: "2016-11-12 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['Java', 'technology', 'tools', 'free']
)

Event.create!(
  title: "Event 3-14",
  summary: "Neque ipsum dolorem quaerat.",
  description: "Tempora magnam sed eius. Dolore non eius sed dolorem. Non numquam sed sed sed quiquia. Modi sed aliquam adipisci labore eius voluptatem. Est dolorem ut dolor numquam dolor.",
  subclass: 0,
  level: 0,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 1,
  votes: 35,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2016-11-12 19:00",
  end_dtime: "2016-11-12 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 3,
  tag_list: ['tags', 'open source', 'PHP', 'Linux']
)

Event.create!(
  title: "Event 3-15",
  summary: "Velit modi ipsum quiquia est.",
  description: "Neque sed ut neque quiquia dolore. Dolore voluptatem amet eius. Tempora velit ut ipsum. Amet ipsum ipsum modi non magnam ut aliquam. Modi quaerat etincidunt sit tempora sed. Quisquam sit aliquam dolor modi dolor quaerat.",
  subclass: 0,
  level: 5,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 2,
  votes: 10,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['Linux', 'AI', 'web', 'PHP']
)

Event.create!(
  title: "Event 3-16",
  summary: "Voluptatem dolorem sit sit modi non.",
  description: "Modi dolorem neque dolorem modi dolore aliquam. Velit quiquia labore quisquam. Velit sed etincidunt velit dolorem. Sed tempora magnam sed dolore. Non labore neque numquam numquam dolorem consectetur. Sit eius labore dolore dolore dolor sed. Ut voluptatem est magnam amet sed. Numquam sit dolore ipsum etincidunt tempora. Tempora numquam consectetur est porro porro quisquam aliquam. Sit amet dolorem magnam etincidunt tempora ipsum neque.",
  subclass: 1,
  level: 1,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Dolor aliquam quaerat ut. Porro adipisci eius dolor eius porro neque magnam. Modi dolor dolor velit quaerat sit sed est. Eius quisquam etincidunt velit adipisci neque. Tempora eius neque quisquam dolor. Aliquam numquam labore ut. Ipsum quisquam velit dolor ipsum. Dolore ut tempora sit ut. Consectetur non neque tempora. Aliquam sit dolore etincidunt amet.",
  duration: 4,
  votes: 27,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "false",
  conference_id: 3,
  tag_list: ['technology', 'free', 'tags', 'tools']
)

Event.create!(
  title: "Event 3-17",
  summary: "Ipsum adipisci velit quaerat etincidunt dolor dolor.",
  description: "Amet labore labore porro. Velit voluptatem sed magnam velit voluptatem dolor. Numquam etincidunt consectetur modi quisquam sed dolor amet. Sit quaerat dolor ut quisquam non modi sit. Eius modi aliquam magnam. Dolorem sed dolor porro sed. Velit labore eius etincidunt magnam. Velit porro quisquam neque quisquam labore numquam non. Modi labore etincidunt etincidunt quiquia tempora. Magnam numquam etincidunt velit velit.",
  subclass: 1,
  level: 0,
  content_url: "",
  code_url: "",
  language: "en",
  notes: "",
  duration: 6,
  votes: 16,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['tags', 'software', 'Python', 'GNU']
)

Event.create!(
  title: "Event 3-18",
  summary: "Amet etincidunt adipisci modi est labore.",
  description: "Numquam est dolore non magnam est aliquam. Ipsum numquam tempora quaerat. Magnam quiquia est magnam eius sit ut. Sed ut numquam sit quisquam adipisci amet. Quaerat numquam ut porro ipsum. Amet dolore dolorem quiquia eius velit. Ipsum consectetur dolorem porro. Ut labore dolore numquam ut numquam est dolor.",
  subclass: 0,
  level: 3,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Magnam amet porro eius velit est modi. Magnam modi voluptatem ipsum. Sed est adipisci quiquia dolore ipsum modi. Amet consectetur neque magnam. Dolore adipisci labore etincidunt. Numquam amet labore voluptatem est velit numquam numquam. Numquam modi voluptatem dolor etincidunt. Aliquam voluptatem eius adipisci voluptatem voluptatem eius.",
  duration: 5,
  votes: 2,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['random', 'Java', 'software', 'free']
)

Event.create!(
  title: "Event 3-19",
  summary: "Consectetur amet sed est neque.",
  description: "Velit dolore dolorem ut dolore. Amet quisquam porro sit. Porro velit est ipsum magnam labore non. Porro consectetur numquam est quiquia. Consectetur sed eius tempora. Quaerat voluptatem amet adipisci aliquam ut.",
  subclass: 0,
  level: 3,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 2,
  votes: 30,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 3,
  tag_list: ['random', 'free', 'AI', 'database']
)

Event.create!(
  title: "Event 4-1",
  summary: "Adipisci magnam labore dolore.",
  description: "Eius quaerat neque dolor est neque. Tempora neque dolor quisquam. Est dolore quaerat neque aliquam. Quiquia adipisci ut quisquam neque sed neque eius. Magnam modi neque modi porro sit aliquam. Dolorem consectetur quiquia numquam etincidunt ut porro eius. Modi voluptatem eius ipsum ut quiquia aliquam.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "Velit velit porro numquam sed eius. Est sit ut aliquam etincidunt labore non sit. Eius sit est porro voluptatem velit numquam. Dolore voluptatem ut magnam magnam ipsum neque. Etincidunt adipisci voluptatem quisquam sit velit velit est. Dolorem aliquam sit dolorem voluptatem voluptatem sit dolorem. Numquam quisquam quaerat numquam modi. Velit numquam porro aliquam. Magnam voluptatem quaerat magnam. Magnam ut labore consectetur dolor.",
  duration: 6,
  votes: 30,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['random', 'tags', 'cloud', 'open source']
)

Event.create!(
  title: "Event 4-2",
  summary: "Eius quiquia neque ut.",
  description: "Sit non neque sit est dolore sit. Voluptatem ut velit non aliquam aliquam labore ut. Velit quaerat sit sed etincidunt tempora. Quaerat quaerat ut aliquam consectetur. Dolor voluptatem adipisci est quisquam labore. Aliquam sed ut quaerat consectetur adipisci porro.",
  subclass: 0,
  level: 0,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "",
  duration: 5,
  votes: 15,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-08 15:00",
  end_dtime: "2017-03-08 16:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['shell', 'tools', 'free', 'Python']
)

Event.create!(
  title: "Event 4-3",
  summary: "Amet modi sed ipsum modi.",
  description: "Quiquia ipsum neque dolorem eius. Ipsum ut quaerat quisquam sit. Aliquam numquam ipsum aliquam. Quiquia non velit non voluptatem ipsum non. Labore ipsum modi velit. Porro quaerat ipsum consectetur quiquia.",
  subclass: 1,
  level: 2,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Sit tempora eius adipisci neque ipsum ipsum. Porro magnam eius ut non. Voluptatem consectetur dolor voluptatem voluptatem velit. Etincidunt amet sed modi ut voluptatem sed sit. Sed sed dolore ut dolor sit non.",
  duration: 1,
  votes: 18,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-08 16:30",
  end_dtime: "2017-03-08 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 4,
  tag_list: ['free', 'GNU', 'Java', 'technology']
)

Event.create!(
  title: "Event 4-4",
  summary: "Etincidunt quaerat ipsum velit ut dolore dolore ut.",
  description: "Non sit labore est voluptatem. Neque non magnam non numquam. Etincidunt porro etincidunt dolorem sed velit eius dolorem. Ut voluptatem dolore sed non. Sed aliquam porro voluptatem quaerat amet. Amet sed neque aliquam voluptatem eius voluptatem. Amet dolore ut numquam consectetur ut. Magnam neque dolor quiquia. Dolorem ipsum etincidunt dolorem dolore. Voluptatem dolorem quisquam dolorem.",
  subclass: 0,
  level: 4,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "Ut dolor porro quiquia eius. Modi consectetur sit magnam est est eius. Voluptatem amet quisquam aliquam. Porro adipisci ut adipisci ut ipsum sit. Sed dolorem amet aliquam sit quaerat amet numquam. Sed modi sit aliquam est quaerat porro non.",
  duration: 6,
  votes: 34,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-09 15:00",
  end_dtime: "2017-03-08 17:00",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "true",
  conference_id: 4,
  tag_list: ['cloud', 'database', 'shell', 'technology']
)

Event.create!(
  title: "Event 4-5",
  summary: "Sit voluptatem ut magnam.",
  description: "Numquam labore neque amet tempora. Dolorem ipsum velit labore. Labore voluptatem labore neque sed eius. Est quisquam ipsum amet dolor. Modi ut quaerat aliquam dolor est adipisci. Aliquam quisquam ipsum ut voluptatem quiquia. Voluptatem modi voluptatem est eius. Ut magnam eius est modi ut. Magnam aliquam ut ipsum consectetur ut velit. Magnam magnam dolor dolorem neque amet ipsum numquam.",
  subclass: 0,
  level: 1,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 1,
  votes: 2,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-09 17:30",
  end_dtime: "2017-03-09 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 4,
  tag_list: ['free', 'Python', 'random', 'Linux']
)

Event.create!(
  title: "Event 4-6",
  summary: "Neque sed sed labore.",
  description: "Aliquam etincidunt velit quisquam sit velit quaerat magnam. Sit consectetur dolor eius quaerat neque quaerat ipsum. Dolore voluptatem est magnam ipsum dolorem. Quaerat tempora magnam magnam labore. Neque tempora dolore eius. Dolore amet sit dolore dolor quaerat consectetur. Voluptatem dolorem modi aliquam numquam.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Amet non dolorem non. Eius quisquam dolor magnam. Neque dolorem dolor est voluptatem quaerat. Modi est voluptatem labore eius. Est est magnam tempora porro etincidunt velit dolore. Tempora labore dolor labore. Dolor voluptatem dolore numquam dolor modi numquam velit. Voluptatem ipsum velit tempora velit.",
  duration: 6,
  votes: 0,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-10 15:00",
  end_dtime: "2017-03-10 16:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 4,
  tag_list: ['Linux', 'shell', 'AI', 'Java']
)

Event.create!(
  title: "Event 4-7",
  summary: "Velit est sed quiquia quisquam velit ut labore.",
  description: "Neque numquam ipsum labore ipsum quisquam amet modi. Modi adipisci voluptatem labore. Porro porro sed consectetur sed neque. Amet tempora ut non labore. Tempora amet ut neque adipisci. Velit ipsum amet eius. Modi dolorem magnam sed. Velit dolore eius adipisci aliquam. Est quaerat quiquia tempora numquam quiquia quisquam amet.",
  subclass: 0,
  level: 5,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Ipsum voluptatem quisquam porro numquam numquam. Aliquam sit numquam quisquam consectetur velit amet eius. Eius aliquam velit velit etincidunt quaerat eius sed. Tempora porro consectetur neque tempora velit. Tempora labore sit porro amet quaerat ut etincidunt. Ut labore neque consectetur est labore modi. Dolore dolore dolorem magnam porro aliquam velit. Quisquam sit est adipisci est sit.",
  duration: 3,
  votes: 19,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['GNU', 'technology', 'free', 'PHP']
)

Event.create!(
  title: "Event 4-8",
  summary: "Dolore dolorem neque aliquam.",
  description: "Velit ut velit quiquia dolorem etincidunt quaerat numquam. Dolore voluptatem aliquam tempora adipisci aliquam dolor dolor. Tempora voluptatem velit dolore dolor. Velit quisquam non magnam. Porro quiquia dolore dolore. Dolor consectetur neque porro quiquia labore neque. Neque numquam dolore quiquia aliquam etincidunt. Quiquia consectetur velit consectetur adipisci. Labore quisquam quisquam aliquam tempora adipisci numquam etincidunt.",
  subclass: 0,
  level: 3,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Modi quaerat eius non dolore. Voluptatem ipsum eius ut labore velit. Dolore neque aliquam quiquia. Quisquam dolor porro quisquam tempora quaerat porro. Modi magnam quaerat voluptatem. Porro ipsum quisquam modi quiquia est. Magnam etincidunt ut neque etincidunt.",
  duration: 1,
  votes: 17,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['cloud', 'random', 'Java', 'Linux']
)

Event.create!(
  title: "Event 4-9",
  summary: "Quiquia tempora consectetur eius etincidunt quisquam.",
  description: "Sit velit ut tempora modi quaerat. Etincidunt neque aliquam aliquam. Non ipsum tempora dolor porro. Quaerat est velit consectetur magnam ipsum labore consectetur. Neque eius voluptatem neque quisquam. Amet ut quaerat est. Consectetur velit consectetur porro quisquam eius sit labore. Quiquia velit velit consectetur porro amet dolorem eius.",
  subclass: 0,
  level: 2,
  content_url: "",
  code_url: "",
  language: "es",
  notes: "Est sed consectetur est voluptatem numquam. Ipsum tempora est labore dolor dolore tempora porro. Ipsum non adipisci labore. Voluptatem ut est magnam aliquam. Dolorem sed consectetur voluptatem consectetur sit sed.",
  duration: 4,
  votes: 19,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['AI', 'tools', 'Python', 'Linux']
)

Event.create!(
  title: "Event 4-10",
  summary: "Eius dolore dolorem magnam porro quisquam numquam magnam.",
  description: "Dolore amet quisquam sed. Modi quisquam amet quisquam magnam magnam. Sit tempora voluptatem consectetur modi consectetur ut tempora. Etincidunt est ut tempora ut. Etincidunt numquam quisquam quaerat labore eius magnam non.",
  subclass: 1,
  level: 3,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 3,
  votes: 4,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-10 18:00",
  end_dtime: "2017-03-10 20:00",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "true",
  conference_id: 4,
  tag_list: ['Java', 'tags', 'web', 'Python']
)

Event.create!(
  title: "Event 4-11",
  summary: "Eius dolore quisquam amet numquam.",
  description: "Est quisquam quisquam ut. Dolorem modi modi numquam labore. Labore porro dolorem numquam. Sed eius dolore quiquia velit tempora consectetur modi. Non dolore ut consectetur quiquia. Amet dolorem voluptatem tempora est adipisci eius. Aliquam ipsum quaerat quaerat sed etincidunt quiquia est.",
  subclass: 1,
  level: 2,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Non magnam neque ut velit modi quiquia consectetur. Sit non modi sed porro. Dolore numquam voluptatem quisquam porro sed dolor dolorem. Tempora dolor ut labore non. Modi quaerat quiquia voluptatem. Est etincidunt eius adipisci adipisci modi.",
  duration: 0,
  votes: 19,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-11 15:00",
  end_dtime: "2017-03-11 17:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 4,
  tag_list: ['AI', 'Linux', 'Python', 'free']
)

Event.create!(
  title: "Event 4-12",
  summary: "Amet tempora non labore dolore quiquia consectetur.",
  description: "Etincidunt quiquia eius quaerat. Consectetur ut est neque. Consectetur quiquia neque numquam ipsum quisquam. Dolorem tempora magnam etincidunt ipsum. Numquam eius non quiquia voluptatem labore. Ipsum sit dolorem labore numquam neque dolore ut. Quiquia numquam numquam tempora numquam. Sed non aliquam labore voluptatem est ipsum. Quaerat etincidunt aliquam velit dolor quiquia. Ut adipisci voluptatem quiquia sit adipisci aliquam.",
  subclass: 0,
  level: 1,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "",
  duration: 2,
  votes: 7,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-11 18:00",
  end_dtime: "2017-03-11 19:30",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 4,
  tag_list: ['tools', 'open source', 'tags', 'technology']
)

Event.create!(
  title: "Event 4-13",
  summary: "Dolor dolorem quaerat dolore magnam.",
  description: "Neque ut quiquia voluptatem porro labore dolor quaerat. Dolore numquam sed tempora sed magnam etincidunt. Tempora ut tempora quiquia neque quaerat. Voluptatem porro ut aliquam. Dolorem tempora labore dolor non ut quiquia.",
  subclass: 0,
  level: 4,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 4,
  votes: 24,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-12 16:00",
  end_dtime: "2017-03-12 18:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 4,
  tag_list: ['shell', 'cloud', 'tools', 'random']
)

Event.create!(
  title: "Event 4-14",
  summary: "Eius dolorem sit sed sed numquam.",
  description: "Porro magnam quisquam sed amet quaerat modi dolorem. Numquam sit tempora dolore. Voluptatem labore est labore dolore etincidunt. Sed sit ut quiquia labore. Tempora sed ipsum modi. Dolorem quaerat etincidunt sit. Velit dolor neque non ut tempora. Velit ipsum neque velit labore dolorem numquam. Adipisci ut dolor non quisquam aliquam.",
  subclass: 0,
  level: 3,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 5,
  votes: 2,
  location: "Leganés",
  room: "Some room",
  start_dtime: "2017-03-12 19:00",
  end_dtime: "2017-03-12 20:00",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "true",
  conference_id: 4,
  tag_list: ['technology', 'open source', 'random', 'cloud']
)

Event.create!(
  title: "Event 4-15",
  summary: "Adipisci porro dolorem etincidunt modi.",
  description: "Aliquam non aliquam eius etincidunt quaerat. Labore modi quaerat voluptatem est. Numquam sed aliquam ipsum est velit tempora. Est quisquam tempora quisquam quaerat. Dolorem ipsum magnam velit velit. Sed neque quiquia amet aliquam magnam eius. Porro quaerat quaerat dolore etincidunt adipisci dolor non. Aliquam sit tempora porro.",
  subclass: 0,
  level: 3,
  content_url: "http://gul.es",
  code_url: "",
  language: "en",
  notes: "Dolorem numquam adipisci adipisci modi porro. Eius sed velit neque sit amet tempora ipsum. Numquam eius modi dolorem est velit. Ut etincidunt amet labore etincidunt non etincidunt. Consectetur numquam est tempora tempora velit non velit. Sit porro porro adipisci. Adipisci quiquia eius ipsum voluptatem neque dolore. Velit est quisquam dolore sed eius ipsum.",
  duration: 6,
  votes: 29,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['Java', 'web', 'free', 'database']
)

Event.create!(
  title: "Event 4-16",
  summary: "Numquam eius neque aliquam dolore est.",
  description: "Voluptatem etincidunt quisquam modi porro porro magnam ut. Numquam est velit numquam ipsum. Adipisci quisquam ipsum etincidunt neque modi. Quiquia amet etincidunt consectetur ut velit. Aliquam voluptatem neque est. Sit magnam non dolor. Sed dolore dolor aliquam porro eius consectetur. Ipsum velit amet sit dolore sed ut.",
  subclass: 1,
  level: 5,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 3,
  votes: 24,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "false",
  conference_id: 4,
  tag_list: ['tags', 'web', 'random', 'database']
)

Event.create!(
  title: "Event 4-17",
  summary: "Velit neque voluptatem quiquia labore labore quisquam.",
  description: "Tempora labore adipisci sed dolorem voluptatem. Adipisci velit modi tempora sit non. Magnam sed modi adipisci adipisci magnam. Consectetur labore amet adipisci ut modi ipsum. Amet dolore modi voluptatem sed. Dolor magnam dolor non quisquam sit. Dolorem dolor voluptatem tempora. Magnam tempora tempora tempora eius. Sit voluptatem sit tempora ut porro aliquam eius. Labore non consectetur adipisci modi magnam dolorem non.",
  subclass: 0,
  level: 2,
  content_url: "",
  code_url: "",
  language: "en",
  notes: "Modi labore voluptatem dolorem. Numquam eius voluptatem modi ut quaerat voluptatem quaerat. Porro aliquam dolorem ipsum adipisci. Eius dolore consectetur est eius. Sit dolor modi amet dolore tempora. Quaerat est quaerat quaerat. Etincidunt est voluptatem quisquam consectetur.",
  duration: 0,
  votes: 8,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "false",
  conference_id: 4,
  tag_list: ['shell', 'free', 'random', 'tools']
)

Event.create!(
  title: "Event 4-18",
  summary: "Dolore sit dolore eius est adipisci.",
  description: "Quiquia non dolore adipisci numquam non. Amet porro adipisci dolorem ut quisquam adipisci. Ipsum adipisci tempora neque velit aliquam. Quiquia dolore sit ipsum etincidunt dolorem neque modi. Labore sed amet non labore sed voluptatem ut. Porro consectetur sit adipisci neque velit etincidunt dolorem. Non ut etincidunt dolor. Aliquam labore dolorem adipisci quiquia. Consectetur tempora dolor quisquam magnam aliquam.",
  subclass: 1,
  level: 1,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 1,
  votes: 11,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['AI', 'database', 'PHP', 'technology']
)

Event.create!(
  title: "Event 4-19",
  summary: "Sit eius ipsum non.",
  description: "Non modi dolore ut ipsum aliquam sed modi. Eius consectetur sed dolorem velit. Consectetur quisquam quiquia ipsum voluptatem ut. Eius dolorem voluptatem amet numquam. Quisquam quiquia sit porro adipisci porro quisquam. Amet est quisquam magnam sed non consectetur. Dolore porro aliquam neque neque magnam dolor.",
  subclass: 0,
  level: 3,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 4,
  votes: 9,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 4,
  tag_list: ['tags', 'GNU', 'software', 'AI']
)

Event.create!(
  title: "Event 5-1",
  summary: "Velit etincidunt adipisci adipisci eius adipisci sed modi.",
  description: "Quaerat consectetur etincidunt neque quisquam porro. Neque ut neque adipisci quisquam. Numquam eius adipisci quisquam numquam. Ipsum quaerat dolorem sed adipisci est quiquia dolore. Consectetur ipsum neque consectetur sit est quisquam. Modi dolore consectetur labore consectetur non dolore. Neque adipisci etincidunt eius aliquam dolore. Porro quaerat velit modi numquam voluptatem. Eius eius amet sed est magnam. Est ut quaerat consectetur aliquam etincidunt tempora eius.",
  subclass: 1,
  level: 1,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "Est dolor magnam velit amet quiquia ipsum numquam. Ipsum adipisci sed porro. Sed aliquam numquam numquam. Ipsum ut velit dolore magnam. Velit dolorem non sed. Voluptatem tempora dolorem eius labore voluptatem etincidunt ipsum. Dolor velit consectetur sit voluptatem est quaerat modi.",
  duration: 3,
  votes: 31,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "true",
  accepted: "false",
  conference_id: 5,
  tag_list: ['shell', 'technology', 'tags', 'software']
)

Event.create!(
  title: "Event 5-2",
  summary: "Est consectetur etincidunt quisquam voluptatem.",
  description: "Velit dolorem labore eius. Ut modi non adipisci labore eius. Velit amet dolor etincidunt tempora quisquam sit. Eius velit modi quaerat ut consectetur amet. Numquam amet sed sed est dolore. Dolorem neque dolor eius consectetur. Consectetur dolorem quaerat porro. Magnam quisquam voluptatem voluptatem porro.",
  subclass: 1,
  level: 1,
  content_url: "",
  code_url: "",
  language: "en",
  notes: "",
  duration: 2,
  votes: 30,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 5,
  tag_list: ['software', 'web', 'Java', 'PHP']
)

Event.create!(
  title: "Event 5-3",
  summary: "Quisquam est sit voluptatem ipsum sit.",
  description: "Porro neque velit dolore non tempora quaerat. Non porro labore est ipsum velit adipisci. Est labore velit dolore sit est velit dolorem. Quisquam sit etincidunt etincidunt amet dolorem. Magnam etincidunt porro aliquam. Quisquam est consectetur magnam aliquam.",
  subclass: 0,
  level: 5,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 1,
  votes: 20,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 5,
  tag_list: ['Linux', 'web', 'cloud', 'Java']
)

Event.create!(
  title: "Event 5-4",
  summary: "Ipsum consectetur labore aliquam velit sed porro labore.",
  description: "Neque sed numquam quisquam ut amet. Est est eius voluptatem. Consectetur sed quaerat aliquam. Quisquam sit dolore dolor. Non numquam dolorem aliquam est dolor non amet. Dolorem ipsum sit non quiquia. Eius etincidunt dolorem neque etincidunt quiquia.",
  subclass: 1,
  level: 2,
  content_url: "http://gul.es",
  code_url: "",
  language: "es",
  notes: "",
  duration: 3,
  votes: 32,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 5,
  tag_list: ['web', 'tags', 'cloud', 'GNU']
)

Event.create!(
  title: "Event 5-5",
  summary: "Aliquam dolor sit sed dolorem modi.",
  description: "Etincidunt sit dolorem labore dolore modi. Est ut magnam velit tempora voluptatem aliquam. Non voluptatem dolorem sed velit magnam dolore adipisci. Adipisci porro quisquam tempora magnam. Sit dolorem sit etincidunt. Velit adipisci consectetur amet. Etincidunt dolore dolore est dolorem neque. Amet est sit modi amet ut consectetur.",
  subclass: 0,
  level: 3,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "Consectetur velit magnam dolor magnam velit. Quaerat ut consectetur porro. Dolorem labore neque dolorem non porro. Sit sed sed labore consectetur magnam quisquam voluptatem. Etincidunt numquam aliquam adipisci sed quisquam dolore. Magnam ut etincidunt magnam eius modi.",
  duration: 2,
  votes: 24,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 5,
  tag_list: ['shell', 'AI', 'PHP', 'software']
)

Event.create!(
  title: "Event 5-6",
  summary: "Est quisquam velit quisquam.",
  description: "Voluptatem consectetur non magnam quisquam adipisci. Sit est modi dolore ipsum dolore ipsum dolor. Aliquam sed sit adipisci. Eius porro sit quisquam. Non ipsum quaerat neque aliquam ipsum eius labore. Dolore aliquam dolorem numquam sit neque velit. Amet quisquam neque dolor.",
  subclass: 1,
  level: 5,
  content_url: "",
  code_url: "https://github.com/guluc3m",
  language: "en",
  notes: "",
  duration: 0,
  votes: 8,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 5,
  tag_list: ['GNU', 'Java', 'tools', 'database']
)

Event.create!(
  title: "Event 5-7",
  summary: "Sit velit quisquam ipsum tempora ipsum ut.",
  description: "Magnam eius modi magnam sed. Modi non numquam etincidunt dolorem labore amet. Etincidunt dolore eius tempora adipisci. Magnam consectetur sed tempora quisquam dolorem dolore quisquam. Tempora eius quiquia dolor neque.",
  subclass: 0,
  level: 2,
  content_url: "http://gul.es",
  code_url: "https://github.com/guluc3m",
  language: "es",
  notes: "",
  duration: 1,
  votes: 34,
  location: "Leganés",
  room: "Some room",
  start_dtime: "",
  end_dtime: "",
  shown: "true",
  verified: "true",
  cancelled: "false",
  accepted: "false",
  conference_id: 5,
  tag_list: ['Python', 'cloud', 'AI', 'Linux']
)

Speaker.create!(
  name: "Gladys Defir",
  email: "gul1@gul.es",
  twitter: "guluc3m",
  event_id: 1,
  certificate: "false"
)

Speaker.create!(
  name: "Sonia King",
  email: "gul1@gul.es",
  twitter: "",
  event_id: 2,
  certificate: "false"
)

Speaker.create!(
  name: "Rebecca Wilson",
  email: "gul2@gul.es",
  twitter: "guluc3m",
  event_id: 3,
  certificate: "false"
)

Speaker.create!(
  name: "Roderick Guerrero",
  email: "gul3@gul.es",
  twitter: "",
  event_id: 3,
  certificate: "true"
)

Speaker.create!(
  name: "Clarence Lee",
  email: "gul4@gul.es",
  twitter: "",
  event_id: 4,
  certificate: "false"
)

Speaker.create!(
  name: "Frederick Cunningham",
  email: "gul5@gul.es",
  twitter: "",
  event_id: 5,
  certificate: "true"
)

Speaker.create!(
  name: "Jeremy Truelove",
  email: "gul5@gul.es",
  twitter: "",
  event_id: 6,
  certificate: "true"
)

Speaker.create!(
  name: "John Richardson",
  email: "gul6@gul.es",
  twitter: "",
  event_id: 10,
  certificate: "true"
)

Speaker.create!(
  name: "Dorothy Moore",
  email: "gul7@gul.es",
  twitter: "",
  event_id: 11,
  certificate: "false"
)

Speaker.create!(
  name: "Stella Suh",
  email: "gul8@gul.es",
  twitter: "guluc3m",
  event_id: 12,
  certificate: "false"
)

Speaker.create!(
  name: "Robert Paulson",
  email: "gul9@gul.es",
  twitter: "",
  event_id: 13,
  certificate: "false"
)

Speaker.create!(
  name: "Edward Wisdom",
  email: "gul10@gul.es",
  twitter: "",
  event_id: 14,
  certificate: "false"
)

Speaker.create!(
  name: "Shawn Morris",
  email: "gul11@gul.es",
  twitter: "",
  event_id: 15,
  certificate: "false"
)

Speaker.create!(
  name: "Jacquelin Anderson",
  email: "gul12@gul.es",
  twitter: "",
  event_id: 16,
  certificate: "false"
)

Speaker.create!(
  name: "Freda Graham",
  email: "gul13@gul.es",
  twitter: "",
  event_id: 16,
  certificate: "true"
)

Speaker.create!(
  name: "Paul Evans",
  email: "gul1@gul.es",
  twitter: "",
  event_id: 20,
  certificate: "false"
)

Speaker.create!(
  name: "Jennifer Luna",
  email: "gul1@gul.es",
  twitter: "guluc3m",
  event_id: 21,
  certificate: "false"
)

Speaker.create!(
  name: "Bernice Fountain",
  email: "gul2@gul.es",
  twitter: "",
  event_id: 22,
  certificate: "false"
)

Speaker.create!(
  name: "Robert Post",
  email: "gul3@gul.es",
  twitter: "",
  event_id: 22,
  certificate: "true"
)

Speaker.create!(
  name: "Ronald Vargas",
  email: "gul4@gul.es",
  twitter: "",
  event_id: 23,
  certificate: "false"
)

Speaker.create!(
  name: "Lena Whitehead",
  email: "gul5@gul.es",
  twitter: "guluc3m",
  event_id: 24,
  certificate: "true"
)

Speaker.create!(
  name: "Maribel Loughry",
  email: "gul5@gul.es",
  twitter: "",
  event_id: 25,
  certificate: "true"
)

Speaker.create!(
  name: "Brett Frentzel",
  email: "gul6@gul.es",
  twitter: "guluc3m",
  event_id: 29,
  certificate: "true"
)

Speaker.create!(
  name: "Maria Banks",
  email: "gul7@gul.es",
  twitter: "guluc3m",
  event_id: 30,
  certificate: "false"
)

Speaker.create!(
  name: "Maria Eberly",
  email: "gul8@gul.es",
  twitter: "",
  event_id: 31,
  certificate: "false"
)

Speaker.create!(
  name: "Michael Norton",
  email: "gul9@gul.es",
  twitter: "guluc3m",
  event_id: 32,
  certificate: "false"
)

Speaker.create!(
  name: "Yvonne Hines",
  email: "gul10@gul.es",
  twitter: "",
  event_id: 33,
  certificate: "false"
)

Speaker.create!(
  name: "Larry Cobb",
  email: "gul11@gul.es",
  twitter: "",
  event_id: 34,
  certificate: "false"
)

Speaker.create!(
  name: "Ernest Conley",
  email: "gul12@gul.es",
  twitter: "guluc3m",
  event_id: 35,
  certificate: "false"
)

Speaker.create!(
  name: "Amber Blackburn",
  email: "gul13@gul.es",
  twitter: "guluc3m",
  event_id: 35,
  certificate: "true"
)

Speaker.create!(
  name: "Christine Biles",
  email: "gul1@gul.es",
  twitter: "",
  event_id: 39,
  certificate: "false"
)

Speaker.create!(
  name: "Erma Bailey",
  email: "gul1@gul.es",
  twitter: "",
  event_id: 40,
  certificate: "false"
)

Speaker.create!(
  name: "Kathleen Eder",
  email: "gul2@gul.es",
  twitter: "",
  event_id: 41,
  certificate: "false"
)

Speaker.create!(
  name: "Wesley Collyer",
  email: "gul3@gul.es",
  twitter: "guluc3m",
  event_id: 41,
  certificate: "true"
)

Speaker.create!(
  name: "Irene Gurwell",
  email: "gul4@gul.es",
  twitter: "guluc3m",
  event_id: 42,
  certificate: "false"
)

Speaker.create!(
  name: "Brittany Thompson",
  email: "gul5@gul.es",
  twitter: "guluc3m",
  event_id: 43,
  certificate: "true"
)

Speaker.create!(
  name: "Joseph Wickliff",
  email: "gul5@gul.es",
  twitter: "guluc3m",
  event_id: 44,
  certificate: "true"
)

Speaker.create!(
  name: "Carmen Billiot",
  email: "gul6@gul.es",
  twitter: "",
  event_id: 48,
  certificate: "true"
)

Speaker.create!(
  name: "Lisa Forte",
  email: "gul7@gul.es",
  twitter: "guluc3m",
  event_id: 49,
  certificate: "false"
)

Speaker.create!(
  name: "Jacinta Thacker",
  email: "gul8@gul.es",
  twitter: "",
  event_id: 50,
  certificate: "false"
)

Speaker.create!(
  name: "Nicholas York",
  email: "gul9@gul.es",
  twitter: "",
  event_id: 51,
  certificate: "false"
)

Speaker.create!(
  name: "Laurie Buzzelli",
  email: "gul10@gul.es",
  twitter: "guluc3m",
  event_id: 52,
  certificate: "false"
)

Speaker.create!(
  name: "Bruce Allison",
  email: "gul11@gul.es",
  twitter: "",
  event_id: 53,
  certificate: "false"
)

Speaker.create!(
  name: "Lois Welsh",
  email: "gul12@gul.es",
  twitter: "guluc3m",
  event_id: 54,
  certificate: "false"
)

Speaker.create!(
  name: "Stephanie Matheson",
  email: "gul13@gul.es",
  twitter: "",
  event_id: 54,
  certificate: "true"
)

Speaker.create!(
  name: "Paula Green",
  email: "gul1@gul.es",
  twitter: "",
  event_id: 58,
  certificate: "false"
)

Speaker.create!(
  name: "Joanne Murdy",
  email: "gul1@gul.es",
  twitter: "",
  event_id: 59,
  certificate: "false"
)

Speaker.create!(
  name: "Juanita Ristau",
  email: "gul2@gul.es",
  twitter: "guluc3m",
  event_id: 60,
  certificate: "false"
)

Speaker.create!(
  name: "Jewell Ames",
  email: "gul3@gul.es",
  twitter: "",
  event_id: 61,
  certificate: "true"
)

Speaker.create!(
  name: "Linda Mariner",
  email: "gul4@gul.es",
  twitter: "",
  event_id: 62,
  certificate: "false"
)

Speaker.create!(
  name: "Alesia Merkel",
  email: "gul5@gul.es",
  twitter: "guluc3m",
  event_id: 63,
  certificate: "true"
)

Speaker.create!(
  name: "Quincy Moher",
  email: "gul5@gul.es",
  twitter: "guluc3m",
  event_id: 64,
  certificate: "true"
)

Speaker.create!(
  name: "Cruz Woods",
  email: "gul6@gul.es",
  twitter: "",
  event_id: 68,
  certificate: "true"
)

Speaker.create!(
  name: "Kenneth Patrick",
  email: "gul7@gul.es",
  twitter: "",
  event_id: 69,
  certificate: "false"
)

Speaker.create!(
  name: "Christine Clark",
  email: "gul8@gul.es",
  twitter: "",
  event_id: 70,
  certificate: "false"
)

Speaker.create!(
  name: "Dawn Hughes",
  email: "gul9@gul.es",
  twitter: "",
  event_id: 71,
  certificate: "false"
)

Speaker.create!(
  name: "Margaret Castillo",
  email: "gul10@gul.es",
  twitter: "guluc3m",
  event_id: 72,
  certificate: "false"
)

Speaker.create!(
  name: "Nelson Wooldridge",
  email: "gul11@gul.es",
  twitter: "guluc3m",
  event_id: 73,
  certificate: "false"
)

Speaker.create!(
  name: "Elias Ashpole",
  email: "gul12@gul.es",
  twitter: "guluc3m",
  event_id: 74,
  certificate: "false"
)

Speaker.create!(
  name: "Daniel Hood",
  email: "gul13@gul.es",
  twitter: "",
  event_id: 74,
  certificate: "true"
)

Speaker.create!(
  name: "Donald Kirkpatrick",
  email: "gul1@gul.es",
  twitter: "guluc3m",
  event_id: 78,
  certificate: "true"
)

Speaker.create!(
  name: "Crystal Crick",
  email: "gul1@gul.es",
  twitter: "",
  event_id: 79,
  certificate: "true"
)

Speaker.create!(
  name: "Brandon Nation",
  email: "gul2@gul.es",
  twitter: "",
  event_id: 80,
  certificate: "false"
)

Speaker.create!(
  name: "Jose Becker",
  email: "gul3@gul.es",
  twitter: "",
  event_id: 80,
  certificate: "true"
)

Comment.create!(
    name: "Melissa Bush",
    email: "gul1@gul.es",
    content: "Ipsum labore adipisci labore adipisci dolore est. Adipisci neque velit numquam dolorem voluptatem neque magnam. Modi neque dolore labore numquam magnam est. Tempora neque ut aliquam voluptatem eius tempora sit. Labore porro sed adipisci sed quisquam amet eius. Etincidunt etincidunt quisquam labore voluptatem aliquam ut.",
    commentable_id: 63,
    commentable_type: "Event"
)

Comment.create!(
    name: "Karl Thomson",
    email: "gul2@gul.es",
    content: "Magnam labore neque ut dolore velit sed. Numquam est labore dolorem quiquia. Porro magnam consectetur aliquam. Modi sed magnam ut magnam etincidunt. Neque labore labore quiquia modi. Est dolore quiquia non. Aliquam quaerat consectetur quisquam eius velit dolor numquam. Ipsum dolor ipsum voluptatem quaerat. Amet non dolore consectetur.",
    commentable_id: 75,
    commentable_type: "Event"
)

Comment.create!(
    name: "Sarah Tito",
    email: "gul3@gul.es",
    content: "Adipisci quaerat sit eius quaerat adipisci. Sed tempora dolore numquam porro. Magnam dolorem consectetur dolore eius dolor ipsum non. Dolor voluptatem aliquam etincidunt ipsum quisquam eius. Tempora non non tempora est non ut adipisci. Aliquam non est etincidunt voluptatem voluptatem neque. Sit magnam tempora amet quiquia. Dolorem quisquam quisquam dolore.",
    commentable_id: 40,
    commentable_type: "Event"
)

Comment.create!(
    name: "Susan Nieman",
    email: "gul4@gul.es",
    content: "Sed sit tempora eius quisquam sit. Eius consectetur consectetur eius non non tempora. Quiquia labore dolore numquam est quiquia. Quaerat dolorem tempora labore quaerat ut. Quiquia sit quaerat velit consectetur. Etincidunt quaerat dolore quiquia. Adipisci quaerat est dolor magnam sit voluptatem consectetur. Labore porro tempora dolor consectetur.",
    commentable_id: 30,
    commentable_type: "Event"
)

Comment.create!(
    name: "Alfred Harris",
    email: "gul5@gul.es",
    content: "Dolorem ut porro etincidunt quaerat sit quaerat. Quisquam voluptatem magnam quiquia quisquam est adipisci. Consectetur dolor velit neque numquam quaerat dolorem. Eius porro dolore dolor velit. Labore aliquam labore est quisquam numquam eius dolore. Sed dolore est eius ipsum. Numquam tempora velit dolore.",
    commentable_id: 68,
    commentable_type: "Event"
)

Comment.create!(
    name: "Eugene Bridgeman",
    email: "gul6@gul.es",
    content: "Non consectetur aliquam eius eius velit quisquam. Ut numquam tempora aliquam modi est non. Sit quisquam ipsum sit etincidunt voluptatem. Numquam quisquam neque quisquam velit sit ipsum non. Labore modi tempora velit aliquam aliquam velit. Modi dolorem labore non porro magnam. Numquam aliquam dolor amet consectetur quisquam eius dolor. Numquam consectetur modi dolor numquam neque. Porro adipisci ipsum velit sed ut etincidunt. Quiquia velit sed magnam numquam dolore.",
    commentable_id: 43,
    commentable_type: "Event"
)

Comment.create!(
    name: "Kelly Anderson",
    email: "gul7@gul.es",
    content: "Quaerat magnam sit velit. Neque quisquam velit magnam modi magnam modi. Velit adipisci etincidunt sit quaerat magnam adipisci. Etincidunt modi dolore est adipisci adipisci. Numquam non porro velit adipisci amet. Quaerat velit est eius ipsum.",
    commentable_id: 78,
    commentable_type: "Event"
)

Comment.create!(
    name: "Craig Tomasi",
    email: "gul8@gul.es",
    content: "Dolorem porro porro dolor. Quisquam velit non amet. Quaerat tempora aliquam neque. Magnam etincidunt tempora voluptatem sed dolorem. Quiquia etincidunt dolor porro sed.",
    commentable_id: 7,
    commentable_type: "Event"
)

Comment.create!(
    name: "Johnnie Gwinn",
    email: "gul9@gul.es",
    content: "Sit aliquam non aliquam sit. Dolorem dolor non tempora etincidunt adipisci. Consectetur porro quiquia velit sit ut quaerat tempora. Quisquam quaerat eius consectetur ipsum eius modi labore. Dolor sit ut dolore labore non consectetur. Sed porro dolore dolore dolor labore quiquia ut. Quisquam est dolore consectetur dolorem neque non. Tempora dolorem etincidunt sed est dolorem ipsum.",
    commentable_id: 75,
    commentable_type: "Event"
)
