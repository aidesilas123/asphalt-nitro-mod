package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public enum TJEntryPoint {
    ENTRY_POINT_UNKNOWN(0),
    ENTRY_POINT_OTHER(1),
    ENTRY_POINT_MAIN_MENU(2),
    ENTRY_POINT_HUD(3),
    ENTRY_POINT_EXIT(4),
    ENTRY_POINT_FAIL(5),
    ENTRY_POINT_COMPLETE(6),
    ENTRY_POINT_INBOX(7),
    ENTRY_POINT_INIT(8),
    ENTRY_POINT_STORE(9);

    public final String l;

    TJEntryPoint(int i) {
        this.l = str;
    }

    public static TJEntryPoint fromOrdinal(int i) {
        return values()[i];
    }

    public static TJEntryPoint fromString(String str) {
        str.getClass();
        switch (str) {
            case "complete":
                return ENTRY_POINT_COMPLETE;
            case "main_menu":
                return ENTRY_POINT_MAIN_MENU;
            case "hud":
                return ENTRY_POINT_HUD;
            case "exit":
                return ENTRY_POINT_EXIT;
            case "fail":
                return ENTRY_POINT_FAIL;
            case "inbox":
                return ENTRY_POINT_INBOX;
            case "other":
                return ENTRY_POINT_OTHER;
            case "store":
                return ENTRY_POINT_STORE;
            case "initialisation":
                return ENTRY_POINT_INIT;
            default:
                return ENTRY_POINT_UNKNOWN;
        }
    }

    public String e() {
        return this.l;
    }
}
