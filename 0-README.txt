CREATED BY  Rajat Shrestha  17030954


To import Dump file:

	imp shresthaRajat/pwrd FILE = C:\Coursework\CC5051_Rajat_Shrestha_17030954.dmp


To export Dump file:

	exp shresthaRajat/pwrd FILE = C:\Coursework\CC5051_Rajat_Shrestha_17030954.dmp LOG = C:\Coursework\CC5051_Rajat_Shrestha_17030954.log


note : all of the files were put in a Fol


path of the sqlplus executable file
	
	C:\oraclexe\app\oracle\product\11.2.0\server\bin\


Commands to execute all of the sql files:

	@C:\Development\1-table-generation.sql
	@C:\Development\2-table-populating.sql
	@C:\Development\3-1-InformationQueries.sql
	@C:\Development\3-2-InformationQueries.sql
	@C:\Development\3-3-InformationQueries.sql
	@C:\Development\3-4-InformationQueries.sql
	@C:\Development\4-1-TransactionQueries.sql
	@C:\Development\4-2-TransactionQueries.sql
	@C:\Development\4-3-TransactionQueries.sql
	@C:\Development\4-4-TransactionQueries.sql
	@C:\Development\5-table-deleting.sql











commands used to create and give access to the user:

	CONNECT sys as sysdba;
	SELECT * FROM ALL_USERS;
	CREATE USER ShresthaRajat IDENTIFIED BY pwrd;
	ALTER USER ShresthaRajat ACCOUNT UNLOCK;
	GRANT resource To ShresthaRajat;
	GRANT create session TO ShresthaRajat;
	CONNECT ShresthaRajat
	SELECT table_name from user_Tables;



Actual command used to export and import dump file:

	C:\oraclexe\app\oracle\product\11.2.0\server\bin\exp shresthaRajat/pwrd FILE = C:\Development\shresthaRajat.dmp LOG = C:\Development\shresthaRajat.log
	C:\oraclexe\app\oracle\product\11.2.0\server\bin\imp shresthaRajat/pwrd FILE = C:\Development\shresthaRajat.dmp






