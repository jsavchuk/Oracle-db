--
-- Copyright (c) 1988, 2005, Oracle.  All Rights Reserved.
--
-- NAME
--   glogin.sql
--
-- DESCRIPTION
--   SQL*Plus global login "site profile" file
--
--   Add any SQL*Plus commands here that are to be executed when a
--   user starts SQL*Plus, or uses the SQL*Plus CONNECT command.
--
-- USAGE
--   This script is automatically run
--

-- [JS19JAN2016 START]

COLUMN ERROR FORMAT A65 WORD_WRAPPED
--Used for SHOW SGA command
COLUMN name_col_plus_show_sga FORMAT a24
COLUMN units_col_plus_show_sga FORMAT a15

--Defaults for SHOW PARAMETERS
COLUMN name_col_plus_show_param FORMAT a36 HEADING NAME
COLUMN value_col_plus_show_param FORMAT a30 HEADING VALUE

--Defaults for SHOW RECYCLEBIN
COLUMN origname_plus_show_recyc FORMAT a16 HEADING 'ORIGINAL NAME'
COLUMN objectname_plus_show_recyc FORMAT a30 HEADING 'RECYCLEBIN NAME'
COLUMN objtype_plus_show_recyc FORMAT a12 HEADING 'OBJECT TYPE'
COLUMN droptime_plus_show_recyc FORMAT a19 HEADING 'DROP TIME'

--Defaults for SET AUTOTRACE EXPLAIN report
COLUMN id_plus_exp FORMAT 990 HEADING i
COLUMN parent_id_plus_exp FORMAT 990 HEADING p
COLUMN plan_plus_exp FORMAT a60 
COLUMN other_tag_plus_exp FORMAT a29 
COLUMN other_plus_exp FORMAT a44 

--Jerry's settings
set feedback off
set timing off
set echo off
set serveroutput on
set time on
set termout off

SET SQLPROMPT '&_DATE &_USER@&_CONNECT_IDENTIFIER>'

column date_column new_value date_var noprint
select to_char(sysdate, 'DDMONYY-HH24.MI.SS') date_column
from dual
/

set feedback on
set timing on
set termout on

spool D:\Logs\Oracle\&_USER..&_CONNECT_IDENTIFIER..&date_var..log



-- [JS19JAN2016 END]