package com.tapjoy.internal;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.File;
import java.util.Calendar;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class v1 {
    public static final v1 a = new v1();
    public static Handler b;
    public static File c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public w1 f8016e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Context f8018g;
    public d3 h;
    public i5 i;
    public e9 j;
    public String k;
    public boolean l;
    public String n;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8017f = false;
    public boolean m = false;
    public g2 o = g2.a((k9) null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i1 f8015d = new i1(this);

    public static File a(Context context) {
        File file;
        synchronized (v1.class) {
            if (c == null) {
                c = context.getDir("fiverocks", 0);
            }
            file = c;
        }
        return new File(file, "install");
    }

    public final synchronized void b(Context context, String str, String str2) {
        if (this.l) {
            return;
        }
        g(context);
        if (e1.a(this.f8018g != null)) {
            if (str != null && str.length() == 24 && str.matches("[0-9a-f]{24}")) {
                if (str2 != null && str2.length() == 20 && str2.matches("[0-9A-Za-z\\-_]{20}")) {
                    this.l = true;
                    j();
                    d3 d3Var = this.h;
                    d3Var.getClass();
                    if (!TextUtils.isEmpty(str) && !str.equals(d3Var.f7886f.x.c())) {
                        d3Var.f7886f.x.b(str);
                        a7.a(d3Var.f7886f.b, false);
                    }
                }
            }
        }
    }

    public final void c(String str) {
        String str2 = this.h.b().f8022d.f7897e;
        g5 g5Var = new g5();
        n7 n7Var = new n7(this, str);
        synchronized (g5Var) {
            g5Var.c(n7Var);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00a1 A[Catch: all -> 0x00b1, TryCatch #0 {, blocks: (B:23:0x0047, B:25:0x004d, B:27:0x0056, B:28:0x0061, B:29:0x0073, B:36:0x00af, B:31:0x0093, B:32:0x0098, B:33:0x0099, B:34:0x00a0, B:35:0x00a1), top: B:41:0x0047, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d(java.util.Set r8) {
        /*
            r7 = this;
            boolean r0 = r7.e()
            if (r0 != 0) goto L7
            return
        L7:
            if (r8 == 0) goto L42
            boolean r0 = r8.isEmpty()
            if (r0 != 0) goto L42
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            java.util.Iterator r8 = r8.iterator()
        L18:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L41
            java.lang.Object r1 = r8.next()
            java.lang.String r1 = (java.lang.String) r1
            if (r1 == 0) goto L18
            java.lang.String r1 = r1.trim()
            boolean r2 = r1.isEmpty()
            if (r2 != 0) goto L18
            int r2 = r1.length()
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 > r3) goto L18
            r0.add(r1)
            int r1 = r0.size()
            if (r1 < r3) goto L18
        L41:
            r8 = r0
        L42:
            com.tapjoy.internal.d3 r0 = r7.h
            monitor-enter(r0)
            if (r8 == 0) goto La1
            boolean r1 = r8.isEmpty()     // Catch: java.lang.Throwable -> Lb1
            if (r1 != 0) goto La1
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lb1
            r1.<init>(r8)     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.c1 r2 = com.tapjoy.internal.c1.b     // Catch: java.lang.Throwable -> Lb1
            if (r2 == 0) goto L99
            java.lang.String r3 = "elements"
            java.util.List r1 = com.tapjoy.internal.i3.a(r3, r1)     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.n r3 = new com.tapjoy.internal.n     // Catch: java.lang.Throwable -> Lb1
            r3.<init>()     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.w5 r4 = new com.tapjoy.internal.w5     // Catch: java.io.IOException -> L92 java.lang.Throwable -> Lb1
            r4.<init>(r3)     // Catch: java.io.IOException -> L92 java.lang.Throwable -> Lb1
            com.tapjoy.internal.c3 r5 = com.tapjoy.internal.q7.h     // Catch: java.io.IOException -> L92 java.lang.Throwable -> Lb1
            com.tapjoy.internal.q7 r5 = r5.c()     // Catch: java.io.IOException -> L92 java.lang.Throwable -> Lb1
            r6 = 1
            r5.e(r4, r6, r1)     // Catch: java.io.IOException -> L92 java.lang.Throwable -> Lb1
            r4.b(r2)     // Catch: java.io.IOException -> L92 java.lang.Throwable -> Lb1
            byte[] r1 = r3.k()     // Catch: java.lang.Throwable -> Lb1
            r2 = 2
            java.lang.String r1 = android.util.Base64.encodeToString(r1, r2)     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.h2 r2 = r0.f7886f     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.o3 r2 = r2.t     // Catch: java.lang.Throwable -> Lb1
            r2.b(r1)     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.s5 r1 = r0.f7884d     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.j6 r1 = r1.v     // Catch: java.lang.Throwable -> Lb1
            r1.clear()     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.s5 r1 = r0.f7884d     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.j6 r1 = r1.v     // Catch: java.lang.Throwable -> Lb1
            r1.addAll(r8)     // Catch: java.lang.Throwable -> Lb1
            goto Laf
        L92:
            r8 = move-exception
            java.lang.AssertionError r1 = new java.lang.AssertionError     // Catch: java.lang.Throwable -> Lb1
            r1.<init>(r8)     // Catch: java.lang.Throwable -> Lb1
            throw r1     // Catch: java.lang.Throwable -> Lb1
        L99:
            java.lang.NullPointerException r8 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> Lb1
            java.lang.String r1 = "unknownFields == null"
            r8.<init>(r1)     // Catch: java.lang.Throwable -> Lb1
            throw r8     // Catch: java.lang.Throwable -> Lb1
        La1:
            com.tapjoy.internal.h2 r8 = r0.f7886f     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.o3 r8 = r8.t     // Catch: java.lang.Throwable -> Lb1
            r8.a()     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.s5 r8 = r0.f7884d     // Catch: java.lang.Throwable -> Lb1
            com.tapjoy.internal.j6 r8 = r8.v     // Catch: java.lang.Throwable -> Lb1
            r8.clear()     // Catch: java.lang.Throwable -> Lb1
        Laf:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb1
            return
        Lb1:
            r8 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb1
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.v1.d(java.util.Set):void");
    }

    public final boolean e() {
        return this.f8018g != null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        r10 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean f(android.content.Context r10, java.lang.String r11, boolean r12) {
        /*
            r9 = this;
            long r0 = java.lang.System.currentTimeMillis()
            r9.g(r10)
            com.tapjoy.internal.d3 r10 = r9.h
            monitor-enter(r10)
            com.tapjoy.internal.s5 r2 = r10.f7884d     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.j6 r2 = r2.f8000g     // Catch: java.lang.Throwable -> La2
            java.util.List r2 = r2.b     // Catch: java.lang.Throwable -> La2
            int r2 = r2.size()     // Catch: java.lang.Throwable -> La2
            r3 = 0
            r4 = 0
        L16:
            r5 = 0
            r6 = 1
            if (r4 >= r2) goto L70
            com.tapjoy.internal.s5 r7 = r10.f7884d     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.j6 r7 = r7.f8000g     // Catch: java.lang.Throwable -> La2
            java.util.List r7 = r7.b     // Catch: java.lang.Throwable -> La2
            java.lang.Object r7 = r7.get(r4)     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.b0 r7 = (com.tapjoy.internal.b0) r7     // Catch: java.lang.Throwable -> La2
            java.lang.String r8 = r7.f7862d     // Catch: java.lang.Throwable -> La2
            boolean r8 = r8.equals(r11)     // Catch: java.lang.Throwable -> La2
            if (r8 == 0) goto L6d
            if (r12 == 0) goto L6a
            com.tapjoy.internal.i r11 = r7.d()     // Catch: java.lang.Throwable -> La2
            java.lang.Long r12 = java.lang.Long.valueOf(r0)     // Catch: java.lang.Throwable -> La2
            r11.getClass()     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.s5 r0 = r10.f7884d     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.j6 r0 = r0.f8000g     // Catch: java.lang.Throwable -> La2
            java.lang.String r1 = r11.c     // Catch: java.lang.Throwable -> La2
            if (r1 == 0) goto L55
            if (r12 == 0) goto L55
            com.tapjoy.internal.b0 r2 = new com.tapjoy.internal.b0     // Catch: java.lang.Throwable -> La2
            java.lang.Long r5 = r11.f7912d     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.c1 r11 = r11.a()     // Catch: java.lang.Throwable -> La2
            r2.<init>(r1, r12, r5, r11)     // Catch: java.lang.Throwable -> La2
            r0.set(r4, r2)     // Catch: java.lang.Throwable -> La2
            monitor-exit(r10)     // Catch: java.lang.Throwable -> La2
            goto L86
        L55:
            r11 = 4
            java.lang.Object[] r11 = new java.lang.Object[r11]     // Catch: java.lang.Throwable -> La2
            r11[r3] = r1     // Catch: java.lang.Throwable -> La2
            java.lang.String r0 = "id"
            r11[r6] = r0     // Catch: java.lang.Throwable -> La2
            r0 = 2
            r11[r0] = r12     // Catch: java.lang.Throwable -> La2
            r12 = 3
            java.lang.String r0 = "received"
            r11[r12] = r0     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.i3.a(r11)     // Catch: java.lang.Throwable -> La2
            throw r5     // Catch: java.lang.Throwable -> La2
        L6a:
            monitor-exit(r10)     // Catch: java.lang.Throwable -> La2
            r10 = 0
            goto L87
        L6d:
            int r4 = r4 + 1
            goto L16
        L70:
            com.tapjoy.internal.s5 r12 = r10.f7884d     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.j6 r12 = r12.f8000g     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.b0 r2 = new com.tapjoy.internal.b0     // Catch: java.lang.Throwable -> La2
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch: java.lang.Throwable -> La2
            com.tapjoy.internal.c1 r1 = com.tapjoy.internal.c1.b     // Catch: java.lang.Throwable -> La2
            r2.<init>(r11, r0, r5, r1)     // Catch: java.lang.Throwable -> La2
            r12.add(r2)     // Catch: java.lang.Throwable -> La2
            r10.l()     // Catch: java.lang.Throwable -> La2
            monitor-exit(r10)     // Catch: java.lang.Throwable -> La2
        L86:
            r10 = 1
        L87:
            if (r10 == 0) goto La1
            com.tapjoy.internal.i5 r10 = r9.i
            r10.getClass()
            com.tapjoy.internal.r1 r11 = com.tapjoy.internal.r1.APP
            java.lang.String r12 = "push_show"
            com.tapjoy.internal.d4 r11 = r10.a(r11, r12)
            com.tapjoy.internal.c1 r12 = com.tapjoy.internal.c1.b
            java.lang.String r0 = "unknownFields == null"
            java.util.Objects.requireNonNull(r12, r0)
            r10.b(r11)
            r3 = 1
        La1:
            return r3
        La2:
            r11 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> La2
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.v1.f(android.content.Context, java.lang.String, boolean):boolean");
    }

    public final synchronized void g(Context context) {
        if (this.f8018g == null) {
            Context applicationContext = context.getApplicationContext();
            this.f8018g = applicationContext;
            ca.a.b(applicationContext);
            d3 d3VarA = d3.a(applicationContext);
            this.h = d3VarA;
            i5 i5Var = new i5(d3VarA);
            this.i = i5Var;
            this.j = new e9(i5Var);
            this.f8016e = new w1(applicationContext);
            m2 m2Var = m2.a;
            m2Var.getClass();
            m2Var.b = applicationContext.getApplicationContext();
            m2Var.c = applicationContext.getSharedPreferences("tapjoyCacheDataMMF2E", 0);
            m2Var.f7939d = applicationContext.getSharedPreferences("tapjoyCacheDataMMF2U", 0);
            m2Var.f7941f.submit(new d1(m2Var));
        }
    }

    public final synchronized void h(String str) {
        String str2;
        if (this.l) {
            if (str == null && (str2 = this.n) != null) {
                str = str2;
            }
            this.n = null;
            if (str != null) {
                c(str);
            }
        } else if (str != null) {
            this.n = str;
        }
    }

    public final boolean i() {
        return (this.l || this.k != null) && this.f8018g != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j() {
        /*
            r6 = this;
            com.tapjoy.internal.r0 r0 = new com.tapjoy.internal.r0
            android.content.Context r1 = r6.f8018g
            java.io.File r1 = a(r1)
            r0.<init>(r1)
            boolean r2 = r1.exists()
            r3 = 0
            if (r2 == 0) goto L1d
            java.lang.String r1 = com.tapjoy.internal.g7.a(r1)     // Catch: java.io.IOException -> L1d
            int r2 = r1.length()     // Catch: java.io.IOException -> L1d
            if (r2 <= 0) goto L1d
            goto L1e
        L1d:
            r1 = r3
        L1e:
            r2 = 1
            r4 = 0
            if (r1 == 0) goto L24
            r1 = 1
            goto L25
        L24:
            r1 = 0
        L25:
            if (r1 != 0) goto L79
            monitor-enter(r0)
            java.io.File r1 = r0.a     // Catch: java.lang.Throwable -> L76
            boolean r1 = r1.exists()     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L3d
            java.io.File r1 = r0.a     // Catch: java.io.IOException -> L3d java.lang.Throwable -> L76
            java.lang.String r1 = com.tapjoy.internal.g7.a(r1)     // Catch: java.io.IOException -> L3d java.lang.Throwable -> L76
            int r5 = r1.length()     // Catch: java.io.IOException -> L3d java.lang.Throwable -> L76
            if (r5 <= 0) goto L3d
            goto L3e
        L3d:
            r1 = r3
        L3e:
            if (r1 == 0) goto L41
            goto L62
        L41:
            r0.a()     // Catch: java.io.IOException -> L62 java.lang.Throwable -> L76
            java.io.File r1 = r0.a     // Catch: java.lang.Throwable -> L76
            boolean r1 = r1.exists()     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L5b
            java.io.File r1 = r0.a     // Catch: java.io.IOException -> L5a java.lang.Throwable -> L76
            java.lang.String r1 = com.tapjoy.internal.g7.a(r1)     // Catch: java.io.IOException -> L5a java.lang.Throwable -> L76
            int r5 = r1.length()     // Catch: java.io.IOException -> L5a java.lang.Throwable -> L76
            if (r5 <= 0) goto L5b
            r3 = r1
            goto L5b
        L5a:
        L5b:
            if (r3 == 0) goto L5e
            goto L5f
        L5e:
            r2 = 0
        L5f:
            monitor-exit(r0)
            r4 = r2
            goto L63
        L62:
            monitor-exit(r0)
        L63:
            if (r4 == 0) goto L79
            com.tapjoy.internal.i5 r0 = r6.i
            r0.getClass()
            com.tapjoy.internal.r1 r1 = com.tapjoy.internal.r1.APP
            java.lang.String r2 = "install"
            com.tapjoy.internal.d4 r1 = r0.a(r1, r2)
            r0.b(r1)
            goto L79
        L76:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.v1.j():void");
    }

    public final boolean k() {
        boolean z;
        int i;
        e9 e9Var = this.j;
        ScheduledFuture scheduledFuture = e9Var.f7895d;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            e9Var.f7895d = null;
        }
        if (e9Var.b.compareAndSet(false, true)) {
            i5 i5Var = e9Var.a;
            d3 d3Var = i5Var.a;
            synchronized (d3Var) {
                Calendar calendar = Calendar.getInstance();
                int i2 = calendar.get(5) + (calendar.get(2) * 100) + (calendar.get(1) * 10000) + 100;
                int iIntValue = Integer.valueOf(d3Var.f7886f.f7907e.c()).intValue();
                if (iIntValue != i2) {
                    if (iIntValue == 0) {
                        d3Var.f7884d.f7998e = 1;
                        d3Var.f7884d.f7999f = 1;
                        if (c1.b == null) {
                            throw new NullPointerException("unknownFields == null");
                        }
                        i = 1;
                    } else {
                        int iIntValue2 = Integer.valueOf(d3Var.f7886f.f7908f.c()).intValue();
                        int iA = d3.a(7, iIntValue2);
                        int iA2 = d3.a(30, iIntValue2);
                        Calendar calendar2 = Calendar.getInstance();
                        calendar2.set(iIntValue / 10000, ((iIntValue / 100) % 100) - 1, iIntValue % 100);
                        int iA3 = j0.a(calendar, calendar2);
                        i = (Math.abs(iA3) >= 30 ? 0 : iA3 >= 0 ? iIntValue2 << iA3 : iIntValue2 >> (-iA3)) | 1;
                        int iA4 = d3.a(7, i);
                        int iA5 = d3.a(30, i);
                        d3Var.f7884d.f7998e = Integer.valueOf(iA4);
                        d3Var.f7884d.f7999f = Integer.valueOf(iA5);
                        StringBuilder sb = new StringBuilder("fq7_");
                        sb.append(iA);
                        sb.append("_");
                        sb.append(iA4);
                        StringBuilder sb2 = new StringBuilder("fq30_");
                        sb2.append(iA2);
                        sb2.append("_");
                        sb2.append(iA5);
                        if (c1.b == null) {
                            throw new NullPointerException("unknownFields == null");
                        }
                    }
                    d3Var.f7886f.f7907e.b(i2);
                    d3Var.f7886f.f7908f.b(i);
                }
            }
            i5Var.a.m();
            d4 d4VarA = i5Var.a(r1.APP, "bootup");
            i5Var.c = SystemClock.elapsedRealtime();
            i5Var.b(d4VarA);
            a3.c.notifyObservers();
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        this.f8015d.a();
        m2 m2Var = m2.a;
        m2Var.f7941f.submit(new d1(m2Var));
        return true;
    }
}
