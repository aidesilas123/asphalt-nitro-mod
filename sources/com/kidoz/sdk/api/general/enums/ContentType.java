package com.kidoz.sdk.api.general.enums;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum ContentType {
    NONE,
    GOOGLE_PLAY_APPLICATION,
    PROMOTED_PLAY_APPLICATION,
    WEB_GAME_URL,
    WEBSITE_URL,
    STREAMING_VIDEO,
    VIMEO_VIDEO,
    EXTERNAL_BROWSER_URL,
    HTML,
    ROVIO_ITEM;

    private static final Map<ContentType, Integer> lookup;
    private static final Map<Integer, ContentType> reverseLookup;

    static {
        ContentType contentType = NONE;
        ContentType contentType2 = GOOGLE_PLAY_APPLICATION;
        ContentType contentType3 = PROMOTED_PLAY_APPLICATION;
        ContentType contentType4 = WEB_GAME_URL;
        ContentType contentType5 = WEBSITE_URL;
        ContentType contentType6 = STREAMING_VIDEO;
        ContentType contentType7 = VIMEO_VIDEO;
        ContentType contentType8 = EXTERNAL_BROWSER_URL;
        ContentType contentType9 = HTML;
        ContentType contentType10 = ROVIO_ITEM;
        HashMap map = new HashMap();
        lookup = map;
        HashMap map2 = new HashMap();
        reverseLookup = map2;
        map.put(contentType, -1);
        map.put(contentType2, 1);
        map.put(contentType3, 2);
        map.put(contentType4, 3);
        map.put(contentType5, 4);
        map.put(contentType6, 5);
        map.put(contentType7, 6);
        map.put(contentType8, 7);
        map.put(contentType9, 10);
        map.put(contentType10, 11);
        map2.put(-1, contentType);
        map2.put(1, contentType2);
        map2.put(2, contentType3);
        map2.put(3, contentType4);
        map2.put(4, contentType5);
        map2.put(5, contentType6);
        map2.put(6, contentType7);
        map2.put(7, contentType8);
        map2.put(10, contentType9);
        map2.put(11, contentType10);
    }

    public static ContentType getTypeByValue(int i) {
        return reverseLookup.get(Integer.valueOf(i));
    }

    public static int getValueFromType(ContentType contentType) {
        return lookup.get(contentType).intValue();
    }
}
