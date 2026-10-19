package com.json;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.json.environment.thread.IronSourceThreadManager;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class w4 {
    private final e5 a;
    private final ConcurrentHashMap<String, Object> b;
    private final AtomicBoolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f6707d;

    class a implements Runnable {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                w4.this.n(this.a);
            } catch (Exception unused) {
            }
            w4.this.c.set(false);
        }
    }

    private static class b {
        static volatile w4 a = new w4(null);
    }

    private w4() {
        this.c = new AtomicBoolean(false);
        this.f6707d = new AtomicBoolean(false);
        this.a = e9.h().c();
        this.b = new ConcurrentHashMap<>();
    }

    /* synthetic */ w4(a aVar) {
        this();
    }

    static w4 a() {
        return b.a;
    }

    private void c(Context context) {
        if (this.c.get()) {
            return;
        }
        try {
            this.c.set(true);
            IronSourceThreadManager.INSTANCE.postMediationBackgroundTask(new a(context));
        } catch (Exception unused) {
            this.c.set(false);
        }
    }

    private void e(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        try {
            if (obj instanceof Boolean) {
                obj = Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0);
            }
            this.b.put(str, obj);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean h(String str) {
        if (str == null) {
            return false;
        }
        try {
            return this.b.containsKey(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void m(Context context) {
        if (context == null || this.f6707d.getAndSet(true)) {
            return;
        }
        e("auid", this.a.s(context));
        e("model", this.a.e());
        e(v4.q, this.a.g());
        e(v4.x, this.a.l());
        String strO = this.a.o();
        if (strO != null) {
            e(v4.y, strO.replaceAll("[^0-9/.]", ""));
            e(v4.z, strO);
        }
        e(v4.a, String.valueOf(this.a.k()));
        String strJ = this.a.j(context);
        if (!TextUtils.isEmpty(strJ)) {
            e(v4.s0, strJ);
        }
        String strE = k0.e(context);
        if (!TextUtils.isEmpty(strE)) {
            e(v4.n, strE);
        }
        String strI = this.a.i(context);
        if (!TextUtils.isEmpty(strI)) {
            e(v4.f0, strI);
        }
        e("bid", context.getPackageName());
        e(v4.s, String.valueOf(this.a.h(context)));
        e(v4.P, "2.0");
        e(v4.Q, Long.valueOf(k0.f(context)));
        e(v4.O, Long.valueOf(k0.d(context)));
        e(v4.f6682d, k0.b(context));
        e(v4.C, Integer.valueOf(k2.e(context)));
        e(v4.M, k2.f(context));
        e("stid", ja.c(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(Context context) {
        if (context == null) {
            return;
        }
        try {
            String strP = this.a.p(context);
            if (!TextUtils.isEmpty(strP)) {
                e(v4.w0, strP);
            }
            String strA = this.a.a(context);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            e(v4.p, Boolean.valueOf(Boolean.parseBoolean(strA)));
        } catch (Exception unused) {
        }
    }

    private void o(Context context) {
        if (context == null) {
            return;
        }
        c(context);
        String strD = this.a.D(context);
        if (!TextUtils.isEmpty(strD)) {
            e("asid", strD);
        } else if (h("asid")) {
            j("asid");
        }
        String language = context.getResources().getConfiguration().locale.getLanguage();
        if (!TextUtils.isEmpty(language)) {
            e(v4.o, language.toUpperCase());
        }
        String strB = this.a.b();
        if (!TextUtils.isEmpty(strB)) {
            e("tz", strB);
        }
        String strB2 = l2.b(context);
        if (!TextUtils.isEmpty(strB2) && !strB2.equals("none")) {
            e(v4.j, strB2);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            e("vpn", Boolean.valueOf(l2.d(context)));
        }
        String strN = this.a.n(context);
        if (!TextUtils.isEmpty(strN)) {
            e("icc", strN);
        }
        int iY = this.a.y(context);
        if (iY >= 0) {
            e(v4.L0, Integer.valueOf(iY));
        }
        e(v4.M0, this.a.A(context));
        e(v4.N0, this.a.H(context));
        e(v4.U, Float.valueOf(this.a.m(context)));
        e(v4.l, String.valueOf(this.a.n()));
        e(v4.F, Integer.valueOf(this.a.d()));
        e(v4.E, Integer.valueOf(this.a.j()));
        e(v4.z0, String.valueOf(this.a.i()));
        e(v4.I0, String.valueOf(this.a.p()));
        e("mcc", Integer.valueOf(k2.b(context)));
        e("mnc", Integer.valueOf(k2.c(context)));
        e(v4.H, Boolean.valueOf(this.a.c()));
        e(v4.f6685g, Boolean.valueOf(this.a.G(context)));
        e(v4.h, Integer.valueOf(this.a.l(context)));
        e(v4.b, Boolean.valueOf(this.a.c(context)));
        e(v4.A, Boolean.valueOf(this.a.d(context)));
        e(v4.D, Boolean.valueOf(this.a.f()));
        e(v4.N, String.valueOf(this.a.h()));
        e("bat", Integer.valueOf(this.a.w(context)));
        e("lpm", Boolean.valueOf(this.a.q(context)));
        e(v4.c, this.a.f(context));
        e(v4.R, this.a.s());
    }

    protected void f(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Object obj = this.b.get(str);
            if (!(obj instanceof JSONObject)) {
                e(str, jSONObject);
                return;
            }
            JSONObject jSONObject2 = (JSONObject) obj;
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObject2.putOpt(next, jSONObject.opt(next));
            }
            e(str, jSONObject2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void g(Map<String, Object> map) {
        if (map == null) {
            return;
        }
        try {
            for (String str : map.keySet()) {
                if (map.containsKey(str)) {
                    e(str, map.get(str));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected JSONObject i(Context context) throws JSONException {
        o(context);
        return new JSONObject(y4.a(this.b));
    }

    protected void j(String str) {
        if (str == null) {
            return;
        }
        try {
            this.b.remove(str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected void k(String str, Object obj) {
        e(str, obj);
    }

    protected void l(Context context) {
        try {
            m(context);
            o(context);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
