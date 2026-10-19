package com.kidoz.sdk.api.general.enums;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum HtmlType {
    NONE,
    VAST,
    MRAID,
    DOUBLE_CLICK,
    SUPER_AWESOME,
    JAVASCRIPT;

    private static final Map<HtmlType, Integer> lookup;
    private static final Map<Integer, HtmlType> reverseLookup;

    static {
        HtmlType htmlType = NONE;
        HtmlType htmlType2 = VAST;
        HtmlType htmlType3 = MRAID;
        HtmlType htmlType4 = DOUBLE_CLICK;
        HtmlType htmlType5 = SUPER_AWESOME;
        HtmlType htmlType6 = JAVASCRIPT;
        HashMap map = new HashMap();
        lookup = map;
        HashMap map2 = new HashMap();
        reverseLookup = map2;
        map.put(htmlType, 0);
        map.put(htmlType2, 1);
        map.put(htmlType3, 2);
        map.put(htmlType4, 3);
        map.put(htmlType5, 4);
        map.put(htmlType6, 5);
        map2.put(0, htmlType);
        map2.put(1, htmlType2);
        map2.put(2, htmlType3);
        map2.put(3, htmlType4);
        map2.put(4, htmlType5);
        map2.put(5, htmlType6);
    }

    public static HtmlType getTypeByValue(int i) {
        return reverseLookup.get(Integer.valueOf(i));
    }

    public static int getValueFromType(HtmlType htmlType) {
        return lookup.get(htmlType).intValue();
    }
}
