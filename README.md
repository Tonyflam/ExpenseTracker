# Expense Tracker Backend

A simple backend application for managing expenses. Users can add, categorize, view, filter, and delete expenses. This project is built to handle the core logic and data storage for an expense tracking system, designed to integrate with a frontend for a complete solution.

## Features
- **Add new expenses** with:
  - Description
  - Category (e.g., Food, Transport, Entertainment)
  - Amount
- **View all expenses** with detailed summaries.
- **Filter expenses** by specific categories.
- **Delete specific expenses** by ID.

## Technologies Used
- **Backend Language**: Motoko
- **Database**: In-memory storage
- **Development Tool**: Dfinity’s Internet Computer Playground

## Setup and Usage

### 1. Clone the Repository
```bash
git clone https://github.com/Tonyflam/expense-tracker-backend.git
cd expense-tracker-backend
```

### 2. Install Dependencies
If applicable, install the necessary dependencies:

```bash
npm install
```

### 3. Run the Application
Start the backend server:

If you are using the Dfinity Internet Computer platform:

```bash
dfx start --clean
dfx deploy
```

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contributing
Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a feature branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m 'Add some feature'
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

## Contact
For questions or suggestions, please reach out via [uniquedsdave@gmail.com](mailto:uniquedsdave@gmail.com) or open an issue on this repository.
