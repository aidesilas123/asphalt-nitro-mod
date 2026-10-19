package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: compiled from: SameOptimizedController.java */
/* JADX INFO: loaded from: classes4.dex */
public final class ac {
    public volatile JSONObject a;
    private volatile ConcurrentHashMap<String, Boolean> b;
    private volatile ConcurrentHashMap<String, Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile com.mbridge.msdk.c.e f7208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f7209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f7210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f7211g;
    private String h;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SameOptimizedController.java */
    static final class a {
        private static final ac a = new ac();
    }

    private ac() {
        this.f7209e = new Object();
        this.f7210f = new Object();
        this.f7211g = new Object();
    }

    public static ac a() {
        return a.a;
    }

    private static Boolean a(String str, ConcurrentHashMap<String, Boolean> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    private int b(String str, int i) {
        if (b()) {
            return i;
        }
        try {
            return this.a.optInt(str, i);
        } catch (Exception unused) {
            return i;
        }
    }

    private int b(String str, String str2, int i) {
        if (b()) {
            return i;
        }
        try {
            String strOptString = this.a.optString(str, "");
            if (TextUtils.isEmpty(strOptString)) {
                return i;
            }
            String strB = u.b(strOptString);
            return TextUtils.isEmpty(strB) ? i : new JSONObject(strB).optInt(str2, i);
        } catch (Exception unused) {
            return i;
        }
    }

    private static Integer b(String str, ConcurrentHashMap<String, Integer> concurrentHashMap) {
        try {
            return concurrentHashMap.get(str);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003e A[Catch: all -> 0x0051, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0009, B:18:0x003a, B:20:0x003e, B:21:0x0046, B:11:0x0016, B:13:0x001e, B:14:0x002a, B:17:0x0038), top: B:31:0x0003, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0016 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean b() {
        /*
            r5 = this;
            java.lang.Object r0 = r5.f7211g
            monitor-enter(r0)
            com.mbridge.msdk.c.e r1 = r5.f7208d     // Catch: java.lang.Throwable -> L51
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L16
            com.mbridge.msdk.c.e r1 = r5.f7208d     // Catch: java.lang.Throwable -> L51
            int r1 = r1.aG()     // Catch: java.lang.Throwable -> L51
            if (r1 != r3) goto L13
            r1 = 1
            goto L14
        L13:
            r1 = 0
        L14:
            if (r1 == 0) goto L3a
        L16:
            java.lang.String r1 = r5.h     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            if (r1 == 0) goto L2a
            com.mbridge.msdk.foundation.a.a.a r1 = com.mbridge.msdk.foundation.a.a.a.a()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            java.lang.String r4 = "sdk_app_id"
            java.lang.String r1 = r1.b(r4)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            r5.h = r1     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
        L2a:
            com.mbridge.msdk.c.f r1 = com.mbridge.msdk.c.f.a()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            java.lang.String r4 = r5.h     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            com.mbridge.msdk.c.e r1 = r1.g(r4)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            r5.f7208d = r1     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L51
            goto L3a
        L37:
            r1 = 0
            r5.f7208d = r1     // Catch: java.lang.Throwable -> L51
        L3a:
            com.mbridge.msdk.c.e r1 = r5.f7208d     // Catch: java.lang.Throwable -> L51
            if (r1 == 0) goto L46
            com.mbridge.msdk.c.e r1 = r5.f7208d     // Catch: java.lang.Throwable -> L51
            org.json.JSONObject r1 = r1.j()     // Catch: java.lang.Throwable -> L51
            r5.a = r1     // Catch: java.lang.Throwable -> L51
        L46:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            com.mbridge.msdk.c.e r0 = r5.f7208d
            if (r0 == 0) goto L4f
            org.json.JSONObject r0 = r5.a
            if (r0 != 0) goto L50
        L4f:
            r2 = 1
        L50:
            return r2
        L51:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L51
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.ac.b():boolean");
    }

    private boolean b(String str, boolean z) {
        if (b()) {
            return z;
        }
        try {
            return this.a.optInt(str, z ? 1 : 0) != 0;
        } catch (Exception unused) {
            return z;
        }
    }

    private ConcurrentHashMap<String, Boolean> c() {
        synchronized (this.f7209e) {
            if (this.b == null) {
                this.b = new ConcurrentHashMap<>();
            }
        }
        return this.b;
    }

    private ConcurrentHashMap<String, Integer> d() {
        synchronized (this.f7210f) {
            if (this.c == null) {
                this.c = new ConcurrentHashMap<>();
            }
        }
        return this.c;
    }

    public final int a(String str, int i) {
        Integer numValueOf;
        try {
            if (TextUtils.isEmpty(str)) {
                return i;
            }
            ConcurrentHashMap<String, Integer> concurrentHashMapD = d();
            Integer numB = b(str, concurrentHashMapD);
            if (numB != null) {
                return numB.intValue();
            }
            try {
                numValueOf = Integer.valueOf(b(str, i));
            } catch (Exception unused) {
                numValueOf = Integer.valueOf(i);
            }
            concurrentHashMapD.put(str, numValueOf);
            return numValueOf.intValue();
        } catch (Exception unused2) {
            return i;
        }
    }

    public final int a(String str, String str2, int i) {
        Integer numValueOf;
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                String str3 = str + "_" + str2;
                ConcurrentHashMap<String, Integer> concurrentHashMapD = d();
                Integer numB = b(str3, concurrentHashMapD);
                if (numB != null) {
                    return numB.intValue();
                }
                try {
                    numValueOf = Integer.valueOf(b(str, str2, i));
                } catch (Exception unused) {
                    numValueOf = Integer.valueOf(i);
                }
                concurrentHashMapD.put(str3, numValueOf);
                return numValueOf.intValue();
            }
            return a(str2, i);
        } catch (Exception unused2) {
            return i;
        }
    }

    public final boolean a(String str, boolean z) {
        Boolean boolValueOf;
        try {
            if (TextUtils.isEmpty(str)) {
                return z;
            }
            ConcurrentHashMap<String, Boolean> concurrentHashMapC = c();
            Boolean boolA = a(str, concurrentHashMapC);
            if (boolA != null) {
                return boolA.booleanValue();
            }
            try {
                boolValueOf = Boolean.valueOf(b(str, z));
            } catch (Exception unused) {
                boolValueOf = Boolean.valueOf(z);
            }
            concurrentHashMapC.put(str, boolValueOf);
            return boolValueOf.booleanValue();
        } catch (Exception unused2) {
            return z;
        }
    }
}
