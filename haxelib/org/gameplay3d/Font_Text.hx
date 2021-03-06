package org.gameplay3d;

import org.gameplay3d.util.NativeInterface;

using org.gameplay3d.intern.NativeBinding;
using org.gameplay3d.GameplayObject;

// DECL: class Text : public GameplayObject
class Font_Text extends GameplayObject
{
    /***************************************************************************
     * MEMBERS                                                                 *
     **************************************************************************/

    // DECL: Text(const char* text);
    public static function make(text:String):Font_Text
    {
        return new Font_Text(constructNativeObject(text));
    }

    // DECL: const char* getText();
    public function getText():String
    {
        return hx_Font_Text_getText(nativeObject);
    }

    /***************************************************************************
     * NATIVE OBJECT CONSTRUCTORS                                              *
     **************************************************************************/

    // DECL: Text(const char* text);
    static function constructNativeObject(text:String):Dynamic
    {
        return hx_Font_Text_Construct(text);
    }

    /***************************************************************************
     * NATIVE INTERFACE                                                        *
     **************************************************************************/

    static var hx_Font_Text_Construct = NativeInterface.loadMember(Font_Text, "Construct", 1);
    static var hx_Font_Text_getText = NativeInterface.loadMember(Font_Text, "getText", 1);
}

// END
