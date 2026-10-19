package com.json.adapters.pangle;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.d1;
import com.json.environment.ContextProvider;
import com.json.j1;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.AdapterUtils;
import com.json.mediationsdk.INetworkInitCallbackListener;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IntegrationData;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.LoadWhileShowSupportState;
import com.json.mediationsdk.l;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.metadata.MetaDataUtils;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.json.JSONArray;
import org.json.JSONException;
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
/* JADX INFO: compiled from: PangleAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010 \n\u0002\b\t\u0018\u0000 p2\u00020\u00012\u00020\u0002:\u0001pB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J*\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$\u0018\u00010#2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010%\u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020)H\u0002J\u0016\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$\u0018\u00010#H\u0002J\b\u0010.\u001a\u00020\u0004H\u0016J*\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$\u0018\u00010#2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010%\u001a\u0004\u0018\u00010!H\u0016J\b\u00100\u001a\u00020\u0004H\u0002J*\u00101\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020$\u0018\u00010#2\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010%\u001a\u0004\u0018\u00010!H\u0016J\b\u00102\u001a\u00020\u0004H\u0016J8\u00103\u001a\u00020\u001f2\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010%\u001a\u0004\u0018\u00010!2\u0006\u00106\u001a\u00020\u001dH\u0016J.\u00107\u001a\u00020\u001f2\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u00106\u001a\u00020\fH\u0016J.\u00108\u001a\u00020\u001f2\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u00106\u001a\u00020\u0016H\u0016J.\u00109\u001a\u00020\u001f2\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u00106\u001a\u00020\u0016H\u0016J.\u0010:\u001a\u00020\u001f2\b\u00104\u001a\u0004\u0018\u00010\u00042\b\u00105\u001a\u0004\u0018\u00010\u00042\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u00106\u001a\u00020\u001dH\u0016J\u0010\u0010;\u001a\u00020\u001f2\u0006\u0010<\u001a\u00020\u0004H\u0002J\u0018\u0010=\u001a\u00020\u001f2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0004H\u0002J\b\u0010A\u001a\u00020\u001fH\u0002J\u0010\u0010B\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010C\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020FH\u0016J6\u0010G\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010!2\b\u0010H\u001a\u0004\u0018\u00010\u00042\b\u0010I\u001a\u0004\u0018\u00010J2\u0006\u00106\u001a\u00020\fH\u0016J\"\u0010K\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010!2\u0006\u00106\u001a\u00020\u0016H\u0016J,\u0010L\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010!2\b\u0010H\u001a\u0004\u0018\u00010\u00042\u0006\u00106\u001a\u00020\u0016H\u0016J\"\u0010M\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u00042\b\u0010H\u001a\u0004\u0018\u00010\u00042\u0006\u00106\u001a\u00020\u0016H\u0002J\"\u0010O\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010!2\u0006\u00106\u001a\u00020\u001dH\u0016J,\u0010P\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\b\u0010%\u001a\u0004\u0018\u00010!2\b\u0010H\u001a\u0004\u0018\u00010\u00042\u0006\u00106\u001a\u00020\u001dH\u0016J\"\u0010Q\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u00042\b\u0010H\u001a\u0004\u0018\u00010\u00042\u0006\u00106\u001a\u00020\u001dH\u0002J\u0010\u0010R\u001a\u00020\u001f2\u0006\u0010S\u001a\u00020\u0004H\u0016J\b\u0010T\u001a\u00020\u001fH\u0016J\u001a\u0010U\u001a\u00020\u001f2\u0006\u0010E\u001a\u00020F2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u001f\u0010V\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u00042\b\u0010W\u001a\u0004\u0018\u00010\u000eH\u0000¢\u0006\u0002\bXJ\u0010\u0010Y\u001a\u00020\u001f2\u0006\u0010Z\u001a\u00020\u0012H\u0002J\u0010\u0010[\u001a\u00020\u001f2\u0006\u0010\\\u001a\u00020\u0004H\u0002J\u0010\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020\u0012H\u0014J\u001f\u0010_\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u00042\b\u0010`\u001a\u0004\u0018\u00010\u0010H\u0000¢\u0006\u0002\baJ\u001d\u0010b\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u00042\u0006\u0010c\u001a\u00020\u0012H\u0000¢\u0006\u0002\bdJ\u001e\u0010e\u001a\u00020\u001f2\u0006\u0010f\u001a\u00020\u00042\f\u0010g\u001a\b\u0012\u0004\u0012\u00020\u00040hH\u0014J\u001f\u0010i\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u00042\b\u0010j\u001a\u0004\u0018\u00010\u0018H\u0000¢\u0006\u0002\bkJ\u001d\u0010l\u001a\u00020\u001f2\u0006\u0010N\u001a\u00020\u00042\u0006\u0010c\u001a\u00020\u0012H\u0000¢\u0006\u0002\bmJ\u0018\u0010n\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u00106\u001a\u00020\u0016H\u0016J\u0018\u0010o\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u00106\u001a\u00020\u001dH\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\f0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00100\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00140\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00160\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00180\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00120\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001b0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001d0\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006q"}, d2 = {"Lcom/ironsource/adapters/pangle/PangleAdapter;", "Lcom/ironsource/mediationsdk/AbstractAdapter;", "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;", "providerName", "", "(Ljava/lang/String;)V", "mRewardedVideoSlotIdsForInitCallbacks", "Ljava/util/concurrent/CopyOnWriteArraySet;", "mSlotIdToBannerAdListener", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/ironsource/adapters/pangle/PangleBannerAdListener;", "mSlotIdToBannerListener", "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;", "mSlotIdToBannerView", "Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;", "mSlotIdToInterstitialAd", "Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;", "mSlotIdToInterstitialAdAvailability", "", "mSlotIdToInterstitialAdListener", "Lcom/ironsource/adapters/pangle/PangleInterstitialAdListener;", "mSlotIdToInterstitialListener", "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;", "mSlotIdToRewardedVideoAd", "Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;", "mSlotIdToRewardedVideoAdAvailability", "mSlotIdToRewardedVideoAdListener", "Lcom/ironsource/adapters/pangle/PangleRewardedVideoAdListener;", "mSlotIdToRewardedVideoListener", "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;", o2.g.Y, "", "config", "Lorg/json/JSONObject;", "getBannerBiddingData", "", "", "adData", "getBannerLayoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "size", "Lcom/ironsource/mediationsdk/ISBannerSize;", "getBannerSize", "Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;", j1.u, "getBiddingData", "getCoreSDKVersion", "getInterstitialBiddingData", "getMediationInfo", "getRewardedVideoBiddingData", MobileAdsBridge.versionMethodName, "initAndLoadRewardedVideo", "appKey", "userId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "initBannerForBidding", o2.g.H, "initInterstitialForBidding", "initRewardedVideoWithCallback", "initSdk", "appId", "initializationFailure", "code", "", "message", "initializationSuccess", "isInterstitialReady", "isRewardedVideoAvailable", "isUsingActivityBeforeImpression", "adUnit", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "loadBannerForBidding", d1.r, "banner", "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;", o2.g.K, "loadInterstitialForBidding", "loadInterstitialInternal", "slotId", "loadRewardedVideo", "loadRewardedVideoForBidding", "loadRewardedVideoInternal", "onNetworkInitCallbackFailed", "error", "onNetworkInitCallbackSuccess", "releaseMemory", "setBannerAd", "bannerAd", "setBannerAd$pangleadapter_release", "setCCPAValue", "doNotSell", "setCOPPAValue", "value", "setConsent", "consent", "setInterstitialAd", "interstitialAd", "setInterstitialAd$pangleadapter_release", "setInterstitialAdAvailability", "isAvailable", "setInterstitialAdAvailability$pangleadapter_release", "setMetaData", "key", "values", "", "setRewardedVideoAd", "rewardedVideoAd", "setRewardedVideoAd$pangleadapter_release", "setRewardedVideoAdAvailability", "setRewardedVideoAdAvailability$pangleadapter_release", o2.g.N, o2.g.h, "Companion", "pangleadapter_release"}, mv = {1, 8, 0}, xi = 48)
public final class PangleAdapter extends AbstractAdapter implements INetworkInitCallbackListener {
    private static final String ADAPTER_VERSION_KEY = "adapter_version";
    private static final String APP_ID_KEY = "appID";
    private static final String GitHash = "2a2e04978";
    private static final String MEDIATION_NAME = "Ironsource";
    private static final String MEDIATION_NAME_KEY = "mediation";
    private static final String META_DATA_PANGLE_COPPA_KEY = "Pangle_COPPA";
    private static final String NAME_KEY = "name";
    public static final int PANGLE_NO_FILL_ERROR_CODE = 20001;
    private static final String SLOT_ID_KEY = "slotID";
    private static final String VALUE_KEY = "value";
    private static final String VERSION = "4.3.23";
    private final CopyOnWriteArraySet<String> mRewardedVideoSlotIdsForInitCallbacks;
    private ConcurrentHashMap<String, PangleBannerAdListener> mSlotIdToBannerAdListener;
    private ConcurrentHashMap<String, BannerSmashListener> mSlotIdToBannerListener;
    private ConcurrentHashMap<String, PAGBannerAd> mSlotIdToBannerView;
    private ConcurrentHashMap<String, PAGInterstitialAd> mSlotIdToInterstitialAd;
    private final ConcurrentHashMap<String, Boolean> mSlotIdToInterstitialAdAvailability;
    private ConcurrentHashMap<String, PangleInterstitialAdListener> mSlotIdToInterstitialAdListener;
    private ConcurrentHashMap<String, InterstitialSmashListener> mSlotIdToInterstitialListener;
    private ConcurrentHashMap<String, PAGRewardedAd> mSlotIdToRewardedVideoAd;
    private final ConcurrentHashMap<String, Boolean> mSlotIdToRewardedVideoAdAvailability;
    private ConcurrentHashMap<String, PangleRewardedVideoAdListener> mSlotIdToRewardedVideoAdListener;
    private ConcurrentHashMap<String, RewardedVideoSmashListener> mSlotIdToRewardedVideoListener;
    public static final Companion Companion = new Companion(null);
    private static final PAGConfig.Builder mPAGConfigBuilder = new PAGConfig.Builder();
    private static final AtomicBoolean mWasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState mInitState = Companion.InitState.INIT_STATE_NONE;
    private static final HashSet<INetworkInitCallbackListener> initCallbackListeners = new HashSet<>();

    /* JADX INFO: compiled from: PangleAdapter.kt */
    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\"B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001a\u001a\u00020\u0004H\u0007J\u0012\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0012`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/ironsource/adapters/pangle/PangleAdapter$Companion;", "", "()V", "ADAPTER_VERSION_KEY", "", "APP_ID_KEY", "GitHash", "MEDIATION_NAME", "MEDIATION_NAME_KEY", "META_DATA_PANGLE_COPPA_KEY", "NAME_KEY", "PANGLE_NO_FILL_ERROR_CODE", "", "SLOT_ID_KEY", "VALUE_KEY", "VERSION", "initCallbackListeners", "Ljava/util/HashSet;", "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;", "Lkotlin/collections/HashSet;", "mInitState", "Lcom/ironsource/adapters/pangle/PangleAdapter$Companion$InitState;", "mPAGConfigBuilder", "Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;", "mWasInitCalled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "getAdapterSDKVersion", "getIntegrationData", "Lcom/ironsource/mediationsdk/IntegrationData;", "context", "Landroid/content/Context;", IronSourceConstants.START_ADAPTER, "Lcom/ironsource/adapters/pangle/PangleAdapter;", "providerName", "InitState", "pangleadapter_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: PangleAdapter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/ironsource/adapters/pangle/PangleAdapter$Companion$InitState;", "", "(Ljava/lang/String;I)V", "INIT_STATE_NONE", "INIT_STATE_IN_PROGRESS", "INIT_STATE_SUCCESS", "INIT_STATE_FAILED", "pangleadapter_release"}, mv = {1, 8, 0}, xi = 48)
        private enum InitState {
            INIT_STATE_NONE,
            INIT_STATE_IN_PROGRESS,
            INIT_STATE_SUCCESS,
            INIT_STATE_FAILED
        }

        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final String getAdapterSDKVersion() {
            String sDKVersion = PAGSdk.getSDKVersion();
            Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion()");
            return sDKVersion;
        }

        public final IntegrationData getIntegrationData(Context context) {
            return new IntegrationData("Pangle", "4.3.23");
        }

        public final PangleAdapter startAdapter(String providerName) {
            Intrinsics.checkNotNullParameter(providerName, "providerName");
            return new PangleAdapter(providerName);
        }
    }

    /* JADX INFO: compiled from: PangleAdapter.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Companion.InitState.values().length];
            try {
                iArr[Companion.InitState.INIT_STATE_SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Companion.InitState.INIT_STATE_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[IronSource.AD_UNIT.values().length];
            try {
                iArr2[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[IronSource.AD_UNIT.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PangleAdapter(String providerName) {
        super(providerName);
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.mSlotIdToRewardedVideoListener = new ConcurrentHashMap<>();
        this.mSlotIdToRewardedVideoAdListener = new ConcurrentHashMap<>();
        this.mSlotIdToRewardedVideoAd = new ConcurrentHashMap<>();
        this.mSlotIdToRewardedVideoAdAvailability = new ConcurrentHashMap<>();
        this.mRewardedVideoSlotIdsForInitCallbacks = new CopyOnWriteArraySet<>();
        this.mSlotIdToInterstitialListener = new ConcurrentHashMap<>();
        this.mSlotIdToInterstitialAdListener = new ConcurrentHashMap<>();
        this.mSlotIdToInterstitialAd = new ConcurrentHashMap<>();
        this.mSlotIdToInterstitialAdAvailability = new ConcurrentHashMap<>();
        this.mSlotIdToBannerListener = new ConcurrentHashMap<>();
        this.mSlotIdToBannerAdListener = new ConcurrentHashMap<>();
        this.mSlotIdToBannerView = new ConcurrentHashMap<>();
        this.mLWSSupportState = LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyBanner$lambda$14(PangleAdapter this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PAGBannerAd pAGBannerAd = this$0.mSlotIdToBannerView.get(str);
        if (pAGBannerAd != null) {
            pAGBannerAd.setAdInteractionListener(null);
        }
        PAGBannerAd pAGBannerAd2 = this$0.mSlotIdToBannerView.get(str);
        if (pAGBannerAd2 != null) {
            pAGBannerAd2.destroy();
        }
        this$0.mSlotIdToBannerView.remove(str);
    }

    public static final String getAdapterSDKVersion() {
        return Companion.getAdapterSDKVersion();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.widget.FrameLayout.LayoutParams getBannerLayoutParams(com.json.mediationsdk.ISBannerSize r6) {
        /*
            r5 = this;
            com.ironsource.environment.ContextProvider r0 = com.json.environment.ContextProvider.getInstance()
            android.content.Context r0 = r0.getApplicationContext()
            java.lang.String r6 = r6.getDescription()
            if (r6 == 0) goto L87
            int r1 = r6.hashCode()
            r2 = -387072689(0xffffffffe8edbd4f, float:-8.981544E24)
            if (r1 == r2) goto L6c
            r2 = 79011241(0x4b59da9, float:4.2697683E-36)
            r3 = 50
            r4 = 320(0x140, float:4.48E-43)
            if (r1 == r2) goto L3d
            r2 = 1951953708(0x7458732c, float:6.859571E31)
            if (r1 == r2) goto L26
            goto L87
        L26:
            java.lang.String r1 = "BANNER"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L2f
            goto L87
        L2f:
            android.widget.FrameLayout$LayoutParams r6 = new android.widget.FrameLayout$LayoutParams
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r4)
            int r0 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r3)
            r6.<init>(r1, r0)
            goto L8d
        L3d:
            java.lang.String r1 = "SMART"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L46
            goto L87
        L46:
            boolean r6 = com.json.mediationsdk.AdapterUtils.isLargeScreen(r0)
            if (r6 == 0) goto L5e
            android.widget.FrameLayout$LayoutParams r6 = new android.widget.FrameLayout$LayoutParams
            r1 = 728(0x2d8, float:1.02E-42)
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r1)
            r2 = 90
            int r0 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r2)
            r6.<init>(r1, r0)
            goto L8d
        L5e:
            android.widget.FrameLayout$LayoutParams r6 = new android.widget.FrameLayout$LayoutParams
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r4)
            int r0 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r3)
            r6.<init>(r1, r0)
            goto L8d
        L6c:
            java.lang.String r1 = "RECTANGLE"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L75
            goto L87
        L75:
            android.widget.FrameLayout$LayoutParams r6 = new android.widget.FrameLayout$LayoutParams
            r1 = 300(0x12c, float:4.2E-43)
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r1)
            r2 = 250(0xfa, float:3.5E-43)
            int r0 = com.json.mediationsdk.AdapterUtils.dpToPixels(r0, r2)
            r6.<init>(r1, r0)
            goto L8d
        L87:
            android.widget.FrameLayout$LayoutParams r6 = new android.widget.FrameLayout$LayoutParams
            r0 = 0
            r6.<init>(r0, r0)
        L8d:
            r0 = 17
            r6.gravity = r0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adapters.pangle.PangleAdapter.getBannerLayoutParams(com.ironsource.mediationsdk.ISBannerSize):android.widget.FrameLayout$LayoutParams");
    }

    private final PAGBannerSize getBannerSize(ISBannerSize iSBannerSize) {
        String description = iSBannerSize.getDescription();
        if (description != null) {
            int iHashCode = description.hashCode();
            if (iHashCode != -387072689) {
                if (iHashCode != 79011241) {
                    if (iHashCode == 1951953708 && description.equals(l.a)) {
                        PAGBannerSize BANNER_W_320_H_50 = PAGBannerSize.BANNER_W_320_H_50;
                        Intrinsics.checkNotNullExpressionValue(BANNER_W_320_H_50, "BANNER_W_320_H_50");
                        return BANNER_W_320_H_50;
                    }
                } else if (description.equals(l.f6336e)) {
                    PAGBannerSize pAGBannerSize = AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? PAGBannerSize.BANNER_W_728_H_90 : PAGBannerSize.BANNER_W_320_H_50;
                    Intrinsics.checkNotNullExpressionValue(pAGBannerSize, "if (AdapterUtils.isLarge…20_H_50\n                }");
                    return pAGBannerSize;
                }
            } else if (description.equals(l.c)) {
                PAGBannerSize BANNER_W_300_H_250 = PAGBannerSize.BANNER_W_300_H_250;
                Intrinsics.checkNotNullExpressionValue(BANNER_W_300_H_250, "BANNER_W_300_H_250");
                return BANNER_W_300_H_250;
            }
        }
        return new PAGBannerSize(0, 0);
    }

    private final Map<String, Object> getBiddingData() {
        if (mInitState == Companion.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.error("returning null as token since init is not successful");
            return null;
        }
        HashMap map = new HashMap();
        String bidderToken = PAGSdk.getBiddingToken();
        if (bidderToken == null || bidderToken.length() == 0) {
            bidderToken = "";
        }
        IronLog.ADAPTER_API.verbose("token = " + bidderToken);
        Intrinsics.checkNotNullExpressionValue(bidderToken, "bidderToken");
        map.put("token", bidderToken);
        return map;
    }

    public static final IntegrationData getIntegrationData(Context context) {
        return Companion.getIntegrationData(context);
    }

    private final String getMediationInfo() {
        JSONArray jSONArray = new JSONArray();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", MEDIATION_NAME_KEY);
            jSONObject.put("value", MEDIATION_NAME);
            jSONArray.put(jSONObject);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("name", ADAPTER_VERSION_KEY);
            jSONObject2.put("value", "4.3.23");
            jSONArray.put(jSONObject2);
            IronLog.INTERNAL.verbose("mediationInfo = " + jSONArray);
        } catch (JSONException e2) {
            IronLog.INTERNAL.error("Error while creating mediation info object - " + e2);
        }
        String string = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(string, "mediationInfo.toString()");
        return string;
    }

    private final void initSdk(String str) {
        if (mInitState == Companion.InitState.INIT_STATE_NONE || mInitState == Companion.InitState.INIT_STATE_IN_PROGRESS) {
            initCallbackListeners.add(this);
        }
        if (mWasInitCalled.compareAndSet(false, true)) {
            mInitState = Companion.InitState.INIT_STATE_IN_PROGRESS;
            IronLog.ADAPTER_API.verbose("appId = " + str);
            final Context applicationContext = ContextProvider.getInstance().getApplicationContext();
            final PAGConfig pAGConfigBuild = mPAGConfigBuilder.appId(str).setUserData(getMediationInfo()).debugLog(isAdaptersDebugEnabled()).supportMultiProcess(false).build();
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.b
                @Override // java.lang.Runnable
                public final void run() {
                    PangleAdapter.initSdk$lambda$0(applicationContext, pAGConfigBuild, this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initSdk$lambda$0(Context context, PAGConfig pAGConfig, final PangleAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PAGSdk.init(context, pAGConfig, new PAGSdk.PAGInitCallback() { // from class: com.ironsource.adapters.pangle.PangleAdapter$initSdk$1$1
            @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
            public void fail(int code, String message) {
                Intrinsics.checkNotNullParameter(message, "message");
                this.this$0.initializationFailure(code, message);
            }

            @Override // com.bytedance.sdk.openadsdk.api.init.PAGSdk.PAGInitCallback
            public void success() {
                this.this$0.initializationSuccess();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationFailure(int i, String str) {
        IronLog.ADAPTER_CALLBACK.verbose("error code = " + i + ", message = " + str);
        mInitState = Companion.InitState.INIT_STATE_FAILED;
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackFailed(str);
        }
        initCallbackListeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        mInitState = Companion.InitState.INIT_STATE_SUCCESS;
        for (INetworkInitCallbackListener initCallbackListeners2 : initCallbackListeners) {
            Intrinsics.checkNotNullExpressionValue(initCallbackListeners2, "initCallbackListeners");
            initCallbackListeners2.onNetworkInitCallbackSuccess();
        }
        initCallbackListeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadBannerForBidding$lambda$13(String str, PAGBannerRequest bannerRequest, PangleBannerAdListener bannerAdListener) {
        Intrinsics.checkNotNullParameter(bannerRequest, "$bannerRequest");
        Intrinsics.checkNotNullParameter(bannerAdListener, "$bannerAdListener");
        PAGBannerAd.loadAd(str, bannerRequest, bannerAdListener);
    }

    private final void loadInterstitialInternal(final String str, String str2, InterstitialSmashListener interstitialSmashListener) {
        setInterstitialAdAvailability$pangleadapter_release(str, false);
        final PangleInterstitialAdListener pangleInterstitialAdListener = new PangleInterstitialAdListener(interstitialSmashListener, new WeakReference(this), str);
        this.mSlotIdToInterstitialAdListener.put(str, pangleInterstitialAdListener);
        final PAGInterstitialRequest pAGInterstitialRequest = new PAGInterstitialRequest();
        if (str2 != null) {
            pAGInterstitialRequest.setAdString(str2);
        }
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.d
            @Override // java.lang.Runnable
            public final void run() {
                PangleAdapter.loadInterstitialInternal$lambda$10(str, pAGInterstitialRequest, pangleInterstitialAdListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInterstitialInternal$lambda$10(String slotId, PAGInterstitialRequest request, PangleInterstitialAdListener interstitialAdListener) {
        Intrinsics.checkNotNullParameter(slotId, "$slotId");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(interstitialAdListener, "$interstitialAdListener");
        PAGInterstitialAd.loadAd(slotId, request, interstitialAdListener);
    }

    private final void loadRewardedVideoInternal(final String str, String str2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        IronLog.ADAPTER_API.verbose("slotId = " + str);
        setRewardedVideoAdAvailability$pangleadapter_release(str, false);
        final PangleRewardedVideoAdListener pangleRewardedVideoAdListener = new PangleRewardedVideoAdListener(rewardedVideoSmashListener, new WeakReference(this), str);
        this.mSlotIdToRewardedVideoAdListener.put(str, pangleRewardedVideoAdListener);
        final PAGRewardedRequest pAGRewardedRequest = new PAGRewardedRequest();
        if (str2 != null) {
            pAGRewardedRequest.setAdString(str2);
        }
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.e
            @Override // java.lang.Runnable
            public final void run() {
                PangleAdapter.loadRewardedVideoInternal$lambda$7(str, pAGRewardedRequest, pangleRewardedVideoAdListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadRewardedVideoInternal$lambda$7(String slotId, PAGRewardedRequest request, PangleRewardedVideoAdListener rewardedVideoAdListener) {
        Intrinsics.checkNotNullParameter(slotId, "$slotId");
        Intrinsics.checkNotNullParameter(request, "$request");
        Intrinsics.checkNotNullParameter(rewardedVideoAdListener, "$rewardedVideoAdListener");
        PAGRewardedAd.loadAd(slotId, request, rewardedVideoAdListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void releaseMemory$lambda$18$lambda$17(PAGBannerAd bannerAd, PangleAdapter this$0) {
        Intrinsics.checkNotNullParameter(bannerAd, "$bannerAd");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bannerAd.setAdInteractionListener(null);
        bannerAd.destroy();
        this$0.mSlotIdToBannerListener.clear();
        this$0.mSlotIdToBannerAdListener.clear();
        this$0.mSlotIdToBannerView.clear();
    }

    private final void setCCPAValue(boolean z) {
        int i;
        String str;
        if (z) {
            i = 1;
            str = "PAG_DO_NOT_SELL_TYPE_NOT_SELL";
        } else {
            i = 0;
            str = "PAG_DO_NOT_SELL_TYPE_SELL";
        }
        IronLog.ADAPTER_API.verbose("ccpaValue = " + str);
        mPAGConfigBuilder.setDoNotSell(i);
    }

    private final void setCOPPAValue(String str) {
        String str2;
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(str);
        int i = 1;
        if (intOrNull != null && intOrNull.intValue() == 1) {
            str2 = "PAG_CHILD_DIRECTED_TYPE_CHILD";
        } else if (intOrNull != null && intOrNull.intValue() == 0) {
            i = 0;
            str2 = "PAG_CHILD_DIRECTED_TYPE_NON_CHILD";
        } else {
            i = -1;
            str2 = "PAG_CHILD_DIRECTED_TYPE_DEFAULT";
        }
        IronLog.ADAPTER_API.verbose("coppaValue = " + str2);
        mPAGConfigBuilder.setChildDirected(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showInterstitial$lambda$12$lambda$11(PAGInterstitialAd interstitialAd, Activity activity) {
        Intrinsics.checkNotNullParameter(interstitialAd, "$interstitialAd");
        interstitialAd.show(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showRewardedVideo$lambda$9$lambda$8(PAGRewardedAd rewardedVideoAd, Activity activity) {
        Intrinsics.checkNotNullParameter(rewardedVideoAd, "$rewardedVideoAd");
        rewardedVideoAd.show(activity);
    }

    public static final PangleAdapter startAdapter(String str) {
        return Companion.startAdapter(str);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject jSONObject) {
        final String strOptString = jSONObject != null ? jSONObject.optString(SLOT_ID_KEY) : null;
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose("slotId = " + strOptString);
        if (!this.mSlotIdToBannerView.containsKey(strOptString)) {
            ironLog.verbose("Banner is already destroyed");
            return;
        }
        if (strOptString == null || strOptString.length() == 0) {
            return;
        }
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.g
            @Override // java.lang.Runnable
            public final void run() {
                PangleAdapter.destroyBanner$lambda$14(this.a, strOptString);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public Map<String, Object> getBannerBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return Companion.getAdapterSDKVersion();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public Map<String, Object> getInterstitialBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public Map<String, Object> getRewardedVideoBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "4.3.23";
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, String str2, JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strOptString = jSONObject != null ? jSONObject.optString(SLOT_ID_KEY) : null;
        String strOptString2 = jSONObject != null ? jSONObject.optString("appID") : null;
        if (strOptString == null || strOptString.length() == 0) {
            IronLog.INTERNAL.error("Missing param - slotID");
            listener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (strOptString2 == null || strOptString2.length() == 0) {
            IronLog.INTERNAL.error("Missing param - appID");
            listener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        IronLog.ADAPTER_API.verbose("slotId = " + strOptString);
        this.mSlotIdToRewardedVideoListener.put(strOptString, listener);
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 1) {
            loadRewardedVideoInternal(strOptString, null, listener);
            return;
        }
        if (i != 2) {
            initSdk(strOptString2);
            return;
        }
        IronLog.INTERNAL.verbose("init failed - slotId = " + strOptString);
        listener.onRewardedVideoAvailabilityChanged(false);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String str, String str2, JSONObject jSONObject, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strOptString = jSONObject != null ? jSONObject.optString(SLOT_ID_KEY) : null;
        String strOptString2 = jSONObject != null ? jSONObject.optString("appID") : null;
        if (strOptString == null || strOptString.length() == 0) {
            IronLog.INTERNAL.error("Missing param - slotID");
            listener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing params - slotID", "Banner"));
            return;
        }
        if (strOptString2 == null || strOptString2.length() == 0) {
            IronLog.INTERNAL.error("Missing param - appID");
            listener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing params - appID", "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("slotId = " + strOptString);
        this.mSlotIdToBannerListener.put(strOptString, listener);
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 1) {
            listener.onBannerInitSuccess();
            return;
        }
        if (i != 2) {
            initSdk(strOptString2);
            return;
        }
        IronLog.INTERNAL.verbose("init failed - slotId = " + strOptString);
        listener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Pangle SDK init failed", "Banner"));
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, String str2, JSONObject jSONObject, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strOptString = jSONObject != null ? jSONObject.optString(SLOT_ID_KEY) : null;
        String strOptString2 = jSONObject != null ? jSONObject.optString("appID") : null;
        if (strOptString == null || strOptString.length() == 0) {
            IronLog.INTERNAL.error("Missing param - slotID");
            listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params - slotID", "Interstitial"));
            return;
        }
        if (strOptString2 == null || strOptString2.length() == 0) {
            IronLog.INTERNAL.error("Missing param - appID");
            listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params - appID", "Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("slotId = " + strOptString);
        this.mSlotIdToInterstitialListener.put(strOptString, listener);
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 1) {
            listener.onInterstitialInitSuccess();
            return;
        }
        if (i != 2) {
            initSdk(strOptString2);
            return;
        }
        IronLog.INTERNAL.verbose("init failed - slotId = " + strOptString);
        listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Pangle SDK init failed", "Interstitial"));
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String str, String str2, JSONObject jSONObject, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.INTERNAL.verbose();
        initInterstitial(str, str2, jSONObject, listener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, String str2, JSONObject jSONObject, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        String strOptString = jSONObject != null ? jSONObject.optString(SLOT_ID_KEY) : null;
        String strOptString2 = jSONObject != null ? jSONObject.optString("appID") : null;
        if (strOptString == null || strOptString.length() == 0) {
            IronLog.INTERNAL.error("Missing param - slotID");
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing params - slotID", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (strOptString2 == null || strOptString2.length() == 0) {
            IronLog.INTERNAL.error("Missing param - appID");
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing params - appID", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("slotId = " + strOptString);
        this.mSlotIdToRewardedVideoListener.put(strOptString, listener);
        this.mRewardedVideoSlotIdsForInitCallbacks.add(strOptString);
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 1) {
            listener.onRewardedVideoInitSuccess();
            return;
        }
        if (i != 2) {
            initSdk(strOptString2);
            return;
        }
        IronLog.INTERNAL.verbose("init failed - slotId = " + strOptString);
        listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Pangle SDK init failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        String strOptString = config.optString(SLOT_ID_KEY);
        return !(strOptString == null || strOptString.length() == 0) && this.mSlotIdToInterstitialAd.containsKey(strOptString) && this.mSlotIdToInterstitialAdAvailability.containsKey(strOptString) && Intrinsics.areEqual(this.mSlotIdToInterstitialAdAvailability.get(strOptString), Boolean.TRUE);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        String strOptString = config.optString(SLOT_ID_KEY);
        return !(strOptString == null || strOptString.length() == 0) && this.mSlotIdToRewardedVideoAd.containsKey(strOptString) && this.mSlotIdToRewardedVideoAdAvailability.containsKey(strOptString) && Intrinsics.areEqual(this.mSlotIdToRewardedVideoAdAvailability.get(strOptString), Boolean.TRUE);
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        return false;
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(JSONObject config, JSONObject jSONObject, String str, IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String slotId = config.optString(SLOT_ID_KEY);
        IronLog.ADAPTER_API.verbose("slotId = " + slotId);
        if (ironSourceBannerLayout == null) {
            IronLog.INTERNAL.error("banner is null");
            listener.onBannerAdLoadFailed(ErrorBuilder.buildNoConfigurationAvailableError("banner is null"));
            return;
        }
        ISBannerSize size = ironSourceBannerLayout.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "banner.size");
        FrameLayout.LayoutParams bannerLayoutParams = getBannerLayoutParams(size);
        WeakReference weakReference = new WeakReference(this);
        Intrinsics.checkNotNullExpressionValue(slotId, "slotId");
        final PangleBannerAdListener pangleBannerAdListener = new PangleBannerAdListener(listener, weakReference, slotId, bannerLayoutParams);
        this.mSlotIdToBannerAdListener.put(slotId, pangleBannerAdListener);
        ISBannerSize size2 = ironSourceBannerLayout.getSize();
        Intrinsics.checkNotNullExpressionValue(size2, "banner.size");
        final PAGBannerRequest pAGBannerRequest = new PAGBannerRequest(getBannerSize(size2));
        pAGBannerRequest.setAdString(str);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.c
            @Override // java.lang.Runnable
            public final void run() {
                PangleAdapter.loadBannerForBidding$lambda$13(slotId, pAGBannerRequest, pangleBannerAdListener);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject config, JSONObject jSONObject, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String slotId = config.optString(SLOT_ID_KEY);
        IronLog.ADAPTER_API.verbose("slotId = " + slotId);
        Intrinsics.checkNotNullExpressionValue(slotId, "slotId");
        loadInterstitialInternal(slotId, null, listener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject config, JSONObject jSONObject, String str, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String slotId = config.optString(SLOT_ID_KEY);
        IronLog.ADAPTER_API.verbose("slotId = " + slotId);
        Intrinsics.checkNotNullExpressionValue(slotId, "slotId");
        loadInterstitialInternal(slotId, str, listener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject config, JSONObject jSONObject, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String slotId = config.optString(SLOT_ID_KEY);
        Intrinsics.checkNotNullExpressionValue(slotId, "slotId");
        loadRewardedVideoInternal(slotId, null, listener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideoForBidding(JSONObject config, JSONObject jSONObject, String str, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String slotId = config.optString(SLOT_ID_KEY);
        Intrinsics.checkNotNullExpressionValue(slotId, "slotId");
        loadRewardedVideoInternal(slotId, str, listener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        for (Map.Entry<String, RewardedVideoSmashListener> entry : this.mSlotIdToRewardedVideoListener.entrySet()) {
            String key = entry.getKey();
            RewardedVideoSmashListener value = entry.getValue();
            if (this.mRewardedVideoSlotIdsForInitCallbacks.contains(key)) {
                value.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(error, IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                value.onRewardedVideoAvailabilityChanged(false);
            }
        }
        Iterator<Map.Entry<String, InterstitialSmashListener>> it = this.mSlotIdToInterstitialListener.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(error, "Interstitial"));
        }
        Iterator<Map.Entry<String, BannerSmashListener>> it2 = this.mSlotIdToBannerListener.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().onBannerInitFailed(ErrorBuilder.buildInitFailedError(error, "Banner"));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        for (Map.Entry<String, RewardedVideoSmashListener> entry : this.mSlotIdToRewardedVideoListener.entrySet()) {
            String key = entry.getKey();
            RewardedVideoSmashListener value = entry.getValue();
            if (this.mRewardedVideoSlotIdsForInitCallbacks.contains(key)) {
                value.onRewardedVideoInitSuccess();
            } else {
                loadRewardedVideoInternal(key, null, value);
            }
        }
        Iterator<Map.Entry<String, InterstitialSmashListener>> it = this.mSlotIdToInterstitialListener.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().onInterstitialInitSuccess();
        }
        Iterator<Map.Entry<String, BannerSmashListener>> it2 = this.mSlotIdToBannerListener.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().onBannerInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT adUnit, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        IronLog.INTERNAL.verbose("adUnit = " + adUnit);
        int i = WhenMappings.$EnumSwitchMapping$1[adUnit.ordinal()];
        if (i == 1) {
            Iterator<Map.Entry<String, PAGRewardedAd>> it = this.mSlotIdToRewardedVideoAd.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().setAdInteractionListener(null);
            }
            this.mSlotIdToRewardedVideoListener.clear();
            this.mSlotIdToRewardedVideoAdListener.clear();
            this.mSlotIdToRewardedVideoAd.clear();
            this.mSlotIdToRewardedVideoAdAvailability.clear();
            this.mRewardedVideoSlotIdsForInitCallbacks.clear();
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            Iterator<Map.Entry<String, PAGBannerAd>> it2 = this.mSlotIdToBannerView.entrySet().iterator();
            while (it2.hasNext()) {
                final PAGBannerAd value = it2.next().getValue();
                AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        PangleAdapter.releaseMemory$lambda$18$lambda$17(value, this);
                    }
                });
            }
            return;
        }
        Iterator<Map.Entry<String, PAGInterstitialAd>> it3 = this.mSlotIdToInterstitialAd.entrySet().iterator();
        while (it3.hasNext()) {
            it3.next().getValue().setAdInteractionListener(null);
        }
        this.mSlotIdToInterstitialListener.clear();
        this.mSlotIdToInterstitialAdListener.clear();
        this.mSlotIdToInterstitialAd.clear();
        this.mSlotIdToInterstitialAdAvailability.clear();
    }

    public final void setBannerAd$pangleadapter_release(String slotId, PAGBannerAd pAGBannerAd) {
        Intrinsics.checkNotNullParameter(slotId, "slotId");
        if (pAGBannerAd != null) {
            this.mSlotIdToBannerView.put(slotId, pAGBannerAd);
            pAGBannerAd.setAdInteractionListener(this.mSlotIdToBannerAdListener.get(slotId));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setConsent(boolean z) {
        int i;
        String str;
        if (z) {
            i = 1;
            str = "PAG_GDPR_CONSENT_TYPE_CONSENT";
        } else {
            i = 0;
            str = "PAG_GDPR_CONSENT_TYPE_NO_CONSENT";
        }
        IronLog.ADAPTER_API.verbose("consent = " + str);
        mPAGConfigBuilder.setGDPRConsent(i);
    }

    public final void setInterstitialAd$pangleadapter_release(String slotId, PAGInterstitialAd pAGInterstitialAd) {
        Intrinsics.checkNotNullParameter(slotId, "slotId");
        if (pAGInterstitialAd != null) {
            this.mSlotIdToInterstitialAd.put(slotId, pAGInterstitialAd);
        }
    }

    public final void setInterstitialAdAvailability$pangleadapter_release(String slotId, boolean z) {
        Intrinsics.checkNotNullParameter(slotId, "slotId");
        this.mSlotIdToInterstitialAdAvailability.put(slotId, Boolean.valueOf(z));
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setMetaData(String key, List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        if (values.isEmpty()) {
            return;
        }
        String str = values.get(0);
        IronLog.ADAPTER_API.verbose("key = " + key + ", value = " + str);
        if (MetaDataUtils.isValidCCPAMetaData(key, str)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str));
        } else if (MetaDataUtils.isValidMetaData(key, META_DATA_PANGLE_COPPA_KEY, str)) {
            setCOPPAValue(str);
        }
    }

    public final void setRewardedVideoAd$pangleadapter_release(String slotId, PAGRewardedAd pAGRewardedAd) {
        Intrinsics.checkNotNullParameter(slotId, "slotId");
        if (pAGRewardedAd != null) {
            this.mSlotIdToRewardedVideoAd.put(slotId, pAGRewardedAd);
        }
    }

    public final void setRewardedVideoAdAvailability$pangleadapter_release(String slotId, boolean z) {
        Intrinsics.checkNotNullParameter(slotId, "slotId");
        this.mSlotIdToRewardedVideoAdAvailability.put(slotId, Boolean.valueOf(z));
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String slotId = config.optString(SLOT_ID_KEY);
        IronLog.ADAPTER_API.verbose("slotId = " + slotId);
        if (isInterstitialReady(config)) {
            final Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
            final PAGInterstitialAd pAGInterstitialAd = this.mSlotIdToInterstitialAd.get(slotId);
            if (pAGInterstitialAd != null) {
                pAGInterstitialAd.setAdInteractionListener(this.mSlotIdToInterstitialAdListener.get(slotId));
                AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        PangleAdapter.showInterstitial$lambda$12$lambda$11(pAGInterstitialAd, currentActiveActivity);
                    }
                });
            }
        } else {
            listener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
        }
        Intrinsics.checkNotNullExpressionValue(slotId, "slotId");
        setInterstitialAdAvailability$pangleadapter_release(slotId, false);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String slotId = config.optString(SLOT_ID_KEY);
        IronLog.ADAPTER_API.verbose("slotId = " + slotId);
        if (isRewardedVideoAvailable(config)) {
            final Activity currentActiveActivity = ContextProvider.getInstance().getCurrentActiveActivity();
            final PAGRewardedAd pAGRewardedAd = this.mSlotIdToRewardedVideoAd.get(slotId);
            if (pAGRewardedAd != null) {
                pAGRewardedAd.setAdInteractionListener(this.mSlotIdToRewardedVideoAdListener.get(slotId));
                AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.pangle.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        PangleAdapter.showRewardedVideo$lambda$9$lambda$8(pAGRewardedAd, currentActiveActivity);
                    }
                });
            }
        } else {
            listener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
        Intrinsics.checkNotNullExpressionValue(slotId, "slotId");
        setRewardedVideoAdAvailability$pangleadapter_release(slotId, false);
    }
}
