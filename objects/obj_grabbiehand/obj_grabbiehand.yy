{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_grabbiehand",
  "spriteId": {
    "name": "spr_grabbiehand_idle",
    "path": "sprites/spr_grabbiehand_idle/spr_grabbiehand_idle.yy"
  },
  "spriteMaskId": {
    "name": "spr_grabbiehand_idle",
    "path": "sprites/spr_grabbiehand_idle/spr_grabbiehand_idle.yy"
  },
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
      "eventNum": 2,
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
    }
  ],
  "properties": [
    {
      "resourceType": "GMObjectProperty",
      "resourceVersion": "1.0",
      "name": "dropspotx",
      "varType": 4,
      "value": "64",
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
      "name": "dropspoty",
      "varType": 4,
      "value": "64",
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