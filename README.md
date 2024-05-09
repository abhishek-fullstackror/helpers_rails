# Rails View Optimization with Batch Loading

This Rails application demonstrates an optimized approach to handle large view datasets by utilizing ActiveRecord's `find_each` method for batch loading and abstracting view-related logic into helpers. This improves the efficiency of data handling and maintains a clean separation of concerns, enhancing the scalability and maintainability of the codebase.

## Features

- **Batch Data Loading**: Efficiently load data in batches to minimize memory usage and optimize database interactions.
- **View Helpers**: Use view helpers to abstract logic from views, making them cleaner and more maintainable.

## Getting Started

### Prerequisites

Ensure you have the following installed:
- Ruby (version 3.0.5 or newer)
- Rails (version 7.1.3 or newer)
- sqlite3 (or another compatible database system)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/rails-view-optimization.git
   cd rails-view-optimization
2. To load all dependencies-
   bundle install
3. Setup the database:
   rails db: create
   rails db: migrate
4. Start the Rails server:
    rails s
