puts "🌱 Seeding spices..."
puts "Deleting Car/Project data..."
Car.destroy_all
Project.destroy_all

puts "Creating Cars..."
c1 = Car.create(
    name: "3M",
    year: 2004,
    make: "BMW",
    model: "M3",
    image_url: "https://cdn.shopify.com/s/files/1/0294/2910/4733/collections/Col_E46_420x.jpg?v=1609528510"
)

c2 = Car.create(
    name: "Macy",
    year: 1991,
    make: "Toyota",
    model: "MR2 Turbo",
    image_url: "https://images.unsplash.com/photo-1535053073254-1ffc1915425d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2495&q=80"
)

c3 = Car.create(
    name: "Nelson",
    year: 1997,
    make: "Toyota",
    model: "Celica",
    image_url: "https://images.unsplash.com/photo-1509328832899-c4a7a0b85dfa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2579&q=80"
)


puts "Creating Projects..."
Project.create(
    title: "Brake Change", 
    time_required: 2.5, 
    tools_required: "5mm, 6mm, 8mm hex bits; 10mm, 13mm, 17mm sockets; torque wrench; hammer, jackstands; floor jack; caliper grease", 
    description: "Lift car with jack. Support vehicle on jack stands. Remove wheels. Remove pad wear sensors from brake pads. Rmove caliper bolts with 8mm hex. Remove caliper bracket with 17mm socket, Replace rotor. Grease contact edges on pads and place in caliper. Mount caliper bracket on wheel hub knuckle. Mount caliper to wheel hub. Torque all fasteners to spec.", 
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    car_id: c3.id)

Project.create(
    title: "Wheel Hub Replacement", 
    time_required: 4, 
    tools_required: "Floor jack, jack stands, breaker bar, 13mm, 15mm, 17mm sockets; 22mm half inch socket & driver; mallet; wheel hub puller or slide hammer; C-clip pliers; Map Gas Torch; PB Blaster; Synthetic Grease", 
    description: "Worst job ever! After lifting car and removing wheel/brake, remove C-Clip on hub. Spray hub assembly with PB blaster and allow to soak for 30 mins. Heat hub with torch until red hot. Use puller to remove the drive axle from the hub. Remove hub with slide hammer and mallet. Replace with new hub and reassemble", 
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    car_id: c2.id)

Project.create(
    title: "Subframe Reinforcement", 
    time_required: 12, 
    tools_required: "Mig Welder, angle grinder, wire wheel, assorted ratchets, shop press, torque wrench, PB Blaster", 
    description: "Remove parking brake cables, remove 2 13mm nuts on rear shock towers, remove differential and wheel speed sensors, remove 19mm subframe bolts, lower subframe assembly with shop table, grind down subframe mounting points and prep reinforcement plates, weld plates into position, paint over exposed metal, fill access holes with cavity wax, reinstall subframe",
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    car_id: c1.id)

Project.create(
    title: "Vanos Rebuild", 
    time_required: 10, 
    tools_required: "Engine timing pin and cam bridge, torx bits, hex bits, sockets, breaker bar, pick set, degreaser", 
    description: "Follow steps to remove valve cover and expose upper timing galley, visit beisansystems.com to follow VANOS body removal procedure, install new oil vanos oil pump disc, upper timing guide, and camshaft hub bolts, reassemble, check timing",
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    car_id: c1.id)

Project.create(
    title: "Oil Change", 
    time_required: 1, 
    tools_required: "Jack stands, floor jack, socket set, rags, catch pan", 
    description: "Pull dipstick, break oil filter housing to vent, remove drain plug. After oil drains, replace crush seal and reinstall drain plug, replace oil filter and torque housing bolt, fill with new oil, check oil level and replace dipstick",
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    car_id: c2.id)


puts "✅ Done seeding!"
