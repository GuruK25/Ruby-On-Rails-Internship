# Ruby-On-Rails-Internship

<h2>Day 1</h2>
<h3>Software installation</h3>

<strong>Step 1: Install Ruby</strong>

  <ul>
    <li>Download RubyInstaller from https://rubyinstaller.org</li>
    <li>Run the installer and complete setup</li>
    <li>Verify installation: ruby -v</li>
  </ul>
  <br>
  
<strong>Step 2: Install Rails</strong>
  <ul>
    <li>Open Command Prompt as Administrator</li>
    <li>Install Rails gem: gem install rails</li>
    <li>Verify installation: rails -v</li>
  </ul>

  <br>
  
<strong>Step 3: Create New Rails Project</strong>
  <ul>
    <li>
      Navigate to your projects folder: cd C:\Users\rahul mkdir my_app cd my_app
    </li>
    <li>
      Create a new Rails app: rails new my_app cd my_app
    </li>
  </ul>

  <br>
  
<strong>Step 4: Run Rails Server</strong>
  <ul>
    
  <li>Start the server: rails server</li>
  <li>Open browser and visit: http://localhost:3000</li>
  <li>Run on a different port (optional): rails server -p 4000</li>
  <li>Stop the server: Press Ctrl + C in the terminal</li>
  </ul>

<br><br>

<h2>Day 2</h2>
<h3>Database & Scaffolding Cheat Sheet</h3>

<strong>Database Clients DBeaver (GUI Tool)</strong>

<ul>
  <li>Supports: PostgreSQL, MySQL, Oracle, SQL Server, NoSQL</li>
  <li>Pros: Visual ER diagrams, Query Builder, beginner-friendly</li>
  <li>Cons: Heavy, consumes more RAM</li>
  <li>Note: DBeaver is only a client; DB server must be running</li>
</ul>

<br>

<strong>psql (Command Line)</strong>

<ul>
  <li>Supports: PostgreSQL only</li>
  <li>Pros: Fast, lightweight, ideal for scripts & terminal work Rails Project Setup</li>
  <li>Create Project: rails new my_application -d postgresql (-d postgresql → tells Rails to use PostgreSQL instead of SQLite)</li>
  <li>Gemfile Check: gem 'pg' # Bridge between Rails & PostgreSQL</li>
</ul>

<br>

<strong>Database Initialization</strong>

<table>
  <tr>
    <td>
      <i>rails db:create</i>
    </td>
    <td>
      Creates the database
    </td>
  </tr>
  <tr>
    <td>
      <i>rails db:migrate</i>
    </td>
    <td>
      Runs migrations to build tables
    </td>
  </tr>
</table>

<br>

<strong>Scaffolding (CRUD Generation)</strong>

<p>
  Command: <i>rails generate scaffold Customer name:string email:string age:integer</i>
  <p>Generates Model, View, Controller automatically
    Enables immediate CRUD (Create, Read, Update, Delete)
  </p>
</p>

<br>
<strong>Rails Console</strong>
<table>
  <tr>
    <td><i>rails c </i></td>
    <td>Opens Rails Console</td>
  </tr>
</table>
  <p>Test data & run Ruby code directly against DB</p>
  
   <br>
   
<strong>Migrations & Versioning</strong>
<p>Migrations: Files tracking DB structure changes</p>
<p>Versioning: Each migration has a unique ID</p>
<p>Collaboration: Team members migrate to stay synced</p>
<p>Exceptions: Errors occur if app runs without latest migrations</p>

<br>

<strong>Key Commands Summary</strong>

<table>
  <tr>
    <td>
      <i>rails c</i>
    </td>
    <td>
      Open Rails Console
    </td>
  </tr>
  <tr>
    <td>
      <i>rails db:create</i>
    </td>
    <td>
      Create DB
    </td>
  </tr>
  <tr>
    <td>
      <i>rails db:migrate</i>
    </td>
    <td>
      Run migrations
    </td>
  </tr>
  <tr>
    <td>
      <i>rails generate scaffold</i>
    </td>
    <td>
      Generate full resource structure
    </td>
  </tr>
</table>

<br><br>

<h2>Day 3</h2>

<h3>Rails Project Configuration Guide</h3>

<strong>The Core Structure</strong>

