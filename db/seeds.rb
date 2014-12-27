# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Brand.create(brand_name: 'Apple')
Brand.create(brand_name: 'BenQ')
Brand.create(brand_name: 'BlackBerry')
Brand.create(brand_name: 'Gradiente')
Brand.create(brand_name: 'Hitachi')
Brand.create(brand_name: 'HTC')
Brand.create(brand_name: 'Huawei')
Brand.create(brand_name: 'Kyocera')
Brand.create(brand_name: 'LG')
Brand.create(brand_name: 'Motorola')
Brand.create(brand_name: 'Nokia')
Brand.create(brand_name: 'Palm')
Brand.create(brand_name: 'Samsung')
Brand.create(brand_name: 'Sony Ericsson')
Brand.create(brand_name: 'Toshiba')
Brand.create(brand_name: 'ZTE')
Brand.create(brand_name: 'Other')

Carrier.create(carrier_name: 'Unlocked')
Carrier.create(carrier_name: 'Rogers')
Carrier.create(carrier_name: 'Telus')
Carrier.create(carrier_name: 'Bell')
Carrier.create(carrier_name: 'Globalive')
Carrier.create(carrier_name: 'SaskTel')
Carrier.create(carrier_name: 'Videotron')
Carrier.create(carrier_name: 'MTS')
Carrier.create(carrier_name: 'Dave')
Carrier.create(carrier_name: 'Bragg')
Carrier.create(carrier_name: 'TBayTel')
Carrier.create(carrier_name: 'Ice')
Carrier.create(carrier_name: 'Other')

Condition.create(condition_status: 'Never Used')
Condition.create(condition_status: 'Like new (no signs of use or scratches')
Condition.create(condition_status: 'Great (minor signs of use or scratches')
Condition.create(condition_status: 'Good (apparent scratches or dents)')
Condition.create(condition_status: 'Functional, but with problems')





