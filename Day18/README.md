project-db(dev):001> time.zone.now
(project-db):1:in '<main>': undefined local variable or method 'time' for main (NameError)
project-db(dev):002> Time.zone.now
=> 2026-02-04 05:40:43.642080300 UTC +00:00
project-db(dev):003> time = Time.zone.now
=> 2026-02-04 05:41:15.101015600 UTC +00:00
project-db(dev):004> time = time + 2.day
=> 2026-02-06 05:41:15.101015600 UTC +00:00
project-db(dev):005> time = time + 1.week
=> 2026-02-13 05:41:15.101015600 UTC +00:00
project-db(dev):006> time = time - 1.week
=> 2026-02-06 05:41:15.101015600 UTC +00:00
project-db(dev):007> time = time - 2.week
=> 2026-01-23 05:41:15.101015600 UTC +00:00
project-db(dev):008> time = time + 2.weeks
=> 2026-02-06 05:41:15.101015600 UTC +00:00
project-db(dev):009> time = time + 1.month
=> 2026-03-06 05:41:15.101015600 UTC +00:00
project-db(dev):010> time = time - 1.month
=> 2026-02-06 05:41:15.101015600 UTC +00:00
project-db(dev):011> time = time + 2.hour
=> 2026-02-06 07:41:15.101015600 UTC +00:00
project-db(dev):012> time = time + 1.hour.ago
(project-db):12:in '<main>': can't convert ActiveSupport::TimeWithZone into an exact number (TypeError)

      plus_without_duration(other)
                            ^^^^^

project-db(dev):013> 1.hour.ago
=> 2026-02-04 04:47:25.552047200 UTC +00:00
project-db(dev):014> time = time + 6.hour
=> 2026-02-06 13:41:15.101015600 UTC +00:00
project-db(dev):015> time = time - 6.hour
=> 2026-02-06 07:41:15.101015600 UTC +00:00
project-db(dev):016> time = time + 5.hour
=> 2026-02-06 12:41:15.101015600 UTC +00:00
project-db(dev):017> time = Time.zone.now
=> 2026-02-04 05:51:17.246320900 UTC +00:00
project-db(dev):018> time = time + 5.hour
=> 2026-02-04 10:51:17.246320900 UTC +00:00
project-db(dev):019> 2.months.ago
=> 2025-12-04 05:52:32.504737100 UTC +00:00
project-db(dev):020> Time.now
=> 2026-02-04 11:23:16.6089429 +0530
project-db(dev):021> 1.month.ago
=> 2026-01-04 05:53:50.199764100 UTC +00:00
project-db(dev):022> Date.new(2002,11,20)
=> Wed, 20 Nov 2002
project-db(dev):023> Date.new(2002,11,20).change(month:8)
=> Tue, 20 Aug 2002
project-db(dev):024> Date.new(2002,11,20).beginning_of_month
=> Fri, 01 Nov 2002
project-db(dev):025> Date.new(2002,11,20).beginning_of_week
=> Mon, 18 Nov 2002
project-db(dev):026> Date.new(2002,11,20).beginning_of_day
=> 2002-11-20 00:00:00.000000000 UTC +00:00
project-db(dev):027> Time.zone.now.beginning_of_day
=> 2026-02-04 00:00:00.000000000 UTC +00:00
project-db(dev):028> Time.zone.now.beginning_of_end
(project-db):28:in '<main>': undefined method 'beginning_of_end' for an instance of ActiveSupport::TimeWithZone (NoMethodError)

      wrap_with_time_zone time.__send__(...)
                              ^^^^^^^^^

Did you mean? beginning_of_day
beginning_of_week
beginning_of_year
beginning_of_month
beginning_of_hour
C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/activesupport-8.1.2/lib/active_support/time_with_zone.rb:556:in 'ActiveSupport::TimeWithZone#method_missing': undefined method 'beginning_of_end' for an instance of Time (NoMethodError)

      wrap_with_time_zone time.__send__(...)
                              ^^^^^^^^^

Did you mean? beginning_of_day
beginning_of_week
beginning_of_year
beginning_of_month
beginning_of_hour
from (project-db):28:in '<main>'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb/workspace.rb:110:in 'Kernel#eval'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb/workspace.rb:110:in 'IRB::WorkSpace#evaluate'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb/context.rb:591:in 'IRB::Context#evaluate_expression'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb/context.rb:557:in 'IRB::Context#evaluate'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:202:in 'block (2 levels) in IRB::Irb#eval_input'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:521:in 'IRB::Irb#signal_status'  
 from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:194:in 'block in IRB::Irb#eval_input'  
 from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:281:in 'block in IRB::Irb#each_top_level_statement'
from <internal:kernel>:168:in 'Kernel#loop'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:278:in 'IRB::Irb#each_top_level_statement'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:193:in 'IRB::Irb#eval_input'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:174:in 'block in IRB::Irb#run'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:173:in 'Kernel#catch'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/irb-1.16.0/lib/irb.rb:173:in 'IRB::Irb#run'
from C:/Users/gurub/.local/share/gem/ruby/3.4.0/gems/railties-8.1.2/lib/rails/commands/console/irb_console.rb:113:in 'Rails::Console::IRBConsole#start'
... 16 levels...
project-db(dev):029> Time.zone.now.end_of_day
=> 2026-02-04 23:59:59.999999999 UTC +00:00
project-db(dev):030> a = "--"
=> "--"
project-db(dev):031> a = "ac-shirt-mobile-10"
=> "ac-shirt-mobile-10"
project-db(dev):032> str = "ac shirt mobile 10"
=> "ac shirt mobile 10"
project-db(dev):033> str = str.parameterize
=> "ac-shirt-mobile-10"
project-db(dev):034> " hello world ".squish
=> "hello world"
project-db(dev):035> "method name".camelize
=> "Method name"
project-db(dev):036> "methodname".camelize
=> "Methodname"
project-db(dev):037> "methodname".camelcase
=> "Methodname"
project-db(dev):038> " hello world ".titleize
=> "Hello World "
project-db(dev):039> " hello world ".titlecase
=> "Hello World "
project-db(dev):040> " hello world ".singularize
=> " hello world "
project-db(dev):041> " hello worlds ".singularize
=> " hello worlds "

project-db(dev):043> I18n.t(:hello)
=> "Hello world"
project-db(dev):044>
project-db(dev):044> a = []
=> []
project-db(dev):045> a.nil?
=> false
project-db(dev):046> a.empty?
=> true
project-db(dev):047> a.blank?
=> true
project-db(dev):048\* a.present?\
project-db(dev):049> a.present?
(project-db):48:in '<main>': wrong number of arguments (given 1, expected 0) (ArgumentError)
project-db(dev):050> a.present?
=> false
project-db(dev):051>

project-db(dev):051> " ".blank?
=> true
project-db(dev):052> " ".present?
=> false
project-db(dev):053>

project-db(dev):051> " ".blank?
=> true
project-db(dev):052> " ".present?
=> false
project-db(dev):053> " ".empty?
=> false
project-db(dev):054> "".empty?
=> true
project-db(dev):055>
project-db(dev):055> nil.present?
=> false
project-db(dev):056>