<ul>
  <li>bin/: The "Executable Tools." Contains scripts like bin/rails that automate code generation, database management, and server startup.</li>
  <li>config/: The "Application Brain." The central hub for environment settings, database credentials, and routing rules.</li>
  <li>application.rb: The "Global Hub." Boots the app, loads gems, and sets universal rules (like Time Zones). Errors here prevent the app from starting.</li>
  <li>puma.rb: The "Engine Room." Configures the web server's "muscle" by defining threads and workers to handle multiple user requests simultaneously.</li>
</ul>

<br>
<strong>Environments (config/environments/)</strong>
<ul>
  <li>development.rb: The "Builder's Bench." Enables instant code reloading and detailed error reports for fast debugging.</li>
  <li>test.rb: The "Sandbox." An isolated area to run tests and simulate errors without risking real data.</li>
  <li>production.rb: The "Vault." Optimizes speed and locks down security by hiding errors and forcing HTTPS (config.force_ssl = true).</li>
</ul>
<br>

<strong>Initializers (config/initializers/)</strong>

<p>Small Ruby files that run once during startup to set specific rules:</p>
<ul>
<li>assets.rb: The "Stylist." Instructions for mashing CSS/JS into fast, compressed files for production.</li>
<li>content_security_policy.rb: The "Security Guard." Prevents script injection (XSS) by whitelisting trusted content sources.</li>
<li>filter_parameter_logging.rb: The "Privacy Mask." Blurs sensitive data (passwords/CC numbers) in logs.</li>
<li>inflections.rb: The "Grammar Coach." Teaches Rails how to pluralize irregular words (e.g., Person -> People).</li>
<li>ci.rb: The "Test Detector." Adjusts settings for automated environments (like GitHub Actions) to speed up testing.</li>
</ul>
<br>

<strong>Configuration Files (.yml)</strong>

<ul>
  <li>database.yml: The "Bridge." Connects your app code to your physical data storage.</li>
  <li>cable.yml: The "Live Wire." Configures WebSockets for real-time features like chat or live alerts.</li>
  <li>cache.yml: The "Short-term Memory." Stores "pre-calculated" results in high-speed memory for instant retrieval.</li>
  <li>queue.yml: The "Shift Schedule." Manages background workers (Sidekiq) to handle heavy tasks like emails.</li>
  <li>storage.yml: The "Shipping Manifest." Defines where to upload files (Local Disk vs. Cloud like Amazon S3).</li>
  <li>deploy.yml: The "Launch Checklist." Steps to build, test, and ship your code to a live server.</li>
</ul>
<br>
<strong>The Boot Sequence</strong>
<ul>
  <li>boot.rb: Grabs the keys (Loads Bundler and Gems).</li>
  <li>application.rb: Sets the rules (Universal configurations).</li>
  <li>environment.rb: Flips the switch (Initializes the entire engine).</li>
</ul>

<br><br>

<h2>Day 4</h2>
<h3>Variables and Datatypes</h3>
<strong>Variables</strong>
<p>In ruby, Variables are of 5 types</p>
<table>
  <tr>
    <th>Sl.No</th>
    <th>type</th>
    <th>Naming convention</th>
  </tr>
  <tr>
    <td>1.</td>
    <td>Local variables</td>
    <td>Starts with lower case or '_'</td>
  </tr>
  <tr>
    <td>2.</td>
    <td>Global variables</td>
    <td>Starts with '$'</td>
  
  </tr>
  <tr>
    <td>3.</td>
    <td>Instance variables</td>
    <td>Starts with '@'</td>
  </tr>
  <tr>
    <td>4.</td>
    <td>Class variables</td>
    <td>Starts with '@@'</td>
  </tr>
  <tr>
    <td>5.</td>
    <td>Constant variables</td>
    <td>Starts with uppercase</td>
  </tr>
</table>

<br>

<strong>Datatypes</strong>

<ol>
  <li>Integer</li>
  <li>Float</li>
  <li>String</li>
  <li>Symbol</li>
  <li>Boolean</li>
  <li>Array</li>
  <li>Hashes</li>
  <li>NilClass</li>
</ol>

<br><br>

<h2>Day 5</h2>
<h3>puts method and print method</h3>

<strong> puts method</strong>

<p>In Ruby, puts method is used to print the output, usually on the terminal.</p>
<div>
  <p> Syntax : </p>
  <p>puts "Ruby on Rails"</p>
  <p>output : Ruby on Rails</p>
</div>
<ul>
  <li>It automatically adds the new line at the end.</li>
  <li>Converts Object to String using to_s method</li>
  <li>Returns nil</li>
