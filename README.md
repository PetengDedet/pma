## About

Simple shell script that automatically installs the latest version of PhpMyAdmin
on a Laravel Homestead box.

###IMPORTANT NOTE
In the previous version we use ".app" top level domain (TLD). Since Google chrome forced it to use https, we change the script to use ".localhost" as it's replacement [Read this](https://iyware.com/dont-use-dev-for-development).
Old user may update the setting.

## Usage

1. SSH into your Homestead box and `cd` to your code/projects directory

2. `$ curl -sS https://raw.githubusercontent.com/PetengDedet/pma/master/pma.sh | sh`

3. Open the `/etc/hosts` file on your main machine and add
```127.0.0.1  phpmyadmin.localhost```

4. Go to [http://phpmyadmin.localhost:8000](http://phpmyadmin.localhost:8000)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
