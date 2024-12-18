{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_hallway",
  "spriteId": {
    "name": "spr_hallway",
    "path": "sprites/spr_hallway/spr_hallway.yy"
  },
  "spriteMaskId": null,
  "visible": true,
  "solid": false,
  "persistent": false,
  "managed": false,
  "parentObjectId": null,
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
    }
  ],
  "properties": [
    {
      "resourceType": "GMObjectProperty",
      "resourceVersion": "1.0",
      "name": "targetRoom",
      "varType": 4,
      "value": "hub_room1",
      "rangeEnabled": false,
      "rangeMin": 0.0,
      "rangeMax": 10.0,
      "listItems": [],
      "multiselect": false,
      "filters": []
    },
    {
      "resourceType": "GMObjectProperty",
      "resourceVersion": "1.0",
      "name": "acttransition",
      "varType": 4,
      "value": "false",
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