</ul>

<br>

<strong>print method</strong>

<p>In Ruby, print method is used to output text to standard output.</p>
<div>
  <p>Syntax : print "Hello, world"</p>
  <p>Output : Hello, world</p>
</div>
<ul>
  <li>cursor stays on the same line.</li>
  <li>Calls to_s on Objects.</li>
  <li>returns nil</li>
</ul>

<hr> 
<h3>Generating scaffold (Products) in the existing project(projectDb)</h3>
<div>
  <p><strong>Scaffold :</strong> An automatically generated basic structure of the code that provides full CRUD functionality for a resource.</p>
  <div>
    <p>Product object attributes:</p>
    <ul>
      <li>name - String</li>
      <li>description - text</li>
      <li>price - decimal</li>
      <li>stock - Integer</li>
      <li>is_active - boolean</li>
    </ul>
  </div>
  <div>
    <h4>Steps to create scaffold</h4>
    <div>
      <p>1. To create a scafold(table)</p>
      <p>Command: <i>rails generate scafold Products name: string description: text price: decimal stock: integer is_active: boolean</i></p>
    </div>
    <div>
      <p>2. Migration</p>
      <p>Command: <i>rails db:migrate</i></p>
      <p>This command is used to run all pending database migrations and updates the database structure to match Rails application</p>
      <div>
        <p>Migration is a Ruby file that describes the changes to the database, such as</p>
        <ul>
          <li>Creating tables</li>
          <li>Adding/Removing the columns</li>
          <li>Changing datatypes</li>
          <li>Adding indexes or foreign keys</li>
        </ul>
      </div>
    </div>
  </div>
</div>
<hr>
<h3>Different ways to add records to Database</h3>
<div>
  <p>Ruby on Rails project provides multiple ways to add the Records to the database. </p>
  <p>Important ones are: </p>
  <ol>
    <li>Using Rails Forms</li>
    <li>Using Rails Console</li>
    <li>Using db/seeds.rb file</li>
    <li>Using Faker gem</li>
  </ol>

  <div>
    <strong>1. Using Rails Forms(via browser)</strong>
    <p>In Ruby on Rails, new records are added using forms by initialising a model object in the 'new' action, submitting form data to 'create' action, permitting parameters, validating through the model, and saving the record to the database using ActiveRecords.</p>
    <br>
    <strong>2. Using Rails console</strong>
    <div>
      <p>Open the console.</p>
      <p><i>-> rails console</i> or <i>rails c</i></p>
      <p>Add the recorde using create method.(It does both create and save) inside the console</p>
      <p>Syntax: <i>Object.create(col1: value, col2: value, col3: value, ...)</i></p>
      <p><i>-> Product.create(name: "name", description: "give description", price: NNN, stock: NN, is_active: BooleanValue)</i></p>
      <p>Creating multiple records:</p>
      <p>-> <i>Object.create([{col1: val, col2: val, ...}, {col1: val, col2: val, col3: val, ....}, .....])</i></p>
    </div>
    <strong>3. Using db/seeds.rb file</strong>
    <div>
      <p>Open the db.seed.rb file</p>
      <p>Write the code to create the records. It is similar to adding records in console.</p>
      <ul>
        <li>Product(objectname).create(col1: val, col2: val, col3: val, ....)</li>
        <li>Command: <i>rails db:migrate </i></li>
        <p>This command is used to apply database schema changes defined in the migration file to the database. (creates the database) </p>
        <li>Command: <i>rails db:seed</i></li>
        <p>This command is used to insert predefined data into database. (inserts data into table)</p>
      </ul>
    </div>
    <strong>4. Using gems (Faker Gem)</strong>
    <p>Faker gem is used to add the duplicate records to the database.</p>
    <div>
      <p>In the gem file add: <i>gem "faker"</i></p>
      <p>Then in the terminal, execute: <i>bundle install</i></p>
      <p>Instead, Can add the gems directly to the project using: <i>gem install <gem-name> </i></p>
      <ol>
        Other commands related to gems
        <li><i>gem list</i> : Gives the list of gems </li>
        <li><i>gem list info <gem-name></i> : Details of a gem</li>
        <li><i>gem list <gem-name> -i</i> : Returns true if gem existed.</li>
      </ol>
    </div>
  </div>
</div>
          <br><br>
