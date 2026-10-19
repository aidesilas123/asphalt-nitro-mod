package com.tapjoy.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class i8 {
    public static String a;
    public static Map b;
    public static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Map f7917d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f7918e = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.tapjoy.j0 f7919f = new com.tapjoy.j0();

    public static void a(Map map, Map map2) {
        String str = (String) map2.get("url");
        if (str == null) {
            str = "";
        }
        a = str;
        c = true;
        b = map;
        f7917d = map2;
    }

    public final void a(String str, HashMap map) {
        Map map2 = f7917d;
        if (map2 == null || map2.get(str) == null) {
            return;
        }
        HashMap map3 = new HashMap(b);
        map3.put("sdk_beacon_id", this.f7918e);
        if (map != null) {
            map3.putAll(map);
        }
        new z1(this, str, map3).start();
    }
}
