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

puts 'SETTING UP PARAMETERS'

MetricWeight.delete_all
met_weight_01 = MetricWeight.create! :name => 'system_in',                  :description => 'System in',                       :weight => '1.0'
met_weight_02 = MetricWeight.create! :name => 'system_out',                 :description => 'System out',                       :weight => '1.5'
met_weight_03 = MetricWeight.create! :name => 'rm_entities',                :description => 'Relational model entities',           :weight => '2.0'
met_weight_04 = MetricWeight.create! :name => 'ext_sys_interface_api',      :description => 'External systems interfaces - API',        :weight => '1.0'
met_weight_05 = MetricWeight.create! :name => 'ext_sys_interface_protocol', :description => 'External systems interfaces - Protocol',  :weight => '1.5'


puts '  Complexity Adjustment'
BusinessLogicAssociatedParameter.delete_all
param_01 = BusinessLogicAssociatedParameter.create! :name => 'assoc_business_logic', :description => 'Associated business logic',         :value => '2.0',  :level => 'very_high', :label => 'Very high (2.0)', :section => 'Complexity adjustment'  
param_02 = BusinessLogicAssociatedParameter.create! :name => 'assoc_business_logic', :description => 'Associated business logic',         :value => '1.0',  :level => 'high',      :label => 'High (1.0)',     :section => 'Complexity adjustment'  
param_03 = BusinessLogicAssociatedParameter.create! :name => 'assoc_business_logic', :description => 'Associated business logic',         :value => '0.5',  :level => 'mid',       :label => 'Mid (0.5)',    :section => 'Complexity adjustment'  
param_04 = BusinessLogicAssociatedParameter.create! :name => 'assoc_business_logic', :description => 'Associated business logic',         :value => '0.1',  :level => 'low',       :label => 'Low (0.1)',     :section => 'Complexity adjustment'

CodeGenHelpParameter.delete_all
param_05 = CodeGenHelpParameter.create! :name => 'code_gen_help', :description => 'Help by code generator', :value => '0.5',  :level => 'high',      :label => 'High (0.5)',     :section => 'Complexity adjustment'  
param_06 = CodeGenHelpParameter.create! :name => 'code_gen_help', :description => 'Help by code generator', :value => '0.75', :level => 'mid',       :label => 'Mid (0.75)',   :section => 'Complexity adjustment'  
param_07 = CodeGenHelpParameter.create! :name => 'code_gen_help', :description => 'Help by code generator', :value => '0.95', :level => 'low',       :label => 'Low (0.95)',    :section => 'Complexity adjustment'  

DevExpParameter.delete_all
param_08 = DevExpParameter.create! :name => 'developer_exp', :description => 'Developer experience',      :value => '0.5',  :level => 'high',      :label => 'High (0.5)',     :section => 'Complexity adjustment'  
param_09 = DevExpParameter.create! :name => 'developer_exp', :description => 'Developer experience',      :value => '0.75', :level => 'mid',       :label => 'Mid (0.75)',   :section => 'Complexity adjustment'  
param_10 = DevExpParameter.create! :name => 'developer_exp', :description => 'Developer experience',      :value => '0.95', :level => 'low',       :label => 'Low (0.95)',    :section => 'Complexity adjustment'

ViewTypeParameter.delete_all
param_11 = ViewTypeParameter.create! :name => 'master',        :description => 'Master',                :value => '1.08', :level => 'low',       :label => 'Low (1.08)',    :section => 'View type'
param_12 = ViewTypeParameter.create! :name => 'master',        :description => 'Master',                :value => '1.2',  :level => 'mid',       :label => 'Mid (1.2)',    :section => 'View type'
param_13 = ViewTypeParameter.create! :name => 'master',        :description => 'Master',                :value => '1.3',  :level => 'high',      :label => 'High (1.3)',     :section => 'View type'

param_14 = ViewTypeParameter.create! :name => 'master_detail', :description => 'Master - Detail',      :value => '1.1',  :level => 'low',       :label => 'Low (1.1)',     :section => 'View type'
param_15 = ViewTypeParameter.create! :name => 'master_detail', :description => 'Master - Detail',      :value => '1.3',  :level => 'mid',       :label => 'Mid (1.3)',    :section => 'View type'
param_16 = ViewTypeParameter.create! :name => 'master_detail', :description => 'Master - Detail',      :value => '1.5',  :level => 'high',      :label => 'High (1.5)',     :section => 'View type'

param_17 = ViewTypeParameter.create! :name => 'process',       :description => 'Process',                :value => '1.08', :level => 'low',       :label => 'Low (1.08)',     :section => 'View type'
param_18 = ViewTypeParameter.create! :name => 'process',       :description => 'Process',                :value => '1.2',  :level => 'mid',       :label => 'Mid (1.2)',    :section => 'View type'
param_19 = ViewTypeParameter.create! :name => 'process',       :description => 'Process',                :value => '1.5',  :level => 'high',      :label => 'High (1.5)',     :section => 'View type'

param_20 = ViewTypeParameter.create! :name => 'graphics_interactive', :description => 'Graphics interactive (activeX, applet)', :value => '1.3',  :level => 'low',       :label => 'Low (1.3)',     :section => 'View type'
param_21 = ViewTypeParameter.create! :name => 'graphics_interactive', :description => 'Graphics interactive (activeX, applet)', :value => '1.5',  :level => 'mid',       :label => 'Mid (1.5)',    :section => 'View type'
param_22 = ViewTypeParameter.create! :name => 'graphics_interactive', :description => 'Graphics interactive (activeX, applet)', :value => '1.8',  :level => 'high',      :label => 'High (1.8)',     :section => 'View type'

param_23 = ViewTypeParameter.create! :name => 'basic_report', :description => 'Basic report' ,      :value => '1.03',  :level => 'low',       :label => 'Low (1.03)',     :section => 'View type'
param_24 = ViewTypeParameter.create! :name => 'basic_report', :description => 'Basic report' ,      :value => '1.1',  :level => 'mid',       :label => 'Mid (1.1)',    :section => 'View type'
param_25 = ViewTypeParameter.create! :name => 'basic_report', :description => 'Basic report' ,      :value => '1.3',  :level => 'high',      :label => 'High (1.3)',     :section => 'View type'

param_26 = ViewTypeParameter.create! :name => 'graphic_report', :description => 'Graphic report',      :value => '1.3',  :level => 'low',       :label => 'Low (1.3)',     :section => 'View type'
param_27 = ViewTypeParameter.create! :name => 'graphic_report', :description => 'Graphic report',      :value => '1.5',  :level => 'mid',       :label => 'Mid (1.5)',    :section => 'View type'
param_28 = ViewTypeParameter.create! :name => 'graphic_report', :description => 'Graphic report',      :value => '1.8',  :level => 'high',      :label => 'High (1.8)',     :section => 'View type'

param_29 = ViewTypeParameter.create! :name => 'mixed_report', :description => 'Mixed report' ,      :value => '1.4',  :level => 'low',       :label => 'Low (1.4)',     :section => 'View type'
param_30 = ViewTypeParameter.create! :name => 'mixed_report', :description => 'Mixed report' ,      :value => '1.6',  :level => 'mid',       :label => 'Mid (1.6)',    :section => 'View type'
param_31 = ViewTypeParameter.create! :name => 'mixed_report', :description => 'Mixed report' ,      :value => '2.0',  :level => 'high',      :label => 'High (2.0)',     :section => 'View type'

param_32 = ViewTypeParameter.create! :name => 'na', :description => 'Not applicable',      :value => '1.0',  :level => 'na',       :label => 'Not applicable (1.0)',     :section => 'View type'