<h2>Day 6</h2>
<h3>Looping statements</h3>
<div>
  Loops in ruby are used to do repeatative work untill it meets a certain condition.
  Ruby provides different types of looping statements.
  <ol>
    <li>while loop
    </li>
    <li>until loop</li>
    <li>for loop</li>
    <li>each iterator</li>
    <li>times loop</li>
    <li>lood do</li>
    <li>each_with_index</li>  
  </ol>
  Link : https://www.geeksforgeeks.org/ruby/ruby-loops-for-while-do-while-until/
</div>
<br><br>
<h2>Day 7</h2>
<h3>Object Heirarchy and method lookup</h3>
<p>Object hierarchy means how all classes and objects are related to each other through inheritence.</p>
<p>Ruby has a very clean and consistent hierarchy because everything is an object.</p>

At the top of the hierarchy is BasicObject.

<ol>
  <li>
    BasicObject:
    <ul>
      <li>It is a class</li>
      <li>This class is parent of all the classes</li>
    </ul>
  </li>

  <li>
    Object:
    <ul>
      <li>
        This is also a class
      </li>
      <li> 
        It inherits from BasicObject
      </li>
      <li>
           Most ruby classes inherit from Object.
      </li>
      <li>
        <p>Provides common methods like</p>
        <p>to_s</p>
        <p>nil?</p>
        <p>inspect</p> 
        <p>class</p>
      </li>
    </ul>
  </li>
  <li>
    3. Kernal Module
    <ul>
      <li>This is a module mixed into Object class</li>
      <li>A module included in Object class</li>
      <li>Gives global methods such as</li>
      <p>puts</p>
      <p>gets</p>
      <p>print</p>
      <p>exit</p>
    </ul>
  </li>
  <li>Custom classes</li>
</ol>
<p><storng>ancestors method:</storng> It is used to show method lookup(Lists all the classes from current class to superclass)</p>
<p><strong>Lookup path:</strong>The exact order ruby uses to search for a method.</p>
<p><strong>respnd_to? method:</strong>It checks whether an object can respond to a given method</p>
<p>Object.respond_to?(:method_name)</p>
<p>It returns, true: method exits and callable. false: mthod doesnot exits</p>
<br><br>
<h2>Day 8</h2>
<h3>Condtional statements and Access Modifiers</h3>
<h4>Conditional statements</h4>
<div>
  Ruby provides various conditional statements in order to execute specific block of code based on particular condtions.
  <ol>
    <li><strong>if condition</strong>: 
      <p>The block of execute only if the condition evaluates to true.</p>
    </li>
    <li><strong>if-else condtion</strong>:
    <p>if block executes if the condtion evaluates to true, or else block get executed.</p>
    </li>
    <li>
      <strong>if-elsif :</strong>
      <p>It is combination of multiple if-else statement. We can pass multiple condtions.</p>
    </li>
    <li>
      <strong>unless statement</strong>:
      <p>This is opposite of if statement. It executes if the condtion evaluates to false.</p>
    </li>
    <li><strong>Case statement:</strong>
    <p>It is a switch statement in ruby. It is another type of if-elsif ladder.</p>
    </li>
  </ol>
  Additional info: https://www.tutorialspoint.com/ruby/ruby_if_else.htm
  <hr>
  <h4>Access specifiers</h4>
  Access specifies are used to control who can call the class methods. They are used to protect the objects behaviour.
  <ol>
    <li>
      <strong>public: </strong>
      <p>Methods can be called anywhere.</p>
      <p>This is default for all methods.</p>
    </li>
    <li>
      <strong>protected: </strong>
      <p>The protected access modifier is used to define methods that can only be accessed within the class where they are defined or within subclasses of that class. </p>
    </li>
    <li>
      <strong>private: </strong>
      <p>The private access modifier restricts visibility of methods and variables to within the class itself.</p>
      <p>Methods declared as private cannot be called from outside the class scope; they can only be invoked by other methods within the same class.</p>
    </li>
  </ol>
  Addtional info: https://www.scaler.com/topics/ruby/access-modifiers-in-ruby/
</div>

<br><br>

