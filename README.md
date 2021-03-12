# apahce-mysql-laravel

## Setup
### Install Makefile

For Windows:
http://gnuwin32.sourceforge.net/packages/make.htm

Download Setup Installer, Description of `Complete package, except sources`.

For Mac:
https://brew.sh/index.html

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

For Ubuntu:

```
sudo apt install build-essential
```

For CentOS:

```
yum install make
```

### Install Docker

For Windows:
https://hub.docker.com/editions/community/docker-ce-desktop-windows/

For Mac:
https://hub.docker.com/editions/community/docker-ce-desktop-mac/

And More:
https://docs.docker.com/engine/install/

### Install Python3
https://www.python.org/downloads/

## URLs
### Laravel app
http://localhost:8380

### phpMyAdmin
http://localhost:8880

## Command

### Build local env

```
make buildup
```

### Stop local env

```
make stop
or 
make d
```

### Start local env

```
make u
or
make start
```