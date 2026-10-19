package com.hyprmx.android.sdk.banner;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.core.x;
import com.json.hc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\ba\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H'J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H'J\b\u0010\u0007\u001a\u00020\u0002H'J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0004H'J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0004H'J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0004H'J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH'J\b\u0010\u0012\u001a\u00020\u0002H'¨\u0006\u0013À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/BannerNativeInterface;", "Lcom/hyprmx/android/sdk/core/x;", "", "loadAdSuccess", "", "error", "loadAdFailed", hc.f6149f, "url", "storePicture", "data", "createCalendarEvent", "openOutsideApplication", "", "rate", "", "opacityThresholdPercent", "startVisibilityTracking", "stopVisibilityTracking", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public interface BannerNativeInterface extends x {
    @RetainMethodSignature
    void createCalendarEvent(String data);

    @Override // com.hyprmx.android.sdk.core.x
    @RetainMethodSignature
    /* synthetic */ void hyprMXBrowserClosed();

    @RetainMethodSignature
    void loadAdFailed(String error);

    @RetainMethodSignature
    void loadAdSuccess();

    @RetainMethodSignature
    void onAdClicked();

    @RetainMethodSignature
    void openOutsideApplication(String data);

    @Override // com.hyprmx.android.sdk.core.x
    @RetainMethodSignature
    /* synthetic */ void showHyprMXBrowser(String str);

    @Override // com.hyprmx.android.sdk.core.x
    @RetainMethodSignature
    /* synthetic */ void showPlatformBrowser(String str);

    @RetainMethodSignature
    void startVisibilityTracking(long rate, int opacityThresholdPercent);

    @RetainMethodSignature
    void stopVisibilityTracking();

    @RetainMethodSignature
    void storePicture(String url);
}
