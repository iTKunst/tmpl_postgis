# tmpl_postgis

Submodule for configuring and running postgis

### 1. Ensure that the global repo is available
The global repo is a submodule that provides global functionality.  It is typically called **sub_global**

### 2. Ensure that the system repo has been created
The system repo is the single source of truth for all settings.

It needs to be named xxxx_system, where xxxx is the system identifier.  See section 5.2
> i.e. **cvms_system**

### 3. Create the new repo with the base template
1. Log in to gitlab 

> <https://gitlab.dev.ccg-gcc.gc.ca>

2. Click on **New Project**. 
3. Select the **Import project** tab
4. Enter the URL of the **tmpl** repo.

> <https://username:password@gitlab.dev.ccg-gcc.gc.ca/cvms/tmpl.git>

5. Modify the URL by adding your username and password. (It is recommended that your password not have any special characters in it.)
6. Ensure that the **Project path** has **cvms**.
7. Enter the name of the project in **Project name**.
8. Enter a description in **Project description**.
9. Click **Create project**.

### 4. Clone the new repo

1. Copy the url of the repo 
> <https://gitlab.dev.ccg-gcc.gc.ca/cvms/repo_name>
2. In Intellij IDEA select **File/New/Project From Version Control**
3. Ensure Version control is set to **Git**
4. Enter the URL of the repo in the URL field
5. Select the directory where you wish the repo to go
6. Click **Clone**

### 5. Specify the project/system values
1. Edit **proj_root/env.sh** or **proj_root/env.bat** 
2. Set the System identifier: 
> **SYS**=**cvms**
3. Set the GLOBAL GIT URL - typically:
> **GLBL_GIT**=<https://gitlab.dev.ccg-gcc.gc.ca/cvms/sub_global>
4. Set the PROJECT GIT URL to postgis.
> **PROJ_GIT**=<https://gitlab.dev.ccg-gcc.gc.ca/cvms/tmpl_postgis>

### 6. Load the repos into the project
1. Run **./ADD.sh** or **ADD.bat**
2. Run **./linux.sh** or **win.bat** to copy the commands to the root file.

### 7. Update or Set the Variables for the project
> [Edit Project variables](project/README.md)

### 8. Update or Set the Variables for the system 
> [Edit System variables](system/README.md)

### 9. Build and Run
1. Run **./build.sh** or **build.bat**
2. Run **./run.sh** or **run.bat**

### 10. Verify
1. Run **./view.sh** or **view.bat**
