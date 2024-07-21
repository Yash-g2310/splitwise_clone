List<Map<String, dynamic>> dummyData = [
  {
    'name': 'Meha',
    'status': 'owes you',
    'money': 750,
  },
  {
    'name': 'John',
    'status': 'You owe',
    'money': 1500,
  },
  {
    'name': 'Alice',
    'status': 'owes you',
    'money': 300,
  },
  {
    'name': 'Bob',
    'status': 'You owe',
    'money': 1200,
  },
  {
    'name': 'Emma',
    'status': 'owes you',
    'money': 600,
  },
  {
    'name': 'Michael',
    'status': 'You owe',
    'money': 1800,
  },
  {
    'name': 'Sophia',
    'status': 'owes you',
    'money': 900,
  },
  {
    'name': 'David',
    'status': 'You owe',
    'money': 2000,
  },
  {
    'name': 'Lily',
    'status': 'owes you',
    'money': 450,
  },
  {
    'name': 'James',
    'status': 'You owe',
    'money': 800,
  },
];

List<Map<String, dynamic>> activities = [
  {'activity': 'Trip to Goa', 'desc': 'Meha owes you', 'money': 1200},
  {'activity': 'Movie night', 'desc': 'You owe John', 'money': 300},
  {'activity': 'Dinner at The Taj', 'desc': 'Alice owes you', 'money': 1500},
  {'activity': 'Trip to Shimla', 'desc': 'You owe Bob', 'money': 800},
  {'activity': 'Other expenses', 'desc': 'Emma owes you', 'money': 450},
  {'activity': 'Trip to Manali', 'desc': 'You owe Michael', 'money': 1100},
  {'activity': 'Movie night', 'desc': 'Sophia owes you', 'money': 200},
  {'activity': 'Dinner at Olive Garden', 'desc': 'You owe David', 'money': 900},
  {'activity': 'Trip to Jaipur', 'desc': 'Lily owes you', 'money': 1300},
  {'activity': 'Other expenses', 'desc': 'You owe James', 'money': 600},
  {'activity': 'Trip to Lonavala', 'desc': 'Bob owes you', 'money': 500},
  {'activity': 'Movie night', 'desc': 'You owe Emma', 'money': 250},
  {'activity': 'Dinner at BBQ Nation', 'desc': 'John owes you', 'money': 1000},
  {'activity': 'Trip to Ooty', 'desc': 'You owe Sophia', 'money': 700},
  {'activity': 'Other expenses', 'desc': 'Alice owes you', 'money': 350}
];

List<Map<String, dynamic>> actionPerformed = [
  {
    'action': 'pay money',
    'head': 'You settled up with John',
    'body': 'You paid ₹500 to John',
  },
  {
    'action': 'owe money',
    'head': 'Emma sended money',
    'body': 'You owe ₹300',
  },
  {
    'action': 'create group',
    'head': 'You created the group \n\'Trip to Goa\'',
    'body': 'Now leave splitting to splitwise',
  },
  {
    'action': 'created group',
    'head': 'Alice created the group \n"Trip to Shimla"',
    'body': 'Now leave splitting to splitwise',
  },
  {
    'action': 'expense added by you',
    'head': 'You added to group \n"Dinner at The Taj"',
    'body': 'You added dinner bill',
  },
  {
    'action': 'expense added by other',
    'head': 'Michael added to group \n"Trip to Manali"',
    'body': 'You added travel tickets',
  },
  {
    'action': 'add to group',
    'head': 'You added David to group \n"Dinner at Olive Garden"',
    'body': 'Split wisely now',
  },
  {
    'action': 'add to group',
    'head': 'You added Lily to group \n"Trip to Jaipur"',
    'body': 'Split wisely now',
  },
  {
    'action': 'pay money',
    'head': 'You settled up with Sophia',
    'body': 'You paid ₹700 to Sophia',
  },
  {
    'action': 'owe money',
    'head': 'James sended money',
    'body': 'You owe ₹600',
  },
  {
    'action': 'create group',
    'head': 'You created the group \n\'Movie night\'',
    'body': 'Now leave splitting to splitwise',
  },
  {
    'action': 'created group',
    'head': 'Bob created the group \n"Trip to Lonavala"',
    'body': 'Now leave splitting to splitwise',
  },
  {
    'action': 'expense added by you',
    'head': 'You added to group \n"Other expenses"',
    'body': 'You added general expenses',
  },
  {
    'action': 'expense added by other',
    'head': 'Emma added to group \n"Movie night"',
    'body': 'Emma added movie tickets',
  },
  {
    'action': 'add to group',
    'head': 'You added Alice to group \n"Other expenses"',
    'body': 'Split wisely now',
  },
];
