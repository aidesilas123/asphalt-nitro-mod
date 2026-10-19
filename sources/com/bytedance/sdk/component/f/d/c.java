package com.bytedance.sdk.component.f.d;

/* JADX INFO: compiled from: Logger.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    private a a;
    private b b;

    /* JADX INFO: compiled from: Logger.java */
    public enum a {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* JADX INFO: compiled from: Logger.java */
    public interface b {
        void a(String str, String str2);

        void b(String str, String str2);
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.component.f.d.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Logger.java */
    private static class C0119c {
        private static final c a = new c();
    }

    private c() {
        this.a = a.OFF;
        this.b = new com.bytedance.sdk.component.f.d.b();
    }

    public static void a(a aVar) {
        synchronized (c.class) {
            C0119c.a.a = aVar;
        }
    }

    public static void a(String str, String str2) {
        if (C0119c.a.a.compareTo(a.ERROR) <= 0) {
            C0119c.a.b.a(str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (C0119c.a.a.compareTo(a.DEBUG) <= 0) {
            C0119c.a.b.b(str, str2);
        }
    }
}
