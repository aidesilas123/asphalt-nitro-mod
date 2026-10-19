package com.json.adapters.vungle.interstitial;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.adapters.vungle.VungleAdapter;
import com.json.d1;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adapter.AbstractInterstitialAdapter;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.o2;
import com.vungle.ads.AdConfig;
import com.vungle.ads.FullscreenAd;
import com.vungle.ads.InterstitialAd;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: VungleInterstitialAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J,\u0010\r\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J,\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\bH\u0016J,\u0010\u0018\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00072\b\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\bH\u0016J\u0018\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\bH\u0002J\u0010\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\"\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0017\u001a\u00020\bH\u0016J,\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0017\u001a\u00020\bH\u0016J\"\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u0002J\u0012\u0010\u001f\u001a\u00020\u00142\b\u0010 \u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010!\u001a\u00020\u0014H\u0016J\u001a\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020$2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u001d\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\u00072\u0006\u0010'\u001a\u00020\fH\u0000¢\u0006\u0002\b(J\u001d\u0010)\u001a\u00020\u00142\u0006\u0010&\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\nH\u0000¢\u0006\u0002\b+J\u0018\u0010,\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\bH\u0016R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcom/ironsource/adapters/vungle/interstitial/VungleInterstitialAdapter;", "Lcom/ironsource/mediationsdk/adapter/AbstractInterstitialAdapter;", "Lcom/ironsource/adapters/vungle/VungleAdapter;", "adapter", "(Lcom/ironsource/adapters/vungle/VungleAdapter;)V", "mInterstitialPlacementToListenerMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;", "mPlacementIdToAdAvailability", "", "mPlacementToInterstitialAd", "Lcom/vungle/ads/InterstitialAd;", "getInterstitialBiddingData", "", "", "config", "Lorg/json/JSONObject;", "adData", o2.g.H, "", "appKey", "userId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "initInterstitialForBidding", "initInterstitialInternal", "isInterstitialReady", o2.g.K, "loadInterstitialForBidding", d1.r, "loadInterstitialInternal", "onNetworkInitCallbackFailed", "error", "onNetworkInitCallbackSuccess", "releaseMemory", "adUnit", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "setInterstitialAd", o2.i, "interstitialAd", "setInterstitialAd$vungleadapter_release", "setInterstitialAdAvailability", "isAvailable", "setInterstitialAdAvailability$vungleadapter_release", o2.g.N, "vungleadapter_release"}, mv = {1, 8, 0}, xi = 48)
public final class VungleInterstitialAdapter extends AbstractInterstitialAdapter<VungleAdapter> {
    private final ConcurrentHashMap<String, InterstitialSmashListener> mInterstitialPlacementToListenerMap;
    private final ConcurrentHashMap<String, Boolean> mPlacementIdToAdAvailability;
    private final ConcurrentHashMap<String, InterstitialAd> mPlacementToInterstitialAd;

