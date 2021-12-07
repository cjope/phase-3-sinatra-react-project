puts "🌱 Seeding messages..."

User.create([{
  name: "default"
},
{
  name:"Jeff"
},
{
  name: "Laura"
}
])

Group.create([

  {
    user_id: "1",
    name: "School",
    emoji: "📚"
  },
  {
    user_id: "2",
    name: "Home",
    emoji: "🏠"
  },
  {
    user_id: "2",
    name: "Work",
    emoji: "💼"
  },
  {
    user_id: "3",
    name: "Finance",
    emoji:"💰"
  },
  {
    user_id: "3",
    name: "Music",
    emoji: "🎹"
  },
])

Task.create([

  {
    body: "Get Make a Task App",
    group_id: "1",
    due: ("03/12/2021")
  },
  {
    body: "Make the Bed",
    group_id: "2",
    due: ("12/12/2021")
  },
  {
    body: "Sweep the Floor",
    group_id: "2",
    due: ("12/12/2021")
  },
  {
    body: "Shake the Carpet",
    group_id: "2",
    due: ("12/12/2021")
  },
  {
    body: "Spray",
    group_id: "2",
    due: ("12/12/2021")
  },
  {
    body: "Holiday Break",
    group_id: "3",
    due: ("24/12/2021")
  },
  {
    body: "Run reports forever",
    group_id: "3",
    due: ("24/12/2022")
  },
  {
    body: "Phase 4 Starts",
    group_id: "1",
    due: ("16/12/2021")
  },  {
    body: "Pay Loans",
    group_id: "4",
    due: ("15/12/2022")
  },
  {
    body: "Write a hit",
    group_id: "5",
    due: ("15/12/2025")
  }
])



puts "✅ Done seeding!"