package;

import flixel.FlxG;

enum Requirements {
    SECRETFOUND;
    COMPLETED;
    CANBEBOUGHT;
    LOCKED;
}

class ShopState extends MusicBeatState {
    /**
     * How this works is you put the name of the item in the list, then you put the properties (callback is optional), then requirements.
     * An example: ['Name', Price (Int), Callback (optional), Requirement]
     */
    final properties:Array<ItemProperties>;

    var buyCallback:Void->Void;

    final itemTypeArray:Map<String, Array<Dynamic>> = [
        ['Teleporter', 'This teleports you around cuz your sped', 140, buyCallback = function(e) {trace("Item Bought")}, SECRETFOUND],
        ['Padlock', 'locks a song you ve unlocked,why the fuck would you get this...', 600, buyCallback = function(e) {trace("Item Bought")}, SECRETFOUND],
        ['Radio', 'Records tapes of past songs youve played', 3500, buyCallback = function(e) {trace("Item Bought")}, SECRETFOUND],
        ['April 1st 2023 event', 'This will give you the april fools 2023 event which will crash your computer >:)', 6600, buyCallback = function(e) {trace("Item Bought")}, SECRETFOUND]
    ];
}
