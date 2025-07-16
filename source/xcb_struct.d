import xcb.xcb;
import xau;

struct
XCB {
    Connection
    connect (bool auth_flag, string address) {
        xcb_connection_t* c;

        if (auth_flag) {
            const char* display;
            int         prefered_screen;

            // AUTH
            XAuth auth;
            get_auth (auth,address);
            c = xcb_connect_to_display_with_auth_info (display, &auth.xcb_auth, &prefered_screen);
            if (xcb_connection_has_error (c))
                throw new XCBException ("Cannot open display", c);
        }
        else {
            // Open the connection to the X server     
            //c = xcb_connect( getenv( "DISPLAY" ), null );
            c = xcb_connect (null,null);
            if (xcb_connection_has_error (c))
                throw new XCBException ("Cannot open display",c);
        }

        return Connection (c);
    }
}

struct
Events {
    Connection c;
    Event      event;

    alias front = event;

    bool
    empty () {
        event = c.wait_for_event ();
        return (event is null);
    }

    void
    popFront () {
        event.destroy ();
    }
}

struct
Event {
    xcb_generic_event_t* _super;
    alias _super this;
    alias event = _super;

    KeyboadEvent keyboard () { return KeyboadEvent (cast (xcb_key_press_event_t*) event); }
    Type         type ()     { 
        switch (response_type & ~0x80) {
            case XCB_KEY_PRESS         : return Type.KEY_PRESS;
            case XCB_KEY_RELEASE       : return Type.KEY_RELEASE;
            case XCB_NO_OPERATION      : return Type.NO_OPERATION;
            case XCB_BUTTON_PRESS      : return Type.BUTTON_PRESS;
            case XCB_BUTTON_RELEASE    : return Type.BUTTON_RELEASE;
            case XCB_MOTION_NOTIFY     : return Type.MOTION_NOTIFY;
            case XCB_ENTER_NOTIFY      : return Type.ENTER_NOTIFY;
            case XCB_LEAVE_NOTIFY      : return Type.LEAVE_NOTIFY;
            case XCB_FOCUS_OUT         : return Type.FOCUS_OUT;
            case XCB_KEYMAP_NOTIFY     : return Type.KEYMAP_NOTIFY;
            case XCB_EXPOSE            : return Type.EXPOSE;
            case XCB_GRAPHICS_EXPOSURE : return Type.GRAPHICS_EXPOSURE;
            case XCB_NO_EXPOSURE       : return Type.NO_EXPOSURE;
            case XCB_VISIBILITY_NOTIFY : return Type.VISIBILITY_NOTIFY;
            case XCB_CREATE_NOTIFY     : return Type.CREATE_NOTIFY;
            case XCB_DESTROY_NOTIFY    : return Type.DESTROY_NOTIFY;
            case XCB_UNMAP_NOTIFY      : return Type.UNMAP_NOTIFY;
            case XCB_MAP_NOTIFY        : return Type.MAP_NOTIFY;
            case XCB_MAP_REQUEST       : return Type.MAP_REQUEST;
            case XCB_REPARENT_NOTIFY   : return Type.REPARENT_NOTIFY;
            case XCB_CONFIGURE_NOTIFY  : return Type.CONFIGURE_NOTIFY;
            case XCB_CONFIGURE_REQUEST : return Type.CONFIGURE_REQUEST;
            case XCB_GRAVITY_NOTIFY    : return Type.GRAVITY_NOTIFY;
            case XCB_RESIZE_REQUEST    : return Type.RESIZE_REQUEST;
            case XCB_CIRCULATE_NOTIFY  : return Type.CIRCULATE_NOTIFY;
            case XCB_CIRCULATE_REQUEST : return Type.CIRCULATE_REQUEST;
            case XCB_PROPERTY_NOTIFY   : return Type.PROPERTY_NOTIFY;
            case XCB_SELECTION_CLEAR   : return Type.SELECTION_CLEAR;
            case XCB_SELECTION_REQUEST : return Type.SELECTION_REQUEST;
            case XCB_SELECTION_NOTIFY  : return Type.SELECTION_NOTIFY;
            case XCB_COLORMAP_NOTIFY   : return Type.COLORMAP_NOTIFY;
            case XCB_CLIENT_MESSAGE    : return Type.CLIENT_MESSAGE;
            case XCB_MAPPING_NOTIFY    : return Type.MAPPING_NOTIFY;
            default                    : return Type._;
        }                
    }

    void
    destroy () {
        import core.stdc.stdlib : free;
        if (_super !is null)
            free (_super);
    }

    string
    toString () {
        import std.format : format;
        return format!"Event: %s" (type);
    }

    enum
    Type {
        _,
        NO_OPERATION      = XCB_NO_OPERATION,
        KEY_PRESS         = XCB_KEY_PRESS,
        KEY_RELEASE       = XCB_KEY_RELEASE,
        BUTTON_PRESS      = XCB_BUTTON_PRESS,
        BUTTON_RELEASE    = XCB_BUTTON_RELEASE,
        MOTION_NOTIFY     = XCB_MOTION_NOTIFY,
        ENTER_NOTIFY      = XCB_ENTER_NOTIFY,
        LEAVE_NOTIFY      = XCB_LEAVE_NOTIFY,
        //LEAVE_NOTIFY    = XCB_LEAVE_NOTIFY,
        FOCUS_OUT         = XCB_FOCUS_OUT,
        KEYMAP_NOTIFY     = XCB_KEYMAP_NOTIFY,
        EXPOSE            = XCB_EXPOSE,
        GRAPHICS_EXPOSURE = XCB_GRAPHICS_EXPOSURE,
        NO_EXPOSURE       = XCB_NO_EXPOSURE,
        VISIBILITY_NOTIFY = XCB_VISIBILITY_NOTIFY,
        CREATE_NOTIFY     = XCB_CREATE_NOTIFY,
        DESTROY_NOTIFY    = XCB_DESTROY_NOTIFY,
        UNMAP_NOTIFY      = XCB_UNMAP_NOTIFY,
        MAP_NOTIFY        = XCB_MAP_NOTIFY,
        MAP_REQUEST       = XCB_MAP_REQUEST,
        REPARENT_NOTIFY   = XCB_REPARENT_NOTIFY,
        CONFIGURE_NOTIFY  = XCB_CONFIGURE_NOTIFY,
        CONFIGURE_REQUEST = XCB_CONFIGURE_REQUEST,
        GRAVITY_NOTIFY    = XCB_GRAVITY_NOTIFY,
        RESIZE_REQUEST    = XCB_RESIZE_REQUEST,
        CIRCULATE_NOTIFY  = XCB_CIRCULATE_NOTIFY,
        CIRCULATE_REQUEST = XCB_CIRCULATE_REQUEST,
        PROPERTY_NOTIFY   = XCB_PROPERTY_NOTIFY,
        SELECTION_CLEAR   = XCB_SELECTION_CLEAR,
        SELECTION_REQUEST = XCB_SELECTION_REQUEST,
        SELECTION_NOTIFY  = XCB_SELECTION_NOTIFY,
        COLORMAP_NOTIFY   = XCB_COLORMAP_NOTIFY,
        CLIENT_MESSAGE    = XCB_CLIENT_MESSAGE,
        MAPPING_NOTIFY    = XCB_MAPPING_NOTIFY,
    }
}

