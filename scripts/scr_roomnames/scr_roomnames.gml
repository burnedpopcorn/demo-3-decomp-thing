/*
function scr_roomnames(argument0) //gml_Script_scr_roomnames
{
    if (argument0 == undefined)
        argument0 = room
		*/
// This is just better
function scr_roomnames(argument0 = room)
{
    switch argument0
    {
        case entrance_1://142:
            _message = "Welcome to Pizza Tower"
            break
        case entrance_2://143:
            _message = "Checkered Hallway"
            break
        case entrance_3://144:
            _message = "From the Bottom"
            break
        case entrance_4://145:
            _message = "Guest Room"
            break
        case entrance_5://146:
            _message = "Jungle Shapes"
            break
        case entrance_6://147:
            _message = "Where is the Reception?"
            break
        case entrance_7://149:
            _message = "Super Slump"
            break
        case entrance_8://150:
            _message = "A city now?"
            break
        case entrance_9://151:
            _message = "Sweden Heaven"
            break
        case entrance_10://152:
            _message = "World of John"
            break
        case entrance_11://148:
            _message = "Daring Escape"
            break
        case entrance_treasure://153:
            _message = "First Treasure"
            break
        case entrance_secret1://154:
            _message = "Big Steps"
            break
        case entrance_secret2://155:
            _message = "Sorry!"
            break
        case entrance_secret3://156:
            _message = "Not so much a secret"
            break
        case entrance_secret4://157:
            _message = "Don't forget your moves"
            break
        case entrance_secret5://158:
            _message = "Eating a big Pizza Alone"
            break
        case entrance_secret6://159:
            _message = "Hamster Tube"
            break
        case medieval_1://160:
            _message = "Pizza Tower in Ye Olde Time"
            break
        case medieval_2://162:
            _message = "Valiant and Lazy Knight"
            break
        case medieval_3://163:
            _message = "Thunderstruck"
            break
        case medieval_3_1://164:
            _message = "Banquet Hall"
            break
        case medieval_4://165:
            _message = "Medieval Fantasy"
            break
        case medieval_5://166:
            _message = "Odd Castle Architecture"
            break
        case medieval_6://167:
            _message = "Library of Stupidity"
            break
        case medieval_7://168:
            _message = "Thats How We Roll"
            break
        case medieval_8://169:
            _message = "Goblin Pit"
            break
        case medieval_9://170:
            _message = "Treasure Room"
            break
        case medieval_9_1://171:
            _message = "Golden Bricks"
            break
        case medieval_10://172:
            _message = "John Throne"
            break
        case medieval_treasure://174:
            _message = "Peanut Allergy"
            break
        case medieval_pizzamart://173:
            _message = "Medieval Marketplace"
            break
        case medieval_secret1://175:
            _message = "Pizza Squared by 6"
            break
        case medieval_secret2://176:
            _message = "Get Some Speed"
            break
        case medieval_secret3://177:
            _message = "Have Some Toppings"
            break
        case medieval_secret4://178:
            _message = "Pizza Block Art Exposition"
            break
        case medieval_secret5://179:
            _message = "Too Heavy and Too Fat"
            break
        case medieval_secret6://180:
            _message = "The King Pizza"
            break
        case ruin_1://181:
            _message = "Ruins of the Pizza Tower"
            break
        case ruin_2://182:
            _message = "Ruined Exploration"
            break
        case ruin_3://183:
            _message = "This Was Once a Bathroom"
            break
        case ruin_4://184:
            _message = "Meet the Bomb Goblin"
            break
        case ruin_5://185:
            _message = "Boring Ruin"
            break
        case ruin_6://186:
            _message = "No Tourist Allowed"
            break
        case ruin_7://187:
            _message = "Roundabout Route"
            break
        case ruin_8://188:
            _message = "And Who Might You Be?"
            break
        case ruin_9://189:
            _message = "No Crackers"
            break
        case ruin_10://190:
            _message = "Very Very Old Cheese"
            break
        case ruin_11://191:
            _message = "Ancient Gods and PB"
            break
        case ruin_12://192:
            _message = "Ancient John Retreat"
            break
        case ruin_13://194:
            _message = "Temple of Boom"
            break
        case ruin_treasure://196:
            _message = "Get Beaned!"
            break
        case ruin_pizzamart://195:
            _message = "Ancient Depot"
            break
        case ruin_secret1://197:
            _message = "And This Was My Bedroom"
            break
        case ruin_secret2://198:
            _message = "Hidden and Ancient Pizza"
            break
        case ruin_secret3://199:
            _message = "Ancient Block Destruction"
            break
        case ruin_secret4://200:
            _message = "Invincible Man of Ball"
            break
        case ruin_secret5://201:
            _message = "No Cheese Here"
            break
        case ruin_secret6://202:
            _message = "Dashing Maniac"
            break
        case dungeon_1://203:
            _message = "Pizza Tower of Hell!"
            break
        case dungeon_2://204:
            _message = "Smells Like Death"
            break
        case dungeon_3://205:
            _message = "Pizza Cutter of Doom"
            break
        case dungeon_4://206:
            _message = "Very Hot Sauce"
            break
        case dungeon_5://207:
            _message = "Spilled Sauce"
            break
        case dungeon_6://208:
            _message = "Circles of Heck"
            break
        case dungeon_7://209:
            _message = "Roll With It"
            break
        case dungeon_8://210:
            _message = "The Fall"
            break
        case dungeon_9://211:
            _message = "Depths of Hell"
            break
        case dungeon_10://213:
            _message = "John in Hell"
            break
        case dungeon_treasure://215:
            _message = "Miscellaneous Edible"
            break
        case dungeon_pizzamart://214:
            _message = "Pizzamart in Hell!"
            break
        case dungeon_secret1://216:
            _message = "A Nice Row All For You"
            break
        case dungeon_secret2://217:
            _message = "No Pain No Gain"
            break
        case dungeon_secret3://218:
            _message = "Sauce and Butt"
            break
        case dungeon_secret4://219:
            _message = "Not So Hellish Contraption"
            break
        case dungeon_secret5://220:
            _message = "Midway Point of The Fall"
            break
        case dungeon_secret6://221:
            _message = "Hell Isnt So Bad"
            break
        case ancient_1://223:
            _message = "Return to Pizza Tower"
            break
        case ancient_2://224:
            _message = "Purple Hallway"
            break
        case ancient_3://225:
            _message = "Unearthly Hues"
            break
        case ancient_4://226:
            _message = "Strangely Similar"
            break
        case ancient_5://227:
            _message = "Abstract Geometry"
            break
        case ancient_6://228:
            _message = "You call this a reception?"
            break
        case ancient_7://231:
            _message = "Super Slump 2"
            break
        case ancient_8://232:
            _message = "Deliveryboy Troubles"
            break
        case ancient_9://233:
            _message = "Sweden Hell"
            break
        case ancient_10://234:
            _message = "Revenge of John"
            break
        case ancient_10_1://235:
            _message = "Dark Hallway"
            break
        case ancient_10_2://236:
            _message = "Pit of John"
            break
        case ancient_11://229:
            _message = "Emergency Exit"
            break
        case ancient_treasure://237:
            _message = "Beloved Treasure"
            break
        case ancient_secret1://238:
            _message = "Small Leaps"
            break
        case ancient_secret2://239:
            _message = "Smashing and Entering"
            break
        case ancient_secret3://240:
            _message = "A well-guarded secret"
            break
        case ancient_secret4://241:
            _message = "Show off those Moves!"
            break
        case ancient_secret5://242:
            _message = "Eating a big Pizza Alone 2"
            break
        case ancient_secret6://243:
            _message = "Highway through John"
            break
        case chateau_1://244:
            _message = "Pizza Tower at Halloween"
            break
        case chateau_2://245:
            _message = "Eerily Similar"
            break
        case chateau_3://246:
            _message = "Sorcerer Apprentice"
            break
        case chateau_3_1://247:
            _message = "Hallway of Terror!"
            break
        case chateau_4://248:
            _message = "Goblin Massacre"
            break
        case chateau_5://249:
            _message = "Revenge of the Killer Goblins"
            break
        case chateau_6://250:
            _message = "Jumpscare"
            break
        case chateau_7://251:
            _message = "You Cannot Escape..."
            break
        case chateau_8://252:
            _message = "Goblin Pit of Horror"
            break
        case chateau_9://253:
            _message = "Thriller Flight"
            break
        case chateau_9_1://254:
            _message = "Brown Bricks"
            break
        case chateau_10://256:
            _message = "Pizzard Council"
            break
        case chateau_treasure://258:
            _message = "Peanut Minus"
            break
        case chateau_pizzamart://257:
            _message = "Halloween Spookfair"
            break
        case chateau_secret1://259:
            _message = "Claustrophobic"
            break
        case chateau_secret2://260:
            _message = "Just Run... Away"
            break
        case chateau_secret3://261:
            _message = "Scariest Jump"
            break
        case chateau_secret4://262:
            _message = "Pizza Block of Terror"
            break
        case chateau_secret5://263:
            _message = "Too Heavy and Too Fast"
            break
        case chateau_secret6://264:
            _message = "The Terrifying Giant Pizza"
            break
        case sanctum_1://106:
            _message = "Temple of the Pizza Tower"
            break
        case sanctum_2://136:
            _message = "Ruinous Road"
            break
        case sanctum_3://46:
            _message = "Bizzarely Dissimilar"
            break
        case sanctum_4://4:
            _message = "Cheesy Smell"
            break
        case sanctum_5://14:
            _message = "Sticky Ruin"
            break
        case sanctum_6://68:
            _message = "Tourist Trap"
            break
        case sanctum_7://21:
            _message = "Ocean of Cheese"
            break
        case sanctum_7_1://124:
            _message = "You found a Super Secret!"
            break
        case sanctum_7_2://93:
            _message = "Spaghetti Junction"
            break
        case sanctum_8://88:
            _message = "Something Wicked"
            break
        case sanctum_9://84:
            _message = "Blue Cheese"
            break
        case sanctum_10://59:
            _message = "Sanctum of Cheese"
            break
        case sanctum_11://110:
            _message = "Ancient Gods and PB 2"
            break
        case sanctum_12://16:
            _message = "Daily Stains"
            break
        case sanctum_12_1://11:
            _message = "and Dirty Surfaces!"
            break
        case sanctum_13://78:
            _message = "Escape Pit"
            break
        case sanctum_treasure://108:
            _message = "Kitchen Object!?"
            break
        case sanctum_pizzamart://38:
            _message = "Modern Convenience"
            break
        case sanctum_secret1://31:
            _message = "Bizzarely Familiar"
            break
        case sanctum_secret2://8:
            _message = "Hidden and Ancient Box"
            break
        case sanctum_secret3://107:
            _message = "Action Block Destruction"
            break
        case sanctum_secret4://33:
            _message = "Spectacular Man of Ball"
            break
        case sanctum_secret5://99:
            _message = "All Cheese Here"
            break
        case sanctum_secret6://95:
            _message = "Dashing Psycho"
            break
        case strongcold_10://274:
            _message = "Pizza Tower and it's Christmas!"
            break
        case strongcold_9://273:
            _message = "Merrily Similar"
            break
        case strongcold_8://272:
            _message = "Tis the Season..."
            break
        case strongcold_7://271:
            _message = "...To be Jelly"
            break
        case strongcold_6://270:
            _message = "Christmas Time Chime"
            break
        case strongcold_5://269:
            _message = "Holiday Torture Room"
            break
        case strongcold_4://268:
            _message = "Explosive Present"
            break
        case strongcold_3://267:
            _message = "Merry Swissmas"
            break
        case strongcold_2://266:
            _message = "New Rear Eve"
            break
        case strongcold_miniboss://284:
            _message = "It's Claus!"
            break
        case strongcold_1://265:
            _message = "Dejohn Vu"
            break
        case strongcold_escape://285:
            _message = "The Tower Ultimatum"
            break
        case strongcold_treasure://276:
            _message = "Here lies Cake"
            break
        case strongcold_pizzamart://275:
            _message = "Merry Pizzamart!"
            break
        case strongcold_secret1://277:
            _message = "Present Blocks"
            break
        case strongcold_secret2://278:
            _message = "Pool of Christmas Joy"
            break
        case strongcold_secret3://280:
            _message = "The Bad Part of Winter"
            break
        case strongcold_secret4://281:
            _message = "Hidden Present"
            break
        case strongcold_secret5://282:
            _message = "Secret in the Season"
            break
        case strongcold_secret6://283:
            _message = "There's a Present Down There"
            break
        case desert_1://318:
            _message = "Pizza Tower of the West"
            break
        case desert_2://17:
            _message = "Rooting and Tooting"
            break
        case desert_3://96:
            _message = "Good Ol' Pizzamart!?"
            break
        case desert_4://112:
            _message = "Eating Spicy Today"
            break
        case desert_5://63:
            _message = "Mouth on Fire"
            break
        case desert_6://1:
            _message = "Breaking Through!"
            break
        case desert_7://49:
            _message = "A Miner Problem"
            break
        case desert_8://27: // This was the Problem
            _message = "Cave Tale"
            break
        case desert_9://94:
            _message = "Boulders Everywhere"
            break
        case desert_9_1://279:
            _message = "Unstable Ground"
            break
        case desert_10://54:
            _message = "Weak Stomach"
            break
        case desert_11://2:
            _message = "Weirder West"
            break
        case desert_12://23:
            _message = "Western Loving Aliens"
            break
        case desert_13://6:
            _message = "Kentucky Kenny Course"
            break
        case desert_14://15:
            _message = "Really Really Hot"
            break
        case desert_15://73:
            _message = "John the Alien"
            break
        case desert_mart1://105:
            _message = "Do you have Pizza?"
            break
        case desert_mart2://50:
            _message = "Storage Room"
            break
        case desert_portal://42:
            _message = "YOU'RE NOT SUPPOSED TO BE HERE"
            break
        case desert_treasure://19:
            _message = "Deserted Treasure"
            break
        case desert_secret1://87:
            _message = "Left or Right?"
            break
        case desert_secret2://61:
            _message = "Bodyslamming"
            break
        case desert_secret3://37:
            _message = "Dumb as a rock"
            break
        case desert_secret4://47:
            _message = "Congratulations on finding this"
            break
        case desert_secret5://52:
            _message = "Rocky Protection"
            break
        case desert_secret6://35:
            _message = "Definately a Secret"
            break
        default:
            _message = -4
            break
    }

}

