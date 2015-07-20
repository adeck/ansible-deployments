
# What variables does this role expect?

pg\_hba\_rules -- takes a list of rules

A pg\_hba\_rule corresponds to a line in pg\_hba.conf, and has the following keys

- type -- host, local
- db -- database name
- user -- database user name
- cidr -- cidr address (optional; not included if local)
- auth -- auth method (ident, md5, trust, etc.)

For more info, see: 
http://www.postgresql.org/docs/9.3/static/auth-pg-hba-conf.html


