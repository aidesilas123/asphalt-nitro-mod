package com.json.adapters.vungle.banner;

import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.adapters.vungle.VungleAdapter;
import com.json.d1;
import com.json.environment.ContextProvider;
import com.json.j1;
import com.json.mediationsdk.AdapterUtils;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.adapter.AbstractBannerAdapter;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.o2;
import com.vungle.ads.BannerAd;
import com.vungle.ads.BannerAdSize;
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
/* JADX INFO: compiled from: VungleBannerAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J,\u0010\u000f\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J,\u0010\u0017\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\bH\u0016J,\u0010\u001b\u001a\u00020\f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\bH\u0016J\u0018\u0010\u001c\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\bH\u0002J*\u0010\u001d\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\bH\u0016J4\u0010 \u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\b\u0010!\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\bH\u0016J,\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00020\u00072\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u001a\u001a\u00020\b2\b\u0010!\u001a\u0004\u0018\u00010\u0007H\u0002J\u0012\u0010$\u001a\u00020\f2\b\u0010%\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010&\u001a\u00020\fH\u0016J\u001a\u0010'\u001a\u00020\f2\u0006\u0010(\u001a\u00020)2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\n0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcom/ironsource/adapters/vungle/banner/VungleBannerAdapter;", "Lcom/ironsource/mediationsdk/adapter/AbstractBannerAdapter;", "Lcom/ironsource/adapters/vungle/VungleAdapter;", "adapter", "(Lcom/ironsource/adapters/vungle/VungleAdapter;)V", "mBannerPlacementToListenerMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;", "mPlacementToBannerAd", "Lcom/vungle/ads/BannerAd;", o2.g.Y, "", "config", "Lorg/json/JSONObject;", "getBannerBiddingData", "", "", "adData", "getBannerSize", "Lcom/vungle/ads/BannerAdSize;", j1.u, "Lcom/ironsource/mediationsdk/ISBannerSize;", "initBannerForBidding", "appKey", "userId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "initBanners", "initBannersInternal", o2.g.T, "banner", "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;", "loadBannerForBidding", d1.r, "loadBannerInternal", o2.i, "onNetworkInitCallbackFailed", "error", "onNetworkInitCallbackSuccess", "releaseMemory", "adUnit", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "vungleadapter_release"}, mv = {1, 8, 0}, xi = 48)
public final class VungleBannerAdapter extends AbstractBannerAdapter<VungleAdapter> {
    private final ConcurrentHashMap<String, BannerSmashListener> mBannerPlacementToListenerMap;
    private final ConcurrentHashMap<String, BannerAd> mPlacementToBannerAd;

    /* JADX INFO: compiled from: VungleBannerAdapter.kt */
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
    public VungleBannerAdapter(VungleAdapter adapter) {
        super(adapter);
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.mBannerPlacementToListenerMap = new ConcurrentHashMap<>();
        this.mPlacementToBannerAd = new ConcurrentHashMap<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003a, code lost:
    
        if (r2.equals(com.json.mediationsdk.l.b) == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return com.vungle.ads.BannerAdSize.BANNER;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
    
        if (r2.equals(com.json.mediationsdk.l.a) == false) goto L25;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.vungle.ads.BannerAdSize getBannerSize(com.json.mediationsdk.ISBannerSize r2) {
        /*
            r1 = this;
            java.lang.String r2 = r2.getDescription()
            if (r2 == 0) goto L4c
            int r0 = r2.hashCode()
            switch(r0) {
                case -387072689: goto L40;
                case 72205083: goto L34;
                case 79011241: goto L17;
                case 1951953708: goto Le;
                default: goto Ld;
            }
        Ld:
            goto L4c
        Le:
            java.lang.String r0 = "BANNER"
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L3d
            goto L4c
        L17:
            java.lang.String r0 = "SMART"
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L20
            goto L4c
        L20:
            com.ironsource.environment.ContextProvider r2 = com.json.environment.ContextProvider.getInstance()
            android.content.Context r2 = r2.getApplicationContext()
            boolean r2 = com.json.mediationsdk.AdapterUtils.isLargeScreen(r2)
            if (r2 == 0) goto L31
            com.vungle.ads.BannerAdSize r2 = com.vungle.ads.BannerAdSize.BANNER_LEADERBOARD
            goto L4d
        L31:
            com.vungle.ads.BannerAdSize r2 = com.vungle.ads.BannerAdSize.BANNER
            goto L4d
        L34:
            java.lang.String r0 = "LARGE"
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L3d
            goto L4c
        L3d:
            com.vungle.ads.BannerAdSize r2 = com.vungle.ads.BannerAdSize.BANNER
            goto L4d
        L40:
            java.lang.String r0 = "RECTANGLE"
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L49
            goto L4c
        L49:
            com.vungle.ads.BannerAdSize r2 = com.vungle.ads.BannerAdSize.VUNGLE_MREC
            goto L4d
        L4c:
            r2 = 0
        L4d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adapters.vungle.banner.VungleBannerAdapter.getBannerSize(com.ironsource.mediationsdk.ISBannerSize):com.vungle.ads.BannerAdSize");
    }

    private final void initBannersInternal(JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        String placementId = jSONObject.optString(VungleAdapter.PLACEMENT_ID);
        String appId = jSONObject.optString(VungleAdapter.APP_ID);
        if (placementId == null || placementId.length() == 0) {
            IronLog ironLog = IronLog.INTERNAL;
            Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
            ironLog.error(getAdUnitIdMissingErrorString(placementId));
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(placementId), "Banner"));
            return;
        }
        if (appId == null || appId.length() == 0) {
            IronLog ironLog2 = IronLog.INTERNAL;
            Intrinsics.checkNotNullExpressionValue(appId, "appId");
            ironLog2.error(getAdUnitIdMissingErrorString(appId));
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(appId), "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("placementId = " + placementId + ", appId = " + appId);
        ConcurrentHashMap<String, BannerSmashListener> concurrentHashMap = this.mBannerPlacementToListenerMap;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, bannerSmashListener);
        int i = WhenMappings.$EnumSwitchMapping$0[getAdapter().getInitState().ordinal()];
        if (i == 1) {
            bannerSmashListener.onBannerInitSuccess();
            return;
        }
        if (i == 2) {
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Vungle SDK init failed", "Banner"));
            return;
        }
        VungleAdapter adapter = getAdapter();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getInstance().applicationContext");
        Intrinsics.checkNotNullExpressionValue(appId, "appId");
        adapter.initSDK(applicationContext, appId);
    }

    private final void loadBannerInternal(String str, IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener, String str2) {
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose("placementId = " + str);
        if (ironSourceBannerLayout == null) {
            IronLog.INTERNAL.verbose("banner is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getAdapter().getProviderName()));
            return;
        }
        ISBannerSize size = ironSourceBannerLayout.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "banner.size");
        BannerAdSize bannerSize = getBannerSize(size);
        if (bannerSize == null) {
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getAdapter().getProviderName()));
            return;
        }
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        VungleBannerAdListener vungleBannerAdListener = new VungleBannerAdListener(bannerSmashListener, str, new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(applicationContext, bannerSize.getWidth()), AdapterUtils.dpToPixels(applicationContext, bannerSize.getHeight()), 17));
        Context applicationContext2 = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getInstance().applicationContext");
        BannerAd bannerAd = new BannerAd(applicationContext2, str, bannerSize);
        bannerAd.setAdListener(vungleBannerAdListener);
        this.mPlacementToBannerAd.put(str, bannerAd);
        ironLog.verbose("bannerSize = " + bannerSize);
        bannerAd.load(str2);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        String strOptString = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose("placementId = " + strOptString);
        BannerAd bannerAd = this.mPlacementToBannerAd.get(strOptString);
        if (bannerAd != null) {
            ironLog.verbose("destroyBanner Vungle ad, with PlacementId - " + strOptString);
            bannerAd.finishAd();
            this.mPlacementToBannerAd.remove(strOptString);
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public Map<String, Object> getBannerBiddingData(JSONObject config, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(config, "config");
        return getAdapter().getBiddingData();
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String str, String str2, JSONObject config, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        initBannersInternal(config, listener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String str, String str2, JSONObject config, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        initBannersInternal(config, listener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(JSONObject config, JSONObject jSONObject, IronSourceBannerLayout banner, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(banner, "banner");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + placementId);
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        loadBannerInternal(placementId, banner, listener, null);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(JSONObject config, JSONObject jSONObject, String str, IronSourceBannerLayout banner, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(banner, "banner");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String placementId = config.optString(VungleAdapter.PLACEMENT_ID);
        IronLog.ADAPTER_CALLBACK.verbose("placementId = " + placementId);
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        loadBannerInternal(placementId, banner, listener, str);
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        Collection<BannerSmashListener> collectionValues = this.mBannerPlacementToListenerMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "mBannerPlacementToListenerMap.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((BannerSmashListener) it.next()).onBannerInitFailed(ErrorBuilder.buildInitFailedError(str, "Banner"));
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        Collection<BannerSmashListener> collectionValues = this.mBannerPlacementToListenerMap.values();
        Intrinsics.checkNotNullExpressionValue(collectionValues, "mBannerPlacementToListenerMap.values");
        Iterator<T> it = collectionValues.iterator();
        while (it.hasNext()) {
            ((BannerSmashListener) it.next()).onBannerInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT adUnit, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        IronLog.INTERNAL.verbose("adUnit = " + adUnit);
        if (adUnit == IronSource.AD_UNIT.BANNER) {
            Collection<BannerAd> collectionValues = this.mPlacementToBannerAd.values();
            Intrinsics.checkNotNullExpressionValue(collectionValues, "mPlacementToBannerAd.values");
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                ((BannerAd) it.next()).finishAd();
            }
            this.mBannerPlacementToListenerMap.clear();
            this.mPlacementToBannerAd.clear();
        }
    }
}
