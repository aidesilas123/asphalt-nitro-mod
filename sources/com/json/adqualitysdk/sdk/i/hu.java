package com.json.adqualitysdk.sdk.i;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class hu {
    private a a;
    private hr b;
    private hi c;

    static class a {
        private Class a;
        private Class b;
        private Class c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<String> f5737d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f5738e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f5739f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f5740g = -1;
        private int h = -1;
        private int i = -1;
        private int j = Integer.MAX_VALUE;
        private int k = Integer.MAX_VALUE;
        private boolean l = true;
        private Object m;

        a() {
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && a.class == obj.getClass()) {
                a aVar = (a) obj;
                if (this.f5738e != aVar.f5738e || this.f5739f != aVar.f5739f || this.f5740g != aVar.f5740g || this.h != aVar.h || this.i != aVar.i || this.j != aVar.j || this.k != aVar.k || this.l != aVar.l) {
                    return false;
                }
                Class cls = this.a;
                if (cls == null ? aVar.a != null : !cls.equals(aVar.a)) {
                    return false;
                }
                Class cls2 = this.b;
                if (cls2 == null ? aVar.b != null : !cls2.equals(aVar.b)) {
                    return false;
                }
                Class cls3 = this.c;
                if (cls3 == null ? aVar.c != null : !cls3.equals(aVar.c)) {
                    return false;
                }
                List<String> list = this.f5737d;
                if (list == null ? aVar.f5737d != null : !list.equals(aVar.f5737d)) {
                    return false;
                }
                Object obj2 = this.m;
                Object obj3 = aVar.m;
                if (obj2 != null) {
                    return obj2.equals(obj3);
                }
                if (obj3 == null) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            Class cls = this.a;
            int iHashCode = (cls != null ? cls.hashCode() : 0) * 31;
            Class cls2 = this.b;
            int iHashCode2 = (iHashCode + (cls2 != null ? cls2.hashCode() : 0)) * 31;
            Class cls3 = this.c;
            int iHashCode3 = (iHashCode2 + (cls3 != null ? cls3.hashCode() : 0)) * 31;
            List<String> list = this.f5737d;
            int iHashCode4 = (((((((((((((((((iHashCode3 + (list != null ? list.hashCode() : 0)) * 31) + this.f5738e) * 31) + this.f5739f) * 31) + this.f5740g) * 31) + this.h) * 31) + this.i) * 31) + this.j) * 31) + this.k) * 31) + (this.l ? 1 : 0)) * 31;
            Object obj = this.m;
            return iHashCode4 + (obj != null ? obj.hashCode() : 0);
        }
    }

    public static class b {
        private hu a = new hu(0);

        /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
        public final b m794(int i) {
            this.a.a.j = i;
            return this;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final b m795(int i) {
            this.a.a.i = i;
            return this;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final b m796(boolean z) {
            this.a.a.k = z ? -1 : Integer.MAX_VALUE;
            return this;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final hu m797(hr hrVar, hi hiVar, List<String> list, int i) {
            this.a.b = hrVar;
            this.a.c = hiVar;
            this.a.a.f5737d = list;
            this.a.a.f5738e = i;
            this.a.a.b = hrVar.getClass();
            this.a.a.c = hiVar != null ? hiVar.getClass() : null;
            return this.a;
        }

        /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
        public final hu m798(hr hrVar, List<String> list, int i) {
            return m797(hrVar, null, list, i);
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final b m799(int i) {
            this.a.a.k = i;
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final b m800(Object obj) {
            this.a.a.m = obj;
            return this;
        }

        /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
        public final b m801(boolean z) {
            this.a.a.l = z;
            return this;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final b m802(int i) {
            this.a.a.f5740g = i;
            return this;
        }

        /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
        public final b m803(boolean z) {
            this.a.a.j = z ? -1 : Integer.MAX_VALUE;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final b m804(int i) {
            this.a.a.f5739f = i;
            return this;
        }

        /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
        public final b m805(boolean z) {
            this.a.a.f5740g = z ? -1 : Integer.MAX_VALUE;
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final b m806(int i) {
            this.a.a.h = i;
            return this;
        }

        /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
        public final b m807(boolean z) {
            this.a.a.i = z ? -1 : Integer.MAX_VALUE;
            return this;
        }
    }

    private hu() {
        this.a = new a();
    }

    /* synthetic */ hu(byte b2) {
        this();
    }

    private static boolean d(int i, int i2) {
        return i >= i2;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final hi m783() {
        return this.c;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final boolean m784(int i) {
        return d(i, this.a.k);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m785() {
        return this.a.l;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m786(int i) {
        return d(i, this.a.f5739f);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final int m787() {
        return this.a.f5738e;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final a m788(Class cls) {
        this.a.a = cls;
        return this.a;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final boolean m789(int i) {
        return d(i, this.a.j);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int m790(int i) {
        if (d(i, this.a.f5740g)) {
            return this.a.h;
        }
        return 0;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final hr m791() {
        return this.b;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final List<String> m792() {
        return this.a.f5737d;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m793(int i) {
        return d(i, this.a.i);
    }
}
