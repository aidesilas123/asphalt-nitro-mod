package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.hl;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cp extends cx {
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Field m521(List<Object> list) {
        if (!(list.get(0) instanceof Class)) {
            Object objM592 = cx.m592(list, 0, Object.class);
            return hq.m770().m772().m733(objM592.getClass(), (Class) cx.m592(list, 1, Class.class));
        }
        Class cls = (Class) cx.m592(list, 0, Class.class);
        if (list.get(1) instanceof Class) {
            return hq.m770().m772().m733(cls, (Class) cx.m592(list, 1, Class.class));
        }
        return hq.m770().m772().m732(cls, (hl) cx.m592(list, 1, hl.class));
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Field m522(List<Object> list) {
        return hq.m770().m772().m734((Class) cx.m592(list, 0, Class.class), (String) cx.m592(list, 1, String.class));
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Field m523(List<Object> list) {
        return hq.m770().m772().m732((Class) cx.m592(list, 0, Class.class), (hl) cx.m592(list, 1, hl.class));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static hl.c m524() {
        hq.m770().m772();
        return hj.m730();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static List<Field> m525(List<Object> list) {
        if (!(list.get(0) instanceof Class)) {
            Object objM592 = cx.m592(list, 0, Object.class);
            boolean zBooleanValue = list.size() > 1 ? ((Boolean) cx.m592(list, 1, Boolean.class)).booleanValue() : false;
            hq.m770().m772();
            Field[] fieldArrM729 = hj.m729(objM592.getClass(), zBooleanValue, -1, null);
            if (fieldArrM729 != null) {
                return Arrays.asList(fieldArrM729);
            }
        } else if (list.size() > 1) {
            return hq.m770().m772().m731((Class) cx.m592(list, 0, Class.class), (hl) cx.m592(list, 1, hl.class));
        }
        return new ArrayList();
    }
}
