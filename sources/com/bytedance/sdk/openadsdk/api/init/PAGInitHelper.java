package com.bytedance.sdk.openadsdk.api.init;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.bytedance.sdk.component.adexpress.a.b.a;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.k.b;
import com.bytedance.sdk.openadsdk.multipro.d.d;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.m;
import com.bytedance.sdk.openadsdk.utils.r;
import com.bytedance.sdk.openadsdk.utils.x;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class PAGInitHelper {
    public static final List<PAGSdk.PAGInitCallback> CALLBACK_LIST = new ArrayList();
    public static float animationScale = 1.0f;

    private static void a(Context context) {
        c.a(context).a("uuid", r.a());
    }

    public static void initAnimationScale(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 17) {
                float f2 = Settings.System.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
                animationScale = f2;
                if (f2 <= 0.0f) {
                    animationScale = 1.0f;
                }
            }
        } catch (Throwable unused) {
            animationScale = 1.0f;
        }
    }

    public static void initMemoryData() {
        o.d();
        d.a("ttopenadsdk", "a", 0);
        d.a("sp_global_file", "a", 0);
        d.a("sp_global_privacy", "a", 0);
        d.a("sp_global_app_id", "a", 0);
        d.a("sp_global_icon_id", "a", 0);
        d.a(m.a(), "a", 0);
        d.a(b.a, "a", 0);
        d.a("tpl_fetch_model", "a", 0);
        d.a("tt_sp", "a", 0);
        d.a("tt_sdk_event_net_ad", "a", 0);
        d.a("tt_sdk_event_net_state", "a", 0);
        d.a("tt_sdk_event_net_trail", "a", 0);
        d.a("tt_sdk_event_db_ad", "a", 0);
        d.a("tt_sdk_event_db_state", "a", 0);
        d.a("tt_sdk_event_db_trail", "a", 0);
    }

    public static void maybeAsyncInitTask(Context context) {
        x.a();
        ad.a(context);
        a(context);
        o.e().a();
        String strA = j.a(context);
        com.bytedance.sdk.openadsdk.core.e.c.b(strA);
        com.bytedance.sdk.openadsdk.b.a.d.a(strA);
        a.a();
        com.bytedance.sdk.openadsdk.core.video.b.a.a().b();
        initAnimationScale(context);
    }
}
