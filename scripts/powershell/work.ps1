
function Open-Workspace {
    
  [CmdletBinding()]
  Param (
    [ValidateSet([WorkspaceNames])]
    [String]$Name
  )

  if (!$Name) {
    Write-Host " 🔴 you need to inform a workspace name" -ForegroundColor Red
    return
  }
  $WorkspaceFile = "C:\Users\Alisson\Repos\personal\workspaces\$Name.code-workspace"
  if (Test-Path -path $WorkspaceFile) {
    Write-Host " 🟢 opening workspace... " -ForegroundColor Green
    code $WorkspaceFile
    return
  }
  else {
    Write-Host " 🔴 the workspace was not found"  -ForegroundColor Red
    return
  }
  
  Class WorkspaceNames : System.Management.Automation.IValidateSetValuesGenerator {
    [String[]] GetValidValues() {
      $WorkspacePaths = 'C:\Users\Alisson\Repos\personal\workspaces\'
      $WorkspaceNames = ForEach ($WorkspacePath in $WorkspacePaths) {
        If (Test-Path $WorkspacePath) {
          (Get-ChildItem $WorkspacePath).BaseName
        }
      }
      return [String[]] $WorkspaceNames
    }
  }

}
