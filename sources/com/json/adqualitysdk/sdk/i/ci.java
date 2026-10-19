package com.json.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ci {
    private static char a = 54794;
    private static char b = 32194;
    private static char c = 45352;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5398d = 36172;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5399e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5400f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private dh f5401g;
    private ba h;
    private cz i;
    private az j;
    private Context k;
    private List<cj> l = new ArrayList();
    private dj m;

    final class a extends il {
        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            ci.c(ci.this).clear();
        }
    }

    public ci(Context context, dh dhVar, ba baVar, cz czVar, az azVar) {
        this.f5401g = dhVar;
        this.h = baVar;
        this.i = czVar;
        this.j = azVar;
        this.k = context.getApplicationContext();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0019, code lost:
    
        if (r3.l != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
    
        if (r3.l != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0022, code lost:
    
        r0 = new java.util.ArrayList(r3.l);
        r1 = com.json.adqualitysdk.sdk.i.ci.f5399e + 33;
        com.json.adqualitysdk.sdk.i.ci.f5400f = r1 % 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0035, code lost:
    
        if ((r1 % 2) != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0037, code lost:
    
        r1 = ':';
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        r1 = ']';
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003c, code lost:
    
        if (r1 == ':') goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x003f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0041, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x004a, code lost:
    
        return new java.util.ArrayList();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized java.util.List<com.json.adqualitysdk.sdk.i.cj> b() {
        /*
            r3 = this;
            monitor-enter(r3)
            int r0 = com.json.adqualitysdk.sdk.i.ci.f5399e     // Catch: java.lang.Throwable -> L4b
            int r0 = r0 + 49
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ci.f5400f = r1     // Catch: java.lang.Throwable -> L4b
            int r0 = r0 % 2
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L11
            r0 = 0
            goto L12
        L11:
            r0 = 1
        L12:
            if (r0 == r2) goto L1e
            java.util.List<com.ironsource.adqualitysdk.sdk.i.cj> r0 = r3.l     // Catch: java.lang.Throwable -> L4b
            r2 = 73
            int r2 = r2 / r1
            if (r0 == 0) goto L44
            goto L22
        L1c:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L4b
        L1e:
            java.util.List<com.ironsource.adqualitysdk.sdk.i.cj> r0 = r3.l     // Catch: java.lang.Throwable -> L4b
            if (r0 == 0) goto L44
        L22:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4b
            java.util.List<com.ironsource.adqualitysdk.sdk.i.cj> r1 = r3.l     // Catch: java.lang.Throwable -> L4b
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L4b
            int r1 = com.json.adqualitysdk.sdk.i.ci.f5399e     // Catch: java.lang.Throwable -> L4b
            int r1 = r1 + 33
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.ci.f5400f = r2     // Catch: java.lang.Throwable -> L4b
            int r1 = r1 % 2
            r2 = 58
            if (r1 != 0) goto L3a
            r1 = 58
            goto L3c
        L3a:
            r1 = 93
        L3c:
            if (r1 == r2) goto L40
            monitor-exit(r3)
            return r0
        L40:
            r0 = 0
            throw r0     // Catch: java.lang.Throwable -> L42
        L42:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L4b
        L44:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L4b
            r0.<init>()     // Catch: java.lang.Throwable -> L4b
            monitor-exit(r3)
            return r0
        L4b:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ci.b():java.util.List");
    }

    static /* synthetic */ List c(ci ciVar) {
        int i = f5399e;
        int i2 = i + 115;
        f5400f = i2 % 128;
        int i3 = i2 % 2;
        List<cj> list = ciVar.l;
        int i4 = i + 13;
        f5400f = i4 % 128;
        if ((i4 % 2 == 0 ? 'B' : ',') == ',') {
            return list;
        }
        int i5 = 38 / 0;
        return list;
    }

    private synchronized void d(dh dhVar, az azVar) {
        if (azVar.mo382()) {
            int i = f5399e + 31;
            f5400f = i % 128;
            int i2 = i % 2;
            for (cj cjVar : b()) {
                dhVar.m641().m683().m686(cjVar.m452().m758(), cjVar);
                int i3 = f5399e + 75;
                f5400f = i3 % 128;
                if (i3 % 2 == 0) {
                }
            }
        }
        int i4 = f5400f + 83;
        f5399e = i4 % 128;
        if (i4 % 2 != 0) {
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x002a A[Catch: all -> 0x004d, TryCatch #2 {, blocks: (B:3:0x0001, B:28:0x003c, B:34:0x004c, B:21:0x002a, B:23:0x0034, B:24:0x0037, B:27:0x003b, B:15:0x001f, B:25:0x0039, B:32:0x004a, B:7:0x0010), top: B:42:0x0001, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003c A[Catch: all -> 0x004d, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:28:0x003c, B:34:0x004c, B:21:0x002a, B:23:0x0034, B:24:0x0037, B:27:0x003b, B:15:0x001f, B:25:0x0039, B:32:0x004a, B:7:0x0010), top: B:42:0x0001, inners: #0, #1, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0048 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x004a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized void e(com.json.adqualitysdk.sdk.i.dj r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            int r0 = com.json.adqualitysdk.sdk.i.ci.f5399e     // Catch: java.lang.Throwable -> L4d
            int r1 = r0 + 63
            int r2 = r1 % 128
            com.json.adqualitysdk.sdk.i.ci.f5400f = r2     // Catch: java.lang.Throwable -> L4d
            int r1 = r1 % 2
            r2 = 0
            if (r1 != 0) goto L20
            r1 = 40
            int r1 = r1 / 0
            r1 = 92
            if (r5 == 0) goto L19
            r3 = 44
            goto L1b
        L19:
            r3 = 92
        L1b:
            if (r3 == r1) goto L3c
            goto L2a
        L1e:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L4d
        L20:
            r1 = 23
            if (r5 == 0) goto L26
            r3 = 3
            goto L28
        L26:
            r3 = 23
        L28:
            if (r3 == r1) goto L3c
        L2a:
            int r0 = r0 + 17
            int r1 = r0 % 128
            com.json.adqualitysdk.sdk.i.ci.f5400f = r1     // Catch: java.lang.Throwable -> L4d
            int r0 = r0 % 2
            if (r0 == 0) goto L37
            r4.m = r5     // Catch: java.lang.Throwable -> L4d
            goto L3c
        L37:
            r4.m = r5     // Catch: java.lang.Throwable -> L4d
            throw r2     // Catch: java.lang.Throwable -> L3a
        L3a:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L4d
        L3c:
            int r5 = com.json.adqualitysdk.sdk.i.ci.f5400f     // Catch: java.lang.Throwable -> L4d
            int r5 = r5 + 91
            int r0 = r5 % 128
            com.json.adqualitysdk.sdk.i.ci.f5399e = r0     // Catch: java.lang.Throwable -> L4d
            int r5 = r5 % 2
            if (r5 != 0) goto L4a
            monitor-exit(r4)
            return
        L4a:
            throw r2     // Catch: java.lang.Throwable -> L4b
        L4b:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L4d
        L4d:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ci.e(com.ironsource.adqualitysdk.sdk.i.dj):void");
    }

    private void f(dj djVar) {
        int i = f5399e + 111;
        f5400f = i % 128;
        char c2 = i % 2 == 0 ? '1' : 'X';
        e(djVar);
        if (c2 == 'X') {
        } else {
            throw null;
        }
    }

    private static String g(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i2 = o.f138;
                if (i2 < cArr.length) {
                    cArr3[0] = cArr[i2];
                    cArr3[1] = cArr[i2 + 1];
                    int i3 = 58224;
                    for (int i4 = 0; i4 < 16; i4++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + c)) ^ ((cArr3[0] >>> 5) + f5398d)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + a)) ^ ((cArr3[1] >>> 5) + b)));
                        i3 -= 40503;
                    }
                    int i5 = o.f138;
                    cArr2[i5] = cArr3[0];
                    cArr2[i5 + 1] = cArr3[1];
                    o.f138 = i5 + 2;
                } else {
                    str2 = new String(cArr2, 0, i);
                }
            }
        }
        return str2;
    }

    private ho h(di diVar) {
        int i = f5399e + 97;
        int i2 = i % 128;
        f5400f = i2;
        if ((i % 2 == 0 ? '2' : 'L') != 'L') {
            throw null;
        }
        if (diVar != null) {
            return new ho(diVar, h(this.f5401g.m640().get(diVar.m653())));
        }
        int i3 = i2 + 107;
        f5399e = i3 % 128;
        int i4 = i3 % 2;
        return null;
    }

    private void i(cj cjVar) {
        int i = f5399e + 97;
        f5400f = i % 128;
        int i2 = i % 2;
        this.l.add(cjVar);
        int i3 = f5399e + 115;
        f5400f = i3 % 128;
        int i4 = i3 % 2;
    }

    protected final synchronized dj a() {
        dj djVar;
        int i = f5400f + 121;
        f5399e = i % 128;
        if ((i % 2 != 0 ? '>' : '\b') != '\b') {
            djVar = this.m;
            int i2 = 35 / 0;
        } else {
            djVar = this.m;
        }
        return djVar;
    }

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public final ba m429() {
        int i = f5399e;
        int i2 = i + 119;
        f5400f = i2 % 128;
        int i3 = i2 % 2;
        ba baVar = this.h;
        int i4 = i + 63;
        f5400f = i4 % 128;
        if ((i4 % 2 == 0 ? '/' : 'V') == 'V') {
            return baVar;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final Context m430() {
        int i = f5399e + 37;
        f5400f = i % 128;
        if ((i % 2 == 0 ? (char) 26 : '#') == '#') {
            return this.k;
        }
        int i2 = 91 / 0;
        return this.k;
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final synchronized boolean m431() {
        int i = f5399e + 65;
        f5400f = i % 128;
        int i2 = i % 2;
        boolean zMo382 = this.j.mo382();
        int i3 = f5399e + 79;
        f5400f = i3 % 128;
        if (!(i3 % 2 == 0)) {
            return zMo382;
        }
        int i4 = 35 / 0;
        return zMo382;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final String m432() {
        int i = f5400f + 55;
        f5399e = i % 128;
        int i2 = i % 2;
        String strM435 = m435();
        if (!TextUtils.isEmpty(strM435)) {
            if (!g("恛썌節鮣\ueee9玥袼㫮", View.combineMeasuredStates(0, 0) + 7).intern().equals(strM435)) {
                int i3 = f5399e + 95;
                f5400f = i3 % 128;
                if (!(i3 % 2 != 0) ? !g("ፂରͷ懙\ueb12仆楥㊒", 81 << (ViewConfiguration.getKeyRepeatTimeout() / 29)).intern().equals(strM435) : !g("ፂରͷ懙\ueb12仆楥㊒", 8 - (ViewConfiguration.getKeyRepeatTimeout() >> 16)).intern().equals(strM435)) {
                    return this.f5401g.m646(m435());
                }
            }
        }
        int i4 = f5400f + 7;
        f5399e = i4 % 128;
        if ((i4 % 2 != 0 ? (char) 6 : '1') != 6) {
            return null;
        }
        throw null;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final String m433() {
        String strM642;
        int i = f5400f + 59;
        f5399e = i % 128;
        if ((i % 2 != 0 ? ';' : '&') != ';') {
            strM642 = this.f5401g.m642();
        } else {
            strM642 = this.f5401g.m642();
            int i2 = 4 / 0;
        }
        int i3 = f5400f + 71;
        f5399e = i3 % 128;
        int i4 = i3 % 2;
        return strM642;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final String m434() {
        int i = f5400f + 57;
        f5399e = i % 128;
        if ((i % 2 != 0 ? (char) 3 : 'B') != 3) {
            return this.j.mo378();
        }
        this.j.mo378();
        throw null;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final String m435() {
        int i = f5399e + 113;
        f5400f = i % 128;
        if ((i % 2 == 0 ? 'X' : '2') != 'X') {
            return this.j.m380();
        }
        this.j.m380();
        throw null;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final String m436() {
        int i = f5400f + 121;
        f5399e = i % 128;
        int i2 = i % 2;
        String strM644 = this.f5401g.m644();
        int i3 = f5400f + 23;
        f5399e = i3 % 128;
        if (i3 % 2 == 0) {
            return strM644;
        }
        int i4 = 93 / 0;
        return strM644;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String m437() {
        int i = f5400f + 19;
        f5399e = i % 128;
        int i2 = i % 2;
        String strM647 = this.f5401g.m647();
        int i3 = f5399e + 63;
        f5400f = i3 % 128;
        int i4 = i3 % 2;
        return strM647;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m438() {
        String strM643;
        int i = f5400f + 9;
        f5399e = i % 128;
        if (i % 2 != 0) {
            strM643 = this.f5401g.m643();
            int i2 = 87 / 0;
        } else {
            strM643 = this.f5401g.m643();
        }
        int i3 = f5399e + 19;
        f5400f = i3 % 128;
        if (!(i3 % 2 == 0)) {
            return strM643;
        }
        int i4 = 45 / 0;
        return strM643;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m439() {
        int i = f5400f + 73;
        f5399e = i % 128;
        int i2 = i % 2;
        String strM645 = this.f5401g.m645();
        int i3 = f5400f + 105;
        f5399e = i3 % 128;
        if (!(i3 % 2 != 0)) {
            return strM645;
        }
        int i4 = 1 / 0;
        return strM645;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0032 A[PHI: r0
      0x0032: PHI (r0v20 com.ironsource.adqualitysdk.sdk.i.dj) = (r0v6 com.ironsource.adqualitysdk.sdk.i.dj), (r0v22 com.ironsource.adqualitysdk.sdk.i.dj) binds: [B:18:0x0030, B:13:0x0025] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m440() {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adqualitysdk.sdk.i.ci.m440():void");
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m441(String str, List<Object> list) {
        Iterator<cj> it;
        int i = f5400f + 65;
        f5399e = i % 128;
        if ((i % 2 != 0 ? '\'' : (char) 11) != '\'') {
            it = b().iterator();
        } else {
            it = b().iterator();
            int i2 = 3 / 0;
        }
        while (true) {
            if ((it.hasNext() ? ':' : '1') == '1') {
                int i3 = f5399e + 13;
                f5400f = i3 % 128;
                int i4 = i3 % 2;
                return;
            }
            it.next().R(str, list);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m442() {
        Iterator<cj> it = this.l.iterator();
        int i = f5400f + 95;
        f5399e = i % 128;
        while (true) {
            int i2 = i % 2;
            if ((it.hasNext() ? '\n' : '2') != '\n') {
                t.m1046(new a());
                return;
            } else {
                it.next().e();
                i = f5400f + 21;
                f5399e = i % 128;
            }
        }
    }
}