<h2>Day 9</h2>
<h3>Form validations</h3>
<div>
  <p>Form validation means how Rails prevents invalid data from being saved to the database.</p>
  <p>Instead of trusting browser or user, Rails validates data on the server, usually at the model level.</p>
  <p>Rails prvides alot of pre-built validations. Along with this, it also allows developer to define custom validations.</p>
  <div>
    <strong>pre-built validations</strong>
    <p>They live in the model and are provided by ActiveModel:Validations</p>
    <p>These are wrote using the keyword:- validates</p>
    <ol>
      <li><strong>presence: </strong> Ensures the field is not empty or nil</li>
      <li><strong>length: </strong>Controls minimum, maximum or exact length.</li>
      <li><storng>uniqueness: </storng>Ensures the value is unique in the database.</li>
      <li><strong>format: </strong>Validates using a regular expression.</li>
      <li><strong>numericity: </strong>Ensures the value is a number</li>
      <li><strong>inclusion: </strong>Restricts values to a list or a range</li>
      <li><strong>exclusion:</strong>Opposite of inclusion.</li>
      <li><strong>confirmation:</strong>Used for email or password confirmation fields.</li>
      <li><strong>acceptence:</strong>Common for terms and conditons</li>
      <li><strong>absence:</strong>Ensures a field is blank.</li>
    </ol>
  </div>
  <div>
    <strong>Custom validations</strong>
    <p>Custom validations are used when built-in validations are not enough.</p>
    <p>They are used when the validation logic depends on multiple fields. </p>
    <p>They are included using the keyword:- validate (singular)</p>
    <p>Validation logic are wrote inside the Model.</p>
  </div>
</div>

<br><br>

<h2>Day 10</h2>
<h3>Scopes and Custom routes.</h3>
<div>
  <p>A scope is a named, reusable database query defined in a model.</p>
  <p>Instean of repeating the same query everywhere, you define it once and reuse it.</p>
  <div>
    <p>Why?</p>
    <ol>
      <li>Keeps controller clean.</li>
      <li>Avoids duplicate query logic.</li>
      <li>Improves redability.</li>
      <li>Chainable and composable</li>
    </ol>
  </div>

  <p>There are two types of scopes. </p>
  <p>1. scope with parameter</p>
  <p>2. scope without parameter.</p>

Additional info: https://www.rubyguides.com/2019/10/scopes-in-ruby-on-rails/

</div>

<br><br>

<h2>Day 11</h2>
<h3>Rails Components</h3>
<div>
  <strong>1. ActiveModel</strong>
  <p>Active Model is a library in Rails made up of several modules that let plain Ruby objects behave like Rails models (similar to ActiveRecord models), but without needing a database.</p>
  <div>
    <ol>
      <li>
          <strong>ActiveModel::API</strong>
          <p>This module gives basic model like behaviour to the class</p>
          <p>Works with Action Pack and Action View helpers</p>
          <p>lets objects behave like ActiveRecord models in forms and rendering.</p>
          <ul>
            <li>Attribute Assignment</li>
            <li>Conversion</li>
            <li>Naming</li>
            <li>Translation</li>
            <li>Validations</li>
          </ul>
      </li>
      <li>
        <strong>ActiveModel::Model</strong>
        <p>It includes ActiveModel::API, so will get all of the above automatically.</p>
      </li>
      <li>
        <strong>ActiveModel::Attrubutes</strong>
        <p>This lets to define typed attributes on plain Ruby classes, similar to ActiveRecord</p>
      </li>
      <li>
        <strong>ActiveModel::AttributeAssignment</strong>
        <p>Allows bulk assignment of attributes using a hash, just like with ActiveRecord</p>
      </li>
      <li>
        <strong>ActiveModel::AttributeMethods</strong>
        <p>Lets us define dynamic accesors and helpers for attrubutes.</p>
        <ul>
          <li>attribute_method_prefix</li>
          <li>attribute_method_suffix</li>
          <li>alias_attribute</li>
        </ul>
      </li>
      <li>
        <strong>ActiveModel::Callbacks</strong>
        <p>Adds callback hooks</p>
      </li>
      <li>
        <strong>ActiveModel::Conversion</strong>
        <p>Makes object convertible to model representaition in views</p>
        <ul>
          <li>to_model</li>
          <li>persisted?</li>
          <li>to_key and to_param</li>
        </ul>
      </li>
      <li>
        <strong>ActiveModel::SecurePassword</strong>
        <p>Adds secure password handling to any class.</p>
      </li>
      <li>
        <strong>ActiveModel::Serialization</strong>
        <p>Adds JSON serialization.</p>
        <ul>
          <li>as_json to convert object to hash</li>
          <li>from_json to populate an attrubute hash method.</li>
        </ul>
      </li>
      <li>
        <strong>ActiveModel::Transalation</strong>
        <p>Lets to define human friendly attribute names per locale.</p>
      </li>
      <li>
        <strong>ActiveModel::Validations</strong>
        <p>Allows validations like in ActiveRecords.</p>
      </li>
    </ol>
  </div>
  More info: https://guides.rubyonrails.org/active_model_basics.html
