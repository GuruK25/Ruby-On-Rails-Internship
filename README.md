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

<br>
