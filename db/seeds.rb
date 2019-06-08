@user = User.create!(email: 'test@test.com',
                    password: 123456,
                    password_confirmation: 123456,
                    first_name: 'John',
                    last_name: 'Snow',
                    phone: '5555555555')

admin = AdminUser.create(email: 'admin@test.com',
                         password: 123456,
                         password_confirmation: 123456,
                         first_name: 'Admin',
                         last_name: 'User',
                         phone: '5555555555')

100.times do |post|
  Post.create!(date: Date.today, rationale: "Now that there is the Tec-9, a crappy spray gun from South Miami.
                                  This gun is advertised as the most popular gun in American crime. Do you believe that shit?
                                  It actually says that in the little book that comes with it: the most popular gun in American crime.
                                  Like they're actually proud of that shit.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days ))
end

puts "100 Audit Logs have been created"
