{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "extRousrDissonance",
  "androidactivityinject": "",
  "androidclassname": "",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [],
  "androidProps": false,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": -1,
  "date": "2024-11-15T22:17:47-08:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "1.0.0",
  "files": [
    {
      "resourceType": "GMExtensionFile",
      "resourceVersion": "1.0",
      "name": "",
      "filename": "rousrDissonance.dll",
      "copyToTargets": -1,
      "final": "discord_shutdown",
      "init": "",
      "order": [],
      "origname": "",
      "ProxyFiles": [],
      "uncompress": false,
      "usesRunnerInterface": false,
      "kind": 1,
      "functions": [
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_init",
          "argCount": 2,
          "args": [
            1,
            1
          ],
          "documentation": "",
          "externalName": "Init",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_update_presence",
          "argCount": 0,
          "args": [],
          "documentation": "",
          "externalName": "UpdatePresence",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_run_callbacks",
          "argCount": 0,
          "args": [],
          "documentation": "",
          "externalName": "RunCallbacks",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_reset_presence",
          "argCount": 0,
          "args": [],
          "documentation": "",
          "externalName": "ResetPresence",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_state",
          "argCount": 1,
          "args": [
            1
          ],
          "documentation": "",
          "externalName": "SetState",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_details",
          "argCount": 1,
          "args": [
            1
          ],
          "documentation": "",
          "externalName": "SetDetails",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_timestamps",
          "argCount": 4,
          "args": [
            2,
            2,
            2,
            2
          ],
          "documentation": "",
          "externalName": "SetTimeStamps",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_large_image",
          "argCount": 2,
          "args": [
            1,
            1
          ],
          "documentation": "",
          "externalName": "SetLargeImage",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_small_image",
          "argCount": 2,
          "args": [
            1,
            1
          ],
          "documentation": "",
          "externalName": "SetSmallImage",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_party",
          "argCount": 3,
          "args": [
            1,
            2,
            2
          ],
          "documentation": "",
          "externalName": "SetPartyData",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_match_secret",
          "argCount": 2,
          "args": [
            1,
            2
          ],
          "documentation": "",
          "externalName": "SetMatchSecret",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_join_secret",
          "argCount": 1,
          "args": [
            1
          ],
          "documentation": "",
          "externalName": "SetJoinSecret",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_set_spectate_secret",
          "argCount": 1,
          "args": [
            1
          ],
          "documentation": "",
          "externalName": "SetSpectateSecret",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "RegisterCallbacks",
          "argCount": 4,
          "args": [
            1,
            1,
            1,
            1
          ],
          "documentation": "",
          "externalName": "RegisterCallbacks",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 1
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_respond",
          "argCount": 2,
          "args": [
            1,
            2
          ],
          "documentation": "",
          "externalName": "Respond",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        },
        {
          "resourceType": "GMExtensionFunction",
          "resourceVersion": "1.0",
          "name": "discord_shutdown",
          "argCount": 0,
          "args": [],
          "documentation": "",
          "externalName": "Shutdown",
          "help": "",
          "hidden": false,
          "kind": 1,
          "returnType": 2
        }
      ],
      "constants": []
    }
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "HTML5CodeInjection": "",
  "html5Props": false,
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": false,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": null,
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy"
  }
}