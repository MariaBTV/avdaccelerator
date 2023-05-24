﻿param(
    [string]$volumeshare
)


reg.exe add 'HKEY_LOCAL_MACHINE\Software\FSLogix\Profiles' /v VHDLocations /t REG_MULTI_SZ /d $volumeshare /f

reg.exe add 'HKEY_LOCAL_MACHINE\Software\FSLogix\Profiles' /v DeleteLocalProfileWhenVHDShouldApply /t REG_DWORD /d 1 /f

reg.exe add 'HKEY_LOCAL_MACHINE\Software\FSLogix\Profiles' /v FlipFlopProfileDirectoryName /t REG_DWORD /d 1 /f

reg.exe add 'HKEY_LOCAL_MACHINE\Software\FSLogix\Profiles' /v Enabled /t REG_DWORD /d 1 /f

reg.exe add 'HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\Kerberos\Parameters' /v CloudKerberosTicketRetrievalEnabled /t REG_DWORD /d 1 /f

reg.exe add 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\AzureADAccount' /v LoadCredKeyFromProfile /t REG_DWORD /d 1 /f

