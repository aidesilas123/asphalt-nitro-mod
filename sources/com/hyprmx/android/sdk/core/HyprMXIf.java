package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.placement.Placement;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.Set;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001:\u0002\u001a\u001bJ.\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&J6\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&J>\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0004H&J\b\u0010\u0013\u001a\u00020\u0012H&J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH&J\u000e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00100\u0015H&J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0004H&J\u0012\u0010\u0019\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0018H&¨\u0006\u001cÀ\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/core/HyprMXIf;", "", "Landroid/content/Context;", "context", "", "distributorId", "userId", "Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", MobileAdsBridgeBase.initializeMethodName, "Lcom/hyprmx/android/sdk/consent/ConsentStatus;", "consentStatus", "", "ageRestrictedUser", "placementName", "Lcom/hyprmx/android/sdk/placement/Placement;", "getPlacement", "Lcom/hyprmx/android/sdk/core/HyprMXState;", "getInitializationState", "setConsentStatus", "", "getPlacements", "sessionToken", "Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;", "setAudioAdListener", "HyprMXAudioAdListener", "HyprMXInitializationListener", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public interface HyprMXIf {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;", "", "onAdAudioEnd", "", "onAdAudioStart", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public interface HyprMXAudioAdListener {
        void onAdAudioEnd();

        void onAdAudioStart();
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;", "", "initializationComplete", "", "initializationFailed", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public interface HyprMXInitializationListener {
        void initializationComplete();

        void initializationFailed();
    }

    HyprMXState getInitializationState();

    Placement getPlacement(String placementName);

    Set<Placement> getPlacements();

    void initialize(Context context, String distributorId, String userId, ConsentStatus consentStatus, HyprMXInitializationListener listener);

    void initialize(Context context, String distributorId, String userId, ConsentStatus consentStatus, boolean ageRestrictedUser, HyprMXInitializationListener listener);

    void initialize(Context context, String distributorId, String userId, HyprMXInitializationListener listener);

    String sessionToken();

    void setAudioAdListener(HyprMXAudioAdListener listener);

    void setConsentStatus(ConsentStatus consentStatus);

    /* synthetic */ void setMediationProvider(String str, String str2, String str3);

    /* synthetic */ void setUnityVersion(String str);
}
