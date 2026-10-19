package com.bytedance.sdk.component.f.c;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: compiled from: TncInstanceManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    private static volatile g a;
    private static HashMap<Integer, e> b;
    private static HashMap<Integer, a> c;

    private g() {
        b = new HashMap<>();
        c = new HashMap<>();
    }

    public static synchronized g a() {
        if (a == null) {
            synchronized (g.class) {
                if (a == null) {
                    a = new g();
                }
            }
        }
        return a;
    }

    public a a(int i, Context context) {
        a aVar = c.get(Integer.valueOf(i));
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a(context, i);
        c.put(Integer.valueOf(i), aVar2);
        return aVar2;
    }

    public e a(int i) {
        e eVar = b.get(Integer.valueOf(i));
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e(i);
        b.put(Integer.valueOf(i), eVar2);
        return eVar2;
    }
}
