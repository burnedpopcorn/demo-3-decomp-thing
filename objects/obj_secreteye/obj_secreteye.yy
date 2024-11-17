{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_secreteye",
  "spriteId": {
    "name": "spr_secreteye_idle",
    "path": "sprites/spr_secreteye_idle/spr_secreteye_idle.yy"
  },
  "spriteMaskId": {
    "name": "spr_secreteye_idle",
    "path": "sprites/spr_secreteye_idle/spr_secreteye_idle.yy"
  },
  "visible": true,
  "solid": false,
  "persistent": false,
  "managed": false,
  "parentObjectId": {
    "name": "group_door",
    "path": "objects/group_door/group_door.yy"
  },
  "eventList": [
    {
      "resourceType": "GMEvent",
      "resourceVersion": "1.0",
      "name": "",
      "isDnD": false,
      "eventNum": 0,
      "eventType": 0,
      "collisionObjectId": null
    },
    {
      "resourceType": "GMEvent",
      "resourceVersion": "1.0",
      "name": "",
      "isDnD": false,
      "eventNum": 0,
      "eventType": 3,
      "collisionObjectId": null
    },
    {
      "resourceType": "GMEvent",
      "resourceVersion": "1.0",
      "name": "",
      "isDnD": false,
      "eventNum": 0,
      "eventType": 4,
      "collisionObjectId": {
        "name": "obj_player",
        "path": "objects/obj_player/obj_player.yy"
      }
    },
    {
      "resourceType": "GMEvent",
      "resourceVersion": "1.0",
      "name": "",
      "isDnD": false,
      "eventNum": 4,
      "eventType": 7,
      "collisionObjectId": null
    },
    {
      "resourceType": "GMEvent",
      "resourceVersion": "1.0",
      "name": "",
      "isDnD": false,
      "eventNum": 10,
      "eventType": 7,
      "collisionObjectId": null
    }
  ],
  "properties": [
    {
      "resourceType": "GMObjectProperty",
      "resourceVersion": "1.0",
      "name": "targetDoor",
      "varType": 4,
      "value": "\"A\"",
      "rangeEnabled": false,
      "rangeMin": 0.0,
      "rangeMax": 10.0,
      "listItems": [],
      "multiselect": false,
      "filters": []
    }
  ],
  "parent": {
    "name": "Objects",
    "path": "folders/Objects.yy"
  }
}