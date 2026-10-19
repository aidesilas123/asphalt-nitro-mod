package com.vungle.ads.internal.network;

import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.URLUtil;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.core.content.PermissionChecker;
import androidx.core.util.Consumer;
import com.applovin.sdk.AppLovinEventTypes;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleAds;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.load.BaseAdLoader;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.AdvertisingInfo;
import com.vungle.ads.internal.model.AppNode;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.model.DeviceNode;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.COPPA;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.v0;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.Okio;
import okio.l;

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
/* JADX INFO: compiled from: VungleApiClient.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 j2\u00020\u0001:\u0003jklB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u001eH\u0007J\u0012\u00103\u001a\u00020\u00142\b\u00104\u001a\u0004\u0018\u000105H\u0002J\u000e\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u00020\u0014J\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020:\u0018\u000109J\u0010\u0010;\u001a\u00020<2\u0006\u00104\u001a\u00020=H\u0002J\u0010\u0010>\u001a\u00020\u00162\u0006\u0010?\u001a\u00020\u0003H\u0002J\n\u0010@\u001a\u0004\u0018\u00010\u0014H\u0002J\n\u0010A\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010A\u001a\u00020\u00142\u0006\u0010B\u001a\u00020CH\u0002J\b\u0010D\u001a\u00020\u0016H\u0002J\u0015\u0010D\u001a\u00020\u00162\u0006\u0010E\u001a\u00020\u001eH\u0001¢\u0006\u0002\bFJ\n\u0010G\u001a\u0004\u0018\u00010HH\u0002J\u0012\u0010I\u001a\u00020\u00142\b\u0010J\u001a\u0004\u0018\u000105H\u0002J\u000f\u0010K\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0002\u0010LJ\u000f\u0010M\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0002\u0010LJ\u000e\u0010N\u001a\u00020)2\u0006\u00107\u001a\u00020\u0014J\b\u0010O\u001a\u00020PH\u0002J\b\u0010Q\u001a\u000201H\u0002J\u000e\u0010R\u001a\u0002012\u0006\u0010S\u001a\u00020\u0014J\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007¢\u0006\u0002\u0010LJ\u0010\u0010T\u001a\u0004\u0018\u00010U2\u0006\u0010V\u001a\u00020\u0014J\u001c\u0010W\u001a\u0002012\f\u0010X\u001a\b\u0012\u0004\u0012\u00020Z0Y2\u0006\u0010[\u001a\u00020\\J\u001c\u0010]\u001a\u0002012\f\u0010^\u001a\b\u0012\u0004\u0012\u00020_0Y2\u0006\u0010[\u001a\u00020\\J(\u0010`\u001a\n\u0012\u0004\u0012\u00020a\u0018\u0001092\u0006\u0010b\u001a\u00020\u00142\b\u0010c\u001a\u0004\u0018\u00010\u00142\u0006\u0010d\u001a\u00020\u001eJ\u0006\u0010e\u001a\u00020fJ\u0016\u0010g\u001a\n\u0012\u0004\u0012\u00020h\u0018\u0001092\u0006\u00104\u001a\u00020iR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0017\u001a\u00020\n8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u000e\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010 \u001a\u00020!8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\"\u0010\u000e\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R0\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020)0(8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b*\u0010\u000e\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0010\u0010/\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006m"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient;", "", "applicationContext", "Landroid/content/Context;", "platform", "Lcom/vungle/ads/internal/platform/Platform;", "filePreferences", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "(Landroid/content/Context;Lcom/vungle/ads/internal/platform/Platform;Lcom/vungle/ads/internal/persistence/FilePreferences;)V", "api", "Lcom/vungle/ads/internal/network/VungleApi;", "appBody", "Lcom/vungle/ads/internal/model/AppNode;", "getAppBody$vungle_ads_release$annotations", "()V", "getAppBody$vungle_ads_release", "()Lcom/vungle/ads/internal/model/AppNode;", "setAppBody$vungle_ads_release", "(Lcom/vungle/ads/internal/model/AppNode;)V", "appSetId", "", "baseDeviceInfo", "Lcom/vungle/ads/internal/model/DeviceNode;", "gzipApi", "getGzipApi$vungle_ads_release$annotations", "getGzipApi$vungle_ads_release", "()Lcom/vungle/ads/internal/network/VungleApi;", "setGzipApi$vungle_ads_release", "(Lcom/vungle/ads/internal/network/VungleApi;)V", "isGooglePlayServicesAvailable", "", "Ljava/lang/Boolean;", "responseInterceptor", "Lokhttp3/Interceptor;", "getResponseInterceptor$vungle_ads_release$annotations", "getResponseInterceptor$vungle_ads_release", "()Lokhttp3/Interceptor;", "setResponseInterceptor$vungle_ads_release", "(Lokhttp3/Interceptor;)V", "retryAfterDataMap", "", "", "getRetryAfterDataMap$vungle_ads_release$annotations", "getRetryAfterDataMap$vungle_ads_release", "()Ljava/util/Map;", "setRetryAfterDataMap$vungle_ads_release", "(Ljava/util/Map;)V", "uaString", "addPlaySvcAvailabilityInCookie", "", "isPlaySvcAvailable", "bodyToString", "request", "Lokhttp3/RequestBody;", "checkIsRetryAfterActive", SDKConstants.PARAM_PLACEMENT_ID, "config", "Lcom/vungle/ads/internal/network/Call;", "Lcom/vungle/ads/internal/model/ConfigPayload;", "defaultErrorResponse", "Lokhttp3/Response;", "Lokhttp3/Request;", "getBasicDeviceBody", "context", "getConnectionType", "getConnectionTypeDetail", "type", "", "getDeviceBody", "explicitBlock", "getDeviceBody$vungle_ads_release", "getExtBody", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestExt;", "getPlacementID", "body", "getPlayServicesAvailabilityFromAPI", "()Ljava/lang/Boolean;", "getPlayServicesAvailabilityFromCookie", "getRetryAfterHeaderValue", "getUserBody", "Lcom/vungle/ads/internal/model/CommonRequestBody$User;", "initUserAgentLazy", MobileAdsBridgeBase.initializeMethodName, "appId", "pingTPAT", "Lcom/vungle/ads/internal/load/BaseAdLoader$ErrorInfo;", "url", "reportErrors", "errors", "Ljava/util/concurrent/BlockingQueue;", "Lcom/vungle/ads/internal/protos/Sdk$SDKError$Builder;", "requestListener", "Lcom/vungle/ads/AnalyticsClient$RequestListener;", "reportMetrics", "metrics", "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$Builder;", "requestAd", "Lcom/vungle/ads/internal/model/AdPayload;", "placement", o2.h.O, "isHeaderBiddingEnable", "requestBody", "Lcom/vungle/ads/internal/model/CommonRequestBody;", "ri", "Ljava/lang/Void;", "Lcom/vungle/ads/internal/model/CommonRequestBody$RequestParam;", "Companion", "ConnectionTypeDetail", "GzipRequestInterceptor", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class VungleApiClient {
    private static final String BASE_URL;
    public static final Companion Companion;
    private static final String MANUFACTURER_AMAZON = "Amazon";
    private static final String TAG = "VungleApiClient";
    private static VungleAds.WrapperFramework WRAPPER_FRAMEWORK_SELECTED;
    private static String headerUa;
    private static final Json json;
    private static final Set<Interceptor> logInterceptors;
    private static final Set<Interceptor> networkInterceptors;
    private VungleApi api;
    private AppNode appBody;
    private String appSetId;
    private final Context applicationContext;
    private DeviceNode baseDeviceInfo;
    private final FilePreferences filePreferences;
    private VungleApi gzipApi;
    private Boolean isGooglePlayServicesAvailable;
    private final Platform platform;
    private Interceptor responseInterceptor;
    private Map<String, Long> retryAfterDataMap;
    private String uaString;

    /* JADX INFO: compiled from: VungleApiClient.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0019\u001a\u00020\u0004H\u0002J\r\u0010\u001a\u001a\u00020\u001bH\u0000¢\u0006\u0002\b\u001cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$Companion;", "", "()V", "BASE_URL", "", "getBASE_URL$vungle_ads_release", "()Ljava/lang/String;", "MANUFACTURER_AMAZON", "TAG", "WRAPPER_FRAMEWORK_SELECTED", "Lcom/vungle/ads/VungleAds$WrapperFramework;", "getWRAPPER_FRAMEWORK_SELECTED$vungle_ads_release", "()Lcom/vungle/ads/VungleAds$WrapperFramework;", "setWRAPPER_FRAMEWORK_SELECTED$vungle_ads_release", "(Lcom/vungle/ads/VungleAds$WrapperFramework;)V", "headerUa", "getHeaderUa", "setHeaderUa", "(Ljava/lang/String;)V", "json", "Lkotlinx/serialization/json/Json;", "logInterceptors", "", "Lokhttp3/Interceptor;", "networkInterceptors", "defaultHeader", "reset", "", "reset$vungle_ads_release", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String defaultHeader() {
            StringBuilder sb = new StringBuilder();
            sb.append(Intrinsics.areEqual("Amazon", Build.MANUFACTURER) ? "VungleAmazon/" : "VungleDroid/");
            sb.append(v0.VERSION_NAME);
            return sb.toString();
        }

        public final String getBASE_URL$vungle_ads_release() {
            return VungleApiClient.BASE_URL;
        }

        public final String getHeaderUa() {
            return VungleApiClient.headerUa;
        }

        public final VungleAds.WrapperFramework getWRAPPER_FRAMEWORK_SELECTED$vungle_ads_release() {
            return VungleApiClient.WRAPPER_FRAMEWORK_SELECTED;
        }

        public final void reset$vungle_ads_release() {
            setWRAPPER_FRAMEWORK_SELECTED$vungle_ads_release(null);
            setHeaderUa(defaultHeader());
        }

        public final void setHeaderUa(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            VungleApiClient.headerUa = str;
        }

        public final void setWRAPPER_FRAMEWORK_SELECTED$vungle_ads_release(VungleAds.WrapperFramework wrapperFramework) {
            VungleApiClient.WRAPPER_FRAMEWORK_SELECTED = wrapperFramework;
        }
    }

    /* JADX INFO: compiled from: VungleApiClient.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/json/JsonBuilder;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class a extends Lambda implements Function1<JsonBuilder, v> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(JsonBuilder Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
        }
    }

    /* JADX INFO: compiled from: VungleApiClient.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$GzipRequestInterceptor;", "Lokhttp3/Interceptor;", "()V", b.GZIP, "Lokhttp3/RequestBody;", "requestBody", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b implements Interceptor {
        private static final String CONTENT_ENCODING = "Content-Encoding";
        public static final a Companion = new a(null);
        private static final String GZIP = "gzip";

        /* JADX INFO: compiled from: VungleApiClient.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/network/VungleApiClient$GzipRequestInterceptor$Companion;", "", "()V", "CONTENT_ENCODING", "", "GZIP", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }
        }

        /* JADX INFO: renamed from: com.vungle.ads.internal.network.VungleApiClient$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: VungleApiClient.kt */
        @Metadata(d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"com/vungle/ads/internal/network/VungleApiClient$GzipRequestInterceptor$gzip$1", "Lokhttp3/RequestBody;", "contentLength", "", "contentType", "Lokhttp3/MediaType;", "writeTo", "", "sink", "Lokio/BufferedSink;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class C0463b extends RequestBody {
            final /* synthetic */ Buffer $output;
            final /* synthetic */ RequestBody $requestBody;

            C0463b(RequestBody requestBody, Buffer buffer) {
                this.$requestBody = requestBody;
                this.$output = buffer;
            }

            @Override // okhttp3.RequestBody
            public long contentLength() {
                return this.$output.I();
            }

            @Override // okhttp3.RequestBody
            /* JADX INFO: renamed from: contentType */
            public MediaType getA() {
                return this.$requestBody.getA();
            }

            @Override // okhttp3.RequestBody
            public void writeTo(okio.d sink) throws IOException {
                Intrinsics.checkNotNullParameter(sink, "sink");
                sink.P(this.$output.J());
            }
        }

        private final RequestBody gzip(RequestBody requestBody) throws IOException {
            Buffer buffer = new Buffer();
            okio.d dVarBuffer = Okio.buffer(new l(buffer));
            requestBody.writeTo(dVarBuffer);
            dVarBuffer.close();
            return new C0463b(requestBody, buffer);
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.a chain) throws IOException {
            Intrinsics.checkNotNullParameter(chain, "chain");
            Request request = chain.request();
            RequestBody f10605d = request.getF10605d();
            return (f10605d == null || request.d(CONTENT_ENCODING) != null) ? chain.a(request) : chain.a(request.i().f(CONTENT_ENCODING, GZIP).h(request.getB(), gzip(f10605d)).b());
        }
    }

    /* JADX INFO: compiled from: VungleApiClient.kt */
    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"com/vungle/ads/internal/network/VungleApiClient$builder$1", "Ljava/net/ProxySelector;", "connectFailed", "", ShareConstants.MEDIA_URI, "Ljava/net/URI;", "sa", "Ljava/net/SocketAddress;", "ioe", "Ljava/io/IOException;", "select", "", "Ljava/net/Proxy;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends ProxySelector {
        c() {
        }

        @Override // java.net.ProxySelector
        public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
            try {
                ProxySelector.getDefault().connectFailed(uri, socketAddress, iOException);
            } catch (Exception unused) {
            }
        }

        @Override // java.net.ProxySelector
        public List<Proxy> select(URI uri) {
            try {
                List<Proxy> listSelect = ProxySelector.getDefault().select(uri);
                Intrinsics.checkNotNullExpressionValue(listSelect, "{\n                      …ri)\n                    }");
                return listSelect;
            } catch (Exception unused) {
                return CollectionsKt__CollectionsJVMKt.listOf(Proxy.NO_PROXY);
            }
        }
    }

    /* JADX INFO: compiled from: VungleApiClient.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"com/vungle/ads/internal/network/VungleApiClient$initUserAgentLazy$1", "Landroidx/core/util/Consumer;", "", "accept", "", "uaString", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class d implements Consumer<String> {
        final /* synthetic */ TimeIntervalMetric $uaMetric;
        final /* synthetic */ VungleApiClient this$0;

        d(TimeIntervalMetric timeIntervalMetric, VungleApiClient vungleApiClient) {
            this.$uaMetric = timeIntervalMetric;
            this.this$0 = vungleApiClient;
        }

        @Override // androidx.core.util.Consumer
        public void accept(String str) {
            if (str == null) {
                Log.e(VungleApiClient.TAG, "Cannot Get UserAgent. Setting Default Device UserAgent");
                AnalyticsClient.INSTANCE.logError$vungle_ads_release(7, "Fail to get user agent.", (24 & 4) != 0 ? null : null, (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
            } else {
                this.$uaMetric.markEnd();
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(this.$uaMetric.getMetricType(), (60 & 2) != 0 ? 0L : this.$uaMetric.calculateIntervalDuration(), (60 & 4) != 0 ? null : null, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) == 0 ? null : null);
                this.this$0.uaString = str;
            }
        }
    }

    /* JADX INFO: compiled from: VungleApiClient.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J(\u0010\t\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000bH\u0016¨\u0006\f"}, d2 = {"com/vungle/ads/internal/network/VungleApiClient$reportErrors$3", "Lcom/vungle/ads/internal/network/Callback;", "Ljava/lang/Void;", "onFailure", "", NotificationCompat.CATEGORY_CALL, "Lcom/vungle/ads/internal/network/Call;", "t", "", "onResponse", com.json.mediationsdk.utils.c.Y1, "Lcom/vungle/ads/internal/network/Response;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class e implements Callback<Void> {
        final /* synthetic */ AnalyticsClient.a $requestListener;

        e(AnalyticsClient.a aVar) {
            this.$requestListener = aVar;
        }

        @Override // com.vungle.ads.internal.network.Callback
        public void onFailure(Call<Void> call, Throwable th) {
            this.$requestListener.onFailure();
        }

        @Override // com.vungle.ads.internal.network.Callback
        public void onResponse(Call<Void> call, Response<Void> response) {
            this.$requestListener.onSuccess();
        }
    }

    /* JADX INFO: compiled from: VungleApiClient.kt */
    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016J(\u0010\t\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000bH\u0016¨\u0006\f"}, d2 = {"com/vungle/ads/internal/network/VungleApiClient$reportMetrics$3", "Lcom/vungle/ads/internal/network/Callback;", "Ljava/lang/Void;", "onFailure", "", NotificationCompat.CATEGORY_CALL, "Lcom/vungle/ads/internal/network/Call;", "t", "", "onResponse", com.json.mediationsdk.utils.c.Y1, "Lcom/vungle/ads/internal/network/Response;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class f implements Callback<Void> {
        final /* synthetic */ AnalyticsClient.a $requestListener;

        f(AnalyticsClient.a aVar) {
            this.$requestListener = aVar;
        }

        @Override // com.vungle.ads.internal.network.Callback
        public void onFailure(Call<Void> call, Throwable th) {
            this.$requestListener.onFailure();
        }

        @Override // com.vungle.ads.internal.network.Callback
        public void onResponse(Call<Void> call, Response<Void> response) {
            this.$requestListener.onSuccess();
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        BASE_URL = "https://config.ads.vungle.com/";
        headerUa = companion.defaultHeader();
        networkInterceptors = new HashSet();
        logInterceptors = new HashSet();
        json = JsonKt.Json$default(null, a.INSTANCE, 1, null);
    }

    public VungleApiClient(Context applicationContext, Platform platform, FilePreferences filePreferences) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(filePreferences, "filePreferences");
        this.applicationContext = applicationContext;
        this.platform = platform;
        this.filePreferences = filePreferences;
        this.uaString = System.getProperty("http.agent");
        this.appSetId = "";
        this.retryAfterDataMap = new ConcurrentHashMap();
        this.responseInterceptor = new Interceptor() { // from class: com.vungle.ads.internal.network.d
            @Override // okhttp3.Interceptor
            public final Response intercept(Interceptor.a aVar) {
                return VungleApiClient.m1144responseInterceptor$lambda0(this.b, aVar);
            }
        };
        OkHttpClient.a aVarK = new OkHttpClient.a().a(this.responseInterceptor).K(new c());
        OkHttpClient okHttpClientB = aVarK.b();
        OkHttpClient okHttpClientB2 = aVarK.a(new b()).b();
        this.api = new VungleApiImpl(okHttpClientB);
        this.gzipApi = new VungleApiImpl(okHttpClientB2);
    }

    private final String bodyToString(RequestBody requestBody) {
        try {
            Buffer buffer = new Buffer();
            if (requestBody == null) {
                return "";
            }
            requestBody.writeTo(buffer);
            return buffer.readUtf8();
        } catch (Exception unused) {
            return "";
        }
    }

    private final Response defaultErrorResponse(Request request) {
        return new Response.a().s(request).g(500).q(Protocol.HTTP_1_1).n("Server is busy").b(ResponseBody.INSTANCE.a("{\"Error\":\"Server is busy\"}", MediaType.a.b("application/json; charset=utf-8"))).c();
    }

    @VisibleForTesting
    public static /* synthetic */ void getAppBody$vungle_ads_release$annotations() {
    }

    private final DeviceNode getBasicDeviceBody(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = context.getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getMetrics(displayMetrics);
        }
        String MANUFACTURER = Build.MANUFACTURER;
        Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
        String MODEL = Build.MODEL;
        Intrinsics.checkNotNullExpressionValue(MODEL, "MODEL");
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        Object systemService2 = context.getSystemService("phone");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        DeviceNode deviceNode = new DeviceNode(MANUFACTURER, MODEL, RELEASE, ((TelephonyManager) systemService2).getNetworkOperatorName(), Intrinsics.areEqual("Amazon", MANUFACTURER) ? "amazon" : "android", displayMetrics.widthPixels, displayMetrics.heightPixels, this.uaString, (String) null, (Integer) null, (DeviceNode.DeviceExt) null, 1792, (n) null);
        try {
            String userAgent = this.platform.getUserAgent();
            this.uaString = userAgent;
            deviceNode.setUa(userAgent);
            initUserAgentLazy();
        } catch (Exception e2) {
            Log.e(TAG, "Cannot Get UserAgent. Setting Default Device UserAgent." + e2.getLocalizedMessage());
        }
        return deviceNode;
    }

    private final String getConnectionType() {
        if (PermissionChecker.checkCallingOrSelfPermission(this.applicationContext, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return null;
        }
        Object systemService = this.applicationContext.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return "NONE";
        }
        int type = activeNetworkInfo.getType();
        return type != 0 ? (type == 1 || type == 6) ? "WIFI" : type != 7 ? type != 9 ? "UNKNOWN" : "ETHERNET" : "BLUETOOTH" : "MOBILE";
    }

    private final String getConnectionTypeDetail() {
        if (PermissionChecker.checkCallingOrSelfPermission(this.applicationContext, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return null;
        }
        Object systemService = this.applicationContext.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null ? getConnectionTypeDetail(activeNetworkInfo.getSubtype()) : "unknown";
    }

    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1091)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:390)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:370)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:85)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:33)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1116)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:23)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    private final java.lang.String getConnectionTypeDetail(int r3) {
        /*
            r2 = this;
            java.lang.String r0 = "unknown"
            if (r3 == 0) goto L35
            r1 = 1
            if (r3 == r1) goto L33
            r1 = 2
            if (r3 == r1) goto L30
            r1 = 20
            if (r3 == r1) goto L35
            switch(r3) {
                case 4: goto L2d;
                case 5: goto L2a;
                case 6: goto L27;
                case 7: goto L24;
                case 8: goto L21;
                case 9: goto L1e;
                default: goto L11;
            }
        L11:
            switch(r3) {
                case 12: goto L1b;
                case 13: goto L18;
                case 14: goto L15;
                default: goto L14;
            }
        L14:
            goto L35
        L15:
            java.lang.String r0 = "hrpd"
            goto L35
        L18:
            java.lang.String r0 = "LTE"
            goto L35
        L1b:
            java.lang.String r0 = "cdma_evdo_b"
            goto L35
        L1e:
            java.lang.String r0 = "hsupa"
            goto L35
        L21:
            java.lang.String r0 = "hsdpa"
            goto L35
        L24:
            java.lang.String r0 = "cdma_1xrtt"
            goto L35
        L27:
            java.lang.String r0 = "cdma_evdo_a"
            goto L35
        L2a:
            java.lang.String r0 = "cdma_evdo_0"
            goto L35
        L2d:
            java.lang.String r0 = "wcdma"
            goto L35
        L30:
            java.lang.String r0 = "edge"
            goto L35
        L33:
            java.lang.String r0 = "gprs"
        L35:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.VungleApiClient.getConnectionTypeDetail(int):java.lang.String");
    }

    private final DeviceNode getDeviceBody() throws IllegalStateException {
        return getDeviceBody$vungle_ads_release(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.vungle.ads.internal.model.CommonRequestBody.RequestExt getExtBody() {
        /*
            r5 = this;
            com.vungle.ads.internal.g r0 = com.vungle.ads.internal.ConfigManager.INSTANCE
            java.lang.String r0 = r0.getConfigExtension()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L17
            int r3 = r0.length()
            if (r3 != 0) goto L12
            r3 = 1
            goto L13
        L12:
            r3 = 0
        L13:
            if (r3 != r1) goto L17
            r3 = 1
            goto L18
        L17:
            r3 = 0
        L18:
            if (r3 == 0) goto L22
            com.vungle.ads.internal.persistence.FilePreferences r0 = r5.filePreferences
            java.lang.String r3 = "config_extension"
            java.lang.String r0 = r0.getString(r3)
        L22:
            java.lang.String r3 = ""
            if (r0 == 0) goto L2f
            int r4 = r0.length()
            if (r4 != 0) goto L2d
            goto L2f
        L2d:
            r4 = 0
            goto L30
        L2f:
            r4 = 1
        L30:
            if (r4 == 0) goto L3e
            int r4 = r3.length()
            if (r4 != 0) goto L39
            goto L3a
        L39:
            r1 = 0
        L3a:
            if (r1 == 0) goto L3e
            r0 = 0
            return r0
        L3e:
            com.vungle.ads.internal.model.CommonRequestBody$RequestExt r1 = new com.vungle.ads.internal.model.CommonRequestBody$RequestExt
            r1.<init>(r0, r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.network.VungleApiClient.getExtBody():com.vungle.ads.internal.model.CommonRequestBody$RequestExt");
    }

    @VisibleForTesting
    public static /* synthetic */ void getGzipApi$vungle_ads_release$annotations() {
    }

    private final String getPlacementID(RequestBody requestBody) {
        List<String> placements;
        try {
            Json json2 = json;
            String strBodyToString = bodyToString(requestBody);
            KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(json2.getC(), Reflection.typeOf(CommonRequestBody.class));
            Intrinsics.checkNotNull(kSerializerSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            CommonRequestBody.RequestParam request = ((CommonRequestBody) json2.b(kSerializerSerializer, strBodyToString)).getRequest();
            if (request == null || (placements = request.getPlacements()) == null) {
                return "";
            }
            String str = placements.get(0);
            return str == null ? "" : str;
        } catch (Exception unused) {
            return "";
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getResponseInterceptor$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getRetryAfterDataMap$vungle_ads_release$annotations() {
    }

    private final CommonRequestBody.User getUserBody() {
        CommonRequestBody.User user = new CommonRequestBody.User((CommonRequestBody.GDPR) null, (CommonRequestBody.CCPA) null, (CommonRequestBody.COPPA) null, 7, (n) null);
        PrivacyManager privacyManager = PrivacyManager.INSTANCE;
        user.setGdpr(new CommonRequestBody.GDPR(privacyManager.getConsentStatus(), privacyManager.getConsentSource(), privacyManager.getConsentTimestamp(), privacyManager.getConsentMessageVersion()));
        user.setCcpa(new CommonRequestBody.CCPA(privacyManager.getCcpaStatus()));
        if (privacyManager.getCoppaStatus() != COPPA.COPPA_NOTSET) {
            user.setCoppa(new CommonRequestBody.COPPA(privacyManager.getCoppaStatus().getValue()));
        }
        return user;
    }

    private final void initUserAgentLazy() {
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.USER_AGENT_LOAD_DURATION_MS);
        timeIntervalMetric.markStart();
        this.platform.getUserAgentLazy(new d(timeIntervalMetric, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: responseInterceptor$lambda-0, reason: not valid java name */
    public static final Response m1144responseInterceptor$lambda0(VungleApiClient this$0, Interceptor.a chain) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        try {
            try {
                Response responseA = chain.a(request);
                String strA = responseA.getF10613f().a("Retry-After");
                boolean z = true;
                if (strA == null || strA.length() == 0) {
                    return responseA;
                }
                try {
                    long j = Long.parseLong(strA);
                    if (j <= 0) {
                        return responseA;
                    }
                    String strC = request.getA().c();
                    long jCurrentTimeMillis = (j * ((long) 1000)) + System.currentTimeMillis();
                    if (!StringsKt__StringsJVMKt.endsWith$default(strC, CampaignUnit.JSON_KEY_ADS, false, 2, null)) {
                        return responseA;
                    }
                    String placementID = this$0.getPlacementID(request.getF10605d());
                    if (placementID.length() <= 0) {
                        z = false;
                    }
                    if (!z) {
                        return responseA;
                    }
                    this$0.retryAfterDataMap.put(placementID, Long.valueOf(jCurrentTimeMillis));
                    return responseA;
                } catch (Exception unused) {
                    Log.d(TAG, "Retry-After value is not an valid value");
                    return responseA;
                }
            } catch (Exception e2) {
                Logger.INSTANCE.e(TAG, "Exception: " + e2.getMessage() + " for " + request.getA());
                return this$0.defaultErrorResponse(request);
            }
        } catch (OutOfMemoryError unused2) {
            Logger.INSTANCE.e(TAG, "OOM for " + request.getA());
            return this$0.defaultErrorResponse(request);
        }
    }

    @VisibleForTesting
    public final void addPlaySvcAvailabilityInCookie(boolean z) {
        this.filePreferences.put("isPlaySvcAvailable", z).apply();
    }

    public final boolean checkIsRetryAfterActive(String placementID) {
        Intrinsics.checkNotNullParameter(placementID, "placementID");
        Long l = this.retryAfterDataMap.get(placementID);
        if ((l != null ? l.longValue() : 0L) > System.currentTimeMillis()) {
            return true;
        }
        this.retryAfterDataMap.remove(placementID);
        return false;
    }

    public final Call<ConfigPayload> config() throws IOException {
        AppNode appNode = this.appBody;
        if (appNode == null) {
            return null;
        }
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody$vungle_ads_release(true), appNode, getUserBody(), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (n) null);
        CommonRequestBody.RequestExt extBody = getExtBody();
        if (extBody != null) {
            commonRequestBody.setExt(extBody);
        }
        FileUtility fileUtility = FileUtility.INSTANCE;
        String str = BASE_URL;
        if (!fileUtility.isValidUrl(str)) {
            str = "https://config.ads.vungle.com/";
        }
        if (!StringsKt__StringsJVMKt.endsWith$default(str, "/", false, 2, null)) {
            str = str + '/';
        }
        return this.api.config(headerUa, str + "config", commonRequestBody);
    }

    public final AppNode getAppBody$vungle_ads_release() {
        return this.appBody;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    public final synchronized DeviceNode getDeviceBody$vungle_ads_release(boolean z) throws IllegalStateException {
        DeviceNode deviceNodeCopy;
        String str;
        boolean zHasSystemFeature;
        DeviceNode basicDeviceBody = this.baseDeviceInfo;
        if (basicDeviceBody == null) {
            basicDeviceBody = getBasicDeviceBody(this.applicationContext);
            this.baseDeviceInfo = basicDeviceBody;
        }
        deviceNodeCopy = basicDeviceBody.copy((2047 & 1) != 0 ? basicDeviceBody.make : null, (2047 & 2) != 0 ? basicDeviceBody.model : null, (2047 & 4) != 0 ? basicDeviceBody.osv : null, (2047 & 8) != 0 ? basicDeviceBody.carrier : null, (2047 & 16) != 0 ? basicDeviceBody.os : null, (2047 & 32) != 0 ? basicDeviceBody.w : 0, (2047 & 64) != 0 ? basicDeviceBody.h : 0, (2047 & 128) != 0 ? basicDeviceBody.ua : null, (2047 & 256) != 0 ? basicDeviceBody.ifa : null, (2047 & 512) != 0 ? basicDeviceBody.lmt : null, (2047 & 1024) != 0 ? basicDeviceBody.ext : null);
        DeviceNode.AndroidAmazonExt androidAmazonExt = new DeviceNode.AndroidAmazonExt(null, null == true ? 1 : 0, 3, null == true ? 1 : 0);
        AdvertisingInfo advertisingInfo = this.platform.getAdvertisingInfo();
        String advertisingId = advertisingInfo != null ? advertisingInfo.getAdvertisingId() : null;
        Boolean boolValueOf = advertisingInfo != null ? Boolean.valueOf(advertisingInfo.getLimitAdTracking()) : null;
        PrivacyManager privacyManager = PrivacyManager.INSTANCE;
        if (privacyManager.shouldSendAdIds()) {
            if (advertisingId != null) {
                if (Intrinsics.areEqual("Amazon", Build.MANUFACTURER)) {
                    androidAmazonExt.setAmazonAdvertisingId(advertisingId);
                } else {
                    androidAmazonExt.setGaid(advertisingId);
                }
                deviceNodeCopy.setIfa(advertisingId);
            } else {
                String androidId = this.platform.getAndroidId();
                deviceNodeCopy.setIfa(androidId == null ? "" : androidId);
                if (androidId != null) {
                    androidAmazonExt.setAndroidId(androidId);
                }
            }
        }
        if (!privacyManager.shouldSendAdIds() || z) {
            deviceNodeCopy.setIfa(null);
            androidAmazonExt.setAndroidId(null);
            androidAmazonExt.setGaid(null);
            androidAmazonExt.setAmazonAdvertisingId(null);
        }
        Boolean bool = Boolean.TRUE;
        int i = 1;
        deviceNodeCopy.setLmt(Intrinsics.areEqual(boolValueOf, bool) ? 1 : 0);
        androidAmazonExt.setGooglePlayServicesAvailable(Intrinsics.areEqual(bool, isGooglePlayServicesAvailable()));
        String appSetId = this.platform.getAppSetId();
        this.appSetId = appSetId;
        if (!(appSetId == null || appSetId.length() == 0)) {
            androidAmazonExt.setAppSetId(this.appSetId);
        }
        Intent intentRegisterReceiver = this.applicationContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int i2 = 2;
        if (intentRegisterReceiver != null) {
            int intExtra = intentRegisterReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1);
            int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
            if (intExtra > 0 && intExtra2 > 0) {
                androidAmazonExt.setBatteryLevel(intExtra / intExtra2);
            }
            int intExtra3 = intentRegisterReceiver.getIntExtra("status", -1);
            if (intExtra3 == -1) {
                str = "UNKNOWN";
            } else if (intExtra3 == 2 || intExtra3 == 5) {
                int intExtra4 = intentRegisterReceiver.getIntExtra("plugged", -1);
                str = intExtra4 != 1 ? intExtra4 != 2 ? intExtra4 != 4 ? "BATTERY_PLUGGED_OTHERS" : "BATTERY_PLUGGED_WIRELESS" : "BATTERY_PLUGGED_USB" : "BATTERY_PLUGGED_AC";
            } else {
                str = "NOT_CHARGING";
            }
        } else {
            str = "UNKNOWN";
        }
        androidAmazonExt.setBatteryState(str);
        Object systemService = this.applicationContext.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        PowerManager powerManager = (PowerManager) systemService;
        int i3 = Build.VERSION.SDK_INT;
        androidAmazonExt.setBatterySaverEnabled((i3 < 21 || !powerManager.isPowerSaveMode()) ? 0 : 1);
        String connectionType = getConnectionType();
        if (connectionType != null) {
            androidAmazonExt.setConnectionType(connectionType);
        }
        String connectionTypeDetail = getConnectionTypeDetail();
        if (connectionTypeDetail != null) {
            androidAmazonExt.setConnectionTypeDetail(connectionTypeDetail);
        }
        androidAmazonExt.setLocale(Locale.getDefault().toString());
        androidAmazonExt.setLanguage(Locale.getDefault().getLanguage());
        androidAmazonExt.setTimeZone(TimeZone.getDefault().getID());
        androidAmazonExt.setVolumeLevel(this.platform.getVolumeLevel());
        androidAmazonExt.setSoundEnabled(this.platform.isSoundEnabled() ? 1 : 0);
        String str2 = Build.MANUFACTURER;
        if (Intrinsics.areEqual("Amazon", str2)) {
            zHasSystemFeature = this.applicationContext.getPackageManager().hasSystemFeature("amazon.hardware.fire_tv");
        } else if (i3 >= 23) {
            Object systemService2 = this.applicationContext.getSystemService("uimode");
            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.app.UiModeManager");
            if (((UiModeManager) systemService2).getCurrentModeType() == 4) {
            }
        } else {
            zHasSystemFeature = this.applicationContext.getPackageManager().hasSystemFeature("com.google.android.tv") || !this.applicationContext.getPackageManager().hasSystemFeature("android.hardware.touchscreen");
        }
        androidAmazonExt.setTv(zHasSystemFeature);
        androidAmazonExt.setSideloadEnabled(this.platform.getIsSideLoaded());
        androidAmazonExt.setSdCardAvailable(this.platform.isSdCardPresent() ? 1 : 0);
        androidAmazonExt.setOsName(Build.FINGERPRINT);
        deviceNodeCopy.setUa(this.uaString);
        deviceNodeCopy.setExt(new DeviceNode.DeviceExt(Intrinsics.areEqual("Amazon", str2) ? new DeviceNode.VungleExt((DeviceNode.AndroidAmazonExt) (null == true ? 1 : 0), androidAmazonExt, i, (n) (null == true ? 1 : 0)) : new DeviceNode.VungleExt(androidAmazonExt, (DeviceNode.AndroidAmazonExt) (null == true ? 1 : 0), i2, (n) (null == true ? 1 : 0))));
        return deviceNodeCopy;
    }

    public final VungleApi getGzipApi$vungle_ads_release() {
        return this.gzipApi;
    }

    @VisibleForTesting
    public final Boolean getPlayServicesAvailabilityFromAPI() {
        Boolean boolValueOf = null;
        try {
            GoogleApiAvailabilityLight googleApiAvailabilityLight = GoogleApiAvailabilityLight.getInstance();
            Intrinsics.checkNotNullExpressionValue(googleApiAvailabilityLight, "getInstance()");
            boolValueOf = Boolean.valueOf(googleApiAvailabilityLight.isGooglePlayServicesAvailable(this.applicationContext) == 0);
            addPlaySvcAvailabilityInCookie(boolValueOf.booleanValue());
            return boolValueOf;
        } catch (Exception unused) {
            Log.w(TAG, "Unexpected exception from Play services lib.");
            return boolValueOf;
        } catch (NoClassDefFoundError unused2) {
            Log.w(TAG, "Play services Not available");
            Boolean bool = Boolean.FALSE;
            try {
                addPlaySvcAvailabilityInCookie(false);
                return bool;
            } catch (Exception unused3) {
                Log.w(TAG, "Failure to write GPS availability to DB");
                return bool;
            }
        }
    }

    @VisibleForTesting
    public final Boolean getPlayServicesAvailabilityFromCookie() {
        return this.filePreferences.getBoolean("isPlaySvcAvailable");
    }

    public final Interceptor getResponseInterceptor$vungle_ads_release() {
        return this.responseInterceptor;
    }

    public final Map<String, Long> getRetryAfterDataMap$vungle_ads_release() {
        return this.retryAfterDataMap;
    }

    public final long getRetryAfterHeaderValue(String placementID) {
        Intrinsics.checkNotNullParameter(placementID, "placementID");
        Long l = this.retryAfterDataMap.get(placementID);
        if (l != null) {
            return l.longValue();
        }
        return 0L;
    }

    public final synchronized void initialize(String appId) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(appId, "appId");
        this.api.setAppId(appId);
        this.gzipApi.setAppId(appId);
        String str = "1.0";
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                packageInfo = this.applicationContext.getPackageManager().getPackageInfo(this.applicationContext.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
                Intrinsics.checkNotNullExpressionValue(packageInfo, "{\n                    ap…      )\n                }");
            } else {
                packageInfo = this.applicationContext.getPackageManager().getPackageInfo(this.applicationContext.getPackageName(), 0);
                Intrinsics.checkNotNullExpressionValue(packageInfo, "{\n                    ap…      )\n                }");
            }
            String str2 = packageInfo.versionName;
            Intrinsics.checkNotNullExpressionValue(str2, "packageInfo.versionName");
            str = str2;
        } catch (Exception unused) {
        }
        this.baseDeviceInfo = getBasicDeviceBody(this.applicationContext);
        String packageName = this.applicationContext.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "applicationContext.packageName");
        this.appBody = new AppNode(packageName, str, appId);
        this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
    }

    @VisibleForTesting
    public final Boolean isGooglePlayServicesAvailable() {
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromCookie();
        }
        if (this.isGooglePlayServicesAvailable == null) {
            this.isGooglePlayServicesAvailable = getPlayServicesAvailabilityFromAPI();
        }
        return this.isGooglePlayServicesAvailable;
    }

    public final BaseAdLoader.b pingTPAT(String url) {
        Response rawResponse;
        Intrinsics.checkNotNullParameter(url, "url");
        if ((url.length() == 0) || HttpUrl.a.g(url) == null) {
            return new BaseAdLoader.b(121, "Invalid URL : " + url, null, true, 4, null);
        }
        try {
            String host = new URL(url).getHost();
            int i = Build.VERSION.SDK_INT;
            if (!(i >= 24 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(host) : i >= 23 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : true) && URLUtil.isHttpUrl(url)) {
                return new BaseAdLoader.b(121, "Clear Text Traffic is blocked", null, false, 12, null);
            }
            try {
                String str = this.uaString;
                if (str == null) {
                    str = "";
                }
                Response<Void> responseExecute = this.api.pingTPAT(str, url).execute();
                Integer numValueOf = null;
                if (responseExecute != null && responseExecute.isSuccessful()) {
                    return null;
                }
                if (responseExecute != null && (rawResponse = responseExecute.getRawResponse()) != null) {
                    numValueOf = Integer.valueOf(rawResponse.getCode());
                }
                if (!CollectionsKt___CollectionsKt.contains(CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{301, 302, 307, 308}), numValueOf)) {
                    return new BaseAdLoader.b(121, "Tpat ping was not successful", null, false, 12, null);
                }
                return new BaseAdLoader.b(29, "Tpat ping was redirected with code " + numValueOf, null, false, 12, null);
            } catch (Exception e2) {
                int i2 = 121;
                String localizedMessage = e2.getLocalizedMessage();
                if (localizedMessage == null) {
                    localizedMessage = "IOException";
                }
                return new BaseAdLoader.b(i2, localizedMessage, null, false, 12, null);
            }
        } catch (MalformedURLException e3) {
            int i3 = 121;
            String localizedMessage2 = e3.getLocalizedMessage();
            if (localizedMessage2 == null) {
                localizedMessage2 = "MalformedURLException";
            }
            return new BaseAdLoader.b(i3, localizedMessage2, null, true, 4, null);
        }
    }

    public final void reportErrors(BlockingQueue<Sdk.SDKError.a> errors, AnalyticsClient.a requestListener) {
        Intrinsics.checkNotNullParameter(errors, "errors");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        String errorLoggingEndpoint = ConfigManager.INSTANCE.getErrorLoggingEndpoint();
        if (errorLoggingEndpoint == null || errorLoggingEndpoint.length() == 0) {
            requestListener.onFailure();
            return;
        }
        for (Sdk.SDKError.a aVar : errors) {
            String connectionType = getConnectionType();
            if (connectionType != null) {
                aVar.setConnectionType(connectionType);
            }
            String connectionTypeDetail = getConnectionTypeDetail();
            if (connectionTypeDetail != null) {
                aVar.setConnectionTypeDetail(connectionTypeDetail);
                aVar.setConnectionTypeDetailAndroid(connectionTypeDetail);
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = errors.iterator();
        while (it.hasNext()) {
            arrayList.add(((Sdk.SDKError.a) it.next()).build());
        }
        Sdk.SDKErrorBatch sDKErrorBatchBuild = Sdk.SDKErrorBatch.newBuilder().addAllErrors(arrayList).build();
        RequestBody.Companion companion = RequestBody.INSTANCE;
        byte[] byteArray = sDKErrorBatchBuild.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "batch.toByteArray()");
        this.api.sendErrors(headerUa, errorLoggingEndpoint, companion.m(byteArray, MediaType.a.b("application/x-protobuf"), 0, sDKErrorBatchBuild.toByteArray().length)).enqueue(new e(requestListener));
    }

    public final void reportMetrics(BlockingQueue<Sdk.SDKMetric.a> metrics, AnalyticsClient.a requestListener) {
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        Intrinsics.checkNotNullParameter(requestListener, "requestListener");
        String metricsEndpoint = ConfigManager.INSTANCE.getMetricsEndpoint();
        if (metricsEndpoint == null || metricsEndpoint.length() == 0) {
            requestListener.onFailure();
            return;
        }
        for (Sdk.SDKMetric.a aVar : metrics) {
            String connectionType = getConnectionType();
            if (connectionType != null) {
                aVar.setConnectionType(connectionType);
            }
            String connectionTypeDetail = getConnectionTypeDetail();
            if (connectionTypeDetail != null) {
                aVar.setConnectionTypeDetail(connectionTypeDetail);
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = metrics.iterator();
        while (it.hasNext()) {
            arrayList.add(((Sdk.SDKMetric.a) it.next()).build());
        }
        Sdk.MetricBatch metricBatchBuild = Sdk.MetricBatch.newBuilder().addAllMetrics(arrayList).build();
        RequestBody.Companion companion = RequestBody.INSTANCE;
        MediaType mediaTypeB = MediaType.a.b("application/x-protobuf");
        byte[] byteArray = metricBatchBuild.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "batch.toByteArray()");
        this.api.sendMetrics(headerUa, metricsEndpoint, RequestBody.Companion.create$default(companion, mediaTypeB, byteArray, 0, 0, 12, (Object) null)).enqueue(new f(requestListener));
    }

    public final Call<AdPayload> requestAd(String placement, String str, boolean z) throws IllegalStateException {
        Intrinsics.checkNotNullParameter(placement, "placement");
        String adsEndpoint = ConfigManager.INSTANCE.getAdsEndpoint();
        if (adsEndpoint == null || adsEndpoint.length() == 0) {
            return null;
        }
        CommonRequestBody commonRequestBodyRequestBody = requestBody();
        CommonRequestBody.RequestParam requestParam = new CommonRequestBody.RequestParam(CollectionsKt__CollectionsJVMKt.listOf(placement), Boolean.valueOf(z), (String) null, (Long) null, (String) null, (String) null, (String) null, 124, (n) null);
        if (!(str == null || str.length() == 0)) {
            requestParam.setAdSize(str);
        }
        commonRequestBodyRequestBody.setRequest(requestParam);
        return this.gzipApi.ads(headerUa, adsEndpoint, commonRequestBodyRequestBody);
    }

    public final CommonRequestBody requestBody() throws IllegalStateException {
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody(), this.appBody, getUserBody(), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (n) null);
        CommonRequestBody.RequestExt extBody = getExtBody();
        if (extBody != null) {
            commonRequestBody.setExt(extBody);
        }
        return commonRequestBody;
    }

    public final Call<Void> ri(CommonRequestBody.RequestParam request) {
        AppNode appNode;
        Intrinsics.checkNotNullParameter(request, "request");
        String riEndpoint = ConfigManager.INSTANCE.getRiEndpoint();
        if ((riEndpoint == null || riEndpoint.length() == 0) || (appNode = this.appBody) == null) {
            return null;
        }
        CommonRequestBody commonRequestBody = new CommonRequestBody(getDeviceBody(), appNode, getUserBody(), (CommonRequestBody.RequestExt) null, (CommonRequestBody.RequestParam) null, 24, (n) null);
        commonRequestBody.setRequest(request);
        CommonRequestBody.RequestExt extBody = getExtBody();
        if (extBody != null) {
            commonRequestBody.setExt(extBody);
        }
        return this.api.ri(headerUa, riEndpoint, commonRequestBody);
    }

    public final void setAppBody$vungle_ads_release(AppNode appNode) {
        this.appBody = appNode;
    }

    public final void setGzipApi$vungle_ads_release(VungleApi vungleApi) {
        Intrinsics.checkNotNullParameter(vungleApi, "<set-?>");
        this.gzipApi = vungleApi;
    }

    public final void setResponseInterceptor$vungle_ads_release(Interceptor interceptor) {
        Intrinsics.checkNotNullParameter(interceptor, "<set-?>");
        this.responseInterceptor = interceptor;
    }

    public final void setRetryAfterDataMap$vungle_ads_release(Map<String, Long> map) {
        Intrinsics.checkNotNullParameter(map, "<set-?>");
        this.retryAfterDataMap = map;
    }
}
