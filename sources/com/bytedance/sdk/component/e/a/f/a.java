package com.bytedance.sdk.component.e.a.f;

import com.bytedance.sdk.component.e.a.i;

/* JADX INFO: compiled from: MyTrack.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile b a;

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                if (a == null) {
                    a = new c(i.g().f(), new f(i.g().f()));
                }
            }
        }
        return a;
    }
}
