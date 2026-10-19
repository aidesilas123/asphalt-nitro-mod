package com.com.bytedance.overseas.sdk.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.z;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.drive.DriveFile;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: GPDownLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static Boolean f1880e;
    protected com.bytedance.sdk.openadsdk.core.model.c a;
    protected q b;
    protected String c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f1883g;
    private final WeakReference<Context> h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f1881d = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final AtomicBoolean f1882f = new AtomicBoolean(false);
    private boolean i = false;

    public b(Context context, q qVar, String str) {
        this.h = new WeakReference<>(context);
        this.b = qVar;
        this.a = qVar.aa();
        this.c = str;
        l.b("GPDownLoader", str, "====tag===" + str);
        if (o.a() == null) {
            o.a(context);
        }
    }

    public static void a(Context context) {
        Iterator<ResolveInfo> it;
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("market://details"));
        try {
            it = context.getPackageManager().queryIntentActivities(intent, 65536).iterator();
        } catch (Throwable unused) {
            f1880e = Boolean.FALSE;
        }
        while (it.hasNext()) {
            if (it.next().activityInfo.packageName.equals("com.android.vending")) {
                f1880e = Boolean.TRUE;
                return;
            }
            f1880e = Boolean.FALSE;
        }
        f1880e = Boolean.FALSE;
    }

    private void a(Map<String, Object> map) {
        q qVar = this.b;
        if (qVar != null && qVar.be() == 0) {
            q qVar2 = this.b;
            map.put("auto_click", Boolean.valueOf((qVar2 == null || qVar2.c()) ? false : true));
        }
        q qVar3 = this.b;
        if (qVar3 != null && qVar3.be() == 0) {
            map.put("dpl_probability_jump", Boolean.valueOf(this.f1883g >= 11));
        }
        map.put("can_query_install", 1);
    }

    public static boolean a(Context context, String str, String str2, String str3, q qVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            Boolean bool = f1880e;
            jSONObject.put("storeOpenType", (bool == null || !bool.booleanValue()) ? o2.h.K : MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        } catch (JSONException e2) {
            l.c("GPDownLoader", "gotoGooglePlayByPackageNameAndUrl json error", e2);
        }
        String strReplace = (TextUtils.isEmpty(str3) || !str3.contains("_landingpage")) ? str3 : str3.replace("_landingpage", "");
        if (!TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                context.startActivity(intent);
                l.c("GPDownLoader", "Goto Google Play");
                l.c("GPDownLoader", "download_url is : ->" + str);
                com.bytedance.sdk.openadsdk.b.c.b(qVar, strReplace, "store_open", jSONObject);
                l.b("GPDownLoader", strReplace, jSONObject.toString());
                return true;
            } catch (Throwable unused) {
            }
        }
        if (context != null && str2 != null && !TextUtils.isEmpty(str2)) {
            l.c("GPDownLoader", "gotoGooglePlay :market://details?id=" + str2);
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW");
                Uri uri = Uri.parse("market://details?id=" + str2);
                intent2.setData(uri);
                Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent2, 65536).iterator();
                while (it.hasNext()) {
                    if (it.next().activityInfo.packageName.equals("com.android.vending") && context.getPackageManager().getLaunchIntentForPackage("com.android.vending") != null) {
                        Intent intent3 = new Intent("android.intent.action.VIEW");
                        intent3.setData(uri);
                        intent3.setPackage("com.android.vending");
                        if (!(context instanceof Activity)) {
                            intent3.setFlags(DriveFile.MODE_READ_ONLY);
                        }
                        context.startActivity(intent3);
                        jSONObject.put("storeOpenType", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
                        com.bytedance.sdk.openadsdk.b.c.b(qVar, strReplace, "store_open", jSONObject);
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                ApmHelper.reportCustomError("gotoGooglePlayByPackageNameAndUrl error", "gotoGooglePlay", th);
            }
        }
        return false;
    }

    @Override // com.com.bytedance.overseas.sdk.a.c
    public void a(int i) {
        this.f1883g = i;
    }

    @Override // com.com.bytedance.overseas.sdk.a.c
    public void a(boolean z) {
        this.i = z;
    }

    @Override // com.com.bytedance.overseas.sdk.a.c
    public boolean a() {
        Intent intentA;
        if (this.a == null) {
            return false;
        }
        q qVar = this.b;
        if (qVar != null && qVar.ap() == 0) {
            return false;
        }
        String strC = this.a.c();
        if (TextUtils.isEmpty(strC) || !ac.b(c(), strC) || (intentA = ac.a(c(), strC)) == null) {
            return false;
        }
        intentA.putExtra("START_ONLY_FOR_ANDROID", true);
        try {
            c().startActivity(intentA);
            HashMap map = new HashMap();
            a(map);
            com.bytedance.sdk.openadsdk.b.c.a(this.b, this.c, "click_open", map);
            return true;
        } catch (Throwable th) {
            l.e("GPDownLoader", th.getMessage());
            return false;
        }
    }

    public boolean a(Context context, String str, String str2) {
        return a(context, str, str2, this.c, this.b);
    }

    public boolean b() {
        com.bytedance.sdk.openadsdk.core.d.a(this.b, this.c, 1, null);
        if (this.b.ab() == null) {
            com.bytedance.sdk.openadsdk.core.d.a(this.b, this.c, -1, null);
            return false;
        }
        String strA = this.b.ab().a();
        if (TextUtils.isEmpty(strA)) {
            q qVar = this.b;
            com.bytedance.sdk.openadsdk.core.d.a(qVar, this.c, -2, qVar.ab().d());
        } else {
            Uri uri = Uri.parse(strA);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            ac.b bVarA = ac.a(c(), intent);
            if (bVarA.b > 0) {
                if (!(c() instanceof Activity)) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                }
                try {
                    Map<String, Object> map = new HashMap<>();
                    a(map);
                    ComponentName componentNameResolveActivity = intent.resolveActivity(c().getPackageManager());
                    if (componentNameResolveActivity != null) {
                        map.put("resolved_activity", componentNameResolveActivity.getPackageName() + "/" + componentNameResolveActivity.getClassName());
                    }
                    map.put("matched_count", Integer.valueOf(bVarA.b));
                    map.put("url", strA);
                    if (bVarA.a != null) {
                        map.put("target_component", bVarA.a.getPackageName() + "/" + bVarA.a.getClassName());
                        intent.setComponent(bVarA.a);
                    }
                    com.bytedance.sdk.openadsdk.b.c.a(this.b, this.c, "open_url_app", map);
                    c().startActivity(intent);
                    com.bytedance.sdk.openadsdk.b.l.a().a(map).a(this.b, this.c);
                    com.bytedance.sdk.openadsdk.b.c.a("dp_start_act_success", this.b, this.c, map);
                    return true;
                } catch (Throwable th) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("exception", th.getMessage());
                        jSONObject.put(SDKConstants.PARAM_INTENT, intent.toString());
                        jSONObject.put("can_query_install", 1);
                    } catch (Exception unused) {
                    }
                    com.bytedance.sdk.openadsdk.core.d.a(this.b, this.c, -4, jSONObject);
                }
            } else {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(SDKConstants.PARAM_INTENT, intent.toString());
                    jSONObject2.put("can_query_install", 1);
                } catch (Exception unused2) {
                }
                com.bytedance.sdk.openadsdk.core.d.a(this.b, this.c, -3, jSONObject2);
            }
        }
        if (this.f1881d && !this.f1882f.get()) {
            return false;
        }
        this.f1881d = true;
        Map<String, Object> map2 = new HashMap<>();
        a(map2);
        com.bytedance.sdk.openadsdk.b.c.a(this.b, this.c, "open_fallback_url", map2);
        return false;
    }

    protected Context c() {
        WeakReference<Context> weakReference = this.h;
        return (weakReference == null || weakReference.get() == null) ? o.a() : this.h.get();
    }

    @Override // com.com.bytedance.overseas.sdk.a.c
    public void d() {
        if (c() == null) {
            return;
        }
        if (b()) {
            this.f1882f.set(true);
            this.b.c(true);
            return;
        }
        if (a()) {
            this.b.c(true);
            return;
        }
        if (e()) {
            this.b.c(true);
        } else {
            if (this.b.aa() != null || this.b.P() == null) {
                return;
            }
            z.a(c(), this.b.P(), this.b, ac.a(this.c), this.c, true);
            this.b.c(true);
        }
    }

    @Override // com.com.bytedance.overseas.sdk.a.c
    public boolean e() {
        this.f1882f.set(true);
        return this.a != null && a(c(), this.a.a(), this.a.c());
    }
}
