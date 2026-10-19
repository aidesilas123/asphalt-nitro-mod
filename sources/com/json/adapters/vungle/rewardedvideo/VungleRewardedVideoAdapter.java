package com.json.adapters.vungle.rewardedvideo;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.adapters.vungle.VungleAdapter;
import com.json.d1;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.vungle.ads.AdConfig;
import com.vungle.ads.FullscreenAd;
import com.vungle.ads.RewardedAd;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
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
/* JADX INFO: compiled from: VungleRewardedVideoAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J,\u0010\u0010\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J6\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\nH\u0016J,\u0010\u001b\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\"\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\nH\u0016J,\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u001f\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001a\u001a\u00020\nH\u0016J\"\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\n2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0007H\u0002J\u0012\u0010\"\u001a\u00020\u00172\b\u0010#\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010$\u001a\u00020\u0017H\u0016J\u001a\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020'2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u001d\u0010(\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\fH\u0000¢\u0006\u0002\b*J\u001d\u0010+\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\u00072\u0006\u0010,\u001a\u00020\bH\u0000¢\u0006\u0002\b-J\u0018\u0010.\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\nH\u0016R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\f0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/ironsource/adapters/vungle/rewardedvideo/VungleRewardedVideoAdapter;", "Lcom/ironsource/mediationsdk/adapter/AbstractRewardedVideoAdapter;", "Lcom/ironsource/adapters/vungle/VungleAdapter;", "adapter", "(Lcom/ironsource/adapters/vungle/VungleAdapter;)V", "mPlacementIdToAdAvailability", "Ljava/util/concurrent/ConcurrentHashMap;", "", "", "mPlacementIdToListener", "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;", "mPlacementToRewardedVideoAd", "Lcom/vungle/ads/RewardedAd;", "mRewardedVideoPlacementIdsForInitCallbacks", "Ljava/util/concurrent/CopyOnWriteArraySet;", "mRewardedVideoPlacementToListenerMap", "getRewardedVideoBiddingData", "", "", "config", "Lorg/json/JSONObject;", "adData", "initAndLoadRewardedVideo", "", "appKey", "userId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "initRewardedVideoWithCallback", "isRewardedVideoAvailable", "loadRewardedVideo", "loadRewardedVideoForBidding", d1.r, "loadRewardedVideoInternal", o2.i, "onNetworkInitCallbackFailed", "error", "onNetworkInitCallbackSuccess", "releaseMemory", "adUnit", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "setRewardedVideoAd", "rewardedVideoAd", "setRewardedVideoAd$vungleadapter_release", "setRewardedVideoAdAvailability", "isAvailable", "setRewardedVideoAdAvailability$vungleadapter_release", o2.g.h, "vungleadapter_release"}, mv = {1, 8, 0}, xi = 48)
public final class VungleRewardedVideoAdapter extends AbstractRewardedVideoAdapter<VungleAdapter> {
    private final ConcurrentHashMap<String, Boolean> mPlacementIdToAdAvailability;
    private final ConcurrentHashMap<String, RewardedVideoSmashListener> mPlacementIdToListener;
    private final ConcurrentHashMap<String, RewardedAd> mPlacementToRewardedVideoAd;
    private final CopyOnWriteArraySet<String> mRewardedVideoPlacementIdsForInitCallbacks;
    private final ConcurrentHashMap<String, RewardedVideoSmashListener> mRewardedVideoPlacementToListenerMap;

    /* JADX INFO: compiled from: VungleRewardedVideoAdapter.kt */
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
    public VungleRewardedVideoAdapter(VungleAdapter adapter) {
        super(adapter);
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.mPlacementIdToListener = new ConcurrentHashMap<>();
        this.mPlacementToRewardedVideoAd = new ConcurrentHashMap<>();
        this.mRewardedVideoPlacementToListenerMap = new ConcurrentHashMap<>();
        this.mRewardedVideoPlacementIdsForInitCallbacks = new CopyOnWriteArraySet<>();
        this.mPlacementIdToAdAvailability = new ConcurrentHashMap<>();
    }

    private final void loadRewardedVideoInternal(String str, RewardedVideoSmashListener rewardedVideoSmashListener, String str2) {
        IronLog.ADAPTER_API.verbose("loadRewardedVideo Vungle ad with placementId = " + str);
        setRewardedVideoAdAvailability$vungleadapter_release(str, false);
        VungleRewardedVideoAdListener vungleRewardedVideoAdListener = new VungleRewardedVideoAdListener(new WeakReference(this), rewardedVideoSmashListener, str);
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getInstance().applicationContext");
        RewardedAd rewardedAd = new RewardedAd(applicationContext, str, new AdConfig());
        rewardedAd.setAdListener(vungleRewardedVideoAdListener);
        this.mPlacementToRewardedVideoAd.put(str, rewardedAd);
        rewardedAd.load(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRewardedVideo$lambda$4(RewardedAd rewardedAd) {
        if (rewardedAd != null) {
            FullscreenAd.DefaultImpls.play$default(rewardedAd, null, 1, null);
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public Map<String, Object> getRewardedVideoBiddingData(JSONObject config, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(config, "config");
        return getAdapter().getBiddingData();
    }

    @Override // com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, String str2, JSONObject config, JSONObject jSONObject, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        String appId = config.optString(VungleAdapter.APP_ID);
        if (placementId == null || placementId.length() == 0) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(VungleAdapter.PLACEMENT_ID));
            listener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (appId == null || appId.length() == 0) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(VungleAdapter.APP_ID));
            listener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose("placementId = " + placementId + ", appId = " + appId);
        ConcurrentHashMap<String, RewardedVideoSmashListener> concurrentHashMap = this.mRewardedVideoPlacementToListenerMap;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, listener);
        int i = WhenMappings.$EnumSwitchMapping$0[VungleAdapter.INSTANCE.getMInitState$vungleadapter_release().ordinal()];
        if (i == 1) {
            ironLog.verbose("initRewardedVideo: load rv " + placementId);
            loadRewardedVideoInternal(placementId, listener, null);
            return;
        }
        if (i == 2) {
            ironLog.verbose("initRewardedVideo - onRewardedVideoAvailabilityChanged(false)");
            listener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        VungleAdapter adapter = getAdapter();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getInstance().applicationContext");
        Intrinsics.checkNotNullExpressionValue(appId, "appId");
        adapter.initSDK(applicationContext, appId);
    }

    @Override // com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, String str2, JSONObject config, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        String appId = config.optString(VungleAdapter.APP_ID);
        if (placementId == null || placementId.length() == 0) {
            IronLog ironLog = IronLog.INTERNAL;
            Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
            ironLog.error(getAdUnitIdMissingErrorString(placementId));
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(placementId), IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (appId == null || appId.length() == 0) {
            IronLog ironLog2 = IronLog.INTERNAL;
            Intrinsics.checkNotNullExpressionValue(appId, "appId");
            ironLog2.error(getAdUnitIdMissingErrorString(appId));
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(appId), IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("placementId = " + placementId + ", appId = " + appId);
        ConcurrentHashMap<String, RewardedVideoSmashListener> concurrentHashMap = this.mPlacementIdToListener;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, listener);
        this.mRewardedVideoPlacementIdsForInitCallbacks.add(placementId);
        int i = WhenMappings.$EnumSwitchMapping$0[getAdapter().getInitState().ordinal()];
        if (i == 1) {
            listener.onRewardedVideoInitSuccess();
            return;
        }
        if (i == 2) {
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Vungle SDK Init Failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        VungleAdapter adapter = getAdapter();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getInstance().applicationContext");
        Intrinsics.checkNotNullExpressionValue(appId, "appId");
        adapter.initSDK(applicationContext, appId);
    }

    @Override // com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject config) {
        RewardedAd rewardedAd;
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
        if (bool.booleanValue() && (rewardedAd = this.mPlacementToRewardedVideoAd.get(placementId)) != null) {
            return rewardedAd.canPlayAd().booleanValue();
        }
        return false;
    }

    @Override // com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject config, JSONObject jSONObject, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + placementId);
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        loadRewardedVideoInternal(placementId, listener, null);
    }

    @Override // com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideoForBidding(JSONObject config, JSONObject jSONObject, String str, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_API.verbose("placementId = " + placementId);
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        loadRewardedVideoInternal(placementId, listener, str);
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        for (Map.Entry<String, RewardedVideoSmashListener> entry : this.mRewardedVideoPlacementToListenerMap.entrySet()) {
            String key = entry.getKey();
            RewardedVideoSmashListener value = entry.getValue();
            if (this.mRewardedVideoPlacementIdsForInitCallbacks.contains(key)) {
                value.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(str, IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                value.onRewardedVideoAvailabilityChanged(false);
            }
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        Set<Map.Entry<String, RewardedVideoSmashListener>> setEntrySet = this.mRewardedVideoPlacementToListenerMap.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "mRewardedVideoPlacementToListenerMap.entries");
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Intrinsics.checkNotNullExpressionValue(entry, "(rewardedVideoPlacement, rewardedVideoListener)");
            String rewardedVideoPlacement = (String) entry.getKey();
            RewardedVideoSmashListener rewardedVideoListener = (RewardedVideoSmashListener) entry.getValue();
            if (this.mRewardedVideoPlacementIdsForInitCallbacks.contains(rewardedVideoPlacement)) {
                rewardedVideoListener.onRewardedVideoInitSuccess();
            } else {
                Intrinsics.checkNotNullExpressionValue(rewardedVideoPlacement, "rewardedVideoPlacement");
                Intrinsics.checkNotNullExpressionValue(rewardedVideoListener, "rewardedVideoListener");
                loadRewardedVideoInternal(rewardedVideoPlacement, rewardedVideoListener, null);
            }
        }
    }

    @Override // com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT adUnit, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        IronLog.INTERNAL.verbose("adUnit = " + adUnit);
        if (adUnit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.mPlacementIdToListener.clear();
            this.mPlacementToRewardedVideoAd.clear();
            this.mRewardedVideoPlacementToListenerMap.clear();
            this.mRewardedVideoPlacementIdsForInitCallbacks.clear();
            this.mPlacementIdToAdAvailability.clear();
        }
    }

    public final void setRewardedVideoAd$vungleadapter_release(String placementId, RewardedAd rewardedVideoAd) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(rewardedVideoAd, "rewardedVideoAd");
        this.mPlacementToRewardedVideoAd.put(placementId, rewardedVideoAd);
    }

    public final void setRewardedVideoAdAvailability$vungleadapter_release(String placementId, boolean z) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        this.mPlacementIdToAdAvailability.put(placementId, Boolean.valueOf(z));
    }

    @Override // com.json.mediationsdk.adapter.AbstractRewardedVideoAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose("placementId = " + placementId);
        if (!isRewardedVideoAvailable(config)) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(VungleAdapter.PLACEMENT_ID));
            listener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        final RewardedAd rewardedAd = this.mPlacementToRewardedVideoAd.get(placementId);
        String dynamicUserId = getAdapter().getDynamicUserId();
        if (dynamicUserId != null && rewardedAd != null) {
            rewardedAd.setUserId(dynamicUserId);
        }
        ironLog.verbose("showRewardedVideo vungle ad " + placementId);
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.vungle.rewardedvideo.a
            @Override // java.lang.Runnable
            public final void run() {
                VungleRewardedVideoAdapter.showRewardedVideo$lambda$4(rewardedAd);
            }
        });
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        setRewardedVideoAdAvailability$vungleadapter_release(placementId, false);
    }
}
