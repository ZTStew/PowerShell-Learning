<# C:\Users\zachary.stewart\'OneDrive - T2 Systems, Inc'\Documents\test.ps1 #>
<# https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_scripts?view=powershell-7.2#:~:text=PowerShell%20scripts%20have%20a%20.,ps1%20file%20extension. #>
<# Follows verb-noun syntax #>
# Get-TimeZone
# Get-Command *
# Get-Command *process*
<# Gets update files for each command #>
# Update-Help
<# provides description of command #>
# Get-Help Stop-Process
<# provides examples of given command #>
# Get-Help Stop-Process -Examples
# Get-Date
<# Tells what kind of object is returned #>
<# tells what methods are available to the object #>
<# tells what properties are available to the object #>
# Get-Date | Get-Member
<# Returns all properties of object #>
# Get-Date | Format-List

# Get-RandomGet-Random | Get-Member

<# Finds module that can be installed #>
<# -Tag checks for modules containing the following keyword #>
# Find-Module -Tag Telegram

######################################################################################################################################################
######################################################################################################################################################
######################################################################################################################################################


Write-Output "#######################################################################################################################################"
Write-Output "#######################################################################################################################################"
Write-Output "#######################################################################################################################################"
Get-Date

# creates variable that is the path to /Documents folder
New-Variable -Name 'address' -Value C:\Users\zachary.stewart\'OneDrive - T2 Systems, Inc'\Documents\
# prints variable 'address' value
# Get-Variable -Name 'address'
# Write-Output address
# Get-Help Write-OUtput -examples

# Get-Help New-Item -examples
# get-help New-Item -detailed
# get-help New-Item -full
# New-Item 

$FileAddress = Convert-Path C:\Users\zachary.stewart\'OneDrive - T2 Systems, Inc'\Documents\
$FileName = 'testFile.txt'

try {
  # creates new file, if it exists it produces error. Error silenced by 'silentlycontinue'
  # Remove-Item -Path C:\Users\zachary.stewart\'OneDrive - T2 Systems, Inc'\Documents\testFile.txt
  # Remove-Item -Path $FileAddress'testFile.txt'
  Remove-Item -Path $FileAddress$FileName
} catch {"Catch"} finally {
  New-Item -Path C:\Users\zachary.stewart\'OneDrive - T2 Systems, Inc'\Documents\testFile.txt -Value "Hello this is new file"
}

Start-Process "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"

# Write-Output "After file create"

# Get-Process | Out-File -FilePath $FileAddress$FileName -Append -Encoding utf8
# Get-Content -Path $FileAddress$FileName

# $Procs = Get-Process
# Out-File -FilePath .\Process.txt -InputObject $Procs -Encoding ASCII -Width 50


######################################################################################################################################################
######################################################################################################################################################
######################################################################################################################################################

<#

ac = Add-Content                 # Example: ac -value 'The End' -path 'flop.txt'
# (appends value to file)
cat = gc = type = Get-Content    # Get the content of a file;
# returns an array with one line per element
cd = sl = Set-Location           # Change folder, Registry key, or PSdrive.
# Example: cd env:, cd HKLM:
cls = clear = Clear-Host         # Clears console
#
del = erase	= Remove-Item        # Remove files, registry keys, etc.
#
dir = gci = ls = Get-Childitem   # List children in current PSdrive, folder, Registry key
                                    #
echo = write = Write-Output      # String to output array. Array is sent to console, into
                                    # pipeline, or redirected/appended to file
foreach = % = Foreach-Object     # Only in pipeline: for each object crossing the pipeline
                                    # Do not confuse with language construct of the same name
ft = Format-Table                # Example: ls *.jpg |ft directory, length, name -AutoSize  -Wrap 
                                    # 
fl = Format-List                 # Example: ls env:Path |fl
                                    # (gives wrapped output of environment variable "Path")
gal = Get-Alias                  # "Get-Alias -definition cmdlet", gives aliases of cmdlet
                                    # "Get-Alias [-name] alias", gives name of cmdlet called by alias
gcm = Get-Command                # Get all commands (cmdlets, functions, and aliases).
                                    # gcm -CommandType Alias -> all aliases
gm = Get-Member                  # Example: ls flop.txt | gm
                                    # (all members of object flop.txt)
gp  = Get-ItemProperty           # In file system: gp * gives same output as ls *
                                    # In Registry: value entries (names and values)
gpv  = Get-ItemPropertyValue     # In filesystem: get prop's of files. Ex: gpv *.txt basename (names of .txt files)
                                    # Ex: In HKCU:\SOFTWARE\Microsoft\Accessibility: gpv -name cursorsize (returns number)
gv = Get-Variable                # Get names and values of
                                    # all session variables
ni = New-Item                    # Create new file, directory, symbolic link, 
                                    # registry key, or registry entry	
ps = gps = Get-Process           # List running processes.
                                    #
pwd = gl = Get-Location          # Current directory (folder)
                                    # or Registry key
ren = rni = Rename-Item          # Examples: ren report.doc report.txt
                                    # and: ls report.doc | ren -newname report.txt
rmdir = rm = ri = Remove-Item    # Remove directories, files, registry keys, etc.
                                    #
rv = Remove-Variable             # Remove variable (name without $ prefix, while
                                    # note that variable names must begin with $)
select = Select-Object           # Select specified properties of piped object
                                    # Example: ps |select Processname | select -first 10
sleep = Start-Sleep              # Sleep -sec 1
                                    # (sleep 1 second)
sls    = Select-String           # Example: sls foo.txt -patt '^\S' (a regular expression
                                    # giving all lines that do not start with blank, tab, or EOL)
where  = ? = Where-Object        # Only in pipeline.
                                    # Example: ls -recurse |? name -like '*Pict*'
$env:userprofile = ~             # Example: cd ~ (change folder to home folder of user).

#>