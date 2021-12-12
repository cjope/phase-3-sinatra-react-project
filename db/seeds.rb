puts "🌱 Seeding messages..."

User.create([
{
  name:"Jeff"
},
{
  name: "Laura"
}
])

Group.create([

  {
    name: "School",
    emoji: "📚"
  },
  {
    name: "Home",
    emoji: "🏠"
  },
  {
    name: "Work",
    emoji: "💼"
  },
  {
    name: "Finance",
    emoji:"💰"
  },
  {
    name: "Music",
    emoji: "🎹"
  },
])

Task.create([
  {
    body: "Finish App",
    user_id: "1",
    group_id: "1",
    due: ("05/12/2021")
  },
  {
    body: "Make the Bed",
    user_id: "1",
    group_id: "2",
    due: ("12/12/2021")
  },
  {
    body: "Sweep the Floor",
    user_id: "1",
    group_id: "2",
    due: ("12/11/2021")
  },
  {
    body: "Shake the Carpet",
    user_id: "1",
    group_id: "2",
    due: ("12/12/2021")
  },
  {
    body: "Spray",
    user_id: "1",
    group_id: "2",
    due: ("12/09/2021")
  },
  {
    body: "Holiday Break",
    user_id: "1",
    group_id: "3",
    due: ("24/12/2021")
  },
  {
    body: "Run reports forever",
    user_id: "1",
    group_id: "3",
    due: ("06/12/2022")
  },
  {
    body: "Phase 4 Starts",
    user_id: "2",
    group_id: "1",
    due: ("16/12/2021")
  },  {
    body: "Pay Loans",
    user_id: "2",
    group_id: "4",
    due: ("15/12/2022")
  },
  {
    body: "Write a hit",
    user_id: "2",
    group_id: "5",
    due: ("15/12/2025")
  }
])



puts "✅ Done seeding!"