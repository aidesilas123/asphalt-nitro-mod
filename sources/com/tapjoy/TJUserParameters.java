package com.tapjoy;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class TJUserParameters {
    public static TJUserParameters a;
    public Context b;
    public int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7816d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7817e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public TJSegment f7818f = null;

    public static TJUserParameters getInstance() {
        if (a == null) {
            a = new TJUserParameters();
        }
        return a;
    }

    public final HashMap a() {
        String str;
        HashMap map = new HashMap();
        boolean z = false;
        if (this.c > 0) {
            String strB = b();
            int iC = c();
            this.f7816d = this.c;
            Context context = this.b;
            if (context != null) {
                try {
                    this.f7817e = context.getPackageManager().getPackageInfo(this.b.getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException e2) {
                    Log.e("", e2.getMessage());
                }
            }
            if ((strB != null && !this.f7817e.equals(strB)) || iC != this.c) {
                Context context2 = this.b;
                if (context2 != null && this.f7816d > 0) {
                    new v(context2, "tjcPrefrences").g("pref_max_level_cache", Integer.valueOf(this.f7816d));
                }
                if (this.b != null && (str = this.f7817e) != null && !str.isEmpty()) {
                    new v(this.b, "tjcPrefrences").g("pref_app_version", this.f7817e);
                }
                z = true;
            }
        }
        if (z) {
            TapjoyUtil.safePut(map, "max_level", this.c + "", true);
        }
        return map;
    }

    public String b() {
        return this.f7817e;
    }

    public int c() {
        return this.f7816d;
    }

    public int d() {
        return this.c;
    }

    public TJSegment e() {
        TJSegment tJSegment = this.f7818f;
        return tJSegment == null ? TJSegment.f7813d : tJSegment;
    }

    public synchronized void f(Context context) {
        TJSegment tJSegment;
        if (context != null) {
            if (this.b == null) {
                this.b = context;
                TJUserParameters tJUserParameters = getInstance();
                v vVar = new v(tJUserParameters.b, "tjcPrefrences");
                if (tJUserParameters.c <= 0 && vVar.a("pref_max_level")) {
                    tJUserParameters.c = vVar.c("pref_max_level", -1);
                }
                if (tJUserParameters.f7816d <= 0 && vVar.a("pref_max_level_cache")) {
                    tJUserParameters.f7816d = vVar.c("pref_max_level_cache", -1);
                }
                if (tJUserParameters.f7817e == null && vVar.a("pref_app_version")) {
                    tJUserParameters.f7817e = vVar.d("pref_app_version", null);
                }
                if (tJUserParameters.f7818f == null && vVar.a("pref_user_segment")) {
                    tJUserParameters.f7818f = TJSegment.valueOf(vVar.c("pref_user_segment", TJSegment.f7813d.e()));
                }
                TJUserParameters tJUserParameters2 = getInstance();
                Context context2 = tJUserParameters2.b;
                if (context2 != null && tJUserParameters2.c > 0) {
                    new v(context2, "tjcPrefrences").g("pref_max_level", Integer.valueOf(tJUserParameters2.c));
                }
                TJUserParameters tJUserParameters3 = getInstance();
                Context context3 = tJUserParameters3.b;
                if (context3 != null && (tJSegment = tJUserParameters3.f7818f) != null) {
                    if (tJSegment == TJSegment.f7813d) {
                        new v(context3, "tjcPrefrences").f("pref_user_segment");
                    } else {
                        new v(context3, "tjcPrefrences").g("pref_user_segment", Integer.valueOf(tJUserParameters3.f7818f.e()));
                    }
                }
            }
        }
    }

    public void g(int i) {
        if (i <= 0) {
            return;
        }
        this.c = i;
        Context context = this.b;
        if (context == null || i <= 0) {
            return;
        }
        new v(context, "tjcPrefrences").g("pref_max_level", Integer.valueOf(this.c));
    }

    public void h(TJSegment tJSegment) {
        this.f7818f = tJSegment;
        Context context = this.b;
        if (context == null || tJSegment == null) {
            return;
        }
        if (tJSegment == TJSegment.f7813d) {
            new v(context, "tjcPrefrences").f("pref_user_segment");
        } else {
            new v(context, "tjcPrefrences").g("pref_user_segment", Integer.valueOf(this.f7818f.e()));
        }
    }
}
