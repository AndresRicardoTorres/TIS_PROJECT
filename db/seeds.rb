# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# puts 'SETTING UP DEFAULT USER LOGIN'
# user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
# puts 'New user created: ' << user.name
# user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
# puts 'New user created: ' << user2.name

# param_01 = Parameter.new :value => '1.0'
# param_01.param_section  = metric
# param_01.param_category = system_in  
# param_01.param_level    = weight
# param_01.save!

puts 'SETTING UP PARAMETERS'


met_weight_01 = MetricWeight.create! :name => 'system_in',                  :description => 'Entradas al sistema',                       :weight => '1.0'
met_weight_02 = MetricWeight.create! :name => 'system_out',                 :description => 'Salidas del sistema',                       :weight => '1.5'
met_weight_03 = MetricWeight.create! :name => 'rm_entities',                :description => 'Entidades del modelo relacional',           :weight => '2.0'
met_weight_04 = MetricWeight.create! :name => 'ext_sys_interface_api',      :description => 'Interfases sistemas externos - API',        :weight => '1.0'
met_weight_05 = MetricWeight.create! :name => 'ext_sys_interface_protocol', :description => 'Interfases sistemas externos - Protocolo',  :weight => '1.5'


# puts 'Parameters'
# puts '  Metrics'
# param_01 = Parameter.new :value => '1.0'
# param_01.param_section  = ParamSection.new :name => 'metric', :description => 'Metrica'
# param_01.param_category = ParamCategory.new :name => 'system_in', :description => 'Entradas al sistema'
# param_01.param_level    = ParamLevel.new :name => 'weight', :description => 'Peso'
# param_01.save!

# param_02 = Parameter.new :value => '1.5'
# param_02.param_section  = ParamSection.new :name => 'metric', :description => 'Metrica'
# param_02.param_category = ParamCategory.new :name => 'system_out', :description => 'Salidas del sistema'
# param_02.param_level    = ParamLevel.new :name => 'weight', :description => 'Peso'
# param_02.save!
# # 
# param_03 = Parameter.new :value => '2.0'
# param_03.param_section  = ParamSection.new :name => 'metric', :description => 'Metrica'
# param_03.param_category = ParamCategory.new! :name => 'rm_entities', :description => 'Entidades del modelo relacional'
# param_03.param_level    = ParamLevel.new :name => 'weight', :description => 'Peso'
# param_03.save!
# 
# param_04 = Parameter.new :value => '1.0'
# param_04.param_section  = metric
# param_04.param_category = ext_sys_interface_api
# param_04.param_level    = weight
# param_04.save!
# 
# param_05 = Parameter.new :value => '1.5'
# param_05.param_section  = metric
# param_05.param_category = ext_sys_interface_protocol
# param_05.param_level    = weight
# param_05.save!
# ###########################################################################


