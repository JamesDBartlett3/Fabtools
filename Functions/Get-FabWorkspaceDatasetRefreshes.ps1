<#
.SYNOPSIS
   Retrieves the refresh history of all datasets in a specified PowerBI workspace.

.DESCRIPTION
   The Get-FabWorkspaceDatasetRefreshes function uses the PowerBI cmdlets to retrieve the refresh history of all datasets in a specified workspace.
   It uses the workspace ID to get the workspace and its datasets, and then retrieves the refresh history for each dataset.

.PARAMETER WorkspaceID
   The ID of the PowerBI workspace. This is a mandatory parameter.

.EXAMPLE
   Get-FabWorkspaceDatasetRefreshes -WorkspaceID "12345678-90ab-cdef-1234-567890abcdef"

   This command retrieves the refresh history of all datasets in the workspace with the specified ID.

.INPUTS
   String. You can pipe a string that contains the workspace ID to Get-FabWorkspaceDatasetRefreshes.

.OUTPUTS
   Array. Get-FabWorkspaceDatasetRefreshes returns an array of refresh history objects.

.NOTES
   Alias: Get-PowerBIWorkspaceDatasetRefreshes, Get-FabricWorkspaceDatasetRefreshes
#>

# Define a function to get the refresh history of all datasets in a PowerBI workspace
function Get-FabWorkspaceDatasetRefreshes {
    # Set aliases for the function
    [Alias("Get-PowerBIWorkspaceDatasetRefreshes","Get-FabricWorkspaceDatasetRefreshes")]
    param(
        # Define a mandatory parameter for the workspace ID
        [Parameter(Mandatory=$true)]
        [string]$WorkspaceID
    )
    # Get the workspace using the workspace ID
    $wsp = Get-PowerBIWorkspace -workspaceid $WorkspaceID
    # Initialize an array to store the refresh history
    $refs = @()
    # Get all datasets in the workspace
    $datasets = Get-FabDataset -workspaceid $wsp.Id

    # Loop over each dataset
    foreach ($dataset in $datasets) {
        # Get the refresh history of the dataset and add it to the array
        $refs += Get-FabDatasetRefreshes -datasetid $dataset.Id -workspaceId $wsp.Id
    }
    # Return the refresh history array
    return $refs
}