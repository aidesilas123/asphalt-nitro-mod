package com.bytedance.sdk.openadsdk.l;

/* JADX INFO: compiled from: PlayableLog.java */
/* JADX INFO: loaded from: classes2.dex */
public class g {
    private static a a;

    /* JADX INFO: compiled from: PlayableLog.java */
    public interface a {
        void a(String str, String str2);

        void a(String str, String str2, Throwable th);
    }

    public static void a(a aVar) {
        a = aVar;
    }

    public static void a(String str, String str2) {
        a aVar = a;
        if (aVar == null) {
            return;
        }
        aVar.a(str, str2);
    }

    public static void a(String str, String str2, Throwable th) {
        if (a == null) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        a.a(str, str2, th);
    }

    public static boolean a() {
        return a != null;
    }
}
