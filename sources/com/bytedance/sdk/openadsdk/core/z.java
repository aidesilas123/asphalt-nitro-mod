package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.b;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity;
import com.bytedance.sdk.openadsdk.activity.TTVideoLandingPageLink2Activity;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.multipro.b.a;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: WebHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class z {
    private static boolean a;

    private static Intent a(Context context, String str, com.bytedance.sdk.openadsdk.core.model.q qVar, int i, @Nullable PAGNativeAd pAGNativeAd, PangleAd pangleAd, String str2, boolean z) {
        return a(context, str, qVar, i, pAGNativeAd, pangleAd, str2, z, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Intent a(Context context, String str, com.bytedance.sdk.openadsdk.core.model.q qVar, int i, @Nullable PAGNativeAd pAGNativeAd, PangleAd pangleAd, String str2, boolean z, boolean z2) {
        Intent intent;
        if (z2 || !com.bytedance.sdk.openadsdk.core.model.t.b(qVar) || (pAGNativeAd == 0 && pangleAd == null)) {
            intent = (z2 || qVar.M() != 3 || !(qVar.o() == 2 || (qVar.o() == 1 && a)) || qVar.bn()) ? new Intent(context, (Class<?>) TTLandingPageActivity.class) : new Intent(context, (Class<?>) TTVideoLandingPageLink2Activity.class);
        } else {
            intent = new Intent(context, (Class<?>) TTPlayableLandingPageActivity.class);
            intent.putExtra("ad_pending_download", a(qVar, z));
            String strE = com.bytedance.sdk.openadsdk.core.model.t.e(qVar);
            if (!TextUtils.isEmpty(strE)) {
                if (strE.contains("?")) {
                    str = strE + "&orientation=portrait";
                } else {
                    str = strE + "?orientation=portrait";
                }
            }
        }
        intent.putExtra("url", str);
        intent.putExtra("gecko_id", qVar.af());
        intent.putExtra("web_title", qVar.V());
        intent.putExtra("sdk_version", BuildConfig.VERSION_CODE);
        intent.putExtra("adid", qVar.Y());
        intent.putExtra("log_extra", qVar.ac());
        com.bytedance.sdk.openadsdk.multipro.b.a aVarC = null;
        intent.putExtra(CampaignEx.JSON_KEY_ICON_URL, qVar.N() == null ? null : qVar.N().a());
        intent.putExtra("event_tag", str2);
        intent.putExtra(ShareConstants.FEED_SOURCE_PARAM, i);
        if (!(context instanceof Activity)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, qVar.ao().toString());
        } else {
            s.a().f();
            s.a().a(qVar);
        }
        if (qVar.ad() == 5 || qVar.ad() == 15 || qVar.ad() == 50) {
            if (pAGNativeAd != 0) {
                if (pAGNativeAd instanceof a.InterfaceC0147a) {
                    aVarC = ((a.InterfaceC0147a) pAGNativeAd).g();
                } else if (pAGNativeAd instanceof com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.a) {
                    aVarC = ((com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.a) pAGNativeAd).b();
                }
                if (aVarC != null) {
                    intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, aVarC.a().toString());
                }
            }
            if ((pangleAd instanceof com.bytedance.sdk.openadsdk.core.bannerexpress.c) && (aVarC = ((com.bytedance.sdk.openadsdk.core.bannerexpress.c) pangleAd).c()) != null) {
                intent.putExtra(TTAdConstant.MULTI_PROCESS_DATA, aVarC.a().toString());
            }
            if (aVarC != null) {
                intent.putExtra("video_is_auto_play", aVarC.f1841d);
                if (com.bytedance.sdk.component.utils.l.d()) {
                    com.bytedance.sdk.component.utils.l.c("videoDataModel", "videoDataModel=" + aVarC.a().toString());
                }
            }
        }
        return intent;
    }

    private static String a(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        return (!qVar.at() || qVar.au() == null) ? qVar.P() : qVar.au().i();
    }

    public static void a(boolean z) {
        a = z;
    }

    public static boolean a(Context context, com.bytedance.sdk.openadsdk.core.model.q qVar, int i, @Nullable PAGNativeAd pAGNativeAd, @Nullable PangleAd pangleAd, String str, @Nullable com.com.bytedance.overseas.sdk.a.c cVar, boolean z, int i2) {
        if (context == null || qVar == null || i == -1) {
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 1, false);
            return false;
        }
        String strA = null;
        com.bytedance.sdk.openadsdk.core.model.j jVarAb = qVar.ab();
        HashMap map = new HashMap();
        if (qVar.be() == 0) {
            map.put("dpl_probability_jump", Boolean.valueOf(i2 >= 11));
        }
        if (i2 != 0 && qVar.at()) {
            map.put("dsp_click_type", Integer.valueOf(i2));
        }
        if (jVarAb == null || TextUtils.isEmpty(jVarAb.a())) {
            strA = a(qVar);
        } else {
            if (a(context, qVar, i, str, z, map)) {
                com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 2, false);
                return true;
            }
            if (jVarAb.c() != 2 || qVar.ad() == 5 || qVar.ad() == 15) {
                strA = (jVarAb.c() != 1 || TextUtils.isEmpty(jVarAb.b())) ? a(qVar) : jVarAb.b();
            } else if (cVar != null) {
                if (cVar.a()) {
                    com.bytedance.sdk.openadsdk.b.c.a(qVar, str, "open_fallback_url", map);
                    com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 3, false);
                    return true;
                }
                if (cVar.e()) {
                    com.bytedance.sdk.openadsdk.b.c.a(qVar, str, "open_fallback_url", map);
                    com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 3, false);
                    return true;
                }
                com.bytedance.sdk.openadsdk.b.c.a(qVar, str, "open_fallback_url", map);
                com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 3, false);
                return false;
            }
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str, "open_fallback_url", map);
        }
        if (qVar.be() != 0 || TextUtils.isEmpty(strA) || !strA.contains("play.google.com/store")) {
            return a(context, qVar, i, pAGNativeAd, pangleAd, str, z, strA);
        }
        String strSubstring = strA.substring(strA.indexOf("?id=") + 4);
        com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 4, false);
        return com.com.bytedance.overseas.sdk.a.b.a(context, strA, strSubstring, str, qVar);
    }

    public static boolean a(Context context, final com.bytedance.sdk.openadsdk.core.model.q qVar, int i, PAGNativeAd pAGNativeAd, PangleAd pangleAd, final String str, boolean z, String str2) {
        if (TextUtils.isEmpty(str2) && !com.bytedance.sdk.openadsdk.core.model.t.b(qVar)) {
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 5, false);
            return false;
        }
        if (qVar.M() != 2) {
            com.bytedance.sdk.component.utils.b.a(context, a(context, str2, qVar, i, pAGNativeAd, pangleAd, str, z), null);
            a = false;
            return true;
        }
        if (!com.bytedance.sdk.component.utils.o.a(str2)) {
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 5, false);
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(str2));
            if (!(context instanceof Activity)) {
                intent.addFlags(DriveFile.MODE_READ_ONLY);
            }
            final int iB = ac.b(o.a(), intent);
            com.bytedance.sdk.component.utils.b.a(context, intent, new b.a() { // from class: com.bytedance.sdk.openadsdk.core.z.1
                @Override // com.bytedance.sdk.component.utils.b.a
                public void a() {
                    com.bytedance.sdk.openadsdk.b.c.a(qVar, str, iB, 0, true);
                }

                @Override // com.bytedance.sdk.component.utils.b.a
                public void a(Throwable th) {
                    com.bytedance.sdk.openadsdk.b.c.a(qVar, str, iB, 6, false, th.toString());
                }
            });
            return true;
        } catch (Exception e2) {
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str, 0, 6, false, e2.toString());
            return false;
        }
    }

    public static boolean a(Context context, com.bytedance.sdk.openadsdk.core.model.q qVar, int i, String str, boolean z, Map<String, Object> map) {
        if (qVar == null) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.model.j jVarAb = qVar.ab();
        if (jVarAb == null || TextUtils.isEmpty(jVarAb.a())) {
            d.a(qVar, str, jVarAb == null ? -1 : -2, jVarAb != null ? jVarAb.d() : null);
            return false;
        }
        Map<String, Object> map2 = map == null ? new HashMap<>() : map;
        String strA = jVarAb.a();
        Uri uri = Uri.parse(strA);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        if (ac.h(context)) {
            ac.b bVarA = ac.a(context, intent);
            if (bVarA.b > 0) {
                if (o.d().h()) {
                    ac.a(qVar, str);
                }
                ComponentName componentNameResolveActivity = intent.resolveActivity(context.getPackageManager());
                if (!(context instanceof Activity)) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                }
                map2.put("can_query_install", 1);
                if (componentNameResolveActivity != null) {
                    map2.put("resolved_activity", componentNameResolveActivity.getPackageName() + "/" + componentNameResolveActivity.getClassName());
                }
                map2.put("matched_count", Integer.valueOf(bVarA.b));
                map2.put("url", strA);
                if (bVarA.a != null) {
                    map2.put("target_component", bVarA.a.getPackageName() + "/" + bVarA.a.getClassName());
                    intent.setComponent(bVarA.a);
                }
                com.bytedance.sdk.openadsdk.b.c.a(qVar, str, "open_url_app", map2);
                try {
                    context.startActivity(intent);
                    com.bytedance.sdk.openadsdk.b.l.a().a(map2).a(qVar, str);
                    com.bytedance.sdk.openadsdk.b.c.a("dp_start_act_success", qVar, str, map2);
                    return true;
                } catch (Exception e2) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("exception", e2.getMessage());
                        jSONObject.put(SDKConstants.PARAM_INTENT, intent.toString());
                        jSONObject.put("can_query_install", 1);
                    } catch (Exception unused) {
                    }
                    d.a(qVar, str, -4, jSONObject);
                    if (!o.d().h()) {
                        a(context, qVar.P(), qVar, i, str, z);
                        com.bytedance.sdk.component.utils.l.c("WebHelper", "openDetailPage() -> context.startActivity(intent) fail :", e2);
                    }
                    return false;
                }
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(SDKConstants.PARAM_INTENT, intent.toString());
                jSONObject2.put("can_query_install", 1);
            } catch (Exception unused2) {
            }
            d.a(qVar, str, -3, jSONObject2);
        } else {
            try {
                if (o.d().h()) {
                    ac.a(qVar, str);
                }
                if (!(context instanceof Activity)) {
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                }
                map2.put("can_query_install", 0);
                com.bytedance.sdk.openadsdk.b.c.a(qVar, str, "open_url_app", map2);
                context.startActivity(intent);
                com.bytedance.sdk.openadsdk.b.l.a().a(map2).a(qVar, str);
                return true;
            } catch (Throwable unused3) {
            }
        }
        return false;
    }

    public static boolean a(Context context, String str, com.bytedance.sdk.openadsdk.core.model.q qVar, int i, String str2, boolean z) {
        try {
            context.startActivity(a(context, str, qVar, i, (PAGNativeAd) null, (PangleAd) null, str2, z));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean a(com.bytedance.sdk.openadsdk.core.model.q qVar, boolean z) {
        if (z && qVar != null && qVar.M() == 4) {
            return com.bytedance.sdk.openadsdk.core.model.t.b(qVar);
        }
        return false;
    }

    public static boolean b(Context context, String str, com.bytedance.sdk.openadsdk.core.model.q qVar, int i, String str2, boolean z) {
        try {
            context.startActivity(a(context, str, qVar, i, (PAGNativeAd) null, (PangleAd) null, str2, z, true));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
