# Windows-Sysadmin-Group-Policy-Challenge

## **Project Summary**
In this project, I created domain-hardening GPOs and revisited some PowerShell fundamentals. I worked with a Windows Server machine and a Windows 10 machine within an Azure Windows RDP Host machine, and created GPOs to disable Local Link Multicast Name Resolution (LLMNR), implement an account lockout policy, and enable verbose PowerShell logging and transcription. The project aimed to address several security vulnerabilities and harden the domain environment by mitigating some of the common attack vectors in Windows domains.


## **Account Lockout Policies**

The first image, "Account-Lockout-Policies," shows the changes made to account lockout policies using the Group Policy Management editor. The lockout duration was changed to 30 minutes, the account lockout threshold was set to 10 invalid logon attempts, and the account lockout counter was reset after 30 minutes.
![image](https://github.com/mennealex/Windows-Sysadmin-Group-Policy-Challenge/assets/125506142/eede46d8-277c-4926-be78-af9572c7b58f)

## **Group Policy Objects**

The second image, "GPOs," displays the group policy objects added for the project. These include no LLMNR, PowerShell logging, account lockout, no control panel, and limit settings.
![image](https://github.com/mennealex/Windows-Sysadmin-Group-Policy-Challenge/assets/125506142/7379e236-c2c7-477f-94dc-aea4b61820e1)

## **Windows PowerShell Policies**

The third image, "Windows-PowerShell-Policies," depicts changes made in the Windows PowerShell settings using the Group Policy Management editor. The Module Logging was turned on, PowerShell script block logging was enabled, script execution was turned on, and PowerShell transcription was enabled.
![image](https://github.com/mennealex/Windows-Sysadmin-Group-Policy-Challenge/assets/125506142/ad24b147-1fae-46b1-934d-ee9e0952c6e5)

## **Enumerate Access Control Lists Script**

The file "enum_acls.ps1" is a PowerShell script that enumerates access control lists. Here is a copy of the script:

perl

$directory = Get-ChildItem
foreach ($item in $directory) {
    $acl = Get-Acl $item.FullName
    $acl
}

## **PowerShell Logs**

The final image, "PowerShell-logs," shows a screenshot of the PowerShell script in action, including a copy of the logs it had taken.
![image](https://github.com/mennealex/Windows-Sysadmin-Group-Policy-Challenge/assets/125506142/c5356024-ff71-4415-b538-22080c9ecb3a)

Overall, this project focused on implementing various security settings in a Windows environment using Group Policy Management editor and PowerShell. The scripts and policies added can help enhance the security of a Windows environment.
