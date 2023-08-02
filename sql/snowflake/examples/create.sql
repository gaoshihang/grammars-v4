create account a1 admin_name = adm admin_password = 'd' email = 'd' edition = standard;
create api integration i1 api_provider = p1 api_aws_role_arn = 'a' API_ALLOWED_PREFIXES = ('') enabled = true;
create database d1 clone d2;
create connection c1;
create database d1;
create external function e() returns int api_integration = i1 as 'dsd';
create external table e1 (c int as 1) location = @stg/ file_format = ( type = json );
create failover group g1 object_types = databases allowed_accounts = o.a;
create file format ff type = json ;
create function f1() returns int as '1';
create managed account ma admin_name = ma, admin_password = 'p', type = reader;
create masking policy mp as (c int) returns int -> 1;
create materialized view mv as select 1 as c;
create network policy np allowed_ip_list = ();
create notification integration ni enabled = true type = queue notification_provider = gcp_pubsub gcp_pubsub_subscription_name = 's';
create pipe p1 as copy into t from @stg/;
create replication group rg object_types = databases allowed_accounts = o.a;
create resource monitor rm  with  credit_quota = 1;
create role r;
create row access policy rap as (i int) returns boolean -> true;
create schema s;
--create security integration (external oauth);
--create security integration (snowflake oauth);
--create security integration (saml2);
create security integration si type = scim scim_client = 'okta' run_as_role = 'OKTA_PROVISIONER';
create sequence s1;
create session policy sp comment = '';
create share s1;
create stage s1;
create storage integration si type = external_stage storage_provider = 'S3' storage_aws_role_arn = 'r' enabled = true storage_allowed_locations = ('loc');
create stream s1 on table t1;
create table t(i int);
create table t(i int, constraint c unique (i));
create tag t comment ='1';
create tag t ALLOWED_VALUES 'V1','v2' comment ='1';
create task t as call sp1();
create user u;
create warehouse w;
create database public;
create or replace stream str_test2 on table test_str at (STREAM => 'STR_TEST2');
create schema raw;
create tag public.t ALLOWED_VALUES 'V1' comment ='1';
