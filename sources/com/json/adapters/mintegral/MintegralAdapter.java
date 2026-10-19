package com.json.adapters.mintegral;

import android.content.Context;
import android.widget.FrameLayout;
import com.gameloft.adsmanager.JavaUtils;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.adapters.mintegral.MintegralAdapter;
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
import com.json.mediationsdk.metadata.MetaData;
import com.json.mediationsdk.metadata.MetaDataUtils;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.mbbid.out.BidManager;
import com.mbridge.msdk.newinterstitial.out.MBBidInterstitialVideoHandler;
import com.mbridge.msdk.out.BannerSize;
import com.mbridge.msdk.out.MBBannerView;
import com.mbridge.msdk.out.MBBidRewardVideoHandler;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.out.SDKInitStatusListener;
import com.mbridge.msdk.system.a;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
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
/* JADX INFO: compiled from: MintegralAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010!\n\u0002\b\u0007\u0018\u0000 d2\u00020\u00012\u00020\u0002:\u0001dB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0002J\u0018\u0010'\u001a\u00020(2\u0006\u0010#\u001a\u00020$2\u0006\u0010)\u001a\u00020&H\u0002J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J(\u0010.\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000200\u0018\u00010/2\u0006\u0010,\u001a\u00020-2\b\u00101\u001a\u0004\u0018\u00010-H\u0016J\u0010\u00102\u001a\u0004\u0018\u00010\u000f2\u0006\u00103\u001a\u00020\u0004J\u0010\u00104\u001a\u0004\u0018\u00010\u00132\u0006\u00103\u001a\u00020\u0004J\u0016\u00105\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000200\u0018\u00010/H\u0002J\b\u00106\u001a\u00020\u0004H\u0016J(\u00107\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000200\u0018\u00010/2\u0006\u0010,\u001a\u00020-2\b\u00101\u001a\u0004\u0018\u00010-H\u0016J(\u00108\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u000200\u0018\u00010/2\u0006\u0010,\u001a\u00020-2\b\u00101\u001a\u0004\u0018\u00010-H\u0016J\b\u00109\u001a\u00020\u0004H\u0016J,\u0010:\u001a\u00020+2\b\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010\u00042\u0006\u0010,\u001a\u00020-2\u0006\u0010=\u001a\u00020\u0011H\u0016J,\u0010>\u001a\u00020+2\b\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010\u00042\u0006\u0010,\u001a\u00020-2\u0006\u0010=\u001a\u00020\u001aH\u0016J,\u0010?\u001a\u00020+2\b\u0010;\u001a\u0004\u0018\u00010\u00042\b\u0010<\u001a\u0004\u0018\u00010\u00042\u0006\u0010,\u001a\u00020-2\u0006\u0010=\u001a\u00020!H\u0016J\u0018\u0010@\u001a\u00020+2\u0006\u0010A\u001a\u00020\u00042\u0006\u0010B\u001a\u00020\u0004H\u0002J\u0018\u0010C\u001a\u00020\u00072\u0006\u0010D\u001a\u00020\u00042\u0006\u0010E\u001a\u00020\u0004H\u0002J\u0010\u0010F\u001a\u00020\u00072\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010G\u001a\u00020\u00072\b\u0010H\u001a\u0004\u0018\u00010\u0004J\u0010\u0010I\u001a\u00020\u00072\u0006\u0010,\u001a\u00020-H\u0016J\u0010\u0010J\u001a\u00020\u00072\u0006\u0010K\u001a\u00020LH\u0016J6\u0010M\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u00101\u001a\u0004\u0018\u00010-2\b\u0010N\u001a\u0004\u0018\u00010\u00042\b\u0010O\u001a\u0004\u0018\u00010P2\u0006\u0010=\u001a\u00020\u0011H\u0016J,\u0010Q\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u00101\u001a\u0004\u0018\u00010-2\b\u0010N\u001a\u0004\u0018\u00010\u00042\u0006\u0010=\u001a\u00020\u001aH\u0016J,\u0010R\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u00101\u001a\u0004\u0018\u00010-2\b\u0010N\u001a\u0004\u0018\u00010\u00042\u0006\u0010=\u001a\u00020!H\u0016J\u0012\u0010S\u001a\u00020+2\b\u0010T\u001a\u0004\u0018\u00010\u0004H\u0016J\b\u0010U\u001a\u00020+H\u0016J\u001a\u0010V\u001a\u00020+2\u0006\u0010K\u001a\u00020L2\b\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0010\u0010W\u001a\u00020+2\u0006\u0010X\u001a\u00020\u0007H\u0002J\u0010\u0010Y\u001a\u00020+2\u0006\u0010E\u001a\u00020\u0007H\u0002J\u0010\u0010Z\u001a\u00020+2\u0006\u0010[\u001a\u00020\u0007H\u0014J\u001e\u0010\\\u001a\u00020+2\u0006\u0010D\u001a\u00020\u00042\f\u0010]\u001a\b\u0012\u0004\u0012\u00020\u00040^H\u0014J\u0018\u0010_\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010=\u001a\u00020\u001aH\u0016J\u0018\u0010`\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010=\u001a\u00020!H\u0016J\u0016\u0010a\u001a\u00020+2\u0006\u00103\u001a\u00020\u00042\u0006\u0010b\u001a\u00020\u0007J\u0016\u0010c\u001a\u00020+2\u0006\u00103\u001a\u00020\u00042\u0006\u0010b\u001a\u00020\u0007R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\bR\u0012\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\bR\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00130\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00160\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00180\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001a0\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001d0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001f0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020!0\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006e"}, d2 = {"Lcom/ironsource/adapters/mintegral/MintegralAdapter;", "Lcom/ironsource/mediationsdk/AbstractAdapter;", "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;", "providerName", "", "(Ljava/lang/String;)V", "consentCollectingUserData", "", "Ljava/lang/Boolean;", "coppaUserData", "doNotSellCollectingUserData", "mBannerPlacementIdToAdListener", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/ironsource/adapters/mintegral/MintegralBannerListener;", "mBannerPlacementIdToLayout", "Landroid/widget/FrameLayout$LayoutParams;", "mBannerPlacementIdToSmashListener", "Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;", "mBannerPlacementIdToView", "Lcom/mbridge/msdk/out/MBBannerView;", "mInterstitialPlacementIdToAdAvailability", "mInterstitialPlacementIdToAdListener", "Lcom/ironsource/adapters/mintegral/MintegralInterstitialListener;", "mInterstitialPlacementIdToHandler", "Lcom/mbridge/msdk/newinterstitial/out/MBBidInterstitialVideoHandler;", "mInterstitialPlacementIdToSmashListener", "Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;", "mRewardedVideoPlacementIdToAdAvailability", "mRewardedVideoPlacementIdToAdListener", "Lcom/ironsource/adapters/mintegral/MintergralRewardedVideoListener;", "mRewardedVideoPlacementIdToHandler", "Lcom/mbridge/msdk/out/MBBidRewardVideoHandler;", "mRewardedVideoPlacementIdToSmashListener", "Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;", "createBannerLayoutParams", "context", "Landroid/content/Context;", "size", "Lcom/ironsource/mediationsdk/ISBannerSize;", "createBannerSize", "Lcom/mbridge/msdk/out/BannerSize;", j1.u, o2.g.Y, "", "config", "Lorg/json/JSONObject;", "getBannerBiddingData", "", "", "adData", "getBannerLayoutParams", "placementId", "getBannerView", "getBiddingData", "getCoreSDKVersion", "getInterstitialBiddingData", "getRewardedVideoBiddingData", MobileAdsBridge.versionMethodName, "initBannerForBidding", "ironsourceAppKey", "userId", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "initInterstitialForBidding", "initRewardedVideoWithCallback", "initSdk", MintegralAdapter.APP_ID_KEY, "appKey", "isCOPPAMetaData", "key", "value", "isInterstitialReady", "isNoFillError", "errorString", "isRewardedVideoAvailable", "isUsingActivityBeforeImpression", "adUnit", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "loadBannerForBidding", d1.r, "banner", "Lcom/ironsource/mediationsdk/IronSourceBannerLayout;", "loadInterstitialForBidding", "loadRewardedVideoForBidding", "onNetworkInitCallbackFailed", "error", "onNetworkInitCallbackSuccess", "releaseMemory", "setCCPAValue", "ccpa", "setCOPPAValue", "setConsent", "consent", "setMetaData", "values", "", o2.g.N, o2.g.h, "updateInterstitialAvailability", "isAvailable", "updateRewardedVideoAvailability", "Companion", "mintegraladapter_release"}, mv = {1, 8, 0}, xi = 48)
public final class MintegralAdapter extends AbstractAdapter implements INetworkInitCallbackListener {
    private static final String APP_ID_KEY = "appId";
    private static final String APP_KEY = "appKey";
    private static final String GitHash = "b10e5c2ee";
    private static final String META_DATA_MINTEGRAL_COPPA_KEY = "Mintergral_COPPA";
    public static final String MINTERGRAL_NO_FILL_EXCEPTION_RETURN_EMPTY = "EXCEPTION_RETURN_EMPTY";
    private static final String NETWORK_NAME = "Mintegral";
    private static final String PLACEMENT_ID_KEY = "placementId";
    private static final String UNIT_ID_KEY = "unitId";
    private static final String VERSION = "4.3.21";
    private Boolean consentCollectingUserData;
    private Boolean coppaUserData;
    private Boolean doNotSellCollectingUserData;
    private final ConcurrentHashMap<String, MintegralBannerListener> mBannerPlacementIdToAdListener;
    private final ConcurrentHashMap<String, FrameLayout.LayoutParams> mBannerPlacementIdToLayout;
    private ConcurrentHashMap<String, BannerSmashListener> mBannerPlacementIdToSmashListener;
    private final ConcurrentHashMap<String, MBBannerView> mBannerPlacementIdToView;
    private final ConcurrentHashMap<String, Boolean> mInterstitialPlacementIdToAdAvailability;
    private final ConcurrentHashMap<String, MintegralInterstitialListener> mInterstitialPlacementIdToAdListener;
    private final ConcurrentHashMap<String, MBBidInterstitialVideoHandler> mInterstitialPlacementIdToHandler;
    private ConcurrentHashMap<String, InterstitialSmashListener> mInterstitialPlacementIdToSmashListener;
    private final ConcurrentHashMap<String, Boolean> mRewardedVideoPlacementIdToAdAvailability;
    private final ConcurrentHashMap<String, MintergralRewardedVideoListener> mRewardedVideoPlacementIdToAdListener;
    private final ConcurrentHashMap<String, MBBidRewardVideoHandler> mRewardedVideoPlacementIdToHandler;
    private ConcurrentHashMap<String, RewardedVideoSmashListener> mRewardedVideoPlacementIdToSmashListener;
    public static final Companion Companion = new Companion(null);
    private static final AtomicBoolean mDidCallInit = new AtomicBoolean(false);
    private static Companion.EInitState mInitState = Companion.EInitState.NOT_INIT;
    private static final HashSet<INetworkInitCallbackListener> initCallbackListeners = new HashSet<>();

    /* JADX INFO: compiled from: MintegralAdapter.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u001dB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0007J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion;", "", "()V", "APP_ID_KEY", "", "APP_KEY", "GitHash", "META_DATA_MINTEGRAL_COPPA_KEY", "MINTERGRAL_NO_FILL_EXCEPTION_RETURN_EMPTY", "NETWORK_NAME", "PLACEMENT_ID_KEY", "UNIT_ID_KEY", "VERSION", "initCallbackListeners", "Ljava/util/HashSet;", "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;", "Lkotlin/collections/HashSet;", "mDidCallInit", "Ljava/util/concurrent/atomic/AtomicBoolean;", "mInitState", "Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;", "getAdapterSDKVersion", "getIntegrationData", "Lcom/ironsource/mediationsdk/IntegrationData;", "context", "Landroid/content/Context;", IronSourceConstants.START_ADAPTER, "Lcom/ironsource/adapters/mintegral/MintegralAdapter;", "providerName", "EInitState", "mintegraladapter_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: compiled from: MintegralAdapter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/ironsource/adapters/mintegral/MintegralAdapter$Companion$EInitState;", "", "(Ljava/lang/String;I)V", "NOT_INIT", "INIT_IN_PROGRESS", "INIT_SUCCESS", "INIT_FAIL", "mintegraladapter_release"}, mv = {1, 8, 0}, xi = 48)
        enum EInitState {
            NOT_INIT,
            INIT_IN_PROGRESS,
            INIT_SUCCESS,
            INIT_FAIL
        }

        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final String getAdapterSDKVersion() {
            return MBConfiguration.SDK_VERSION;
        }

        public final IntegrationData getIntegrationData(Context context) {
            return new IntegrationData(MintegralAdapter.NETWORK_NAME, "4.3.21");
        }

        public final MintegralAdapter startAdapter(String providerName) {
            Intrinsics.checkNotNullParameter(providerName, "providerName");
            return new MintegralAdapter(providerName);
        }
    }

    /* JADX INFO: compiled from: MintegralAdapter.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Companion.EInitState.values().length];
            try {
                iArr[Companion.EInitState.INIT_SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Companion.EInitState.INIT_FAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Companion.EInitState.NOT_INIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Companion.EInitState.INIT_IN_PROGRESS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[IronSource.AD_UNIT.values().length];
            try {
                iArr2[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[IronSource.AD_UNIT.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MintegralAdapter(String providerName) {
        super(providerName);
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.mRewardedVideoPlacementIdToSmashListener = new ConcurrentHashMap<>();
        this.mRewardedVideoPlacementIdToHandler = new ConcurrentHashMap<>();
        this.mRewardedVideoPlacementIdToAdListener = new ConcurrentHashMap<>();
        this.mRewardedVideoPlacementIdToAdAvailability = new ConcurrentHashMap<>();
        this.mInterstitialPlacementIdToSmashListener = new ConcurrentHashMap<>();
        this.mInterstitialPlacementIdToHandler = new ConcurrentHashMap<>();
        this.mInterstitialPlacementIdToAdListener = new ConcurrentHashMap<>();
        this.mInterstitialPlacementIdToAdAvailability = new ConcurrentHashMap<>();
        this.mBannerPlacementIdToSmashListener = new ConcurrentHashMap<>();
        this.mBannerPlacementIdToView = new ConcurrentHashMap<>();
        this.mBannerPlacementIdToAdListener = new ConcurrentHashMap<>();
        this.mBannerPlacementIdToLayout = new ConcurrentHashMap<>();
        this.mLWSSupportState = LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final FrameLayout.LayoutParams createBannerLayoutParams(Context context, ISBannerSize iSBannerSize) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
        String description = iSBannerSize.getDescription();
        if (description != null) {
            switch (description.hashCode()) {
                case -387072689:
                    if (description.equals(l.c)) {
                        layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, JavaUtils.Constants.NATIVE_HEIGHT_DP_300), AdapterUtils.dpToPixels(context, 250));
                    }
                    break;
                case 72205083:
                    if (description.equals(l.b)) {
                        layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, JavaUtils.Constants.BANNER_WIDTH_DP), AdapterUtils.dpToPixels(context, 90));
                    }
                    break;
                case 79011241:
                    if (description.equals(l.f6336e)) {
                        layoutParams = AdapterUtils.isLargeScreen(context) ? new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, JavaUtils.Constants.TABLET_WIDTH_DP), AdapterUtils.dpToPixels(context, 90)) : new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, JavaUtils.Constants.BANNER_WIDTH_DP), AdapterUtils.dpToPixels(context, 50));
                    }
                    break;
                case 1951953708:
                    if (description.equals(l.a)) {
                        layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, JavaUtils.Constants.BANNER_WIDTH_DP), AdapterUtils.dpToPixels(context, 50));
                    }
                    break;
                case 1999208305:
                    if (description.equals("CUSTOM")) {
                        layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, iSBannerSize.getWidth()), AdapterUtils.dpToPixels(context, iSBannerSize.getHeight()));
                    }
                    break;
            }
        }
        layoutParams.gravity = 17;
        return layoutParams;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final BannerSize createBannerSize(Context context, ISBannerSize iSBannerSize) {
        String description = iSBannerSize.getDescription();
        if (description != null) {
            switch (description.hashCode()) {
                case -387072689:
                    if (description.equals(l.c)) {
                        return new BannerSize(2, JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 250);
                    }
                    break;
                case 72205083:
                    if (description.equals(l.b)) {
                        return new BannerSize(1, JavaUtils.Constants.BANNER_WIDTH_DP, 90);
                    }
                    break;
                case 79011241:
                    if (description.equals(l.f6336e)) {
                        return AdapterUtils.isLargeScreen(context) ? new BannerSize(3, JavaUtils.Constants.TABLET_WIDTH_DP, 90) : new BannerSize(4, JavaUtils.Constants.BANNER_WIDTH_DP, 50);
                    }
                    break;
                case 1951953708:
                    if (description.equals(l.a)) {
                        return new BannerSize(4, JavaUtils.Constants.BANNER_WIDTH_DP, 50);
                    }
                    break;
                case 1999208305:
                    if (description.equals("CUSTOM")) {
                        return new BannerSize(5, iSBannerSize.getWidth(), iSBannerSize.getHeight());
                    }
                    break;
            }
        }
        return new BannerSize(5, iSBannerSize.getWidth(), iSBannerSize.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyBanner$lambda$8(String str, MintegralAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        IronLog.ADAPTER_API.verbose("release banner placementId = " + str);
        MBBannerView mBBannerView = this$0.mBannerPlacementIdToView.get(str);
        if (mBBannerView != null) {
            mBBannerView.release();
        }
        this$0.mBannerPlacementIdToView.remove(str);
    }

    public static final String getAdapterSDKVersion() {
        return Companion.getAdapterSDKVersion();
    }

    private final Map<String, Object> getBiddingData() {
        if (mInitState != Companion.EInitState.INIT_SUCCESS) {
            IronLog.INTERNAL.verbose("returning null as token since init is not successful");
            return null;
        }
        HashMap map = new HashMap();
        String buyerUid = BidManager.getBuyerUid(ContextProvider.getInstance().getApplicationContext());
        if (buyerUid == null) {
            buyerUid = "";
        }
        IronLog.ADAPTER_API.verbose("token = " + buyerUid);
        map.put("token", buyerUid);
        return map;
    }

    public static final IntegrationData getIntegrationData(Context context) {
        return Companion.getIntegrationData(context);
    }

    private final void initSdk(final String str, final String str2) {
        if (mInitState == Companion.EInitState.NOT_INIT || mInitState == Companion.EInitState.INIT_IN_PROGRESS) {
            initCallbackListeners.add(this);
        }
        if (mDidCallInit.compareAndSet(false, true)) {
            mInitState = Companion.EInitState.INIT_IN_PROGRESS;
            if (isAdaptersDebugEnabled()) {
                MBridgeConstans.DEBUG = true;
            }
            final a mBridgeSDK = MBridgeSDKFactory.getMBridgeSDK();
            Intrinsics.checkNotNullExpressionValue(mBridgeSDK, "getMBridgeSDK()");
            final Map<String, String> mBConfigurationMap = mBridgeSDK.getMBConfigurationMap(str, str2);
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.d
                @Override // java.lang.Runnable
                public final void run() {
                    MintegralAdapter.initSdk$lambda$2(this.a, str, str2, mBridgeSDK, mBConfigurationMap);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initSdk$lambda$2(final MintegralAdapter this$0, String appId, String appKey, MBridgeSDK sdk, Map map) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(appId, "$appId");
        Intrinsics.checkNotNullParameter(appKey, "$appKey");
        Intrinsics.checkNotNullParameter(sdk, "$sdk");
        Boolean bool = this$0.consentCollectingUserData;
        if (bool != null) {
            this$0.setConsent(bool.booleanValue());
        }
        Boolean bool2 = this$0.doNotSellCollectingUserData;
        if (bool2 != null) {
            this$0.setCCPAValue(bool2.booleanValue());
        }
        IronLog.ADAPTER_API.verbose(this$0.getProviderName() + " initSDK with appId=" + appId + " and appKey=" + appKey);
        sdk.init((Map<String, String>) map, ContextProvider.getInstance().getApplicationContext(), new SDKInitStatusListener() { // from class: com.ironsource.adapters.mintegral.MintegralAdapter$initSdk$1$3
            @Override // com.mbridge.msdk.out.SDKInitStatusListener
            public void onInitFail(String errorMsg) {
                Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
                IronLog.ADAPTER_CALLBACK.verbose("error= " + errorMsg);
                MintegralAdapter.Companion companion = MintegralAdapter.Companion;
                MintegralAdapter.mInitState = MintegralAdapter.Companion.EInitState.INIT_FAIL;
                for (Object initCallbackListeners2 : MintegralAdapter.initCallbackListeners) {
                    Intrinsics.checkNotNullExpressionValue(initCallbackListeners2, "initCallbackListeners");
                    ((INetworkInitCallbackListener) initCallbackListeners2).onNetworkInitCallbackFailed("SDK failed to init.");
                }
                MintegralAdapter.initCallbackListeners.clear();
            }

            @Override // com.mbridge.msdk.out.SDKInitStatusListener
            public void onInitSuccess() {
                IronLog.ADAPTER_CALLBACK.verbose();
                MintegralAdapter.Companion companion = MintegralAdapter.Companion;
                MintegralAdapter.mInitState = MintegralAdapter.Companion.EInitState.INIT_SUCCESS;
                Boolean bool3 = this.this$0.coppaUserData;
                if (bool3 != null) {
                    this.this$0.setCOPPAValue(bool3.booleanValue());
                }
                for (Object initCallbackListeners2 : MintegralAdapter.initCallbackListeners) {
                    Intrinsics.checkNotNullExpressionValue(initCallbackListeners2, "initCallbackListeners");
                    ((INetworkInitCallbackListener) initCallbackListeners2).onNetworkInitCallbackSuccess();
                }
                MintegralAdapter.initCallbackListeners.clear();
            }
        });
    }

    private final boolean isCOPPAMetaData(String str, String str2) {
        if (StringsKt__StringsJVMKt.equals(str, META_DATA_MINTEGRAL_COPPA_KEY, true)) {
            if (str2.length() > 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadBannerForBidding$lambda$7(MintegralAdapter this$0, String placementId, IronSourceBannerLayout ironSourceBannerLayout, String str, BannerSmashListener listener, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listener, "$listener");
        Context context = ContextProvider.getInstance().getApplicationContext();
        MBBannerView mBBannerView = new MBBannerView(ContextProvider.getInstance().getApplicationContext());
        ConcurrentHashMap<String, MBBannerView> concurrentHashMap = this$0.mBannerPlacementIdToView;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, mBBannerView);
        ConcurrentHashMap<String, FrameLayout.LayoutParams> concurrentHashMap2 = this$0.mBannerPlacementIdToLayout;
        Intrinsics.checkNotNullExpressionValue(context, "context");
        ISBannerSize size = ironSourceBannerLayout.getSize();
        Intrinsics.checkNotNullExpressionValue(size, "banner.size");
        concurrentHashMap2.put(placementId, this$0.createBannerLayoutParams(context, size));
        ISBannerSize size2 = ironSourceBannerLayout.getSize();
        Intrinsics.checkNotNullExpressionValue(size2, "banner.size");
        BannerSize bannerSizeCreateBannerSize = this$0.createBannerSize(context, size2);
        mBBannerView.init(bannerSizeCreateBannerSize, placementId, str);
        mBBannerView.setRefreshTime(0);
        mBBannerView.setAllowShowCloseBtn(false);
        MintegralBannerListener mintegralBannerListener = new MintegralBannerListener(placementId, new WeakReference(listener), new WeakReference(this$0));
        this$0.mBannerPlacementIdToAdListener.put(placementId, mintegralBannerListener);
        mBBannerView.setBannerAdListener(mintegralBannerListener);
        IronLog.ADAPTER_API.verbose("load banner with size " + bannerSizeCreateBannerSize.getWidth() + 'X' + bannerSizeCreateBannerSize.getHeight() + " placementId=" + placementId + " unitId=" + str + " serverData=" + str2);
        mBBannerView.loadFromBid(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadInterstitialForBidding$lambda$5(String str, String str2, String str3, MBBidInterstitialVideoHandler interstitialHandler) {
        Intrinsics.checkNotNullParameter(interstitialHandler, "$interstitialHandler");
        IronLog.ADAPTER_API.verbose("load interstitial with placementId=" + str + " unitId=" + str2 + " serverData=" + str3);
        interstitialHandler.loadFromBid(str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadRewardedVideoForBidding$lambda$3(String str, String str2, String str3, MBBidRewardVideoHandler rewardedVideoHandler) {
        Intrinsics.checkNotNullParameter(rewardedVideoHandler, "$rewardedVideoHandler");
        IronLog.ADAPTER_API.verbose("load rewarded video with placementId=" + str + " unitId=" + str2 + " serverData=" + str3);
        rewardedVideoHandler.loadFromBid(str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void releaseMemory$lambda$9(MBBannerView bannerView, MintegralAdapter this$0) {
        Intrinsics.checkNotNullParameter(bannerView, "$bannerView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        IronLog.ADAPTER_API.verbose("cleaning BN memory");
        bannerView.release();
        this$0.mBannerPlacementIdToView.clear();
    }

    private final void setCCPAValue(boolean z) {
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 3) {
            this.doNotSellCollectingUserData = Boolean.valueOf(z);
            return;
        }
        if (i != 4) {
            return;
        }
        a mBridgeSDK = MBridgeSDKFactory.getMBridgeSDK();
        Intrinsics.checkNotNullExpressionValue(mBridgeSDK, "getMBridgeSDK()");
        IronLog.ADAPTER_API.verbose("setDoNotTrackStatus with ccpa = " + z);
        mBridgeSDK.setDoNotTrackStatus(ContextProvider.getInstance().getApplicationContext(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setCOPPAValue(final boolean z) {
        IronLog.ADAPTER_API.verbose("value = " + z);
        if (z) {
            if (WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()] == 1) {
                AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        MintegralAdapter.setCOPPAValue$lambda$11(z);
                    }
                });
            } else {
                this.coppaUserData = Boolean.valueOf(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setCOPPAValue$lambda$11(boolean z) {
        a mBridgeSDK = MBridgeSDKFactory.getMBridgeSDK();
        Intrinsics.checkNotNullExpressionValue(mBridgeSDK, "getMBridgeSDK()");
        IronLog.ADAPTER_API.verbose("set coppa value = " + z);
        mBridgeSDK.setCoppaStatus(ContextProvider.getInstance().getApplicationContext(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void showInterstitial$lambda$6(com.json.adapters.mintegral.MintegralAdapter r2, org.json.JSONObject r3, java.lang.String r4, com.json.mediationsdk.sdk.InterstitialSmashListener r5) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "$config"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "$listener"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            boolean r3 = r2.isInterstitialReady(r3)
            if (r3 == 0) goto L4f
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.newinterstitial.out.MBBidInterstitialVideoHandler> r3 = r2.mInterstitialPlacementIdToHandler
            java.lang.Object r3 = r3.get(r4)
            com.mbridge.msdk.newinterstitial.out.MBBidInterstitialVideoHandler r3 = (com.mbridge.msdk.newinterstitial.out.MBBidInterstitialVideoHandler) r3
            r0 = 1
            r1 = 0
            if (r3 == 0) goto L28
            boolean r3 = r3.isBidReady()
            if (r3 != r0) goto L28
            goto L29
        L28:
            r0 = 0
        L29:
            if (r0 == 0) goto L4f
            com.ironsource.mediationsdk.logger.IronLog r3 = com.json.mediationsdk.logger.IronLog.ADAPTER_API
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "show interstitial with placementId = "
            r5.append(r0)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            r3.verbose(r5)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.newinterstitial.out.MBBidInterstitialVideoHandler> r3 = r2.mInterstitialPlacementIdToHandler
            java.lang.Object r3 = r3.get(r4)
            com.mbridge.msdk.newinterstitial.out.MBBidInterstitialVideoHandler r3 = (com.mbridge.msdk.newinterstitial.out.MBBidInterstitialVideoHandler) r3
            if (r3 == 0) goto L58
            r3.showFromBid()
            goto L58
        L4f:
            java.lang.String r3 = "Interstitial"
            com.ironsource.mediationsdk.logger.IronSourceError r3 = com.json.mediationsdk.utils.ErrorBuilder.buildNoAdsToShowError(r3)
            r5.onInterstitialAdShowFailed(r3)
        L58:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Boolean> r2 = r2.mInterstitialPlacementIdToAdAvailability
            java.lang.String r3 = "placementId"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            r2.put(r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adapters.mintegral.MintegralAdapter.showInterstitial$lambda$6(com.ironsource.adapters.mintegral.MintegralAdapter, org.json.JSONObject, java.lang.String, com.ironsource.mediationsdk.sdk.InterstitialSmashListener):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void showRewardedVideo$lambda$4(com.json.adapters.mintegral.MintegralAdapter r2, org.json.JSONObject r3, java.lang.String r4, com.json.mediationsdk.sdk.RewardedVideoSmashListener r5) {
        /*
            java.lang.String r0 = "this$0"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "$config"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "$listener"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            boolean r3 = r2.isRewardedVideoAvailable(r3)
            if (r3 == 0) goto L4f
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.out.MBBidRewardVideoHandler> r3 = r2.mRewardedVideoPlacementIdToHandler
            java.lang.Object r3 = r3.get(r4)
            com.mbridge.msdk.out.MBBidRewardVideoHandler r3 = (com.mbridge.msdk.out.MBBidRewardVideoHandler) r3
            r0 = 1
            r1 = 0
            if (r3 == 0) goto L28
            boolean r3 = r3.isBidReady()
            if (r3 != r0) goto L28
            goto L29
        L28:
            r0 = 0
        L29:
            if (r0 == 0) goto L4f
            com.ironsource.mediationsdk.logger.IronLog r3 = com.json.mediationsdk.logger.IronLog.ADAPTER_API
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "show rewarded video with placementId = "
            r5.append(r0)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            r3.verbose(r5)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, com.mbridge.msdk.out.MBBidRewardVideoHandler> r3 = r2.mRewardedVideoPlacementIdToHandler
            java.lang.Object r3 = r3.get(r4)
            com.mbridge.msdk.out.MBBidRewardVideoHandler r3 = (com.mbridge.msdk.out.MBBidRewardVideoHandler) r3
            if (r3 == 0) goto L58
            r3.showFromBid()
            goto L58
        L4f:
            java.lang.String r3 = "Rewarded Video"
            com.ironsource.mediationsdk.logger.IronSourceError r3 = com.json.mediationsdk.utils.ErrorBuilder.buildNoAdsToShowError(r3)
            r5.onRewardedVideoAdShowFailed(r3)
        L58:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.Boolean> r2 = r2.mRewardedVideoPlacementIdToAdAvailability
            java.lang.String r3 = "placementId"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r3)
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            r2.put(r4, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adapters.mintegral.MintegralAdapter.showRewardedVideo$lambda$4(com.ironsource.adapters.mintegral.MintegralAdapter, org.json.JSONObject, java.lang.String, com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener):void");
    }

    public static final MintegralAdapter startAdapter(String str) {
        return Companion.startAdapter(str);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        final String strOptString = config.optString("placementId");
        if (strOptString == null || strOptString.length() == 0) {
            return;
        }
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.g
            @Override // java.lang.Runnable
            public final void run() {
                MintegralAdapter.destroyBanner$lambda$8(strOptString, this);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public Map<String, Object> getBannerBiddingData(JSONObject config, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(config, "config");
        return getBiddingData();
    }

    public final FrameLayout.LayoutParams getBannerLayoutParams(String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        return this.mBannerPlacementIdToLayout.get(placementId);
    }

    public final MBBannerView getBannerView(String placementId) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        return this.mBannerPlacementIdToView.get(placementId);
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return Companion.getAdapterSDKVersion();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public Map<String, Object> getInterstitialBiddingData(JSONObject config, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(config, "config");
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public Map<String, Object> getRewardedVideoBiddingData(JSONObject config, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(config, "config");
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "4.3.21";
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String str, String str2, JSONObject config, BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String appId = config.optString(APP_ID_KEY);
        String appKey = config.optString("appKey");
        String placementId = config.optString("placementId");
        if (appId == null || appId.length() == 0) {
            IronLog.INTERNAL.error("Missing appId");
            listener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing params: appId", "Banner"));
            return;
        }
        if (appKey == null || appKey.length() == 0) {
            IronLog.INTERNAL.error("Missing appKey");
            listener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing params: appKey", "Banner"));
            return;
        }
        if (placementId == null || placementId.length() == 0) {
            IronLog.INTERNAL.error("Missing placementId");
            listener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing params: placementId", "Banner"));
            return;
        }
        ConcurrentHashMap<String, BannerSmashListener> concurrentHashMap = this.mBannerPlacementIdToSmashListener;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, listener);
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 1) {
            listener.onBannerInitSuccess();
        } else {
            if (i == 2) {
                listener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("SDK failed to init.", "Banner"));
                return;
            }
            Intrinsics.checkNotNullExpressionValue(appId, "appId");
            Intrinsics.checkNotNullExpressionValue(appKey, "appKey");
            initSdk(appId, appKey);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String str, String str2, JSONObject config, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String appId = config.optString(APP_ID_KEY);
        String appKey = config.optString("appKey");
        String placementId = config.optString("placementId");
        if (appId == null || appId.length() == 0) {
            IronLog.INTERNAL.error("Missing appId");
            listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params: appId", "Interstitial"));
            return;
        }
        if (appKey == null || appKey.length() == 0) {
            IronLog.INTERNAL.error("Missing appKey");
            listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params: appKey", "Interstitial"));
            return;
        }
        if (placementId == null || placementId.length() == 0) {
            IronLog.INTERNAL.error("Missing placementId");
            listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params: placementId", "Interstitial"));
            return;
        }
        ConcurrentHashMap<String, InterstitialSmashListener> concurrentHashMap = this.mInterstitialPlacementIdToSmashListener;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, listener);
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 1) {
            listener.onInterstitialInitSuccess();
        } else {
            if (i == 2) {
                listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("SDK failed to init.", "Interstitial"));
                return;
            }
            Intrinsics.checkNotNullExpressionValue(appId, "appId");
            Intrinsics.checkNotNullExpressionValue(appKey, "appKey");
            initSdk(appId, appKey);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, String str2, JSONObject config, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String appId = config.optString(APP_ID_KEY);
        String appKey = config.optString("appKey");
        String placementId = config.optString("placementId");
        if (appId == null || appId.length() == 0) {
            IronLog.INTERNAL.error("Missing appId");
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing params: appId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (appKey == null || appKey.length() == 0) {
            IronLog.INTERNAL.error("Missing appKey");
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing params: appKey", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (placementId == null || placementId.length() == 0) {
            IronLog.INTERNAL.error("Missing placementId");
            listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing params: placementId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        ConcurrentHashMap<String, RewardedVideoSmashListener> concurrentHashMap = this.mRewardedVideoPlacementIdToSmashListener;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, listener);
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 1) {
            listener.onRewardedVideoInitSuccess();
        } else {
            if (i == 2) {
                listener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("SDK failed to init.", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            Intrinsics.checkNotNullExpressionValue(appId, "appId");
            Intrinsics.checkNotNullExpressionValue(appKey, "appKey");
            initSdk(appId, appKey);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return Intrinsics.areEqual(this.mInterstitialPlacementIdToAdAvailability.get(config.optString("placementId")), Boolean.TRUE);
    }

    public final boolean isNoFillError(String str) {
        return str != null && StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) MINTERGRAL_NO_FILL_EXCEPTION_RETURN_EMPTY, false, 2, (Object) null);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return Intrinsics.areEqual(this.mRewardedVideoPlacementIdToAdAvailability.get(config.optString("placementId")), Boolean.TRUE);
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT adUnit) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        return false;
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(JSONObject config, JSONObject jSONObject, final String str, final IronSourceBannerLayout ironSourceBannerLayout, final BannerSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String strOptString = config.optString("placementId");
        final String strOptString2 = config.optString("unitId");
        if (strOptString2 == null || strOptString2.length() == 0) {
            IronLog.INTERNAL.error("Missing unitId");
            listener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("Missing params: unitId"));
        } else if (ironSourceBannerLayout == null) {
            listener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("IronSourceBannerLayout is null"));
        } else {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.e
                @Override // java.lang.Runnable
                public final void run() {
                    MintegralAdapter.loadBannerForBidding$lambda$7(this.a, strOptString, ironSourceBannerLayout, strOptString2, listener, str);
                }
            });
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject config, JSONObject jSONObject, final String str, InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String placementId = config.optString("placementId");
        final String strOptString = config.optString("unitId");
        if (strOptString == null || strOptString.length() == 0) {
            IronLog.INTERNAL.error("Missing unitId");
            listener.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError("Missing params: unitId"));
            return;
        }
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.mInterstitialPlacementIdToAdAvailability;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, Boolean.FALSE);
        MintegralInterstitialListener mintegralInterstitialListener = new MintegralInterstitialListener(placementId, new WeakReference(listener), new WeakReference(this));
        this.mInterstitialPlacementIdToAdListener.put(placementId, mintegralInterstitialListener);
        final MBBidInterstitialVideoHandler mBBidInterstitialVideoHandler = new MBBidInterstitialVideoHandler(ContextProvider.getInstance().getApplicationContext(), placementId, strOptString);
        mBBidInterstitialVideoHandler.setInterstitialVideoListener(mintegralInterstitialListener);
        this.mInterstitialPlacementIdToHandler.put(placementId, mBBidInterstitialVideoHandler);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.h
            @Override // java.lang.Runnable
            public final void run() {
                MintegralAdapter.loadInterstitialForBidding$lambda$5(placementId, strOptString, str, mBBidInterstitialVideoHandler);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideoForBidding(JSONObject config, JSONObject jSONObject, final String str, RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String placementId = config.optString("placementId");
        final String strOptString = config.optString("unitId");
        if (strOptString == null || strOptString.length() == 0) {
            IronLog.INTERNAL.error("Missing unitId");
            listener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        ConcurrentHashMap<String, Boolean> concurrentHashMap = this.mRewardedVideoPlacementIdToAdAvailability;
        Intrinsics.checkNotNullExpressionValue(placementId, "placementId");
        concurrentHashMap.put(placementId, Boolean.FALSE);
        MintergralRewardedVideoListener mintergralRewardedVideoListener = new MintergralRewardedVideoListener(placementId, new WeakReference(listener), new WeakReference(this));
        this.mRewardedVideoPlacementIdToAdListener.put(placementId, mintergralRewardedVideoListener);
        final MBBidRewardVideoHandler mBBidRewardVideoHandler = new MBBidRewardVideoHandler(ContextProvider.getInstance().getApplicationContext(), placementId, strOptString);
        mBBidRewardVideoHandler.setRewardVideoListener(mintergralRewardedVideoListener);
        this.mRewardedVideoPlacementIdToHandler.put(placementId, mBBidRewardVideoHandler);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.f
            @Override // java.lang.Runnable
            public final void run() {
                MintegralAdapter.loadRewardedVideoForBidding$lambda$3(placementId, strOptString, str, mBBidRewardVideoHandler);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        for (Map.Entry<String, RewardedVideoSmashListener> entry : this.mRewardedVideoPlacementIdToSmashListener.entrySet()) {
            Intrinsics.checkNotNullExpressionValue(entry, "mRewardedVideoPlacementIdToSmashListener.entries");
            entry.getValue().onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("failed to init: " + str, IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
        for (Map.Entry<String, InterstitialSmashListener> entry2 : this.mInterstitialPlacementIdToSmashListener.entrySet()) {
            Intrinsics.checkNotNullExpressionValue(entry2, "mInterstitialPlacementIdToSmashListener.entries");
            entry2.getValue().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("failed to init: " + str, "Interstitial"));
        }
        for (Map.Entry<String, BannerSmashListener> entry3 : this.mBannerPlacementIdToSmashListener.entrySet()) {
            Intrinsics.checkNotNullExpressionValue(entry3, "mBannerPlacementIdToSmashListener.entries");
            entry3.getValue().onBannerInitFailed(ErrorBuilder.buildInitFailedError("failed to init: " + str, "Banner"));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        for (Map.Entry<String, RewardedVideoSmashListener> entry : this.mRewardedVideoPlacementIdToSmashListener.entrySet()) {
            Intrinsics.checkNotNullExpressionValue(entry, "mRewardedVideoPlacementIdToSmashListener.entries");
            entry.getValue().onRewardedVideoInitSuccess();
        }
        for (Map.Entry<String, InterstitialSmashListener> entry2 : this.mInterstitialPlacementIdToSmashListener.entrySet()) {
            Intrinsics.checkNotNullExpressionValue(entry2, "mInterstitialPlacementIdToSmashListener.entries");
            entry2.getValue().onInterstitialInitSuccess();
        }
        for (Map.Entry<String, BannerSmashListener> entry3 : this.mBannerPlacementIdToSmashListener.entrySet()) {
            Intrinsics.checkNotNullExpressionValue(entry3, "mBannerPlacementIdToSmashListener.entries");
            entry3.getValue().onBannerInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT adUnit, JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(adUnit, "adUnit");
        int i = WhenMappings.$EnumSwitchMapping$1[adUnit.ordinal()];
        if (i == 1) {
            this.mRewardedVideoPlacementIdToSmashListener.clear();
            this.mRewardedVideoPlacementIdToHandler.clear();
            this.mInterstitialPlacementIdToAdListener.clear();
            this.mRewardedVideoPlacementIdToAdAvailability.clear();
            return;
        }
        if (i == 2) {
            this.mInterstitialPlacementIdToSmashListener.clear();
            this.mInterstitialPlacementIdToHandler.clear();
            this.mRewardedVideoPlacementIdToAdListener.clear();
            this.mInterstitialPlacementIdToAdAvailability.clear();
            return;
        }
        if (i != 3) {
            return;
        }
        for (final MBBannerView mBBannerView : this.mBannerPlacementIdToView.values()) {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.b
                @Override // java.lang.Runnable
                public final void run() {
                    MintegralAdapter.releaseMemory$lambda$9(mBBannerView, this);
                }
            });
        }
        this.mBannerPlacementIdToSmashListener.clear();
        this.mBannerPlacementIdToLayout.clear();
        this.mBannerPlacementIdToAdListener.clear();
        this.mBannerPlacementIdToView.clear();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setConsent(boolean z) {
        int i = WhenMappings.$EnumSwitchMapping$0[mInitState.ordinal()];
        if (i == 3) {
            this.consentCollectingUserData = Boolean.valueOf(z);
            return;
        }
        if (i != 4) {
            return;
        }
        a mBridgeSDK = MBridgeSDKFactory.getMBridgeSDK();
        Intrinsics.checkNotNullExpressionValue(mBridgeSDK, "getMBridgeSDK()");
        IronLog.ADAPTER_API.verbose("setConsentStatus consentStatus = " + (z ? 1 : 0));
        mBridgeSDK.setConsentStatus(ContextProvider.getInstance().getApplicationContext(), z ? 1 : 0);
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
            return;
        }
        String valueForType = MetaDataUtils.formatValueForType(str, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
        Intrinsics.checkNotNullExpressionValue(valueForType, "formatValueForType(value….META_DATA_VALUE_BOOLEAN)");
        if (isCOPPAMetaData(key, valueForType)) {
            setCOPPAValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(final JSONObject config, final InterstitialSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String strOptString = config.optString("placementId");
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.c
            @Override // java.lang.Runnable
            public final void run() {
                MintegralAdapter.showInterstitial$lambda$6(this.a, config, strOptString, listener);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(final JSONObject config, final RewardedVideoSmashListener listener) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String strOptString = config.optString("placementId");
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.mintegral.a
            @Override // java.lang.Runnable
            public final void run() {
                MintegralAdapter.showRewardedVideo$lambda$4(this.a, config, strOptString, listener);
            }
        });
    }

    public final void updateInterstitialAvailability(String placementId, boolean z) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        this.mInterstitialPlacementIdToAdAvailability.put(placementId, Boolean.valueOf(z));
    }

    public final void updateRewardedVideoAvailability(String placementId, boolean z) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        this.mRewardedVideoPlacementIdToAdAvailability.put(placementId, Boolean.valueOf(z));
    }
}
