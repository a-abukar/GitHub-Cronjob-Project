# Git Commit Cronjob Script

This project provides a simple Bash script for creating random commits in a Git repository and pushing them to a private GitHub repository at a regular interval. The project also includes a companion script for deleting the files created by the commit script from the repository periodically.

## Requirements

- Bash
- Git
- A private GitHub repository with push access

## Usage

To use the commit cronjob script, follow these steps:

1. Clone the repository to your local machine, remove the `.git` file by doing `rm -rf .git` and create a new private repository to commit to:

   ```sh
   git clone https://github.com/example-user/example-repo.git
   ```

2. Make the script executable:

   chmod +x github_cron.sh

3. Add the cronjob to your system's crontab file using `crontab -e` command:

   ```sh
   0 0 * * * /bin/bash /path/to/github_cron.sh
   ```

   This will run the script daily at midnight (00:00). You can adjust the timing to suit your needs.

4. Save and close the crontab file. The script will now run daily and create random commits in the remote repository.

To use the file deletion script, follow these steps:

1. Modify the `github_clean_cron.sh` script to set the correct file paths and remote URL.

2. Make the script executable:

   ```sh
   chmod +x github_clean_cron.sh
   ```

3. Add the cronjob to your system's crontab file using `crontab -e` command:

   ```sh
   0 0 * * 0 /bin/bash /path/to/github_clean_cron.sh
   ```


   This will run the script every Sunday at midnight (00:00). You can adjust the timing to suit your needs.

4. Save and close the crontab file. The script will now run weekly and delete the files created by the commit script from the remote repository.

## License

This project is licensed under the MIT License.