</div>
<div>
  <strong>2. ActiveRecord</strong>
  <p>It is the Object Relational Mapping (ORM) in Rails.</p>
  <p>It maps database tables to Ruby classes and rows to objects.</p>
  <p>Provides an interface to query insert, update, and delete records without writing raw SQL.</p>
</div>
<div>
  <strong>3. ActionView</strong>
  <p>ActionView is the view layer of Rails. It is responsible for generating the HTML, JSON or other formats.</p>
  <p>It takes data from the controller and renders into a template.</p>
</div>
<div>
  <strong>4. ActionController</strong>
  <p>ActionController is the controller layer of Rails.</p>
  <p>It recieves HTTP request from the browser.</p>
  <p>Interacts with models</p>
  <p>Decides what response to send(HTML, JSON, redirect etc)</p>
  <p>Hands data off to ActionView.</p>
</div>
<div>
  <strong>5. ActionDispatch</strong>
  <p>ActionDispatch is the low level request and response handling layer on Rails</p>
  <p>It sits below ActionController.</p>
  <ul>
    <li>Receiving the raw HTTP request.</li>
    <li>Parsing headers, params, cookies, sessions</li>
    <li>Routing the request to the correct controller/action.</li>
    <li>Building HTTP response.</li>
  </ul>
</div>
<div>
  <strong>6. ActionText</strong>
  <p>ActionText is a Rails framework for handling rich text content (formatted text + embedded media) in your application.</p>
  <p>It lets users create content like:</p>
  <ul>
    <li>Bold, italic, links</li>
    <li>Lists, headings</li>
    <li>Embedded images, files, videos</li>
    <li>Attachments inside text</li>
  </ul>
</div>
<div>
  <strong>7. ActionMailer</strong>
  <p>ActionMailer is the Rails framework for sending emails.</p>
  <p>It lets us</p>
  <ol>
    <li>Define mailers similar to controllers</li>
    <li>Use views/templates to generate email content</li>
    <li>Send emails via SMTP, SendGrid, Mailgun, etc.</li>
    <li>Deliver emails synchronously or asynchronously</li>
  </ol>
</div>
<div>
  <strong>8. ActionMailBox</strong>
  <p>ActionMailbox is a Rails framework for receiving and processing incoming emails.</p>
  <ul>
    <li>Accept emails sent to your application</li>
    <li>Route them to Ruby classes</li>
    <li>Extract data from the email (subject, body, attachments)</li>
    <li>Act on them (create records, reply, trigger workflows)</li>
  </ul>
</div>
<div>
  <strong>9. ActiveSupport</strong>
  <p>ActiveSupport is the utility and extension library of Rails.</p>
  <ul>
    <li>Extends Ruby’s core classes (String, Array, Hash, Time, etc.)</li>
    <li>Provides common helper tools used across Rails</li>
    <li>Supplies infrastructure like time zones, inflections, concerns, notifications</li>
  </ul>
</div>
<div>
  <strong>10. ActionJob</strong>
  <p>ActiveJob is Rails’ background job framework.</p>
  <ul>
    <li>A standard interface for background jobs</li>
    <li>An abstraction over different job backends (Sidekiq, Resque, Delayed Job, etc.)</li>
    <li>Tight integration with the rest of Rails</li>
  </ul>
</div>
<div>
  <strong>11. ActionCable</strong>
  <p>ActionCable is Rails’ framework for real-time features using WebSockets.</p>
  <ul>
    <li>Maintain persistent connections with browsers</li>
    <li>Push data from the server without page refresh</li>
    <li>Build chat, notifications, live updates, dashboards, etc.</li>
  </ul>
</div>
<div>
  <strong>12. ActiveStorage</strong>
  <p>ActiveStorage is the Rails framework for uploading, storing, and attaching files to models.</p>
  <ul>
    <li>Upload files (images, PDFs, videos, etc.)</li>
    <li>Attach them to ActiveRecord models</li>
    <li>Store them locally or in cloud services</li>
    <li>Serve and transform them securely</li>
  </ul>
</div>

<br><br>