struct
SpecEvent {
    xcb_special_event_t* _super;
    alias _super this;
}

struct
KeyboadEvent {
    xcb_key_press_event_t* _super;
    alias _super this;

    auto key ()  { return detail; }
    auto type () { return (response_type & ~0x80); }
}

struct
Window {
    xcb_window_t _super;
    alias _super this;

    string
    toString () {
        import std.format : format;
        return format!"Window: %s" (_super);
    }
}

struct
Screen {
    xcb_screen_t* _super;
    alias _super this;

    // writeln ("width x height (in pixels): ", screen.width_in_pixels, "x", screen.height_in_pixels);
}

struct
Connection {
    xcb_connection_t* _super;
    alias _super this;

    pragma (inline, true):
    Screen     screen ()                                { return Screen (xcb_setup_roots_iterator (xcb_get_setup (_super)).data); }  // Get the first screen  // screen = xcb_setup_roots_iterator( xcb_get_setup( c ) )[prefered_screen].data;
    Window     window (Screen screen)                   { return _create_window (this,screen); }
    Events     events ()                                { return Events (this); }

    int        flush ()                                 { return xcb_flush (_super); }
    uint       get_maximum_request_length ()            { return xcb_get_maximum_request_length (_super); }
    void       prefetch_maximum_request_length ()       { xcb_prefetch_maximum_request_length (_super); }
    Event      wait_for_event ()                        { return Event (xcb_wait_for_event (_super)); }
    Event      poll_for_queued_event ()                 { return Event (xcb_poll_for_queued_event (_super)); }
    Event      poll_for_special_event (SpecEvent se)    { return Event (xcb_poll_for_special_event (_super,se)); }
    Event      wait_for_special_event (SpecEvent se)    { return Event (xcb_wait_for_special_event (_super,se)); }
    SpecEvent  register_for_special_xge (xcb_extension_t* ext, uint eid, uint* stamp)  
                                                        { return SpecEvent (xcb_register_for_special_xge (_super,ext,eid,stamp)); }
    void       unregister_for_special_event (SpecEvent se) 
                                                        { xcb_unregister_for_special_event (_super,se); }
    Error      request_check (xcb_void_cookie_t cookie) { return Error (xcb_request_check (_super,cookie)); }
    void       discard_reply (uint sequence)            { xcb_discard_reply (_super, sequence); }
    void       discard_reply64 (uint sequence)          { xcb_discard_reply64 (_super, sequence); }
    xcb_query_extension_reply_t* 
               get_extension_data (xcb_extension_t* ext) 
                                                        { return xcb_get_extension_data (_super,ext); }
    void       prefetch_extension_data (xcb_extension_t* ext) 
                                                        { xcb_prefetch_extension_data (_super,ext); }
    xcb_setup_t* 
               get_setup ()                             { return xcb_get_setup (_super); }
    int        get_file_descriptor ()                   { return xcb_get_file_descriptor (_super); }
    int        connection_has_error ()                  { return xcb_connection_has_error (_super); }
    Connection connect_to_fd (int fd, xcb_auth_info_t* auth_info) 
                                                        { return Connection (xcb_connect_to_fd (fd,auth_info)); }
    void       disconnect ()                            { xcb_disconnect (_super); }
    int        parse_display (const char* name, char** host, int* display, int* screen) 
                                                        { return xcb_parse_display (name,host,display,screen); }
    Connection connect(const char* displayname, int* screenp) 
                                                        { return Connection (xcb_connect (displayname,screenp)); }
    Connection connect_to_display_with_auth_info (const char* display, xcb_auth_info_t* auth, int* screen) 
                                                        { return Connection (xcb_connect_to_display_with_auth_info (display,auth,screen)); }
    uint       generate_id ()                           { return xcb_generate_id (_super); }
    void       map_window (Window window)               { xcb_map_window (_super,window); }
}

