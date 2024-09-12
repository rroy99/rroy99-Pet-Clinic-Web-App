# Pet-Clinic-Web-App

This web application is developed for a veterinary clinic. The application features 2 roles:

1. **admin**
    - Can access all features.
2. **dokter**
    - Can input administrative data.
    - Can record patient diagnosis results.

## Instructions

1. **Clone or Download Repository:**

    ```bash
    git clone https://github.com/rroy99/rroy99-Pet-Clinic-Web-App.git
    ```

2. **Open Project in VSCode and Rename the .env.example File to .env:**

    ```bash
   cp .env.example .env  
    ```

3. **Configure Database:**

    - Open the .env file and set up the database name as needed:
        ```env
        DB_CONNECTION=mysql
        DB_HOST=127.0.0.1
        DB_PORT=3306
        DB_DATABASE=nama_database
        DB_USERNAME=nama_pengguna_database
        DB_PASSWORD=kata_sandi_database
        ```

4. **Install Dependencies:**

    ```bash
    composer install
    ```

5. **Generate Application Key:**

    ```bash
    php artisan key:generate
    ```

6. **Create Symbolic Link for Storage:**

    ```bash
    php artisan storage:link
    ```

7. **Run Database Migrations:**

    ```bash
    php artisan migrate
    ```

8. **Seed Database:**

    ```bash
    php artisan db:seed
    ```

9. **Run Artisan Serve:**

    ```bash
    php artisan serve
    ```

10. **Login with Account:**
    - Username: admin@admin.com
    - Password: 1
