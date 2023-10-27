# Queue System Project

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The Queue System Project is a Ruby on Rails application that provides a virtual queuing system with both client and admin functionality. It allows multiple clients to join a queue, maintain their order, and view their position in the queue. Admins can manage the queue by removing clients, sending notifications, and more.

## Features

- **Client Functionality:**
  - Join the queue.
  - View position in the queue.
  - See the number of clients in front.
  - Leave the queue.

- **Admin Functionality:**
  - Remove clients from the front of the queue.
  - Send notifications to clients.
  - Manage the queue efficiently.

## Getting Started

### Prerequisites

- Ruby (>= 2.7.0)
- Ruby on Rails (>= 7.0.0)
- PostgreSQL (>= 9.4)
- Bundler (for managing gem dependencies)

### Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/matomugo60/2queue-system-ruby.git

Install gem dependencies:



        cd queue-system-project
        bundle install
        
Set up the database:


      rails db:create
      rails db:migrate
      
Start the Rails server:


          rails server

          
Your queuing system will be accessible at http://localhost:3000.

### Usage

Clients can access the queue system by signing up or logging in.
Admins can log in to access the admin dashboard.
Clients can join the queue, and admins can manage the queue by removing clients.
Notifications are sent to clients when they are removed from the queue.
Configuration
Database configuration, secret keys, and other settings can be adjusted in the config/database.yml and config/application.rb files.
To configure the email notifications, provide SMTP settings in the config/environments/development.rb and config/environments/production.rb files.
Contributing
We welcome contributions from the community. If you would like to contribute to the project, please follow our contribution guidelines.

### License
This project is licensed under the MIT License.
