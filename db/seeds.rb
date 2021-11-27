puts "🌱 Seeding messages..."

Group.create([
  {
    name: "Home"
  },
  {
    name: "School"
  },
  {
    name: "Work"
  },
  {
    name: "Finance"
  }
])

Task.create([
  {
    body: "Make the Bed",
    group_id: "1",
    due: ("12/01/2021")
  },
  {
    body: "Sweep the Floor",
    group_id: "1",
    due: ("12/01/2021")
  },
  {
    body: "Shake the Carpet",
    group_id: "1",
    due: ("12/01/2021")
  },
  {
    body: "Spray",
    group_id: "1",
    due: ("12/01/2021")
  },
  {
    body: "Put My Stuff in a Pile",
    group_id: "1",
    due: ("12/01/2021")
  },
  {
    body: "Holiday Break",
    group_id: "2",
    due: ("24/12/2021")
  },
  {
    body: "Phase 4 Starts",
    group_id: "3",
    due: ("13/12/2021")
  },  {
    body: "Pay Loans",
    group_id: "4",
    due: ("01/07/2022")
  }
])

puts "✅ Done seeding!"