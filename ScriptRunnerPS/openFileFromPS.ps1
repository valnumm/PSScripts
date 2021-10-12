Add-Type -AssemblyName System.Windows.Forms

$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{ InitialDirectory = [Environment]::GetFolderPath('Desktop') }
$FileBrowser.Filter = "PS1 (*.ps1)| *.ps1"
$FileBrowser.SelectedPath
$FileBrowser.ShowDialog()
$SelectedFile = $FileBrowser.Filename
Write-Host "Selected file: " $SelectedFile
Powershell -file $SelectedFile