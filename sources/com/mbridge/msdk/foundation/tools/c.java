package com.mbridge.msdk.foundation.tools;

/* JADX INFO: compiled from: Container.java */
/* JADX INFO: loaded from: classes4.dex */
final class c {

    /* JADX INFO: compiled from: Container.java */
    static class a extends j {
        a(int i, int i2, Object obj, int i3, boolean z) {
            super(i, i2, obj, i3, z);
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 7;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static abstract class b {
        int a;

        b() {
        }

        abstract byte a();
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.tools.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Container.java */
    static class C0410c extends b {
        boolean b;

        C0410c(int i, boolean z) {
            this.a = i;
            this.b = z;
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 1;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static class d extends b {
        double b;

        d(int i, double d2) {
            this.a = i;
            this.b = d2;
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 5;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static class e extends b {
        float b;

        e(int i, float f2) {
            this.a = i;
            this.b = f2;
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 3;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static class f extends b {
        int b;

        f(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 2;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static class g extends b {
        long b;

        g(int i, long j) {
            this.a = i;
            this.b = j;
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 4;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static class h extends j {
        h(int i, int i2, Object obj, int i3, boolean z) {
            super(i, i2, obj, i3, z);
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 8;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static class i extends j {
        i(int i, int i2, String str, int i3, boolean z) {
            super(i, i2, str, i3, z);
        }

        @Override // com.mbridge.msdk.foundation.tools.c.b
        final byte a() {
            return (byte) 6;
        }
    }

    /* JADX INFO: compiled from: Container.java */
    static abstract class j extends b {
        Object b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f7221d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f7222e;

        j(int i, int i2, Object obj, int i3, boolean z) {
            this.c = i;
            this.a = i2;
            this.b = obj;
            this.f7221d = i3;
            this.f7222e = z;
        }
    }
}
