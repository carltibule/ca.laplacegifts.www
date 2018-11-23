# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@laplacegifts.ca', password: 'password', password_confirmation: 'password') if Rails.env.development?

Province.create(:name => 'Alberta', :postal_abbreviation => 'AB', :gst => 0.05)
Province.create(:name => 'British Columbia', :postal_abbreviation => 'BC', :gst => 0.05, :pst => 0.07)
Province.create(:name => 'Manitoba', :postal_abbreviation => 'MB', :gst => 0.05, :pst => 0.08)
Province.create(:name => 'New Brunswick', :postal_abbreviation => 'NB', :hst => 0.15)
Province.create(:name => 'Newfoundland and Labrador', :postal_abbreviation => 'NL', :hst => 0.15)
Province.create(:name => 'Northwest Territories', :postal_abbreviation => 'NT', :gst => 0.05)
Province.create(:name => 'Nova Scotia', :postal_abbreviation => 'NS', :hst => 0.15)
Province.create(:name => 'Nunavut', :postal_abbreviation => 'NU', :gst => 0.05)
Province.create(:name => 'Ontario', :postal_abbreviation => 'ON', :hst => 0.13)
Province.create(:name => 'Prince Edward Island', :postal_abbreviation => 'PE', :hst => 0.15)
Province.create(:name => 'Quebec', :postal_abbreviation => 'QC', :gst => 0.05, :pst => 0.14975)
Province.create(:name => 'Saskatchewan', :postal_abbreviation => 'SK', :gst => 0.05, :pst => 0.11)
Province.create(:name => 'Yukon', :postal_abbreviation => 'YK', :gst => 0.05)

OrderStatus.create(:id => 1, :name => 'In progress')
OrderStatus.create(:id => 2, :name => 'Placed')
OrderStatus.create(:id => 3, :name => 'Shipped')
OrderStatus.create(:id => 4, :name => 'Cancelled')