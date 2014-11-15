# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Motherboard.create(price:0.00,  cpu_compad:"B", gpu_compad:"C", ram_compad:"A", hd_compad:"B")
Motherboard.create(price:10.00, cpu_compad:"A", gpu_compad:"B", ram_compad:"C", hd_compad:"A")
Motherboard.create(price:20.00, cpu_compad:"B", gpu_compad:"C", ram_compad:"A", hd_compad:"B")
Motherboard.create(price:30.00, cpu_compad:"C", gpu_compad:"A", ram_compad:"B", hd_compad:"C")
Motherboard.create(price:40.00, cpu_compad:"A", gpu_compad:"B", ram_compad:"C", hd_compad:"A")
Motherboard.create(price:50.00, cpu_compad:"B", gpu_compad:"C", ram_compad:"A", hd_compad:"B")

Cpu.create(price:0.0,   speed:"0", mb_compad:"C")
Cpu.create(price:10.00, speed:"1", mb_compad:"A")
Cpu.create(price:20.00, speed:"2", mb_compad:"B")
Cpu.create(price:30.00, speed:"3", mb_compad:"C")
Cpu.create(price:40.00, speed:"4", mb_compad:"A")
Cpu.create(price:50.00, speed:"5", mb_compad:"B")
Cpu.create(price:10.00, speed:"1", mb_compad:"C")
Cpu.create(price:20.00, speed:"2", mb_compad:"A")
Cpu.create(price:30.00, speed:"3", mb_compad:"B")
Cpu.create(price:40.00, speed:"4", mb_compad:"C")
Cpu.create(price:50.00, speed:"5", mb_compad:"A")



Gpu.create(price:0.0,   vram:"0", mb_compad:"B")
Gpu.create(price:10.00, vram:"1", mb_compad:"A")
Gpu.create(price:20.00, vram:"2", mb_compad:"B")
Gpu.create(price:30.00, vram:"3", mb_compad:"C")
Gpu.create(price:40.00, vram:"4", mb_compad:"A")
Gpu.create(price:50.00, vram:"5", mb_compad:"B")
Gpu.create(price:10.00, vram:"1", mb_compad:"C")
Gpu.create(price:20.00, vram:"2", mb_compad:"A")
Gpu.create(price:30.00, vram:"3", mb_compad:"B")
Gpu.create(price:40.00, vram:"4", mb_compad:"C")
Gpu.create(price:50.00, vram:"5", mb_compad:"A")


Ram.create(price:0.0  , size:"0", mb_compad:"B")
Ram.create(price:10.00, size:"1", mb_compad:"A")
Ram.create(price:20.00, size:"2", mb_compad:"B")
Ram.create(price:30.00, size:"3", mb_compad:"C")
Ram.create(price:40.00, size:"4", mb_compad:"A")
Ram.create(price:50.00, size:"5", mb_compad:"B")
Ram.create(price:10.00, size:"1", mb_compad:"C")
Ram.create(price:20.00, size:"2", mb_compad:"A")
Ram.create(price:30.00, size:"3", mb_compad:"B")
Ram.create(price:40.00, size:"4", mb_compad:"C")
Ram.create(price:50.00, size:"5", mb_compad:"A")


Hd.create(price:0.00, size:"0", mb_compad:"A")
Hd.create(price:10.00, size:"1", mb_compad:"A")
Hd.create(price:20.00, size:"2", mb_compad:"B")
Hd.create(price:30.00, size:"3", mb_compad:"C")
Hd.create(price:40.00, size:"4", mb_compad:"A")
Hd.create(price:50.00, size:"5", mb_compad:"B")
Hd.create(price:10.00, size:"1", mb_compad:"C")
Hd.create(price:20.00, size:"2", mb_compad:"A")
Hd.create(price:30.00, size:"3", mb_compad:"B")
Hd.create(price:40.00, size:"4", mb_compad:"C")
Hd.create(price:50.00, size:"5", mb_compad:"A")

Power.create(price:0, watts:"0")
Power.create(price:10.00, watts:"1")
Power.create(price:20.00, watts:"2")
Power.create(price:30.00, watts:"3")
Power.create(price:40.00, watts:"4")
Power.create(price:50.00, watts:"5")

#Computer.create(user_id:1, price:0, hd_id:1, motherboard_id:1, ram_id:1,gpu_id:1,power_id:1,cpu_id:1)
#Computer.create(user_id:2, price:0, hd_id:1, motherboard_id:1, ram_id:1,gpu_id:1,power_id:1,cpu_id:1)
#Computer.create(user_id:3, price:0, hd_id:1, motherboard_id:1, ram_id:1,gpu_id:1,power_id:1,cpu_id:1)
#Computer.create(user_id:4, price:0, hd_id:1, motherboard_id:1, ram_id:1,gpu_id:1,power_id:1,cpu_id:1)
#Computer.create(user_id:5, price:0, hd_id:1, motherboard_id:1, ram_id:1,gpu_id:1,power_id:1,cpu_id:1)
