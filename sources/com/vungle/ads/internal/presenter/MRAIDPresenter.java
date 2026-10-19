package com.vungle.ads.internal.presenter;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.o2;
import com.json.sdk.controller.f;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.AdConfig;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InternalError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ClickCoordinateTracker;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.Callback;
import com.vungle.ads.internal.network.Response;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import com.vungle.ads.internal.ui.VungleWebClient;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.HandlerScheduler;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.SuspendableTimer;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.v;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: compiled from: MRAIDPresenter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u008c\u00012\u00020\u00012\u00020\u0002:\u0002\u008c\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\b\u0010_\u001a\u00020`H\u0002J\u0010\u0010a\u001a\u00020`2\b\b\u0001\u0010b\u001a\u00020cJ\u0006\u0010d\u001a\u00020`J$\u0010e\u001a\u00020`2\u0006\u0010f\u001a\u00020g2\u0006\u0010h\u001a\u00020\u001c2\n\b\u0002\u0010i\u001a\u0004\u0018\u00010SH\u0002J\u0010\u0010j\u001a\u00020\u001c2\u0006\u0010k\u001a\u00020lH\u0002J\u0010\u0010m\u001a\u00020`2\u0006\u0010f\u001a\u00020gH\u0002J\u0018\u0010n\u001a\u00020`2\u0006\u0010o\u001a\u00020S2\u0006\u0010p\u001a\u00020\u001cH\u0016J\u001c\u0010q\u001a\u00020`2\b\u0010r\u001a\u0004\u0018\u00010s2\b\u0010t\u001a\u0004\u0018\u00010uH\u0016J\u0006\u0010v\u001a\u00020`J\u0010\u0010w\u001a\u00020`2\b\u0010x\u001a\u0004\u0018\u00010yJ!\u0010z\u001a\u00020\u001c2\b\u0010{\u001a\u0004\u0018\u00010s2\b\u0010p\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0002\u0010|J\u0006\u0010}\u001a\u00020`J\u001a\u0010~\u001a\u00020\u001c2\u0006\u0010\u007f\u001a\u00020S2\b\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0016J\t\u0010\u0082\u0001\u001a\u00020`H\u0002J\u0011\u0010\u0083\u0001\u001a\u00020`2\u0006\u0010f\u001a\u00020gH\u0002J\u0010\u0010\u0084\u0001\u001a\u00020`2\u0007\u0010\u0085\u0001\u001a\u00020\u001cJ\u0012\u0010\u0086\u0001\u001a\u00020`2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010$J\u0019\u0010\u0088\u0001\u001a\u00020`2\b\u0010D\u001a\u0004\u0018\u00010EH\u0000¢\u0006\u0003\b\u0089\u0001J\u0007\u0010\u008a\u0001\u001a\u00020`J\u0007\u0010\u008b\u0001\u001a\u00020`R(\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0000@\u0000X\u0081\u000e¢\u0006\u0016\n\u0002\u0010\u001a\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u001d\u001a\u00020\u001c8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001e\u0010\u0015\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010#\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b%\u0010\u0015\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R!\u0010*\u001a\u00020+8@X\u0081\u0084\u0002¢\u0006\u0012\n\u0004\b/\u00100\u0012\u0004\b,\u0010\u0015\u001a\u0004\b-\u0010.R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u00101\u001a\u0002028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u00100\u001a\u0004\b3\u00104R$\u00106\u001a\u00020\u001c8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b7\u0010\u0015\u001a\u0004\b8\u0010 \"\u0004\b9\u0010\"R\u001c\u0010:\u001a\u00020;8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b<\u0010\u0015\u001a\u0004\b=\u0010>R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010?\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u00100\u001a\u0004\bA\u0010BR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u0004\u0018\u00010EX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010F\u001a\u00020G8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u00100\u001a\u0004\bH\u0010IR\u000e\u0010K\u001a\u00020;X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010L\u001a\u00020M8@X\u0081\u0084\u0002¢\u0006\u0012\n\u0004\bQ\u00100\u0012\u0004\bN\u0010\u0015\u001a\u0004\bO\u0010PR&\u0010R\u001a\u0004\u0018\u00010S8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bT\u0010\u0015\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR!\u0010Y\u001a\u00020Z8@X\u0081\u0084\u0002¢\u0006\u0012\n\u0004\b^\u00100\u0012\u0004\b[\u0010\u0015\u001a\u0004\b\\\u0010]R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u008d\u0001"}, d2 = {"Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;", "Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;", "adWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "placement", "Lcom/vungle/ads/internal/model/Placement;", "vungleWebClient", "Lcom/vungle/ads/internal/ui/VungleWebClient;", "executor", "Ljava/util/concurrent/Executor;", "omTracker", "Lcom/vungle/ads/internal/omsdk/OMTracker;", "bidPayload", "Lcom/vungle/ads/internal/model/BidPayload;", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/ui/VungleWebClient;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/omsdk/OMTracker;Lcom/vungle/ads/internal/model/BidPayload;)V", "adStartTime", "", "getAdStartTime$vungle_ads_release$annotations", "()V", "getAdStartTime$vungle_ads_release", "()Ljava/lang/Long;", "setAdStartTime$vungle_ads_release", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "adViewed", "", "backEnabled", "getBackEnabled$vungle_ads_release$annotations", "getBackEnabled$vungle_ads_release", "()Z", "setBackEnabled$vungle_ads_release", "(Z)V", "bus", "Lcom/vungle/ads/internal/presenter/AdEventListener;", "getBus$annotations", "getBus", "()Lcom/vungle/ads/internal/presenter/AdEventListener;", "setBus", "(Lcom/vungle/ads/internal/presenter/AdEventListener;)V", "clickCoordinateTracker", "Lcom/vungle/ads/internal/ClickCoordinateTracker;", "getClickCoordinateTracker$vungle_ads_release$annotations", "getClickCoordinateTracker$vungle_ads_release", "()Lcom/vungle/ads/internal/ClickCoordinateTracker;", "clickCoordinateTracker$delegate", "Lkotlin/Lazy;", "executors", "Lcom/vungle/ads/internal/executor/Executors;", "getExecutors", "()Lcom/vungle/ads/internal/executor/Executors;", "executors$delegate", "heartbeatEnabled", "getHeartbeatEnabled$vungle_ads_release$annotations", "getHeartbeatEnabled$vungle_ads_release", "setHeartbeatEnabled$vungle_ads_release", "isDestroying", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isDestroying$vungle_ads_release$annotations", "isDestroying$vungle_ads_release", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "getPathProvider", "()Lcom/vungle/ads/internal/util/PathProvider;", "pathProvider$delegate", "presenterDelegate", "Lcom/vungle/ads/internal/presenter/PresenterDelegate;", "scheduler", "Lcom/vungle/ads/internal/util/HandlerScheduler;", "getScheduler", "()Lcom/vungle/ads/internal/util/HandlerScheduler;", "scheduler$delegate", "sendReportIncentivized", "suspendableTimer", "Lcom/vungle/ads/internal/util/SuspendableTimer;", "getSuspendableTimer$vungle_ads_release$annotations", "getSuspendableTimer$vungle_ads_release", "()Lcom/vungle/ads/internal/util/SuspendableTimer;", "suspendableTimer$delegate", "userId", "", "getUserId$vungle_ads_release$annotations", "getUserId$vungle_ads_release", "()Ljava/lang/String;", "setUserId$vungle_ads_release", "(Ljava/lang/String;)V", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "getVungleApiClient$vungle_ads_release$annotations", "getVungleApiClient$vungle_ads_release", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "vungleApiClient$delegate", "closeView", "", "detach", "stopReason", "", "handleExit", "handleWebViewException", "reason", "Lcom/vungle/ads/VungleError;", "fatal", "errorMessage", "loadMraid", "template", "Ljava/io/File;", "makeBusError", "onReceivedError", "errorDesc", "didCrash", "onRenderProcessUnresponsive", "webView", "Landroid/webkit/WebView;", "webViewRenderProcess", "Landroid/webkit/WebViewRenderProcess;", "onViewConfigurationChanged", "onViewTouched", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "onWebRenderingProcessGone", "view", "(Landroid/webkit/WebView;Ljava/lang/Boolean;)Z", "prepare", "processCommand", f.b.COMMAND, "arguments", "Lkotlinx/serialization/json/JsonObject;", "recordPlayAssetMetric", "reportErrorAndCloseAd", "setAdVisibility", o2.h.o, "setEventListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setPresenterDelegate", "setPresenterDelegate$vungle_ads_release", "start", "stop", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class MRAIDPresenter implements com.vungle.ads.internal.ui.view.b, com.vungle.ads.internal.ui.view.c {
    private static final String ACTION = "action";
    public static final String ACTION_WITH_VALUE = "actionWithValue";
    public static final String CLOSE = "close";
    public static final String CONSENT_ACTION = "consentAction";
    public static final String CREATIVE_HEARTBEAT = "creativeHeartbeat";
    public static final Companion Companion = new Companion(null);
    public static final String ERROR = "error";
    private static final double HEARTBEAT_INTERVAL = 6.0d;
    public static final String OPEN = "open";
    private static final String OPEN_NON_MRAID = "openNonMraid";
    public static final String OPEN_PRIVACY = "openPrivacy";
    public static final String SET_ORIENTATION_PROPERTIES = "setOrientationProperties";
    public static final String SUCCESSFUL_VIEW = "successfulView";
    private static final String TAG = "MRAIDPresenter";
    public static final String TPAT = "tpat";
    private static final String USE_CUSTOM_CLOSE = "useCustomClose";
    private static final String USE_CUSTOM_PRIVACY = "useCustomPrivacy";
    public static final String VIDEO_LENGTH = "videoLength";
    public static final String VIDEO_VIEWED = "videoViewed";
    private Long adStartTime;
    private boolean adViewed;
    private final MRAIDAdWidget adWidget;
    private final AdPayload advertisement;
    private boolean backEnabled;
    private final BidPayload bidPayload;
    private AdEventListener bus;
    private final Lazy clickCoordinateTracker$delegate;
    private Executor executor;
    private final Lazy executors$delegate;
    private boolean heartbeatEnabled;
    private final AtomicBoolean isDestroying;
    private final OMTracker omTracker;
    private final Lazy pathProvider$delegate;
    private final Placement placement;
    private PresenterDelegate presenterDelegate;
    private final Lazy scheduler$delegate;
    private final AtomicBoolean sendReportIncentivized;
    private final Lazy suspendableTimer$delegate;
    private String userId;
    private final Lazy vungleApiClient$delegate;
    private final VungleWebClient vungleWebClient;

    /* JADX INFO: compiled from: MRAIDPresenter.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u0006\n\u0002\b\u0013\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0002R\u0016\u0010\u0007\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\b\u0010\u0002R\u0016\u0010\t\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\n\u0010\u0002R\u0016\u0010\u000b\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\u0002R\u0016\u0010\r\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u0002R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0012\u0010\u0002R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0015\u0010\u0002R\u0016\u0010\u0016\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0017\u0010\u0002R\u0016\u0010\u0018\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0019\u0010\u0002R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u001c\u0010\u0002R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b \u0010\u0002R\u0016\u0010!\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\"\u0010\u0002¨\u0006#"}, d2 = {"Lcom/vungle/ads/internal/presenter/MRAIDPresenter$Companion;", "", "()V", ShareConstants.ACTION, "", "ACTION_WITH_VALUE", "getACTION_WITH_VALUE$vungle_ads_release$annotations", "CLOSE", "getCLOSE$vungle_ads_release$annotations", "CONSENT_ACTION", "getCONSENT_ACTION$vungle_ads_release$annotations", "CREATIVE_HEARTBEAT", "getCREATIVE_HEARTBEAT$vungle_ads_release$annotations", "ERROR", "getERROR$vungle_ads_release$annotations", "HEARTBEAT_INTERVAL", "", "OPEN", "getOPEN$vungle_ads_release$annotations", "OPEN_NON_MRAID", "OPEN_PRIVACY", "getOPEN_PRIVACY$vungle_ads_release$annotations", "SET_ORIENTATION_PROPERTIES", "getSET_ORIENTATION_PROPERTIES$vungle_ads_release$annotations", "SUCCESSFUL_VIEW", "getSUCCESSFUL_VIEW$vungle_ads_release$annotations", "TAG", "TPAT", "getTPAT$vungle_ads_release$annotations", "USE_CUSTOM_CLOSE", "USE_CUSTOM_PRIVACY", "VIDEO_LENGTH", "getVIDEO_LENGTH$vungle_ads_release$annotations", "VIDEO_VIEWED", "getVIDEO_VIEWED$vungle_ads_release$annotations", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        @VisibleForTesting
        public static /* synthetic */ void getACTION_WITH_VALUE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCLOSE$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCONSENT_ACTION$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getCREATIVE_HEARTBEAT$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getERROR$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getOPEN$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getOPEN_PRIVACY$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSET_ORIENTATION_PROPERTIES$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSUCCESSFUL_VIEW$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getTPAT$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getVIDEO_LENGTH$vungle_ads_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getVIDEO_VIEWED$vungle_ads_release$annotations() {
        }
    }

    /* JADX INFO: compiled from: MRAIDPresenter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vungle/ads/internal/ClickCoordinateTracker;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class a extends Lambda implements Function0<ClickCoordinateTracker> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ClickCoordinateTracker invoke() {
            Context context = MRAIDPresenter.this.adWidget.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "adWidget.context");
            return new ClickCoordinateTracker(context, MRAIDPresenter.this.advertisement, MRAIDPresenter.this.executor);
        }
    }

    /* JADX INFO: compiled from: MRAIDPresenter.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$5", "Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;", "onDeeplinkClick", "", "opened", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b implements PresenterAdOpenCallback {
        b() {
        }

        @Override // com.vungle.ads.internal.ui.PresenterAdOpenCallback
        public void onDeeplinkClick(boolean z) {
            List<String> tpatUrls = MRAIDPresenter.this.advertisement.getTpatUrls("deeplink.click", String.valueOf(z));
            TpatSender tpatSender = new TpatSender(MRAIDPresenter.this.getVungleApiClient$vungle_ads_release(), MRAIDPresenter.this.placement.getReferenceId(), MRAIDPresenter.this.advertisement.getCreativeId(), MRAIDPresenter.this.advertisement.eventId(), MRAIDPresenter.this.getExecutors().getIO_EXECUTOR(), MRAIDPresenter.this.getPathProvider());
            if (tpatUrls != null) {
                MRAIDPresenter mRAIDPresenter = MRAIDPresenter.this;
                Iterator<T> it = tpatUrls.iterator();
                while (it.hasNext()) {
                    tpatSender.sendTpat((String) it.next(), mRAIDPresenter.executor);
                }
            }
        }
    }

    /* JADX INFO: compiled from: MRAIDPresenter.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J(\u0010\t\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000bH\u0016¨\u0006\f"}, d2 = {"com/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$6$1", "Lcom/vungle/ads/internal/network/Callback;", "Ljava/lang/Void;", "onFailure", "", NotificationCompat.CATEGORY_CALL, "Lcom/vungle/ads/internal/network/Call;", "t", "", "onResponse", com.json.mediationsdk.utils.c.Y1, "Lcom/vungle/ads/internal/network/Response;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c implements Callback<Void> {
        c() {
        }

        @Override // com.vungle.ads.internal.network.Callback
        public void onFailure(Call<Void> call, Throwable th) {
            Log.d(MRAIDPresenter.TAG, "send RI Failure");
        }

        @Override // com.vungle.ads.internal.network.Callback
        public void onResponse(Call<Void> call, Response<Void> response) {
            Log.d(MRAIDPresenter.TAG, "send RI success");
        }
    }

    /* JADX INFO: compiled from: MRAIDPresenter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vungle/ads/internal/util/HandlerScheduler;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class d extends Lambda implements Function0<HandlerScheduler> {
        public static final d INSTANCE = new d();

        d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final HandlerScheduler invoke() {
            return new HandlerScheduler();
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class e extends Lambda implements Function0<VungleApiClient> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final VungleApiClient invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(VungleApiClient.class);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class f extends Lambda implements Function0<Executors> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final Executors invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(Executors.class);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class g extends Lambda implements Function0<PathProvider> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.g, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final PathProvider invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(PathProvider.class);
        }
    }

    /* JADX INFO: compiled from: MRAIDPresenter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vungle/ads/internal/util/SuspendableTimer;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class h extends Lambda implements Function0<SuspendableTimer> {

        /* JADX INFO: compiled from: MRAIDPresenter.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, mv = {1, 7, 1}, xi = 48)
        static final class a extends Lambda implements Function0<v> {
            final /* synthetic */ MRAIDPresenter this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(MRAIDPresenter mRAIDPresenter) {
                super(0);
                this.this$0 = mRAIDPresenter;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ v invoke() {
                invoke2();
                return v.a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                AnalyticsClient.INSTANCE.logError$vungle_ads_release(318, "Error ad template missing Heartbeat", this.this$0.placement.getReferenceId(), this.this$0.advertisement.getCreativeId(), this.this$0.advertisement.eventId());
                this.this$0.reportErrorAndCloseAd(new InternalError(VungleError.HEARTBEAT_ERROR, null, 2, null));
            }
        }

        h() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final SuspendableTimer invoke() {
            return new SuspendableTimer(MRAIDPresenter.HEARTBEAT_INTERVAL, true, null, new a(MRAIDPresenter.this), 4, null);
        }
    }

    public MRAIDPresenter(MRAIDAdWidget adWidget, AdPayload advertisement, Placement placement, VungleWebClient vungleWebClient, Executor executor, OMTracker omTracker, BidPayload bidPayload) {
        Intrinsics.checkNotNullParameter(adWidget, "adWidget");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(vungleWebClient, "vungleWebClient");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(omTracker, "omTracker");
        this.adWidget = adWidget;
        this.advertisement = advertisement;
        this.placement = placement;
        this.vungleWebClient = vungleWebClient;
        this.executor = executor;
        this.omTracker = omTracker;
        this.bidPayload = bidPayload;
        this.isDestroying = new AtomicBoolean(false);
        this.sendReportIncentivized = new AtomicBoolean(false);
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        Context context = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "adWidget.context");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.a;
        this.vungleApiClient$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new e(context));
        Context context2 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "adWidget.context");
        this.executors$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new f(context2));
        Context context3 = adWidget.getContext();
        Intrinsics.checkNotNullExpressionValue(context3, "adWidget.context");
        this.pathProvider$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new g(context3));
        this.scheduler$delegate = LazyKt__LazyJVMKt.lazy(d.INSTANCE);
        this.suspendableTimer$delegate = LazyKt__LazyJVMKt.lazy(new h());
        this.clickCoordinateTracker$delegate = LazyKt__LazyJVMKt.lazy(new a());
    }

    private final void closeView() {
        this.adWidget.close();
    }

    @VisibleForTesting
    public static /* synthetic */ void getAdStartTime$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBackEnabled$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getBus$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getClickCoordinateTracker$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Executors getExecutors() {
        return (Executors) this.executors$delegate.getValue();
    }

    @VisibleForTesting
    public static /* synthetic */ void getHeartbeatEnabled$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PathProvider getPathProvider() {
        return (PathProvider) this.pathProvider$delegate.getValue();
    }

    private final HandlerScheduler getScheduler() {
        return (HandlerScheduler) this.scheduler$delegate.getValue();
    }

    @VisibleForTesting
    public static /* synthetic */ void getSuspendableTimer$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getUserId$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getVungleApiClient$vungle_ads_release$annotations() {
    }

    private final void handleWebViewException(VungleError vungleError, boolean z, String str) {
        Log.e(TAG, "handleWebViewException: " + vungleError.getLocalizedMessage() + ", fatal: " + z + ", errorMsg: " + str);
        if (z) {
            makeBusError(vungleError);
            closeView();
        }
    }

    static /* synthetic */ void handleWebViewException$default(MRAIDPresenter mRAIDPresenter, VungleError vungleError, boolean z, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        mRAIDPresenter.handleWebViewException(vungleError, z, str);
    }

    @VisibleForTesting
    public static /* synthetic */ void isDestroying$vungle_ads_release$annotations() {
    }

    private final boolean loadMraid(File file) {
        String parent = file.getParent();
        File file2 = parent != null ? new File(parent) : null;
        StringBuilder sb = new StringBuilder();
        sb.append(file2 != null ? file2.getPath() : null);
        sb.append(File.separator);
        sb.append("index.html");
        File file3 = new File(sb.toString());
        if (file3.exists()) {
            this.adWidget.showWebsite(AdPayload.FILE_SCHEME + file3.getPath());
            return true;
        }
        AnalyticsClient.INSTANCE.logError$vungle_ads_release(310, "Fail to load html " + file3.getPath(), this.placement.getReferenceId(), this.advertisement.getCreativeId(), this.advertisement.eventId());
        return false;
    }

    private final void makeBusError(VungleError vungleError) {
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onError(vungleError, this.placement.getReferenceId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: prepare$lambda-11, reason: not valid java name */
    public static final void m1150prepare$lambda11(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.backEnabled = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-3, reason: not valid java name */
    public static final void m1151processCommand$lambda3(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.vungleWebClient.notifyPropertiesChange(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-4, reason: not valid java name */
    public static final void m1152processCommand$lambda4(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.adWidget.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-6, reason: not valid java name */
    public static final void m1153processCommand$lambda6(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        String referenceId = this$0.placement.getReferenceId();
        List list = null;
        Boolean bool = null;
        String str = null;
        Call<Void> callRi = this$0.getVungleApiClient$vungle_ads_release().ri(new CommonRequestBody.RequestParam(list, bool, str, this$0.adStartTime, this$0.advertisement.appId(), referenceId, this$0.userId, 7, (n) null));
        if (callRi == null) {
            Log.e(TAG, "Invalid ri call.");
        } else {
            callRi.enqueue(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-7, reason: not valid java name */
    public static final void m1154processCommand$lambda7(MRAIDPresenter this$0, boolean z, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.handleWebViewException(new InternalError(VungleError.CREATIVE_ERROR, null, 2, null), z, str + " : " + str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processCommand$lambda-8, reason: not valid java name */
    public static final void m1155processCommand$lambda8(MRAIDPresenter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getSuspendableTimer$vungle_ads_release().reset();
    }

    private final void recordPlayAssetMetric() {
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(this.advertisement.getAssetsFullyDownloaded() ? Sdk.SDKMetric.SDKMetricType.LOCAL_ASSETS_USED : Sdk.SDKMetric.SDKMetricType.REMOTE_ASSETS_USED), (16 & 2) != 0 ? null : this.placement.getReferenceId(), (16 & 4) != 0 ? null : this.advertisement.getCreativeId(), (16 & 8) != 0 ? null : this.advertisement.eventId(), (16 & 16) != 0 ? null : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reportErrorAndCloseAd(VungleError vungleError) {
        makeBusError(vungleError);
        closeView();
    }

    public final void detach(int i) {
        AdEventListener adEventListener;
        Log.d(TAG, "detach()");
        boolean z = (i & 1) != 0;
        boolean z2 = (i & 2) != 0;
        this.vungleWebClient.setWebViewObserver(null);
        this.vungleWebClient.setMraidDelegate(null);
        if (!z && z2 && !this.isDestroying.getAndSet(true) && (adEventListener = this.bus) != null) {
            adEventListener.onNext(TtmlNode.END, null, this.placement.getReferenceId());
        }
        this.adWidget.destroyWebView(this.omTracker.stop());
        if (this.heartbeatEnabled) {
            getSuspendableTimer$vungle_ads_release().cancel();
        }
    }

    public final Long getAdStartTime$vungle_ads_release() {
        return this.adStartTime;
    }

    public final boolean getBackEnabled$vungle_ads_release() {
        return this.backEnabled;
    }

    public final AdEventListener getBus() {
        return this.bus;
    }

    public final ClickCoordinateTracker getClickCoordinateTracker$vungle_ads_release() {
        return (ClickCoordinateTracker) this.clickCoordinateTracker$delegate.getValue();
    }

    public final boolean getHeartbeatEnabled$vungle_ads_release() {
        return this.heartbeatEnabled;
    }

    public final SuspendableTimer getSuspendableTimer$vungle_ads_release() {
        return (SuspendableTimer) this.suspendableTimer$delegate.getValue();
    }

    public final String getUserId$vungle_ads_release() {
        return this.userId;
    }

    public final VungleApiClient getVungleApiClient$vungle_ads_release() {
        return (VungleApiClient) this.vungleApiClient$delegate.getValue();
    }

    public final void handleExit() {
        if (this.backEnabled) {
            this.adWidget.showWebsite("javascript:window.vungle.mraidBridgeExt.requestMRAIDClose()");
        }
    }

    public final AtomicBoolean isDestroying$vungle_ads_release() {
        return this.isDestroying;
    }

    @Override // com.vungle.ads.internal.ui.view.c
    public void onReceivedError(String errorDesc, boolean z) {
        Intrinsics.checkNotNullParameter(errorDesc, "errorDesc");
        if (z) {
            reportErrorAndCloseAd(new InternalError(VungleError.AD_RENDER_NETWORK_ERROR, null, 2, null));
        }
    }

    @Override // com.vungle.ads.internal.ui.view.c
    public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        handleWebViewException$default(this, new InternalError(VungleError.WEBVIEW_RENDER_UNRESPONSIVE, null, 2, null), true, null, 4, null);
    }

    public final void onViewConfigurationChanged() {
        this.vungleWebClient.notifyPropertiesChange(true);
    }

    public final void onViewTouched(MotionEvent motionEvent) {
        if (motionEvent != null) {
            getClickCoordinateTracker$vungle_ads_release().trackCoordinate(motionEvent);
        }
    }

    @Override // com.vungle.ads.internal.ui.view.c
    public boolean onWebRenderingProcessGone(WebView webView, Boolean bool) {
        handleWebViewException$default(this, new InternalError(VungleError.WEB_CRASH, null, 2, null), true, null, 4, null);
        return true;
    }

    public final void prepare() {
        String alertTitleText;
        String alertBodyText;
        String alertContinueButtonText;
        String alertCloseButtonText;
        int settings;
        boolean z = false;
        this.isDestroying.set(false);
        this.adWidget.linkWebView(this.vungleWebClient);
        AdConfig adConfig = this.advertisement.getAdConfig();
        if (adConfig != null && (settings = adConfig.getSettings()) > 0) {
            this.backEnabled = (settings & 2) == 2;
        }
        ConfigManager configManager = ConfigManager.INSTANCE;
        this.heartbeatEnabled = configManager.heartbeatEnabled();
        AdConfig adConfig2 = this.advertisement.getAdConfig();
        Integer numValueOf = adConfig2 != null ? Integer.valueOf(adConfig2.getAdOrientation()) : null;
        this.adWidget.setOrientation((numValueOf != null && numValueOf.intValue() == 0) ? 7 : (numValueOf != null && numValueOf.intValue() == 1) ? 6 : 4);
        this.omTracker.start();
        this.vungleWebClient.setMraidDelegate(this);
        this.vungleWebClient.setErrorHandler(this);
        File assetDirectory = this.advertisement.getAssetDirectory();
        if (assetDirectory == null || !assetDirectory.exists()) {
            reportErrorAndCloseAd(new AdNotLoadedCantPlay());
            return;
        }
        if (!loadMraid(new File(assetDirectory.getPath() + File.separator + "template"))) {
            reportErrorAndCloseAd(new AdNotLoadedCantPlay());
            return;
        }
        this.adStartTime = Long.valueOf(System.currentTimeMillis());
        PresenterDelegate presenterDelegate = this.presenterDelegate;
        this.userId = presenterDelegate != null ? presenterDelegate.getUserId() : null;
        PresenterDelegate presenterDelegate2 = this.presenterDelegate;
        if (presenterDelegate2 == null || (alertTitleText = presenterDelegate2.getAlertTitleText()) == null) {
            alertTitleText = "";
        }
        PresenterDelegate presenterDelegate3 = this.presenterDelegate;
        if (presenterDelegate3 == null || (alertBodyText = presenterDelegate3.getAlertBodyText()) == null) {
            alertBodyText = "";
        }
        PresenterDelegate presenterDelegate4 = this.presenterDelegate;
        if (presenterDelegate4 == null || (alertContinueButtonText = presenterDelegate4.getAlertContinueButtonText()) == null) {
            alertContinueButtonText = "";
        }
        PresenterDelegate presenterDelegate5 = this.presenterDelegate;
        if (presenterDelegate5 == null || (alertCloseButtonText = presenterDelegate5.getAlertCloseButtonText()) == null) {
            alertCloseButtonText = "";
        }
        this.advertisement.setIncentivizedText(alertTitleText, alertBodyText, alertContinueButtonText, alertCloseButtonText);
        if (configManager.getGDPRIsCountryDataProtected() && Intrinsics.areEqual("unknown", PrivacyManager.INSTANCE.getConsentStatus())) {
            z = true;
        }
        this.vungleWebClient.setConsentStatus(z, configManager.getGDPRConsentTitle(), configManager.getGDPRConsentMessage(), configManager.getGDPRButtonAccept(), configManager.getGDPRButtonDeny());
        if (z) {
            PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", "");
        }
        int showCloseDelay = this.advertisement.getShowCloseDelay(Boolean.valueOf(this.placement.getIsIncentivized()));
        if (showCloseDelay > 0) {
            getScheduler().schedule(new Runnable() { // from class: com.vungle.ads.internal.presenter.c
                @Override // java.lang.Runnable
                public final void run() {
                    MRAIDPresenter.m1150prepare$lambda11(this.a);
                }
            }, showCloseDelay);
        } else {
            this.backEnabled = true;
        }
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext("start", null, this.placement.getReferenceId());
        }
        if (this.heartbeatEnabled) {
            getSuspendableTimer$vungle_ads_release().start();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0190, code lost:
    
        if (r21.equals(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN) == false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01a5, code lost:
    
        if (r21.equals(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN_NON_MRAID) == false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01a9, code lost:
    
        r1 = r20.advertisement.adUnit();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01af, code lost:
    
        if (r1 == null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b1, code lost:
    
        r11 = r1.getDeeplinkUrl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01b5, code lost:
    
        r13 = r11;
        r14 = com.vungle.ads.internal.util.JsonUtil.INSTANCE.getContentStringValue(r22, "url");
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01bc, code lost:
    
        if (r13 == null) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c2, code lost:
    
        if (r13.length() != 0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01c5, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01c7, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c8, code lost:
    
        if (r1 == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01ca, code lost:
    
        if (r14 == null) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01d0, code lost:
    
        if (r14.length() != 0) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01d2, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01d3, code lost:
    
        if (r10 == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d5, code lost:
    
        android.util.Log.e(com.vungle.ads.internal.presenter.MRAIDPresenter.TAG, "CTA destination URL is not configured properly");
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01db, code lost:
    
        r15 = r20.adWidget.getContext();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r15, "adWidget.context");
        com.vungle.ads.internal.util.ExternalRouter.launch(r13, r14, r15, true, new com.vungle.ads.internal.ui.PresenterAppLeftCallback(r20.bus, r20.placement.getReferenceId()), new com.vungle.ads.internal.presenter.MRAIDPresenter.b(r20));
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01ff, code lost:
    
        r1 = r20.bus;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0201, code lost:
    
        if (r1 == null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0203, code lost:
    
        r1.onNext(com.vungle.ads.internal.presenter.MRAIDPresenter.OPEN, "adClick", r20.placement.getReferenceId());
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0305  */
    @Override // com.vungle.ads.internal.ui.view.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean processCommand(java.lang.String r21, kotlinx.serialization.json.JsonObject r22) {
        /*
            Method dump skipped, instruction units count: 1054
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.presenter.MRAIDPresenter.processCommand(java.lang.String, kotlinx.serialization.json.l):boolean");
    }

    public final void setAdStartTime$vungle_ads_release(Long l) {
        this.adStartTime = l;
    }

    public final void setAdVisibility(boolean z) {
        this.vungleWebClient.setAdVisibility(z);
    }

    public final void setBackEnabled$vungle_ads_release(boolean z) {
        this.backEnabled = z;
    }

    public final void setBus(AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void setEventListener(AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void setHeartbeatEnabled$vungle_ads_release(boolean z) {
        this.heartbeatEnabled = z;
    }

    public final void setPresenterDelegate$vungle_ads_release(PresenterDelegate presenterDelegate) {
        this.presenterDelegate = presenterDelegate;
    }

    public final void setUserId$vungle_ads_release(String str) {
        this.userId = str;
    }

    public final void start() {
        Log.d(TAG, "start()");
        this.adWidget.resumeWeb();
        setAdVisibility(true);
        if (ConfigManager.INSTANCE.adLoadOptimizationEnabled()) {
            recordPlayAssetMetric();
        }
    }

    public final void stop() {
        Log.d(TAG, "stop()");
        this.adWidget.pauseWeb();
        setAdVisibility(false);
    }
}
