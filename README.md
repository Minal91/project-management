# Project Management Application

This README provides documentation for setting up and running the Project Management Application.

## Overview

The Project Management Application is designed to help teams organize, track, and manage their projects efficiently. It includes features such as task management, team collaboration, and progress tracking.

Additionally, this application uses Ruby on Rails to build a project conversation history. A user can:

- Leave a comment
- Change the status of the project

The project conversation history will list comments and changes in status, providing a comprehensive view of project updates.

## Prerequisites

Ensure you have the following installed:

- **Ruby version**: `3.1.2`
- **Rails version**: `7.0.4`
- **Database**: SQLite3

## Setup Instructions

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/project-management.git
    cd project-management
    ```

2. **Install dependencies**:
    ```bash
    bundle install
    yarn install
    ```

3. **Database setup**:
    - Create the database:
      ```bash
      rails db:create
      ```
    - Run migrations:
      ```bash
      rails db:migrate
      ```
    - Seed the database (optional):
      ```bash
      rails db:seed
      ```

4. **Configuration**:
    - Copy the example environment file and update it with your settings:
      ```bash
      cp .env.example .env
      ```

5. **Run the application**:
    ```bash
    rails server
    ```

    Access the application at `http://localhost:3000`.

## Testing

Run the test suite to ensure everything is working as expected:
```bash
rspec
```

## Features

- Project creation and status management
- Project related conversation history
- Progress tracking and reporting
- Project conversation history with:
  - Comments
  - Status changes

## Deployment

Follow these steps to deploy the application:

1. **Prepare the production environment**:
    - Ensure the production environment is configured in `config/environments/production.rb`.
    - Update the database configuration in `config/database.yml` for the production environment.

2. **Set up the server**:
    - Install Ruby, Rails, and other dependencies on the server.
    - Install a web server (e.g., Nginx or Apache) and an application server (e.g., Puma or Passenger).

3. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/project-management.git
    cd project-management
    ```

4. **Install dependencies**:
    ```bash
    bundle install
    yarn install
    ```

5. **Database setup**:
    - Create the production database:
      ```bash
      RAILS_ENV=production rails db:create
      ```
    - Run migrations:
      ```bash
      RAILS_ENV=production rails db:migrate
      ```
    - Seed the database (if required):
      ```bash
      RAILS_ENV=production rails db:seed
      ```

6. **Precompile assets**:
    ```bash
    RAILS_ENV=production rails assets:precompile
    ```

7. **Environment variables**:
    - Set up environment variables required for production (e.g., database credentials, secret keys).
    - Use a tool like `dotenv` or configure them directly on the server.

8. **Start the application**:
    - Use the application server (e.g., Puma) to start the Rails application:
      ```bash
      RAILS_ENV=production rails server
      ```
    - Alternatively, configure the application server to run as a service.

9. **Configure the web server**:
    - Set up Nginx or Apache to proxy requests to the application server.
    - Ensure the web server is configured to serve static files and handle SSL (if applicable).

10. **Monitor and maintain**:
    - Set up monitoring tools (e.g., New Relic, Datadog) to track application performance.
    - Use a process manager (e.g., systemd, Supervisor) to ensure the application restarts on failure.

11. **Verify deployment**:
    - Access the application in the browser using the server's IP or domain name.
    - Test all critical features to ensure the application is functioning correctly.

## Contributing

We welcome contributions! Please follow these steps:

1. Fork the repository.
2. Create a feature branch:
    ```bash
    git checkout -b feature/your-feature-name
    ```
3. Commit your changes and push to your fork.
4. Submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact

For questions or support, please contact [your-email@example.com].
