SQL COMPATIBILITY README.TXT file

This document describes how you can install the SQL compatibility VIs for the  
LabVIEW Database Connectivity Toolset version 1.0.1.  

System Requirements
Your computer must meet the following minimum system requirements to use the 
SQL Compatibility VIs:
* LabVIEW 5.1 or later 
* Windows 2000/NT/ME/9x
* 64 MB of RAM
* 4 MB of hard drive space

Installation Instructions
You install the SQL Compatibility VIs by placing the _SQL directory into the 
labview\vi.lib\addons directory.  The underscore character means that the new 
SQL Compatibility VIs will not be visible in the Functions palette when you 
restart LabVIEW and this new directory will not overwrite the old SQL Toolkit 
for G directory.  

You must also install the Microsoft Data Access Components (MDAC) by running 
the mdac_typ.exe file. MDAC 2.5 installs ADO, OLE DB, and ODBC components to 
your computer and provides the interface of the SQL Compatibility VIs to 
database applications.  If you are using a non-English version of Windows, 
then you should not install the version of MDAC in this directory.  Download 
and install a localized version of MDAC for your operating system from the 
Microsoft web site at http://www.microsoft.com/data/.  


Additional Information
The SQL Compatibility VIs are meant to replace VIs used in the SQL Toolkit 
for G versions 2.0 and 5.0 while using the current Microsoft technology for 
data access (ADO) and used by the LabVIEW Database Connectivity Toolset.  
VIs with the same names, locations, and connectors are provided for most of 
the SQL Toolkit.  However, ADO does not provide all the functionality of the 
SQL Toolkit.  The following SQL Toolkit VIs were unable to be reproduced in 
the Database Connectivity Toolset compatibility VIs:

     Get Column Information
     Get Database Information
     Get DSN Information
     Get Procedure Col Information
     Get References
     Get Table Information
     Get Type Information
     Get Column Alias
     Get Column Attributes
     Get Column Expression
     Get Column Width
     Request Column Information
     Request Database Information
     Request DSN Information
     Request Procedure Col Information
     Request Table Information
     Request Type Information
     Clear SQL Parameter
     Close Fetch Log File
     Get Statement Options
     Set Statement Options
     Get Supported Isolation Levels

Although these functions do not exist in the SQL Compatibility VIs, some of 
the new Database Connectivity Toolset VIs can do similar operations.  As with 
any compatibility VI provided for LabVIEW, you should try to convert 
applications that use them to use the new methodology.  Subsequent releases 
of the Database Connectivity Toolset may no longer contain the SQL 
Compatibility VIs.

****************************************************************************                                                  
NOTE:
When you uninstall the SQL Toolkit for G, some of the ODBC Driver registry entries are removed.  To restore these driver entries, run the Fix ODBC Registry.exe program from the SQL Compatibility directory on the Database Connectivity Toolset installation CD.

****************************************************************************