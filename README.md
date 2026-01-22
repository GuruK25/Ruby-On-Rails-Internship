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
  
</div>
