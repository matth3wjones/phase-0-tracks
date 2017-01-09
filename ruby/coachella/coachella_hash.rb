coachella_2017 = {
  art: {
    pretty_name: "Art",
    installations: ["T-Rex", "panda", "String of Balloons", "Space Man"],
    mobile: []
  },
  music: {
    pretty_name: "Music",
    rock: ["Guns n Roses", "Milky Chance", "The 1975", "CHUVRCHES", "St. Lucia", "Bad Suns"],
    hip_hop: ["Beyoncé", "Drake", "Dr Dre", "Snoop"],
    dance: ["Years & Years", "RAC", "Sia", "Calvin Harris", "Rihanna"]
  },
  festival: {
    pretty_name: "Festival",
    water_stations: 6,
    bathrooms: 32,
    food: {pizza: 20, burgers: 12, tacos: 16},
    stages: ["Coachella", "Gobi Tent", "Mojave Tent", "Outdoor Theatre", "Sahara Tent", "Yuma"],
    beer_and_wine: [""],
  },
  logistics: {
    pretty_name: "Logistics",
    police: {palm_springs: 60, indio:40, palm_desert: 46},
    fire_fighters: {palm_springs: 7, indio:15, palm_desert: 22},
    medical_services: 48,
    guest_services: {wristbands: 40, lost_and_found: 65, artists: 50}
  }
}

puts coachella_2017

puts coachella_2017[:music][:dance][0]
puts "Our favorite artist from last year was #{coachella_2017[:music][:dance][0]}"