# puts '  Complexity Adjustment'
# 
# param_06 = Parameter.new :value => '2.0'
# param_06.param_section  = complexity
# param_06.param_category = assoc_business_logic
# param_06.param_level    = very_high
# param_06.save!
# 
# param_07 = Parameter.new :value => '1.0'
# param_07.param_section  = complexity
# param_07.param_category = assoc_business_logic
# param_07.param_level    = high 
# param_07.save!
# 
# param_08 = Parameter.new :value => '0.5'
# param_08.param_section  = complexity
# param_08.param_category = assoc_business_logic
# param_08.param_level    = mid
# param_08.save!
# 
# param_09 = Parameter.new :value => '0.1'
# param_09.param_section  = complexity
# param_09.param_category = assoc_business_logic
# param_09.param_level    = low
# param_09.save!
# 
# # --------
# param_10 = Parameter.new :value => '0.5'
# param_10.param_section  = complexity
# param_10.param_category = code_gen_help
# param_10.param_level    = high
# param_10.save!
# 
# param_11 = Parameter.new :value => '0.75'
# param_11.param_section  = complexity  
# param_11.param_category = code_gen_help  
# param_11.param_level    = mid 
# param_11.save!
# 
# param_12 = Parameter.new :value => '0.95'
# param_12.param_section  = complexity  
# param_12.param_category = code_gen_help  
# param_12.param_level    = low   
# param_12.save!
# 
# 
# puts '  View type'
# param_13 = Parameter.new :value => '1.0'
# param_13.param_section  = view
# param_13.param_category = na
# param_13.param_level    = none
# param_13.save!
# 
# 
# param_1 = Parameter.new :value => '1.08'
# param_1.param_section  = view
# param_1.param_category = master
# param_1.param_level    = low
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.2'
# param_1.param_section  = view
# param_1.param_category = master
# param_1.param_level    = mid
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.3'
# param_1.param_section  = view
# param_1.param_category = master
# param_1.param_level    = high
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.1'
# param_1.param_section  = view
# param_1.param_category = master_detail
# param_1.param_level    = low
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.3'
# param_1.param_section  = view
# param_1.param_category = master_detail
# param_1.param_level    = mid
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.5'
# param_1.param_section  = view
# param_1.param_category = master_detail
# param_1.param_level    = high
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.08'
# param_1.param_section  = view
# param_1.param_category = process
# param_1.param_level    = low
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.2'
# param_1.param_section  = view
# param_1.param_category = process
# param_1.param_level    = mid
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.5'
# param_1.param_section  = view
# param_1.param_category = process
# param_1.param_level    = high
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.3'
# param_1.param_section  = view
# param_1.param_category = graphics_interactive
# param_1.param_level    = low
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.5'
# param_1.param_section  = view
# param_1.param_category = graphics_interactive
# param_1.param_level    = mid
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.8'
# param_1.param_section  = view
# param_1.param_category = graphics_interactive
# param_1.param_level    = high
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.03'
# param_1.param_section  = view
# param_1.param_category = basic_report
# param_1.param_level    = low
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.1'
# param_1.param_section  = view
# param_1.param_category = basic_report
# param_1.param_level    = mid
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.3'
# param_1.param_section  = view
# param_1.param_category = basic_report
# param_1.param_level    = high
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.3'
# param_1.param_section  = view
# param_1.param_category = graphic_report
# param_1.param_level    = low
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.5'
# param_1.param_section  = view
# param_1.param_category = graphic_report
# param_1.param_level    = mid
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.8'
# param_1.param_section  = view
# param_1.param_category = graphic_report
# param_1.param_level    = high
# param_1.save!
# 
# 
# param_1 = Parameter.new :value => '1.4'
# param_1.param_section  = view
# param_1.param_category = mixed_report
# param_1.param_level    = high
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.6'
# param_1.param_section  = view
# param_1.param_category = mixed_report
# param_1.param_level    = high
# param_1.save!
# 
# param_1 = Parameter.new :value => '1.2'
# param_1.param_section  = view
# param_1.param_category = mixed_report
# param_1.param_level    = high
# param_1.save!
# # 
# # param_1 = Parameter.new :value => ''
# # param_1.param_section  = view
# # param_1.param_category = 
# # param_1.param_level    = high
# # param_1.save!
# 
# 
# puts 'Parameter Sections'
# metric      = ParamSection.create! :name => 'metric', :description => 'Metrica'
# complexity  = ParamSection.create! :name => 'complexity', :description => 'Ajuste de Complejidad'
# view        = ParamSection.create! :name => 'view', :description => 'Tipo de Pantalla'
# 
# 
# puts 'Parameter Categories'
# system_in                  = ParamCategory.create! :name => 'system_in',                  :description => 'Entradas al sistema'
# system_out                 = ParamCategory.create! :name => 'system_out',                 :description => 'Salidas del sistema'
# rm_entities                = ParamCategory.create! :name => 'rm_entities',                :description => 'Entidades del modelo relacional'
# ext_sys_interface_api      = ParamCategory.create! :name => 'ext_sys_interface_api',      :description => 'Interfases sistemas externos - API'
# ext_sys_interface_protocol = ParamCategory.create! :name => 'ext_sys_interface_protocol', :description => 'Interfases sistemas externos - Protocolo'
# 
# assoc_business_logic  = ParamCategory.create! :name => 'assoc_business_logic', :description => 'Logica de negocio asociada'
# code_gen_help         = ParamCategory.create! :name => 'code_gen_help', :description => 'Ayuda mediante generador de codigo'
# developer_exp         = ParamCategory.create! :name => 'developer_exp', :description => 'Experiencia del desarrollador'
# 
# na                    = ParamCategory.create! :name => 'na', :description => 'No aplica'
# master                = ParamCategory.create! :name => 'master', :description => 'Maestro'
# master_detail         = ParamCategory.create! :name => 'master_detail', :description => 'Maestro - Detalle'
# process               = ParamCategory.create! :name => 'process', :description => 'Proceso'
# graphics_interactive  = ParamCategory.create! :name => 'graphics_interactive', :description => 'Interactiva grafica (activeX, applet)'
# basic_report          = ParamCategory.create! :name => 'basic_report', :description => 'Reporte basico'
# graphic_report        = ParamCategory.create! :name => 'graphic_report', :description => 'Reporte grafico'
# mixed_report          = ParamCategory.create! :name => 'mixed_report', :description => 'Reporte mixto'
# 
# puts 'Parameter Levels'
# none        = ParamLevel.create! :name => 'none', :description => 'ninguno'
# very_high   = ParamLevel.create! :name => 'very_high', :description => 'Muy alta'
# high        = ParamLevel.create! :name => 'high', :description => 'Alta'
# mid         = ParamLevel.create! :name => 'mid', :description => 'Media'
# low         = ParamLevel.create! :name => 'low', :description => 'Baja'
# weight      = ParamLevel.create! :name => 'weight', :description => 'Peso'

# optimistic = Paramlevel.create! :name => 'optimistic', :description => 'Optimista'
# pessimistic = Paramlevel.create! :name => 'pessimistic', :description => 'Pesimista'
# probable = Paramlevel.create! :name => 'probable', :description => 'Probable'








