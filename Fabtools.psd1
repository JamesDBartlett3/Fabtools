#
# Module manifest for module 'Fabtools'
#
# Generated by: Ioana Bouariu
#
# Generated on: 05.11.2023
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'Fabtools.psm1'

    # Version number of this module.
    ModuleVersion     = '0.7.0.3'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID              = '8bc9ba6c-218d-4a2a-ba89-66a492a1616c'

    # Author of this module
    Author            = 'Ioana Bouariu AKA Jojobit'

    # Company or vendor of this module
    CompanyName       = ''

    # Copyright statement for this module
    Copyright         = 'Ioana Bouariu'

    # Description of the functionality provided by this module
    Description       = 'A module to be able to do more with Microsoft Fabric.
    It lets you pause and resume Fabric capacities.
    Adds functionallity previously only available with the REST API as PowerShell functions.
    There are also functions to make it easier to monitor usage metrics and refreshes.
    It also adds Fabric-friendly aliases for PowerBI functions to make it easier to use the module.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # ClrVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @('Az.Accounts', 'Az.Resources','MicrosoftPowerBIMgmt')

    # Assemblies that must be loaded prior to importing this module
    #RequiredAssemblies = @('Microsoft.Azure.PowerShell.Authentication')

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules     = ''

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @(
        "Export-FabricItem",
        "Get-AllFabricCapacities",
        "Get-AllFabricDatasetRefreshes",
        "Get-FabricAPIclusterURI",
        "Get-FabricAuthToken",
        "Get-FabricCapacity",
        "Get-FabricCapacityRefreshables",
        "Get-FabricCapacityState",
        "Get-FabricCapacityTenantOverrides",
        "Get-FabricCapacityWorkload",
        "Get-FabricDatasetRefreshes",
        "Get-FabricItem",
        "Get-FabricTenantSettings",
        "Get-FabricUsagemetricsQuery",
        "Get-FabricWorkspace",
        "Get-FabricWorkspaceDatasetRefreshes",
        "Get-FabricWorkspaceUsageMetricsData",
        "Get-FabricWorkspaceUsers",
        "Get-SHA256",
        "Import-FabricItem",
        "Invoke-FabricAPIRequest",
        "Invoke-FabricDatasetRefresh",
        "New-FabricWorkspace",
        "New-FabricWorkspaceUsageMetricsReport",
        "Register-FabricWorkspaceToCapacity",
        "Remove-FabricItem",
        "Remove-FabricWorkspace",
        "Resume-FabricCapacity",
        "Set-FabricAuthToken",
        "Suspend-FabricCapacity",
        "Unregister-FabricWorkspaceToCapacity"
    )

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @()

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @(
    "Export-FabItem",
    "Get-AllFabCapacities",
    "Get-AllFabDatasetRefreshes",
    "Get-FabAPIclusterURI",
    "Get-FabAuthToken",
    "Get-FabCapacity",
    "Get-FabCapacityRefreshables",
    "Get-FabCapacityState",
    "Get-FabCapacityTenantOverides",
    "Get-FabCapacityWorkload",
    "Get-FabDataset",
    "Get-FabDatasetRefreshes",
    "Get-FabItem",
    "Get-FabReport",
    "Get-FabricDataset",
    "Get-FabricReport",
    "Get-FabTenantSettings",
    "Get-FabUsagemetricsQuery",
    "Get-FabWorkspace",
    "Get-FabWorkspaceDatasetRefreshes",
    "Get-FabWorkspaceUsageMetricsData",
    "Get-FabWorkspaceUsers",
    "Invoke-FabDatasetRefresh",
    "Login-Fabric",
    "Logout-Fabric",
    "New-FabWorkspace",
    "New-FabWorkspaceUsageMetrics",
    "Register-FabWorkspaceToCapacity",
    "Remove-FabWorkspace",
    "Resume-FabCapacity",
    "Suspend-FabCapacity",
    "Unregister-FabWorkspaceToCapacity"
    )

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @("microsoftfabric", "powerbi", "developermode", "pbip", "Fabtools", "Fabric")

            # A URL to the license for this module.
            LicenseUri   = 'https://www.github.com/jojobit/Fabtools/LICENSE.md'

            # A URL to the main website for this project.
            ProjectUri   = 'https://www.github.com/jojobit/Fabtools'

            # A URL to an icon representing this module.
            IconUri      = 'https://raw.githubusercontent.com/Jojobit/Fabtools/main/Fabtools.ico'

            # ReleaseNotes of this module
            ReleaseNotes = @("
            Version 0.7.0.3:
            - Fixed the functions related to checking, pausing and activating Fabric capacities in Azure

            Version 0.7.0.2:
            - Fixed a bug that made the the module return an error on the first attempt to get data from the Rest API.

            Version 0.7.0.1:
            - Removed the parameter outfile in the function Invoke-FabricAPIRequest, as it led to an error in PowerShell version 7.4

            Version 0.7.0:
            - The official Rest API for Microsoft Fabric is now Public. This means that there are a lot of new possibilities for this module.
            - After a great talk with Rui Romano, he's graciously allowed us to integrate the functions from his project: fabricps-pbip (https://github.com/RuiRomano/fabricps-pbip) into Fabtools.
            - Lots of new functions to make it easier to work with Microsoft Fabric.
            - It is now possible to export and import items from a workspace. Currently that includes reports (pbip), semantic models (datasets), spark jobs, and notebooks (ipynb).
            - It is now possible to register and unregister a workspace to/from a capacity.
            - Several functions have been rewritten to use the new fabric API endpoint rather than the old PowerBI API endpoint.

            Version 0.6.0:
            - Added Get-AllFabricCapacities function to get all capacities in a tenant.
            - Added Invoke-FabricDatasetRefresh function to refresh a dataset.
            - Changed the main functions to be with the Fabric prefix instead of Fab, and added Fab as aliases.
            - Added IconUri to the manifest.
            "
            )

            # Prerelease string of this module
            # Prerelease = ''

            # Flag to indicate whether the module requires explicit user acceptance for install/update/save
            # RequireLicenseAcceptance = $false

            # External dependent modules of this module
            # ExternalModuleDependencies = @()

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    HelpInfoURI = 'https://www.github.com/jojobit/Fabtools'

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}

