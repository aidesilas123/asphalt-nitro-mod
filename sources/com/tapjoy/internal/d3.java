package com.tapjoy.internal;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Window;
import android.view.WindowManager;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class d3 {
    public static d3 a;
    public final a9 b;
    public final p4 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s5 f7884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f7885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final h2 f7886f;

    static {
        UUID.randomUUID().toString();
    }

    public d3(Context context, h2 h2Var) {
        e7.a();
        a9 a9Var = new a9();
        this.b = a9Var;
        p4 p4Var = new p4();
        this.c = p4Var;
        this.f7884d = new s5();
        a9Var.o = "13.3.0/Android";
        a9Var.f7856f = com.json.o2.f6459e;
        a9Var.f7857g = Build.VERSION.RELEASE;
        a9Var.f7854d = Build.MANUFACTURER;
        a9Var.f7855e = Build.MODEL;
        a9Var.k = Locale.getDefault().toString();
        a9Var.l = TimeZone.getDefault().getID();
        Context applicationContext = context.getApplicationContext();
        this.f7885e = applicationContext;
        a9Var.c = f1.a(applicationContext);
        if (!ca.a().b("TJC_OPTION_DISABLE_ANDROID_ID_AS_ANALYTICS_ID")) {
            a9Var.r = f1.b(applicationContext);
        }
        PackageManager packageManager = applicationContext.getPackageManager();
        TelephonyManager telephonyManager = (TelephonyManager) applicationContext.getSystemService("phone");
        if (telephonyManager != null) {
            String simCountryIso = telephonyManager.getSimCountryIso();
            if (!TextUtils.isEmpty(simCountryIso)) {
                a9Var.p = simCountryIso.toUpperCase(Locale.US);
            }
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                a9Var.q = networkCountryIso.toUpperCase(Locale.US);
            }
        }
        String packageName = applicationContext.getPackageName();
        a9Var.m = packageName;
        a9Var.n = r9.b(e5.a(packageManager, packageName));
        p4Var.c = e5.c(packageManager, packageName);
        p4Var.b(Integer.valueOf(e5.b(packageManager, packageName)));
        String installerPackageName = packageManager.getInstallerPackageName(packageName);
        if (!TextUtils.isEmpty(installerPackageName)) {
            p4Var.f7955e = installerPackageName;
        }
        String strA = a(packageManager, packageName);
        if (!TextUtils.isEmpty(strA)) {
            p4Var.f7956f = strA;
        }
        k();
        this.f7886f = h2Var;
        i();
    }

    public static int a(int i, int i2) {
        return Integer.bitCount(((1 << i) - 1) & i2);
    }

    public static synchronized d3 a(Context context) {
        if (a == null) {
            a = new d3(context, new h2(context));
        }
        return a;
    }

    public static String a(PackageManager packageManager, String str) {
        Object obj;
        try {
            Bundle bundle = packageManager.getApplicationInfo(str, 128).metaData;
            if (bundle == null || (obj = bundle.get("com.tapjoy.appstore")) == null) {
                return null;
            }
            return obj.toString().trim();
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final y b() {
        y yVar;
        synchronized (this) {
            this.b.k = Locale.getDefault().toString();
            this.b.l = TimeZone.getDefault().getID();
            boolean z = false;
            long jCurrentTimeMillis = System.currentTimeMillis() - 259200000;
            Iterator it = this.f7884d.f8000g.iterator();
            while (it.hasNext()) {
                if (((b0) it.next()).f7863e.longValue() <= jCurrentTimeMillis) {
                    it.remove();
                    z = true;
                }
            }
            if (z) {
                l();
            }
            a9 a9Var = this.b;
            f fVar = new f(null, a9Var.c, a9Var.f7854d, a9Var.f7855e, a9Var.f7856f, a9Var.f7857g, a9Var.h, a9Var.i, a9Var.j, a9Var.k, a9Var.l, a9Var.m, a9Var.n, a9Var.o, a9Var.p, a9Var.q, null, a9Var.r, a9Var.a());
            p4 p4Var = this.c;
            r5 r5Var = new r5(p4Var.c, p4Var.f7954d, p4Var.f7955e, p4Var.f7956f, p4Var.a());
            s5 s5Var = this.f7884d;
            s5Var.getClass();
            yVar = new y(fVar, r5Var, new p6(s5Var.c, s5Var.f7997d, s5Var.f7998e, s5Var.f7999f, s5Var.f8000g, s5Var.h, s5Var.i, s5Var.j, s5Var.l, s5Var.k, s5Var.m, s5Var.n, s5Var.o, s5Var.p, s5Var.q, s5Var.r, s5Var.s, s5Var.t, s5Var.u, s5Var.v, s5Var.w, s5Var.a()), c1.b);
        }
        return yVar;
    }

    public final void c(long j, double d2) {
        synchronized (this) {
            SharedPreferences.Editor editorEdit = this.f7886f.b.edit();
            editorEdit.putLong(this.f7886f.p.b, j);
            editorEdit.putString(this.f7886f.q.b, Double.toString(d2));
            editorEdit.apply();
            this.f7884d.p = Long.valueOf(j);
            this.f7884d.q = Double.valueOf(d2);
        }
    }

    public final void d(long j, long j2) {
        synchronized (this) {
            SharedPreferences.Editor editorEdit = this.f7886f.b.edit();
            editorEdit.putLong(this.f7886f.j.b, j);
            editorEdit.putLong(this.f7886f.l.b, j2);
            editorEdit.apply();
            this.f7884d.j = Long.valueOf(j);
            this.f7884d.l = Long.valueOf(j2);
        }
    }

    public final void e(Integer num) {
        synchronized (this) {
            u1 u1Var = this.f7886f.s;
            if (num != null) {
                u1Var.getClass();
                u1Var.b(num.intValue());
            } else {
                u1Var.a();
            }
            Integer num2 = this.f7884d.u;
            if (!(num2 == num || (num2 != null && num2.equals(num)))) {
                this.f7884d.u = num;
            }
        }
    }

    public final void f(String str) {
        synchronized (this) {
            this.f7886f.f7906d.b(str);
            this.f7884d.f7997d = str;
        }
    }

    public final void g(String str, double d2) {
        double d3;
        synchronized (this) {
            SharedPreferences.Editor editorEdit = this.f7886f.b.edit();
            int iC = 1;
            if (str.equals(this.f7886f.m.c())) {
                iC = 1 + this.f7886f.n.c();
                editorEdit.putInt(this.f7886f.n.b, iC);
                r3 r3Var = this.f7886f.o;
                String string = r3Var.a.getString(r3Var.b, null);
                if (string != null) {
                    try {
                        d3 = Double.parseDouble(string);
                    } catch (NumberFormatException unused) {
                        d3 = 0.0d;
                    }
                    d2 += d3;
                    editorEdit.putString(this.f7886f.o.b, Double.toString(d2));
                    editorEdit.apply();
                } else {
                    d3 = 0.0d;
                    d2 += d3;
                    editorEdit.putString(this.f7886f.o.b, Double.toString(d2));
                    editorEdit.apply();
                }
            }
            editorEdit.putString(this.f7886f.m.b, str);
            editorEdit.putInt(this.f7886f.n.b, 1);
            editorEdit.putString(this.f7886f.o.b, Double.toString(d2));
            editorEdit.remove(this.f7886f.p.b);
            editorEdit.remove(this.f7886f.q.b);
            editorEdit.apply();
            s5 s5Var = this.f7884d;
            s5Var.m = str;
            s5Var.p = null;
            s5Var.q = null;
            this.f7884d.n = Integer.valueOf(iC);
            this.f7884d.o = Double.valueOf(d2);
        }
    }

    public final boolean h(boolean z) {
        boolean z2;
        synchronized (this) {
            this.f7886f.w.b(z);
            Boolean bool = this.f7884d.w;
            Boolean bool2 = p6.f7957d;
            if (bool == null) {
                bool2.getClass();
                bool = bool2;
            }
            z2 = z != bool.booleanValue();
            this.f7884d.w = Boolean.valueOf(z);
        }
        return z2;
    }

    public final void i() {
        double d2;
        double d3;
        String strC = this.f7886f.c.c();
        if (strC != null && strC.length() > 0) {
            this.b.o = strC.concat(" 13.3.0/Android");
        }
        String strA = this.f7886f.a();
        if (strA != null) {
            this.f7884d.f7997d = strA;
        }
        this.f7884d.c = Long.valueOf(this.f7886f.b());
        int iC = this.f7886f.f7908f.c();
        this.f7884d.f7998e = Integer.valueOf(a(7, iC));
        this.f7884d.f7999f = Integer.valueOf(a(30, iC));
        int iC2 = this.f7886f.h.c();
        if (iC2 > 0) {
            this.f7884d.h = Integer.valueOf(iC2);
        }
        long jC = this.f7886f.i.c();
        if (jC > 0) {
            this.f7884d.i = Long.valueOf(jC);
        }
        long jC2 = this.f7886f.j.c();
        if (jC2 > 0) {
            this.f7884d.j = Long.valueOf(jC2);
        }
        long jC3 = this.f7886f.k.c();
        if (jC3 > 0) {
            this.f7884d.k = Long.valueOf(jC3);
        }
        long jC4 = this.f7886f.l.c();
        if (jC4 > 0) {
            this.f7884d.l = Long.valueOf(jC4);
        }
        String strC2 = this.f7886f.m.c();
        if (strC2 != null) {
            this.f7884d.m = strC2;
        }
        int iC3 = this.f7886f.n.c();
        if (iC3 > 0) {
            this.f7884d.n = Integer.valueOf(iC3);
        }
        r3 r3Var = this.f7886f.o;
        String string = r3Var.a.getString(r3Var.b, null);
        if (string != null) {
            try {
                d2 = Double.parseDouble(string);
            } catch (NumberFormatException unused) {
                d2 = 0.0d;
            }
        } else {
            d2 = 0.0d;
        }
        if (d2 != 0.0d) {
            this.f7884d.o = Double.valueOf(d2);
        }
        long jC5 = this.f7886f.p.c();
        if (jC5 > 0) {
            this.f7884d.p = Long.valueOf(jC5);
        }
        r3 r3Var2 = this.f7886f.q;
        String string2 = r3Var2.a.getString(r3Var2.b, null);
        if (string2 != null) {
            try {
                d3 = Double.parseDouble(string2);
            } catch (NumberFormatException unused2) {
                d3 = 0.0d;
            }
        } else {
            d3 = 0.0d;
        }
        if (d3 != 0.0d) {
            this.f7884d.q = Double.valueOf(d3);
        }
        String strC3 = this.f7886f.f7909g.c();
        if (strC3 != null) {
            try {
                try {
                    byte[] bArrDecode = Base64.decode(strC3, 2);
                    if (bArrDecode == null) {
                        throw new NullPointerException("bytes == null");
                    }
                    z7 z7Var = new z7(new n().e(bArrDecode, bArrDecode.length));
                    j6 j6VarA = i3.a();
                    long jD = z7Var.d();
                    n nVar = null;
                    w5 w5Var = null;
                    while (true) {
                        int iG = z7Var.g();
                        if (iG == -1) {
                            break;
                        }
                        if (iG != 1) {
                            int i = z7Var.h;
                            Object objD = s1.a(i).d(z7Var);
                            if (w5Var == null) {
                                nVar = new n();
                                w5Var = new w5(nVar);
                            }
                            try {
                                s1.a(i).e(w5Var, iG, objD);
                            } catch (IOException unused3) {
                                throw new AssertionError();
                            }
                        } else {
                            j6VarA.add((b0) b0.c.d(z7Var));
                        }
                    }
                    z7Var.c(jD);
                    s0 s0Var = new s0(j6VarA, nVar != null ? new c1(nVar.clone().k()) : c1.b);
                    this.f7884d.f8000g.clear();
                    this.f7884d.f8000g.addAll(s0Var.f7988d);
                } catch (IOException unused4) {
                    this.f7886f.f7909g.a();
                }
            } catch (IllegalArgumentException unused5) {
                this.f7886f.f7909g.a();
            }
        }
        this.f7884d.t = this.f7886f.r.c();
        int iIntValue = Integer.valueOf(this.f7886f.s.c()).intValue();
        this.f7884d.u = iIntValue != -1 ? Integer.valueOf(iIntValue) : null;
        String strC4 = this.f7886f.t.c();
        if (strC4 != null) {
            try {
                try {
                    byte[] bArrDecode2 = Base64.decode(strC4, 2);
                    if (bArrDecode2 == null) {
                        throw new NullPointerException("bytes == null");
                    }
                    z7 z7Var2 = new z7(new n().e(bArrDecode2, bArrDecode2.length));
                    j6 j6VarA2 = i3.a();
                    long jD2 = z7Var2.d();
                    n nVar2 = null;
                    w5 w5Var2 = null;
                    while (true) {
                        int iG2 = z7Var2.g();
                        if (iG2 == -1) {
                            break;
                        }
                        if (iG2 != 1) {
                            int i2 = z7Var2.h;
                            Object objD2 = s1.a(i2).d(z7Var2);
                            if (w5Var2 == null) {
                                nVar2 = new n();
                                w5Var2 = new w5(nVar2);
                            }
                            try {
                                s1.a(i2).e(w5Var2, iG2, objD2);
                            } catch (IOException unused6) {
                                throw new AssertionError();
                            }
                        } else {
                            j6VarA2.add(((n) z7Var2.a).j(z7Var2.a()));
                        }
                    }
                    z7Var2.c(jD2);
                    k2 k2Var = new k2(j6VarA2, nVar2 != null ? new c1(nVar2.clone().k()) : c1.b);
                    this.f7884d.v.clear();
                    this.f7884d.v.addAll(k2Var.f7932d);
                } catch (IllegalArgumentException unused7) {
                    this.f7886f.t.a();
                }
            } catch (IOException unused8) {
                this.f7886f.t.a();
            }
        }
        String strC5 = this.f7886f.u.c();
        c cVar = this.f7886f.v;
        boolean zBooleanValue = Boolean.valueOf(cVar.a.getBoolean(cVar.b, false)).booleanValue();
        if (strC5 != null) {
            s5 s5Var = this.f7884d;
            s5Var.r = strC5;
            s5Var.s = Boolean.valueOf(zBooleanValue);
        } else {
            s5 s5Var2 = this.f7884d;
            s5Var2.r = null;
            s5Var2.s = null;
        }
        s5 s5Var3 = this.f7884d;
        c cVar2 = this.f7886f.w;
        s5Var3.w = Boolean.valueOf(cVar2.a.getBoolean(cVar2.b, false));
    }

    public final void j(String str) {
        synchronized (this) {
            this.f7886f.r.b(str);
            String str2 = this.f7884d.t;
            if (!(str2 == str || (str2 != null && str2.equals(str)))) {
                this.f7884d.t = str;
            }
        }
    }

    public final void k() {
        Window window;
        synchronized (this) {
            try {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((WindowManager) this.f7885e.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                WeakReference weakReference = t.f8002e.a;
                Activity activityA = (Activity) (weakReference != null ? weakReference.get() : null);
                if (activityA == null) {
                    activityA = t.a();
                }
                if (activityA != null && (window = activityA.getWindow()) != null) {
                    int i = displayMetrics.heightPixels;
                    Rect rect = new Rect();
                    window.getDecorView().getWindowVisibleDisplayFrame(rect);
                    displayMetrics.heightPixels = i - rect.top;
                }
                this.b.h = Integer.valueOf(displayMetrics.densityDpi);
                this.b.i = Integer.valueOf(displayMetrics.widthPixels);
                this.b.j = Integer.valueOf(displayMetrics.heightPixels);
            } catch (Exception unused) {
            }
        }
    }

    public final void l() {
        j6 j6Var = this.f7884d.f8000g;
        c1 c1Var = c1.b;
        Objects.requireNonNull(c1Var, "unknownFields == null");
        List listA = i3.a("pushes", (AbstractList) j6Var);
        n nVar = new n();
        try {
            w5 w5Var = new w5(nVar);
            b0.c.c().e(w5Var, 1, listA);
            w5Var.b(c1Var);
            this.f7886f.f7909g.b(Base64.encodeToString(nVar.k(), 2));
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    public final void m() {
        synchronized (this) {
            int iC = this.f7886f.h.c() + 1;
            this.f7886f.h.b(iC);
            this.f7884d.h = Integer.valueOf(iC);
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            b3 b3Var = this.f7886f.k;
            if (lValueOf != null) {
                b3Var.getClass();
                b3Var.b(lValueOf.longValue());
            } else {
                b3Var.a();
            }
            this.f7884d.k = lValueOf;
        }
    }
}
