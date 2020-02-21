# Postgres

## Download and install

#### Download pgadmin
`sudo apt install pgadmin3`

## Util commands and tutorials

#### Force psql to ask for password
`psql -U usuario -W`

#### Change forgotten password of user postgres

1. With SSH access to the postgres machine, edit the file `pg_hba.conf`:\
`sudo vim /etc/postgresql/11/main/pg_hba.conf`

1. Change the line that starts with `local  all   postgres` to `local  all   postgres   trust`\
Note: I suggest to duplicate this line to restore the configuration later. 

1. Save the file.

1. Restart postgres server: \
`sudo /etc/init.d/postgresql restart`

1. Access postgres command line:\
`psql -U postgres`

1. Execute the following query:\
`ALTER USER postgres with password 'very_secure_password';`

1. Restore the default configuration changed in step 2;

1. Restart postgres server: \
`sudo /etc/init.d/postgresql restart`



