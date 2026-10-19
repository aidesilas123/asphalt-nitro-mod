package com.google.common.base;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MoreObjects {

    public static final class b {
        private final String a;
        private final C0241b b;
        private C0241b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3485d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3486e;

        private static final class a extends C0241b {
            private a() {
                super();
            }
        }

        /* JADX INFO: renamed from: com.google.common.base.MoreObjects$b$b, reason: collision with other inner class name */
        private static class C0241b {
            String a;
            Object b;
            C0241b c;

            private C0241b() {
            }
        }

        private b(String str) {
            C0241b c0241b = new C0241b();
            this.b = c0241b;
            this.c = c0241b;
            this.f3485d = false;
            this.f3486e = false;
            this.a = (String) Preconditions.checkNotNull(str);
        }

        private C0241b e() {
            C0241b c0241b = new C0241b();
            this.c.c = c0241b;
            this.c = c0241b;
            return c0241b;
        }

        private b f(Object obj) {
            e().b = obj;
            return this;
        }

        private b g(String str, Object obj) {
            C0241b c0241bE = e();
            c0241bE.b = obj;
            c0241bE.a = (String) Preconditions.checkNotNull(str);
            return this;
        }

        private a h() {
            a aVar = new a();
            this.c.c = aVar;
            this.c = aVar;
            return aVar;
        }

        private b i(String str, Object obj) {
            a aVarH = h();
            aVarH.b = obj;
            aVarH.a = (String) Preconditions.checkNotNull(str);
            return this;
        }

        private static boolean k(Object obj) {
            return obj instanceof CharSequence ? ((CharSequence) obj).length() == 0 : obj instanceof Collection ? ((Collection) obj).isEmpty() : obj instanceof Map ? ((Map) obj).isEmpty() : obj instanceof Optional ? !((Optional) obj).d() : obj.getClass().isArray() && Array.getLength(obj) == 0;
        }

        public b a(String str, double d2) {
            return i(str, String.valueOf(d2));
        }

        public b b(String str, int i) {
            return i(str, String.valueOf(i));
        }

        public b c(String str, long j) {
            return i(str, String.valueOf(j));
        }

        public b d(String str, Object obj) {
            return g(str, obj);
        }

        public b j(Object obj) {
            return f(obj);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.String toString() {
            /*
                r8 = this;
                boolean r0 = r8.f3485d
                boolean r1 = r8.f3486e
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r3 = 32
                r2.<init>(r3)
                java.lang.String r3 = r8.a
                r2.append(r3)
                r3 = 123(0x7b, float:1.72E-43)
                r2.append(r3)
                com.google.common.base.MoreObjects$b$b r3 = r8.b
                com.google.common.base.MoreObjects$b$b r3 = r3.c
                java.lang.String r4 = ""
            L1b:
                if (r3 == 0) goto L66
                java.lang.Object r5 = r3.b
                boolean r6 = r3 instanceof com.google.common.base.MoreObjects.b.a
                if (r6 != 0) goto L30
                if (r5 != 0) goto L28
                if (r0 != 0) goto L63
                goto L30
            L28:
                if (r1 == 0) goto L30
                boolean r6 = k(r5)
                if (r6 != 0) goto L63
            L30:
                r2.append(r4)
                java.lang.String r4 = r3.a
                if (r4 == 0) goto L3f
                r2.append(r4)
                r4 = 61
                r2.append(r4)
            L3f:
                if (r5 == 0) goto L5e
                java.lang.Class r4 = r5.getClass()
                boolean r4 = r4.isArray()
                if (r4 == 0) goto L5e
                r4 = 1
                java.lang.Object[] r6 = new java.lang.Object[r4]
                r7 = 0
                r6[r7] = r5
                java.lang.String r5 = java.util.Arrays.deepToString(r6)
                int r6 = r5.length()
                int r6 = r6 - r4
                r2.append(r5, r4, r6)
                goto L61
            L5e:
                r2.append(r5)
            L61:
                java.lang.String r4 = ", "
            L63:
                com.google.common.base.MoreObjects$b$b r3 = r3.c
                goto L1b
            L66:
                r0 = 125(0x7d, float:1.75E-43)
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.MoreObjects.b.toString():java.lang.String");
        }
    }

    private MoreObjects() {
    }

    public static <T> T firstNonNull(T t, T t2) {
        if (t != null) {
            return t;
        }
        java.util.Objects.requireNonNull(t2, "Both parameters are null");
        return t2;
    }

    public static b toStringHelper(Class<?> cls) {
        return new b(cls.getSimpleName());
    }

    public static b toStringHelper(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }

    public static b toStringHelper(String str) {
        return new b(str);
    }
}
