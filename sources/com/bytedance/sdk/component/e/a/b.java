package com.bytedance.sdk.component.e.a;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: AdLogManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static volatile List<e> a = new ArrayList();

    public static List<e> a() {
        return a;
    }

    public static void a(a aVar, Context context) {
        d.a.a(aVar, context);
        com.bytedance.sdk.component.e.a.c.c.a("init  end");
    }

    public static void a(com.bytedance.sdk.component.e.a.d.a aVar) {
        d.a.a(aVar);
    }

    public static void a(String str) {
        d.a.a(str);
    }

    public static void a(String str, List<String> list, boolean z) {
        a(str, list, z, null);
    }

    public static void a(String str, List<String> list, boolean z, Map<String, String> map) {
        d.a.a(str, list, z, map);
    }

    public static void a(boolean z) {
        d.a.a(z);
    }

    public static boolean b() {
        return i.g().p() == null || i.g().f() == null;
    }

    public static void c() {
        com.bytedance.sdk.component.e.a.c.c.a("AppLogManager#start");
        a(false);
        d.a.a();
    }

    public static void d() {
        d.a.b();
    }

    public static void e() {
        d.a.c();
    }
}