<h2>Day 12</h2>
<h3>ActionText</h3>
<div>
  <div>
    <strong>Installation steps of ActionText</strong>
    <p>ActionText is built-in starting from Rails 6.0</p>
    <p>Run the command : <i>rails action_text:install</i></p>
    <p>Run migrations <i>rails db:migration</i></p>
  </div>
  <br>
  <div>
    <strong>Files created in the project after installing ActionText:</strong>
    <ul>
      <li>app/assets/stylesheets/actiontext.css (newly created)</li>
      <li>app/javascript/application.js (updated)</li>
      <li>projectDb/app/views/active_storage/blobs/_blob.html.erb (newly created)</li>
      <li>projectDb/app/views/layouts/action_text/contents/_content.html.erb (newly created)</li>
      <li>projectDb/config/importmap.rb (updated)</li>
      <li>projectDb/db/migrate/20260128045538_create_active_storage_tables.active_storage.rb (newly created)</li>
      <li>projectDb/db/migrate/20260128045539_create_action_text_tables.action_text.rb (newly created)</li>
      <li>projectDb/test/fixtures/action_text/rich_texts.yml (newly created)</li>
    </ul>
  </div>
  <br>
  <div>
    <strong>File changes after migration.</strong>
    <ul>
      <li>schema.rb (updated)</li>
    </ul>
  </div>
  <br>
  <div>
    <strong>Steps to add a ActionText column to a table.</strong>
    <p>ActionText does not add a column into an existing table, instead it creates its own table and associaltes it with model.</p>
    <ul>
      <li>
        <strong>Add <i>has_rich_text</i> to existing model</strong>
        <p>In the cutomer/product.rb file, add --> has_rich_text :col_name</p>
      </li>
      <li>
        <strong>Permit the rich text Attribute (controller)</strong>
        <p>In the controller files, update the private method modelname_params() by adding the col_name.</p>
      </li>
      <li>
        <strong>Update the form to use <i>rich_text_area</i></strong>
        <p> <div> </p>
        <p> <%= f.label :col_name%> </p>
        <p> <%= f.rich_text_area :col_name %> </p>
        <p> </div> </p>
      </li>
    </ul>
  </div>
  <p>For more info: https://guides.rubyonrails.org/action_text_overview.html</p>
</div>
<br><br>
<h2>Day 12</h2>
<h3>Active Storage</h3>
<div>
  <p>Active Storage is Rails’ built-in way to attach files to your models and store them somewhere (locally or in the cloud) without you having to reinvent file uploads.</p>
  <p>Active Storage is used to </p>
  <ul>
    <li>Upload files (images, PDFs, videos, etc.)</li>
    <li>Attach them to Active Record models</li>
    <li>Store them on:</li>
    <li>Local disk (dev/test)</li>
    <li>Cloud services (S3, GCS, Azure)</li>
    <li>Generate URLs for downloading or displaying files</li>
    <li>Process images (resize, crop, etc.)</li>
    <li>Handle multiple files per record</li>
  </ul>
  <p>active_storage_blobs file stores the metadata.</p>
  <p>active_storage_attachments file joins the model to a blob.</p>
  <strong>Installation steps</strong>
  <ul>
    <li>
      <strong>Install Active Storage</strong>
      <p>command: rails active_storage</p>
      <p>rails db:migrate</p>
    </li>
    <li>
      <strong>Configure storage(config/storage.yml)</strong>
    </li>
  </ul>
  <p><stromg>Attaching files to models</strong></p>
  <p>If it is one file</p>
  <p>Then in the model, has_one_attached :avatar(avatar is an example.)</p>
  <p>In controller file, add this column to the private method(params). By doing this controller allows the attached file to database.</p>
  <p>params.expect(product: [ :name, :description, :price, :avatar])</p>
  <p>Replace form with form.file_fiels (this type of field allows files to upload just like characters form other normal fields.)</p>
  <p>Accessing: </p>
  <ul>
    <li>user.avatar.attached?</li>
    <li>user.avatar.filename.to_a</li>
    <li>user.avatar.content_type</li>
    <li>user.avatar.byte_size</li>
  </ul>

  <p>If the files are multiple, replace has_one_attached with has_many_attached in the model file</p>
  <p>Update the controller file by providing array of items.</p>
  <p>params.expect(product: [ :name, :description, :price, avatar:[] ])</p>
  <p>Access the multiple file using loops in the form.</p>
</div>
