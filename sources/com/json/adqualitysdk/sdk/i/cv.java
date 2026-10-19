package com.json.adqualitysdk.sdk.i;

import com.json.adqualitysdk.sdk.i.hn;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cv extends cx {
    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static hn.c m580() {
        return new hn.c();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static List<Method> m581(List<Object> list) {
        hn hnVar = (hn) cx.m592(list, 1, hn.class);
        return list.get(0) instanceof Class ? ho.m757((Class) cx.m592(list, 0, Class.class), hnVar) : ho.m757(cx.m592(list, 0, Object.class).getClass(), hnVar);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Method m582(List<Object> list) {
        hn hnVar = (hn) cx.m592(list, 1, hn.class);
        return list.get(0) instanceof Class ? ho.m756((Class) cx.m592(list, 0, Class.class), hnVar) : ho.m756(cx.m592(list, 0, Object.class).getClass(), hnVar);
    }
}
