package com.bytedance.sdk.openadsdk.utils;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.b;
import java.util.Map;

/* JADX INFO: compiled from: OpenUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class p {
    public static void a(Activity activity, String str, final com.bytedance.sdk.openadsdk.core.model.q qVar, final String str2) {
        if (!a(activity, str)) {
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str2, 0, 7, false);
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        final int iB = ac.b(activity, intent);
        com.bytedance.sdk.component.utils.b.a(activity, intent, new b.a() { // from class: com.bytedance.sdk.openadsdk.utils.p.1
            @Override // com.bytedance.sdk.component.utils.b.a
            public void a() {
                com.bytedance.sdk.openadsdk.b.c.a(qVar, str2, iB, 0, true);
            }

            @Override // com.bytedance.sdk.component.utils.b.a
            public void a(Throwable th) {
                com.bytedance.sdk.openadsdk.b.c.a(qVar, str2, iB, 6, false, th.toString());
            }
        });
    }

    public static boolean a(Activity activity) {
        if (activity == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 || !activity.isDestroyed()) {
            return !activity.isFinishing();
        }
        return false;
    }

    public static boolean a(Activity activity, String str) {
        return a(activity) && !TextUtils.isEmpty(str);
    }

    public static boolean b(Activity activity, String str, com.bytedance.sdk.openadsdk.core.model.q qVar, String str2) {
        if (!a(activity, str)) {
            return false;
        }
        Uri uri = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        com.bytedance.sdk.openadsdk.b.c.a(qVar, str2, "open_url_app", (Map<String, Object>) null);
        try {
            activity.startActivity(intent);
            com.bytedance.sdk.openadsdk.b.l.a().a(qVar, str2);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
