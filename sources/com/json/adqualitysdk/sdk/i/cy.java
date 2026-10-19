package com.json.adqualitysdk.sdk.i;

import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public final class cy extends cx {
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m593(List<Object> list) {
        String str = (String) cx.m592(list, 0, String.class);
        boolean zBooleanValue = list.size() > 2 ? ((Boolean) cx.m592(list, 2, Boolean.class)).booleanValue() : true;
        return list.get(1) instanceof String ? jz.m998(str, (String) cx.m592(list, 1, String.class), zBooleanValue) : jz.m1001(str, new JSONArray((Collection) cx.m592(list, 1, List.class)), zBooleanValue);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static List<String> m594(List<Object> list) {
        return hq.m770().m771().m779(cx.m592(list, 0, Object.class), (List) cx.m592(list, 1, List.class), ((Integer) cx.m592(list, 2, Integer.class)).intValue());
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static List<String> m595(List<Object> list) {
        String str = (String) cx.m592(list, 0, String.class);
        return list.get(1) instanceof String ? jz.m996(str, (String) cx.m592(list, 1, String.class)) : jz.m999(str, new JSONArray((Collection) cx.m592(list, 1, List.class)));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int m596(List<Object> list) {
        return jz.m1000((String) cx.m592(list, 0, String.class), (String) cx.m592(list, 1, String.class));
    }
}