    /* JADX INFO: compiled from: VungleInterstitialAdapter.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[VungleAdapter.Companion.InitState.values().length];
            try {
                iArr[VungleAdapter.Companion.InitState.INIT_STATE_SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[VungleAdapter.Companion.InitState.INIT_STATE_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleInterstitialAdapter(VungleAdapter adapter) {
        super(adapter);
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.mPlacementToInterstitialAd = new ConcurrentHashMap<>();
        this.mInterstitialPlacementToListenerMap = new ConcurrentHashMap<>();
        this.mPlacementIdToAdAvailability = new ConcurrentHashMap<>();
    }

    private final void initInterstitialInternal(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String placementId = jSONObject.optString(VungleAdapter.PLACEMENT_ID);
        String appId = jSONObject.optString(VungleAdapter.APP_ID);
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        if (placementId.length() == 0) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(VungleAdapter.PLACEMENT_ID));
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(placementId), "Interstitial"));
            return;
        }
        Intrinsics.checkNotNullExpressionValue(appId, "appId");
        if (appId.length() == 0) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(VungleAdapter.APP_ID));
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(appId), "Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("placementId = " + placementId + ", appId = " + appId);
        this.mInterstitialPlacementToListenerMap.put(placementId, interstitialSmashListener);
        int i = WhenMappings.$EnumSwitchMapping$0[getAdapter().getInitState().ordinal()];
        if (i == 1) {
            interstitialSmashListener.onInterstitialInitSuccess();
            return;
        }
        if (i == 2) {
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Vungle SDK Init Failed", "Interstitial"));
            return;
        }
        VungleAdapter adapter = getAdapter();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getInstance().applicationContext");
        adapter.initSDK(applicationContext, appId);
    }

    private final void loadInterstitialInternal(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener, String str) {
        String placementId = jSONObject.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("loadInterstitial Vungle ad with placementId = " + placementId);
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        setInterstitialAdAvailability$vungleadapter_release(placementId, false);
        VungleInterstitialAdListener vungleInterstitialAdListener = new VungleInterstitialAdListener(new WeakReference(this), interstitialSmashListener, placementId);
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getInstance().applicationContext");
        InterstitialAd interstitialAd = new InterstitialAd(applicationContext, placementId, new AdConfig());
        interstitialAd.setAdListener(vungleInterstitialAdListener);
        this.mPlacementToInterstitialAd.put(placementId, interstitialAd);
        interstitialAd.load(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInterstitial$lambda$3(InterstitialAd interstitialAd) {
        if (interstitialAd != null) {
            FullscreenAd.DefaultImpls.play$default(interstitialAd, null, 1, null);
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractInterstitialAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public Map<String, Object> getInterstitialBiddingData(JSONObject config, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(config, "config");
        return getAdapter().getBiddingData();
    }

    @Override // com.json.mediationsdk.adapter.AbstractInterstitialAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, String str2, JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        initInterstitialInternal(config, listener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractInterstitialAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String str, String str2, JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        initInterstitialInternal(config, listener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractInterstitialAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject config) {
        InterstitialAd interstitialAd;
        Intrinsics.checkNotNullParameter(config, "config");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = <" + placementId + '>');
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        if (placementId.length() == 0) {
            return false;
        }
        Boolean bool = this.mPlacementIdToAdAvailability.get(placementId);
        if (bool == null) {
            bool = Boolean.FALSE;
        }
        if (bool.booleanValue() && (interstitialAd = this.mPlacementToInterstitialAd.get(placementId)) != null) {
            return interstitialAd.canPlayAd().booleanValue();
        }
        return false;
    }

    @Override // com.json.mediationsdk.adapter.AbstractInterstitialAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject config, JSONObject jSONObject, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strOptString = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("loadInterstitial Vungle ad with placementId = " + strOptString);
        loadInterstitialInternal(config, listener, null);
    }

    @Override // com.json.mediationsdk.adapter.AbstractInterstitialAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject config, JSONObject jSONObject, String str, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strOptString = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("loadInterstitial Vungle ad with placementId = " + strOptString);
        loadInterstitialInternal(config, listener, str);
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        Collection<InterstitialSmashListener> collectionValues = this.mInterstitialPlacementToListenerMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "mInterstitialPlacementToListenerMap.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((InterstitialSmashListener) it.next()).onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(str, "Interstitial"));
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        Collection<InterstitialSmashListener> collectionValues = this.mInterstitialPlacementToListenerMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "mInterstitialPlacementToListenerMap.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((InterstitialSmashListener) it.next()).onInterstitialInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT adUnit, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        IronLog.INTERNAL.verbose("adUnit = " + adUnit);
        if (adUnit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.mInterstitialPlacementToListenerMap.clear();
            this.mPlacementToInterstitialAd.clear();
            this.mPlacementIdToAdAvailability.clear();
        }
    }

    public final void setInterstitialAd$vungleadapter_release(String placementId, InterstitialAd interstitialAd) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(interstitialAd, "interstitialAd");
        this.mPlacementToInterstitialAd.put(placementId, interstitialAd);
    }

    public final void setInterstitialAdAvailability$vungleadapter_release(String placementId, boolean z) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        this.mPlacementIdToAdAvailability.put(placementId, Boolean.valueOf(z));
    }

    @Override // com.json.mediationsdk.adapter.AbstractInterstitialAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose("placementId = " + placementId);
        if (!isInterstitialReady(config)) {
            IronLog.INTERNAL.error("There is no ad available for placementId = " + placementId);
            listener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
            return;
        }
        final InterstitialAd interstitialAd = this.mPlacementToInterstitialAd.get(placementId);
        ironLog.verbose("showInterstitial vungle ad <" + placementId);
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.vungle.interstitial.a
            @Override // java.lang.Runnable
            public final void run() {
                VungleInterstitialAdapter.showInterstitial$lambda$3(interstitialAd);
            }
        });
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        setInterstitialAdAvailability$vungleadapter_release(placementId, false);
    }
}
