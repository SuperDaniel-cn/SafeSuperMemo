﻿<##############################################################################
SafeSuperMemo Properties

These variables are used by the SafeSuperMemo script and should be 
configured for your environment.

NOTE: The variables MUST have the $ (dollar sign) prefix or it won't work!!
##############################################################################>

#
# Leave this enum alone!
#
Enum SyncService { Dropbox; OneDrive }  


#
# $dropboxPath    
#   
# The path to your Dropbox.exe file.
# The default is probably right but you should verify it.
#
$dropboxPath = "C:\Program Files (x86)\Dropbox\Client\Dropbox.exe"


#
# $onedrivePath
#
# The path to your OneDrive.exe file.
# The default is probably right but you should verify it.
#
$onedrivePath = Join-Path -Path $env:LOCALAPPDATA -ChildPath Microsoft\OneDrive\OneDrive.exe


#
# $useService
#
# Set this to one of the enum values from SyncService above
#
# IMPORTANT:  ONLY ONE OF THE NEXT TWO LINES SHOULD BE UNCOMMENTED.
#
$useService = [SyncService]::Dropbox
#$useService = [SyncService]::OneDrive


#
# $collectionRootDir
#
# This is the directory ABOVE the one containing your .kno file.
# Ex: If your .kno file is at:            
#         C:\dir1\dir2\mycollection.kno
#     then this line should be:  
#         $collectionRootDir = C:\dir1\    (include trailing slash!)
#
$collectionRootDir = "C:\Users\David\Dropbox\SuperMemo\Master Collections\"
#$collectionRootDir = "C:\Users\David\OneDrive\SuperMemo\"


#
# $collectionName
#
# This is the name of your collection.
# Ex: If your .kno file is named:         
#         My Collection.kno
#     then this line should be: 
#         $collectionName = My Collection
#
$collectionName = "All My Knowledge"


#
# $backupRootDir
#
# This is the directory that will contain all of the 
# time-stamped backups.
#
$backupRootDir = "F:\SuperMemo\Backups\"