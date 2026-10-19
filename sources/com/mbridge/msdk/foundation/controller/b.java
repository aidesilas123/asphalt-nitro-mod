package com.mbridge.msdk.foundation.controller;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ai;
import com.mbridge.msdk.foundation.tools.g;
import com.mbridge.msdk.foundation.tools.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: MBSDKContext.java */
/* JADX INFO: loaded from: classes4.dex */
public class b {
    public static final String a = "b";
    public static List<String> b = new ArrayList();
    public static HashMap<String, String> c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f7027d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f7028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7029f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7030g;
    private String h;
    private JSONObject j;
    private int k;
    private int m;
    private WeakReference<Context> n;
    private WeakReference<Activity> o;
    private String r;
    private int i = 0;
    private boolean l = false;
    private JSONObject p = new JSONObject();
    private ConcurrentHashMap<String, String> q = new ConcurrentHashMap<>();
    private final com.mbridge.msdk.foundation.tools.d s = new com.mbridge.msdk.foundation.tools.d();

    /* JADX INFO: compiled from: MBSDKContext.java */
    public interface a {
    }

    private b() {
    }

    public static synchronized b d() {
        if (f7027d == null) {
            f7027d = new b();
        }
        return f7027d;
    }

    public final BitmapDrawable a(String str, int i) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || (concurrentHashMap = this.q) == null || !concurrentHashMap.containsKey(str) || !ac.a().a("w_m_r_l", true)) {
            return null;
        }
        String str2 = this.q.get(str);
        BitmapDrawable bitmapDrawableN = af.n(str2);
        q.a(str, i, TextUtils.isEmpty(str2) ? 2 : 1, TextUtils.isEmpty(str2) ? "get watermark failed" : bitmapDrawableN != null ? "" : "str to bitmap failed", bitmapDrawableN == null ? 2 : 1, str2);
        return bitmapDrawableN;
    }

    public final WeakReference<Activity> a() {
        return this.o;
    }

    public final void a(int i) {
        this.k = i;
    }

    public final void a(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            String name = activity.getClass().getName();
            WeakReference<Context> weakReference = this.n;
            if (weakReference != null) {
                Context context = weakReference.get();
                if ((context instanceof Activity) && ((Activity) context).getClass().getName().equals(name)) {
                    this.n.clear();
                }
            }
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    public final void a(Context context) {
        if (context instanceof Activity) {
            this.n = new WeakReference<>(context);
        }
    }

    public final void a(a aVar, final Handler handler) {
        if (this.l) {
            return;
        }
        try {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.g() && com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                Object objB = ai.b(this.f7028e, MBridgeConstans.SP_GA_ID, "");
                Object objB2 = ai.b(this.f7028e, MBridgeConstans.SP_GA_ID_LIMIT, 0);
                if (objB instanceof String) {
                    String str = (String) objB;
                    if (TextUtils.isEmpty(str)) {
                        g.a();
                    } else {
                        g.a(str);
                    }
                    if (objB2 instanceof Integer) {
                        g.a(((Integer) objB2).intValue());
                    }
                }
            }
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
        try {
            JSONObject jSONObject = new JSONObject();
            this.j = jSONObject;
            jSONObject.put("webgl", 0);
        } catch (JSONException e3) {
            aa.d(a, e3.getMessage());
        }
        new Thread(new Runnable() { // from class: com.mbridge.msdk.foundation.controller.b.1
            @Override // java.lang.Runnable
            public final void run() {
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                    try {
                        w.d(b.this.f7028e.getPackageManager().getApplicationInfo("com.android.vending", 0).enabled ? 1 : 2);
                    } catch (PackageManager.NameNotFoundException unused) {
                        w.d(0);
                    } catch (Throwable th) {
                        aa.d(b.a, th.getMessage());
                    }
                }
                try {
                    e eVarB = f.a().b(b.d().h());
                    if (eVarB == null) {
                        eVarB = f.a().b();
                    }
                    Message messageObtain = Message.obtain();
                    messageObtain.obj = eVarB;
                    messageObtain.what = 9;
                    handler.sendMessage(messageObtain);
                } catch (Exception e4) {
                    aa.d(b.a, e4.getMessage());
                }
                try {
                    w.c(b.this.f7028e);
                    f.a(b.this.f7028e, b.this.f7029f);
                } catch (Exception e5) {
                    aa.d(b.a, e5.getMessage());
                }
            }
        }).start();
    }

    public final void a(String str) {
        try {
            if (this.q != null && !TextUtils.isEmpty(str) && this.q.containsKey(str)) {
                this.q.remove(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(String str, JSONObject jSONObject) {
        if (ac.a().a("w_m_r_l", true)) {
            try {
                if (this.p == null) {
                    this.p = jSONObject;
                } else if (jSONObject != null) {
                    Iterator<String> itKeys = jSONObject.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        this.p.put(next, jSONObject.get(next));
                    }
                }
                if (this.p.has(MBridgeConstans.EXTRA_KEY_WM)) {
                    if (this.q == null) {
                        this.q = new ConcurrentHashMap<>();
                    }
                    this.q.put(str, this.p.getString(MBridgeConstans.EXTRA_KEY_WM));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final void a(WeakReference<Activity> weakReference) {
        this.o = weakReference;
    }

    public final void a(JSONObject jSONObject) {
        this.j = jSONObject;
    }

    public final String b() {
        try {
            Context context = this.f7028e;
            if (context != null) {
                return context.getPackageName();
            }
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final void b(int i) {
        this.m = i;
    }

    public final void b(Context context) {
        this.f7028e = context;
    }

    public final void b(String str) {
        Context context;
        try {
            this.r = str;
            if (TextUtils.isEmpty(str) || (context = this.f7028e) == null) {
                return;
            }
            ai.a(context, "applicationIds", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final Context c() {
        WeakReference<Context> weakReference = this.n;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public final void c(int i) {
        this.i = i;
    }

    public final void c(String str) {
        Context context;
        try {
            this.f7029f = str;
            if (TextUtils.isEmpty(str) || (context = this.f7028e) == null) {
                return;
            }
            ai.a(context, "sp_appId", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.h = str;
            Context context = this.f7028e;
            if (context != null) {
                ai.a(context, "sp_wx_appKey", str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final int e() {
        return this.m;
    }

    public final void e(String str) {
        Context context;
        try {
            this.f7030g = str;
            if (TextUtils.isEmpty(str) || (context = this.f7028e) == null) {
                return;
            }
            ai.a(context, "sp_appKey", str);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final com.mbridge.msdk.foundation.tools.d f() {
        return this.s;
    }

    public final Context g() {
        return this.f7028e;
    }

    public final String h() {
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (!TextUtils.isEmpty(this.f7029f)) {
            return this.f7029f;
        }
        Context context = this.f7028e;
        if (context != null) {
            return (String) ai.b(context, "sp_appId", "");
        }
        return "";
    }

    public final String i() {
        if (!TextUtils.isEmpty(this.h)) {
            return this.h;
        }
        Context context = this.f7028e;
        if (context != null) {
            return (String) ai.b(context, "sp_wx_appKey", "");
        }
        return null;
    }

    public final String j() {
        if (!TextUtils.isEmpty(this.f7030g)) {
            return this.f7030g;
        }
        Context context = this.f7028e;
        if (context != null) {
            return (String) ai.b(context, "sp_appKey", "");
        }
        return null;
    }

    public final int k() {
        return this.i;
    }

    public final JSONObject l() {
        return this.j;
    }
}
