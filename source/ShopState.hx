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
        ['Teleporter', 140, buyCallback = function(e) {trace("Item Bought")}, SECRETFOUND]
    ];
}