package com.hyprmx.android.sdk.utility;

import com.hyprmx.android.BuildConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u000fR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0086T¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087T¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\u0002R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/hyprmx/android/sdk/utility/HyprMXProperties;", "", "()V", "baseUrl", "", "getBaseUrl", "()Ljava/lang/String;", "setBaseUrl", "(Ljava/lang/String;)V", "buildNumber", "", "number", "getNumber$annotations", "version", "resetBaseUrlToDefault", "", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public final class HyprMXProperties {
    public static final HyprMXProperties INSTANCE = new HyprMXProperties();
    private static String baseUrl = BuildConfig.baseUrlHttps;
    public static final int buildNumber = 403;
    public static final int number = 403;
    public static final String version = "6.2.0";

    private HyprMXProperties() {
    }

    public static /* synthetic */ void getNumber$annotations() {
    }

    public final String getBaseUrl() {
        return baseUrl;
    }

    public final void resetBaseUrlToDefault() {
        baseUrl = BuildConfig.baseUrlHttps;
    }

    public final void setBaseUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        baseUrl = str;
    }
}