struct
Error {
    xcb_generic_error_t* _super;
    alias _super this;
}

class 
XCBException : Exception {
    import xcb.xcb;

    this (string s, xcb_connection_t* c) {
        auto err = xcb_connection_has_error (c);
        super (xcb_error_to_string (err));
    }
}

string 
xcb_error_to_string (int err) {
    switch (err) {
        case XCB_CONN_ERROR: 
            return ": [XCB_CONN_ERROR]: because of socket errors, pipe errors or other stream errors";
        case XCB_CONN_CLOSED_EXT_NOTSUPPORTED:
            return ": [XCB_CONN_CLOSED_EXT_NOTSUPPORTED]: when extension not supported";
        case XCB_CONN_CLOSED_MEM_INSUFFICIENT:
            return ": [XCB_CONN_CLOSED_MEM_INSUFFICIENT]: when memory not available";
        case XCB_CONN_CLOSED_REQ_LEN_EXCEED:
            return ": [XCB_CONN_CLOSED_REQ_LEN_EXCEED]: exceeding request length that server accepts";
        case XCB_CONN_CLOSED_PARSE_ERR:
            return ": [XCB_CONN_CLOSED_PARSE_ERR]: error during parsing display string";
        case XCB_CONN_CLOSED_INVALID_SCREEN:
            return ": [XCB_CONN_CLOSED_INVALID_SCREEN]: because the server does not have a screen matching the display";
        default:
            return "";
    }
}

struct 
XAuth {
    xcb_auth_info_t xcb_auth;
    string         _name;
    ubyte[]        _data;

    void 
    from_Xauth (in xau.Xauth _auth) {
        import std.conv : to;

        _name            = _auth.name.dup;
        xcb_auth.namelen = _name.length.to!(typeof(xcb_auth_info_t.namelen));
        xcb_auth.name    = cast (char*) _name.ptr;
        _data            = _auth.data.dup;
        xcb_auth.datalen = _data.length.to!(typeof(xcb_auth_info_t.namelen));
        xcb_auth.data    = cast (char*) _data.ptr;
    }
}

auto 
get_auth (out XAuth xauth, string _address) {
    ushort family  = xau.FamilyLocal;
    string address = _address;
    string number  = "0";
    string name    = "";
    xau.Xauth xau_auth;
    if (xau.GetAuthByAddr (family, address, number, name, xau_auth)) {
        xauth.from_Xauth (xau_auth);
        return true;
    }

    return false;
}

Window
_create_window (Connection c, Screen screen) {
    // WINDOW
    xcb_window_t hwnd;

    // Ask for our window's Id
    hwnd = xcb_generate_id (c);

    //
    immutable(uint)   value_mask = 
        XCB_CW_BACK_PIXEL | 
        XCB_CW_EVENT_MASK;
    immutable(uint[]) value_list = [
        screen.white_pixel,
        XCB_EVENT_MASK_EXPOSURE |
        XCB_EVENT_MASK_KEY_PRESS |
        XCB_EVENT_MASK_KEY_RELEASE |
        XCB_EVENT_MASK_BUTTON_PRESS |
        XCB_EVENT_MASK_BUTTON_RELEASE |
        XCB_EVENT_MASK_POINTER_MOTION |
        XCB_EVENT_MASK_FOCUS_CHANGE |
        XCB_EVENT_MASK_STRUCTURE_NOTIFY,
        0
    ];

    // Create the window
    auto cookie =  // xcb_void_cookie_t 
        xcb_create_window ( 
            c,                             // Connection          
            XCB_COPY_FROM_PARENT,          // depth (same as root)
            hwnd,                          // window Id           
            screen.root,          // parent window       
            0, 0,                          // x, y                
            800, 600,                // width, height       
            2,                            // border_width        
            XCB_WINDOW_CLASS_INPUT_OUTPUT, // class               
            screen.root_visual,   // visual              
            value_mask,                         // masks
            value_list.ptr                  // not used yet 
        );       

    auto window = Window (hwnd);

    // Map the window on the screen
    c.map_window (window);

    // Make sure commands are sent before we pause, so window is shown
    c.flush ();

    return window;
}
