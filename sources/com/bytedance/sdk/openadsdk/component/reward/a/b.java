package com.bytedance.sdk.openadsdk.component.reward.a;

import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.r;
import com.bytedance.sdk.openadsdk.core.s;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullDataManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static final SparseArray<WeakReference<q>> a = new SparseArray<>();

    public static q a(Intent intent, Bundle bundle, com.bytedance.sdk.openadsdk.core.video.c.b bVar) {
        q rVar = null;
        if (!com.bytedance.sdk.openadsdk.multipro.b.c()) {
            q qVarB = s.a().b();
            com.bytedance.sdk.openadsdk.core.model.a aVarG = s.a().g();
            if (qVarB == null && aVarG != null) {
                qVarB = new r(aVarG);
            }
            rVar = qVarB;
            if (bVar != null) {
                bVar.a(bundle);
            }
            s.a().f();
        } else if (intent != null) {
            try {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_AD_INFO);
                if (stringExtra != null) {
                    rVar = new r(com.bytedance.sdk.openadsdk.core.model.a.b(new JSONObject(stringExtra)));
                }
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.c("TTAD.RFDM", "", e2);
            }
        }
        if (bundle != null) {
            try {
                WeakReference<q> weakReference = a.get(bundle.getInt("meta_tmp"));
                if (weakReference != null) {
                    rVar = weakReference.get();
                }
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.c("TTAD.RFDM", "", th);
            }
        }
        if (rVar != null) {
            rVar.a(rVar.p(), 7);
        }
        return rVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(android.content.Intent r2, android.app.Activity r3, boolean r4, com.bytedance.sdk.openadsdk.core.model.a r5, java.lang.String r6) {
        /*
            if (r3 != 0) goto L8
            r3 = 268435456(0x10000000, float:2.524355E-29)
            r2.addFlags(r3)
            goto L1d
        L8:
            android.view.WindowManager r3 = r3.getWindowManager()     // Catch: java.lang.Exception -> L15
            android.view.Display r3 = r3.getDefaultDisplay()     // Catch: java.lang.Exception -> L15
            int r3 = r3.getRotation()     // Catch: java.lang.Exception -> L15
            goto L1e
        L15:
            r3 = move-exception
            java.lang.String r0 = "TTAD.RFDM"
            java.lang.String r1 = ""
            com.bytedance.sdk.component.utils.l.c(r0, r1, r3)
        L1d:
            r3 = 0
        L1e:
            java.lang.String r0 = "orientation_angle"
            r2.putExtra(r0, r3)
            java.lang.String r3 = "video_is_cached"
            r2.putExtra(r3, r4)
            boolean r3 = com.bytedance.sdk.openadsdk.multipro.b.c()
            if (r3 == 0) goto L49
            org.json.JSONObject r3 = r5.k()
            if (r3 != 0) goto L3a
            java.lang.String r2 = "toJsonObj return null"
            com.bytedance.sdk.component.utils.l.d(r2)
            return
        L3a:
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "multi_process_ad_info"
            r2.putExtra(r4, r3)
            java.lang.String r3 = "multi_process_meta_md5"
            r2.putExtra(r3, r6)
            goto L57
        L49:
            com.bytedance.sdk.openadsdk.core.s r2 = com.bytedance.sdk.openadsdk.core.s.a()
            r2.f()
            com.bytedance.sdk.openadsdk.core.s r2 = com.bytedance.sdk.openadsdk.core.s.a()
            r2.a(r5)
        L57:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.a.b.a(android.content.Intent, android.app.Activity, boolean, com.bytedance.sdk.openadsdk.core.model.a, java.lang.String):void");
    }

    private static void a(Intent intent, a aVar) {
        if (intent == null) {
            return;
        }
        aVar.G.c(intent.getBooleanExtra("video_is_cached", false));
        aVar.c = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_META_MD5);
        aVar.n = intent.getIntExtra("orientation_angle", 0) == 3;
    }

    public static void a(Bundle bundle, a aVar) {
        if (bundle == null) {
            return;
        }
        aVar.c = bundle.getString(TTAdConstant.MULTI_PROCESS_META_MD5);
        aVar.G.c(bundle.getBoolean("video_is_cached", false));
        aVar.f1314d = bundle.getBoolean("is_mute");
        if (bundle.getLong("video_current") > 0) {
            aVar.G.b(bundle.getLong("video_current", 0L));
        }
        aVar.a(bundle.getBoolean("has_show_skip_btn"));
    }

    public static void a(a aVar, Intent intent, Bundle bundle) {
        a(intent, aVar);
        a(bundle, aVar);
    }

    public static void a(a aVar, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        try {
            q qVar = aVar.a;
            a.append(qVar.hashCode(), new WeakReference<>(qVar));
            bundle.putInt("meta_tmp", qVar.hashCode());
            bundle.putString(TTAdConstant.MULTI_PROCESS_META_MD5, aVar.c);
            bundle.putBoolean("video_is_cached", aVar.G.x());
            bundle.putLong("video_current", aVar.G.g());
            bundle.putBoolean("is_mute", aVar.f1314d);
            bundle.putBoolean("has_show_skip_btn", aVar.p);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("TTAD.RFDM", "onSaveInstanceState: ", th);
        }
    }
}
