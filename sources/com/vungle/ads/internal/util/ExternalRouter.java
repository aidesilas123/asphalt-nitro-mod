package com.vungle.ads.internal.util;

import android.content.Context;
import android.util.Log;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import com.vungle.ads.internal.util.ActivityManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExternalRouter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\nH\u0002J@\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/vungle/ads/internal/util/ExternalRouter;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "getIntentFromUrl", "Landroid/content/Intent;", "url", "contextIsNotActivity", "", "launch", "deeplinkUrl", "context", "Landroid/content/Context;", "leftApplicationCallback", "Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;", "adOpenCallback", "Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class ExternalRouter {
    public static final ExternalRouter INSTANCE = new ExternalRouter();
    private static final String TAG = ExternalRouter.class.getSimpleName();

    private ExternalRouter() {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0013 A[Catch: URISyntaxException -> 0x000d, TryCatch #0 {URISyntaxException -> 0x000d, blocks: (B:4:0x0004, B:16:0x001c, B:13:0x0013), top: B:20:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x001a A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.content.Intent getIntentFromUrl(java.lang.String r4, boolean r5) {
        /*
            r3 = this;
            r0 = 0
            r1 = 0
            if (r4 == 0) goto Lf
            int r2 = r4.length()     // Catch: java.net.URISyntaxException -> Ld
            if (r2 != 0) goto Lb
            goto Lf
        Lb:
            r2 = 0
            goto L10
        Ld:
            r4 = move-exception
            goto L22
        Lf:
            r2 = 1
        L10:
            if (r2 == 0) goto L13
            goto L18
        L13:
            android.content.Intent r4 = android.content.Intent.parseUri(r4, r0)     // Catch: java.net.URISyntaxException -> Ld
            r1 = r4
        L18:
            if (r1 == 0) goto L3c
            if (r5 == 0) goto L3c
            r4 = 268435456(0x10000000, float:2.524355E-29)
            r1.setFlags(r4)     // Catch: java.net.URISyntaxException -> Ld
            goto L3c
        L22:
            java.lang.String r5 = com.vungle.ads.internal.util.ExternalRouter.TAG
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "url format is not correct "
            r0.append(r2)
            java.lang.String r4 = r4.getLocalizedMessage()
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            android.util.Log.e(r5, r4)
        L3c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.util.ExternalRouter.getIntentFromUrl(java.lang.String, boolean):android.content.Intent");
    }

    public static final boolean launch(String str, String str2, Context context, boolean z, ActivityManager.a aVar, PresenterAdOpenCallback presenterAdOpenCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        boolean z2 = true;
        if (str == null || str.length() == 0) {
            if (str2 == null || str2.length() == 0) {
                return false;
            }
        }
        try {
            ExternalRouter externalRouter = INSTANCE;
            ActivityManager.INSTANCE.startWhenForeground(context, externalRouter.getIntentFromUrl(str, z), externalRouter.getIntentFromUrl(str2, z), aVar, presenterAdOpenCallback);
            return true;
        } catch (Exception e2) {
            if (str != null && str.length() != 0) {
                z2 = false;
            }
            if (z2) {
                AnalyticsClient.INSTANCE.logError$vungle_ads_release(314, "Fail to open " + str2, (24 & 4) != 0 ? null : "", (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            } else {
                AnalyticsClient.INSTANCE.logError$vungle_ads_release(312, "Fail to open " + str, (24 & 4) != 0 ? null : "", (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            }
            String str3 = TAG;
            Log.e(str3, "Error while opening url" + e2.getLocalizedMessage());
            Log.d(str3, "Cannot open url " + str2);
            return false;
        }
    }
}
