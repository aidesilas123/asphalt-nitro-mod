package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.core.HyprMXIf;
import com.hyprmx.android.sdk.placement.Placement;
import com.json.ac;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\t\u0010\u0003\u001a\u00020\u0004H\u0096\u0001J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0096\u0001J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\nH\u0096\u0001J7\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J?\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J/\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\bH\u0096\u0001J\u0013\u0010\u0018\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0019H\u0096\u0001J\u0011\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0096\u0001J'\u0010\u001b\u001a\u00020\f2\b\u0010\u001c\u001a\u0004\u0018\u00010\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\b2\b\u0010\u001e\u001a\u0004\u0018\u00010\bH\u0096\u0001J\u0013\u0010\u001f\u001a\u00020\f2\b\u0010 \u001a\u0004\u0018\u00010\bH\u0096\u0001¨\u0006!"}, d2 = {"Lcom/hyprmx/android/sdk/core/HyprMX;", "Lcom/hyprmx/android/sdk/core/HyprMXIf;", "()V", "getInitializationState", "Lcom/hyprmx/android/sdk/core/HyprMXState;", "getPlacement", "Lcom/hyprmx/android/sdk/placement/Placement;", "placementName", "", "getPlacements", "", MobileAdsBridgeBase.initializeMethodName, "", "context", "Landroid/content/Context;", "distributorId", "userId", "consentStatus", "Lcom/hyprmx/android/sdk/consent/ConsentStatus;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;", "ageRestrictedUser", "", "sessionToken", "setAudioAdListener", "Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXAudioAdListener;", "setConsentStatus", "setMediationProvider", "mediator", "mediatorSDKVersion", ac.c, "setUnityVersion", "version", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public final class HyprMX implements HyprMXIf {
    public static final HyprMX INSTANCE = new HyprMX();
    private final /* synthetic */ q $$delegate_0 = t.a();

    private HyprMX() {
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public HyprMXState getInitializationState() {
        return this.$$delegate_0.getInitializationState();
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public Placement getPlacement(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return this.$$delegate_0.getPlacement(placementName);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public Set<Placement> getPlacements() {
        return this.$$delegate_0.getPlacements();
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public void initialize(Context context, String distributorId, String userId, ConsentStatus consentStatus, HyprMXIf.HyprMXInitializationListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        q qVar = this.$$delegate_0;
        qVar.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        qVar.initialize(context, distributorId, userId, consentStatus, false, listener);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public void initialize(Context context, String distributorId, String userId, ConsentStatus consentStatus, boolean ageRestrictedUser, HyprMXIf.HyprMXInitializationListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        this.$$delegate_0.initialize(context, distributorId, userId, consentStatus, ageRestrictedUser, listener);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public void initialize(Context context, String distributorId, String userId, HyprMXIf.HyprMXInitializationListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.$$delegate_0.initialize(context, distributorId, userId, listener);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public String sessionToken() {
        return this.$$delegate_0.sessionToken();
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public void setAudioAdListener(HyprMXIf.HyprMXAudioAdListener listener) {
        this.$$delegate_0.j = listener;
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public void setConsentStatus(ConsentStatus consentStatus) {
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        this.$$delegate_0.setConsentStatus(consentStatus);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public void setMediationProvider(String mediator, String mediatorSDKVersion, String adapterVersion) {
        this.$$delegate_0.setMediationProvider(mediator, mediatorSDKVersion, adapterVersion);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public void setUnityVersion(String version) {
        this.$$delegate_0.f4518d.a = version;
    }
}
