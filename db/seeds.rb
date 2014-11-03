# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Motherboard.create(price:10.00)
Motherboard.create(price:20.00)
Motherboard.create(price:30.00)
Motherboard.create(price:40.00)
Motherboard.create(price:50.00)

Cpu.create(price:10.00, speed:"1")
Cpu.create(price:20.00, speed:"2")
Cpu.create(price:30.00, speed:"3")
Cpu.create(price:40.00, speed:"4")
Cpu.create(price:50.00, speed:"5")

Gpu.create(price:10.00, vram:"1")
Gpu.create(price:20.00, vram:"2")
Gpu.create(price:30.00, vram:"3")
Gpu.create(price:40.00, vram:"4")
Gpu.create(price:50.00, vram:"5")

Ram.create(price:10.00, size:"1")
Ram.create(price:20.00, size:"2")
Ram.create(price:30.00, size:"3")
Ram.create(price:40.00, size:"4")
Ram.create(price:50.00, size:"5")

Hd.create(price:10.00, size:"1")
Hd.create(price:20.00, size:"2")
Hd.create(price:30.00, size:"3")
Hd.create(price:40.00, size:"4")
Hd.create(price:50.00, size:"5")

Power.create(price:10.00, voltage:"1")
Power.create(price:20.00, voltage:"2")
Power.create(price:30.00, voltage:"3")
Power.create(price:40.00, voltage:"4")
Power.create(price:50.00, voltage:"5")