Employee Decision Support System (SPK) - Weighted Product Method
📌 Overview

This project is a web-based Decision Support System (Sistem Pendukung Keputusan / SPK) developed using CodeIgniter 4 and MySQL. The system is designed to assist companies in evaluating and ranking employees based on multiple criteria using the Weighted Product (WP) method.

The application follows the MVC architecture and includes authentication, role management, reporting, dashboard visualization, and activity logging features.

🚀 Features
🔐 Authentication & Authorization
Secure login & logout
Multi-user roles (Admin & Manager)
Password hashing using bcrypt
Input validation & security protection
👨‍💼 Employee Management
Add, edit, delete employee data
Employee assessment management
Dynamic criteria & weight configuration
📊 Decision Support System
Weighted Product (WP) calculation
Automatic ranking generation
Normalization process
Preference value calculation
📈 Dashboard & Visualization
Interactive dashboard
Ranking visualization using Chart.js
Employee statistics summary
📂 Reporting
Export reports to PDF & Excel
Import employee data from Excel
📝 Audit Trail
User activity logging
Decision history tracking
🛠 Tech Stack
PHP
CodeIgniter 4
MySQL
Bootstrap
Chart.js
XAMPP
🗄 Database Structure

Main Tables:

users
roles
alternatif
kriteria
nilai
hasil
logs
⚙️ Installation
Clone this repository
Move project to htdocs folder
Import database to MySQL
Configure .env
Run Apache & MySQL using XAMPP
Start project
php spark serve
📸 Screenshots
Dashboard
<img width="1907" height="907" alt="image" src="https://github.com/user-attachments/assets/2dddd17a-ecff-4b43-83d1-0a8f446e5c42" />

Ranking Result
<img width="1917" height="910" alt="image" src="https://github.com/user-attachments/assets/466d659e-e6cc-41f4-84c9-5b815e87ae1e" />

Employee Management
<img width="1917" height="897" alt="image" src="https://github.com/user-attachments/assets/2edb0fce-f859-4b00-8136-460d2ebcc3d7" />

📌 Weighted Product Formula

[
S_i = \prod_{j=1}^{n} x_{ij}^{w_j}
]

[
V_i = \frac{S_i}{\sum S_i}
]

🎯 Project Goals
Implement Decision Support System concepts
Apply Weighted Product method in real-world scenarios
Build scalable web applications using MVC architecture
Improve backend and database development skills
👨‍💻 Developer

Julian Kurniawan
