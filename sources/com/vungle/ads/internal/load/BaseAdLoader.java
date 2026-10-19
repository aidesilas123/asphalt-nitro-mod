package com.vungle.ads.internal.load;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.URLUtil;
import androidx.annotation.WorkerThread;
import com.json.hc;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.AssetDownloadError;
import com.vungle.ads.InternalError;
import com.vungle.ads.MraidJsError;
import com.vungle.ads.NativeAdInternal;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.load.BaseAdLoader;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.HackMraid;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.UnzipUtility;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
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
/* JADX INFO: compiled from: BaseAdLoader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\f\b&\u0018\u0000 `2\u00020\u0001:\u0002`aB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u0006\u00108\u001a\u000209J\u0010\u0010:\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0018\u0010;\u001a\u00020\u00152\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u0013H\u0002J,\u0010?\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010@\u001a\u00020=2\u0006\u0010A\u001a\u00020B2\b\u0010C\u001a\u0004\u0018\u00010BH\u0002J\u0010\u0010D\u001a\u00020E2\u0006\u0010>\u001a\u00020\u0013H\u0002J\u0012\u0010F\u001a\u0004\u0018\u00010=2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020\u001bH\u0002J\u000e\u0010J\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001bJ\u0012\u0010K\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0012\u0010L\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010M\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u0013H\u0002J\u0010\u0010O\u001a\u00020\u00152\u0006\u0010>\u001a\u00020\u0013H\u0002J\u0012\u0010P\u001a\u00020\u00152\b\u0010C\u001a\u0004\u0018\u00010BH\u0002J\u0010\u0010Q\u001a\u00020\u00152\u0006\u0010R\u001a\u00020=H\u0016J\u000e\u0010S\u001a\u0002092\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010T\u001a\u0002092\u0006\u0010U\u001a\u00020VJ\b\u0010W\u001a\u000209H&J\b\u0010X\u001a\u000209H\u0002J\u001a\u0010Y\u001a\u0002092\u0006\u0010Z\u001a\u00020\u000f2\b\u0010[\u001a\u0004\u0018\u00010BH\u0017J\u001a\u0010\\\u001a\u00020\u00152\u0006\u0010N\u001a\u00020\u00132\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\b\u0010]\u001a\u000209H$J\u0018\u0010^\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010R\u001a\u00020=H\u0002J\u0012\u0010_\u001a\u0004\u0018\u00010H2\u0006\u0010I\u001a\u00020\u001bH\u0002R\u0014\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u00020#8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010%R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010*\u001a&\u0012\f\u0012\n ,*\u0004\u0018\u00010+0+ ,*\u0012\u0012\f\u0012\n ,*\u0004\u0018\u00010+0+\u0018\u00010-0\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00100\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u000e\u00105\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b6\u00107¨\u0006b"}, d2 = {"Lcom/vungle/ads/internal/load/BaseAdLoader;", "", "context", "Landroid/content/Context;", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "sdkExecutors", "Lcom/vungle/ads/internal/executor/Executors;", "omInjector", "Lcom/vungle/ads/internal/omsdk/OMInjector;", "downloader", "Lcom/vungle/ads/internal/downloader/Downloader;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "adRequest", "Lcom/vungle/ads/internal/load/AdRequest;", "(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/Executors;Lcom/vungle/ads/internal/omsdk/OMInjector;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/load/AdRequest;)V", "adAssets", "", "Lcom/vungle/ads/internal/model/AdAsset;", "adLoadOptimizationEnabled", "", "adLoaderCallback", "Lcom/vungle/ads/internal/load/AdLoaderCallback;", "getAdRequest", "()Lcom/vungle/ads/internal/load/AdRequest;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "getAdvertisement$vungle_ads_release", "()Lcom/vungle/ads/internal/model/AdPayload;", "setAdvertisement$vungle_ads_release", "(Lcom/vungle/ads/internal/model/AdPayload;)V", "assetDownloadDurationMetric", "Lcom/vungle/ads/TimeIntervalMetric;", "assetDownloadListener", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;", "getAssetDownloadListener", "()Lcom/vungle/ads/internal/downloader/AssetDownloadListener;", "getContext", "()Landroid/content/Context;", "downloadCount", "Ljava/util/concurrent/atomic/AtomicLong;", "errors", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;", "kotlin.jvm.PlatformType", "", "mainVideoSizeMetric", "Lcom/vungle/ads/SingleValueMetric;", "notifySuccess", "getPathProvider", "()Lcom/vungle/ads/internal/util/PathProvider;", "getSdkExecutors", "()Lcom/vungle/ads/internal/executor/Executors;", "templateSizeMetric", "getVungleApiClient", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "cancel", "", "downloadAssets", "fileIsValid", "file", "Ljava/io/File;", "adAsset", "getAsset", "destinationDir", "key", "", "url", "getAssetPriority", "Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;", "getDestinationDir", "getErrorInfo", "Lcom/vungle/ads/internal/load/BaseAdLoader$ErrorInfo;", "adPayload", "handleAdMetaData", "injectOMIfNeeded", "isAdLoadOptimizationEnabled", "isMainVideo", "asset", "isTemplateUrl", "isUrlValid", "isZip", "downloadedFile", "loadAd", hc.b, "error", "Lcom/vungle/ads/VungleError;", "onAdLoadReady", hc.a, "onDownloadCompleted", "request", "advertisementId", "processTemplate", "requestAd", "unzipFile", "validateAdMetadata", "Companion", "ErrorInfo", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public abstract class BaseAdLoader {
    public static final a Companion = new a(null);
    private static final String DOWNLOADED_FILE_NOT_FOUND = "Downloaded file not found!";
    private static final String TAG = "BaseAdLoader";
    private final List<AdAsset> adAssets;
    private final boolean adLoadOptimizationEnabled;
    private AdLoaderCallback adLoaderCallback;
    private final AdRequest adRequest;
    private AdPayload advertisement;
    private TimeIntervalMetric assetDownloadDurationMetric;
    private final Context context;
    private final AtomicLong downloadCount;
    private final Downloader downloader;
    private final List<AssetDownloadListener.a> errors;
    private SingleValueMetric mainVideoSizeMetric;
    private boolean notifySuccess;
    private final OMInjector omInjector;
    private final PathProvider pathProvider;
    private final Executors sdkExecutors;
    private SingleValueMetric templateSizeMetric;
    private final VungleApiClient vungleApiClient;

    /* JADX INFO: compiled from: BaseAdLoader.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/load/BaseAdLoader$Companion;", "", "()V", "DOWNLOADED_FILE_NOT_FOUND", "", "TAG", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: BaseAdLoader.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vungle/ads/internal/load/BaseAdLoader$ErrorInfo;", "", "reason", "", "description", "", "descriptionExternal", "errorIsTerminal", "", "(ILjava/lang/String;Ljava/lang/String;Z)V", "getDescription", "()Ljava/lang/String;", "getDescriptionExternal", "getErrorIsTerminal", "()Z", "getReason", "()I", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b {
        private final String description;
        private final String descriptionExternal;
        private final boolean errorIsTerminal;
        private final int reason;

        public b(int i, String description, String descriptionExternal, boolean z) {
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(descriptionExternal, "descriptionExternal");
            this.reason = i;
            this.description = description;
            this.descriptionExternal = descriptionExternal;
            this.errorIsTerminal = z;
        }

        public /* synthetic */ b(int i, String str, String str2, boolean z, int i2, n nVar) {
            this(i, str, (i2 & 4) != 0 ? str : str2, (i2 & 8) != 0 ? false : z);
        }

        public final String getDescription() {
            return this.description;
        }

        public final String getDescriptionExternal() {
            return this.descriptionExternal;
        }

        public final boolean getErrorIsTerminal() {
            return this.errorIsTerminal;
        }

        public final int getReason() {
            return this.reason;
        }
    }

    /* JADX INFO: compiled from: BaseAdLoader.kt */
    @Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000e"}, d2 = {"com/vungle/ads/internal/load/BaseAdLoader$assetDownloadListener$1", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener;", "onError", "", "error", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$DownloadError;", "downloadRequest", "Lcom/vungle/ads/internal/downloader/DownloadRequest;", "onProgress", "progress", "Lcom/vungle/ads/internal/downloader/AssetDownloadListener$Progress;", "onSuccess", "file", "Ljava/io/File;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c implements AssetDownloadListener {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onError$lambda-0, reason: not valid java name */
        public static final void m1140onError$lambda0(DownloadRequest downloadRequest, BaseAdLoader this$0, AssetDownloadListener.a aVar) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (downloadRequest != null) {
                String cookieString = downloadRequest.getCookieString();
                AdAsset adAsset = null;
                for (AdAsset adAsset2 : this$0.adAssets) {
                    if (TextUtils.equals(adAsset2.getIdentifier(), cookieString)) {
                        adAsset = adAsset2;
                    }
                }
                if (adAsset != null) {
                    this$0.errors.add(aVar);
                } else {
                    this$0.errors.add(new AssetDownloadListener.a(-1, new IOException(BaseAdLoader.DOWNLOADED_FILE_NOT_FOUND), AssetDownloadListener.a.b.INSTANCE.getREQUEST_ERROR()));
                }
            } else {
                this$0.errors.add(new AssetDownloadListener.a(-1, new RuntimeException("error in request"), AssetDownloadListener.a.b.INSTANCE.getINTERNAL_ERROR()));
            }
            if (this$0.downloadCount.decrementAndGet() <= 0) {
                this$0.onAdLoadFailed(new AssetDownloadError());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onSuccess$lambda-2, reason: not valid java name */
        public static final void m1141onSuccess$lambda2(File file, c this$0, DownloadRequest downloadRequest, BaseAdLoader this$1) {
            AdAsset adAsset;
            Intrinsics.checkNotNullParameter(file, "$file");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(downloadRequest, "$downloadRequest");
            Intrinsics.checkNotNullParameter(this$1, "this$1");
            if (!file.exists()) {
                this$0.onError(new AssetDownloadListener.a(-1, new IOException(BaseAdLoader.DOWNLOADED_FILE_NOT_FOUND), AssetDownloadListener.a.b.INSTANCE.getFILE_NOT_FOUND_ERROR()), downloadRequest);
                return;
            }
            if (downloadRequest.getIsTemplate()) {
                downloadRequest.stopRecord();
                this$1.templateSizeMetric.setValue(Long.valueOf(file.length()));
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                SingleValueMetric singleValueMetric = this$1.templateSizeMetric;
                String referenceId = this$1.getAdRequest().getPlacement().getReferenceId();
                AdPayload advertisement$vungle_ads_release = this$1.getAdvertisement$vungle_ads_release();
                String creativeId = advertisement$vungle_ads_release != null ? advertisement$vungle_ads_release.getCreativeId() : null;
                AdPayload advertisement$vungle_ads_release2 = this$1.getAdvertisement$vungle_ads_release();
                analyticsClient.logMetric$vungle_ads_release(singleValueMetric, referenceId, creativeId, advertisement$vungle_ads_release2 != null ? advertisement$vungle_ads_release2.eventId() : null, downloadRequest.getUrl());
            } else if (downloadRequest.getIsMainVideo()) {
                this$1.mainVideoSizeMetric.setValue(Long.valueOf(file.length()));
                AnalyticsClient analyticsClient2 = AnalyticsClient.INSTANCE;
                SingleValueMetric singleValueMetric2 = this$1.mainVideoSizeMetric;
                String referenceId2 = this$1.getAdRequest().getPlacement().getReferenceId();
                AdPayload advertisement$vungle_ads_release3 = this$1.getAdvertisement$vungle_ads_release();
                String creativeId2 = advertisement$vungle_ads_release3 != null ? advertisement$vungle_ads_release3.getCreativeId() : null;
                AdPayload advertisement$vungle_ads_release4 = this$1.getAdvertisement$vungle_ads_release();
                analyticsClient2.logMetric$vungle_ads_release(singleValueMetric2, referenceId2, creativeId2, advertisement$vungle_ads_release4 != null ? advertisement$vungle_ads_release4.eventId() : null, downloadRequest.getUrl());
            }
            String cookieString = downloadRequest.getCookieString();
            Iterator it = this$1.adAssets.iterator();
            while (true) {
                if (!it.hasNext()) {
                    adAsset = null;
                    break;
                } else {
                    adAsset = (AdAsset) it.next();
                    if (TextUtils.equals(adAsset.getIdentifier(), cookieString)) {
                        break;
                    }
                }
            }
            if (adAsset == null) {
                this$0.onError(new AssetDownloadListener.a(-1, new IOException(BaseAdLoader.DOWNLOADED_FILE_NOT_FOUND), AssetDownloadListener.a.b.INSTANCE.getREQUEST_ERROR()), downloadRequest);
                return;
            }
            adAsset.setFileType(this$1.isZip(file) ? AdAsset.FileType.ZIP : AdAsset.FileType.ASSET);
            adAsset.setFileSize(file.length());
            adAsset.setStatus(AdAsset.Status.DOWNLOAD_SUCCESS);
            if (this$1.isZip(file)) {
                this$1.injectOMIfNeeded(this$1.getAdvertisement$vungle_ads_release());
                if (!this$1.processTemplate(adAsset, this$1.getAdvertisement$vungle_ads_release())) {
                    this$1.errors.add(new AssetDownloadListener.a(-1, new AssetDownloadError(), AssetDownloadListener.a.b.INSTANCE.getINTERNAL_ERROR()));
                }
            }
            if (this$1.downloadCount.decrementAndGet() <= 0) {
                if (!this$1.errors.isEmpty()) {
                    this$1.onAdLoadFailed(new AssetDownloadError());
                    return;
                }
                AdRequest adRequest = this$1.getAdRequest();
                AdPayload advertisement$vungle_ads_release5 = this$1.getAdvertisement$vungle_ads_release();
                this$1.onDownloadCompleted(adRequest, advertisement$vungle_ads_release5 != null ? advertisement$vungle_ads_release5.eventId() : null);
            }
        }

        @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
        public void onError(final AssetDownloadListener.a aVar, final DownloadRequest downloadRequest) {
            StringBuilder sb = new StringBuilder();
            sb.append("onError called! ");
            sb.append(aVar != null ? Integer.valueOf(aVar.getReason()) : null);
            Log.d(BaseAdLoader.TAG, sb.toString());
            VungleThreadPoolExecutor background_executor = BaseAdLoader.this.getSdkExecutors().getBACKGROUND_EXECUTOR();
            final BaseAdLoader baseAdLoader = BaseAdLoader.this;
            background_executor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseAdLoader.c.m1140onError$lambda0(downloadRequest, baseAdLoader, aVar);
                }
            });
        }

        @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
        public void onProgress(AssetDownloadListener.Progress progress, DownloadRequest downloadRequest) {
            Intrinsics.checkNotNullParameter(progress, "progress");
            Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
            Log.d(BaseAdLoader.TAG, "progress: " + progress.getProgressPercent() + ", download url: " + downloadRequest.getUrl());
        }

        @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
        public void onSuccess(final File file, final DownloadRequest downloadRequest) {
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
            VungleThreadPoolExecutor background_executor = BaseAdLoader.this.getSdkExecutors().getBACKGROUND_EXECUTOR();
            final BaseAdLoader baseAdLoader = BaseAdLoader.this;
            background_executor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.b
                @Override // java.lang.Runnable
                public final void run() {
                    BaseAdLoader.c.m1141onSuccess$lambda2(file, this, downloadRequest, baseAdLoader);
                }
            });
        }
    }

    /* JADX INFO: compiled from: BaseAdLoader.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class d extends Lambda implements Function1<Integer, v> {
        final /* synthetic */ AdLoaderCallback $adLoaderCallback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(AdLoaderCallback adLoaderCallback) {
            super(1);
            this.$adLoaderCallback = adLoaderCallback;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Integer num) {
            invoke(num.intValue());
            return v.a;
        }

        public final void invoke(int i) {
            if (i != 10 && i != 13) {
                this.$adLoaderCallback.onFailure(new MraidJsError(null, 1, null));
                return;
            }
            if (i == 10) {
                AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(Sdk.SDKMetric.SDKMetricType.MRAID_DOWNLOAD_JS_RETRY_SUCCESS, (60 & 2) != 0 ? 0L : 0L, (60 & 4) != 0 ? null : BaseAdLoader.this.getAdRequest().getPlacement().getReferenceId(), (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) == 0 ? null : null);
            }
            BaseAdLoader.this.requestAd();
        }
    }

    /* JADX INFO: compiled from: BaseAdLoader.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/vungle/ads/internal/load/BaseAdLoader$unzipFile$1", "Lcom/vungle/ads/internal/util/UnzipUtility$Filter;", "matches", "", "extractPath", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class e implements UnzipUtility.a {
        final /* synthetic */ List<String> $existingPaths;

        e(List<String> list) {
            this.$existingPaths = list;
        }

        @Override // com.vungle.ads.internal.util.UnzipUtility.a
        public boolean matches(String str) {
            if (str == null || str.length() == 0) {
                return true;
            }
            File file = new File(str);
            Iterator<String> it = this.$existingPaths.iterator();
            while (it.hasNext()) {
                File file2 = new File(it.next());
                if (Intrinsics.areEqual(file2, file)) {
                    return false;
                }
                String path = file.getPath();
                Intrinsics.checkNotNullExpressionValue(path, "toExtract.path");
                if (StringsKt__StringsJVMKt.startsWith$default(path, file2.getPath() + File.separator, false, 2, null)) {
                    return false;
                }
            }
            return true;
        }
    }

    public BaseAdLoader(Context context, VungleApiClient vungleApiClient, Executors sdkExecutors, OMInjector omInjector, Downloader downloader, PathProvider pathProvider, AdRequest adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(sdkExecutors, "sdkExecutors");
        Intrinsics.checkNotNullParameter(omInjector, "omInjector");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.context = context;
        this.vungleApiClient = vungleApiClient;
        this.sdkExecutors = sdkExecutors;
        this.omInjector = omInjector;
        this.downloader = downloader;
        this.pathProvider = pathProvider;
        this.adRequest = adRequest;
        this.downloadCount = new AtomicLong(0L);
        this.adLoadOptimizationEnabled = ConfigManager.INSTANCE.adLoadOptimizationEnabled();
        this.adAssets = new ArrayList();
        this.errors = Collections.synchronizedList(new ArrayList());
        this.mainVideoSizeMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.ASSET_FILE_SIZE);
        this.templateSizeMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.TEMPLATE_ZIP_SIZE);
        this.assetDownloadDurationMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.ASSET_DOWNLOAD_DURATION_MS);
    }

    private final void downloadAssets(AdPayload adPayload) {
        this.assetDownloadDurationMetric.markStart();
        this.downloadCount.set(this.adAssets.size());
        for (AdAsset adAsset : this.adAssets) {
            DownloadRequest downloadRequest = new DownloadRequest(getAssetPriority(adAsset), adAsset.getServerPath(), adAsset.getLocalPath(), adAsset.getIdentifier(), isTemplateUrl(adAsset), isMainVideo(adAsset), this.adRequest.getPlacement().getReferenceId(), adPayload.getCreativeId(), adPayload.eventId());
            if (downloadRequest.getIsTemplate()) {
                downloadRequest.startRecord();
            }
            this.downloader.download(downloadRequest, getAssetDownloadListener());
        }
    }

    private final boolean fileIsValid(File file, AdAsset adAsset) {
        return file.exists() && file.length() == adAsset.getFileSize();
    }

    private final AdAsset getAsset(AdPayload adPayload, File file, String str, String str2) {
        String str3 = file.getPath() + File.separator + str;
        AdAsset.FileType fileType = StringsKt__StringsJVMKt.endsWith$default(str3, "template", false, 2, null) ? AdAsset.FileType.ZIP : AdAsset.FileType.ASSET;
        String strEventId = adPayload.eventId();
        if (strEventId == null || strEventId.length() == 0) {
            return null;
        }
        AdAsset adAsset = new AdAsset(strEventId, str2, str3);
        adAsset.setStatus(AdAsset.Status.NEW);
        adAsset.setFileType(fileType);
        return adAsset;
    }

    private final AssetDownloadListener getAssetDownloadListener() {
        return new c();
    }

    private final DownloadRequest.Priority getAssetPriority(AdAsset adAsset) {
        if (!this.adLoadOptimizationEnabled) {
            return DownloadRequest.Priority.CRITICAL;
        }
        String localPath = adAsset.getLocalPath();
        return ((localPath == null || localPath.length() == 0) || !StringsKt__StringsJVMKt.endsWith$default(adAsset.getLocalPath(), "template", false, 2, null)) ? DownloadRequest.Priority.HIGHEST : DownloadRequest.Priority.CRITICAL;
    }

    private final File getDestinationDir(AdPayload adPayload) {
        return this.pathProvider.getDownloadsDirForAd(adPayload.eventId());
    }

    private final b getErrorInfo(AdPayload adPayload) {
        Integer errorCode;
        AdPayload.AdUnit adUnit = adPayload.adUnit();
        int iIntValue = (adUnit == null || (errorCode = adUnit.getErrorCode()) == null) ? 212 : errorCode.intValue();
        AdPayload.AdUnit adUnit2 = adPayload.adUnit();
        Integer sleep = adUnit2 != null ? adUnit2.getSleep() : null;
        AdPayload.AdUnit adUnit3 = adPayload.adUnit();
        String info = adUnit3 != null ? adUnit3.getInfo() : null;
        if (iIntValue != 10001 && iIntValue != 10002 && iIntValue != 20001 && iIntValue != 30001 && iIntValue != 30002) {
            return new b(212, "Response error: " + sleep, "Request failed with error: 212, " + info, false, 8, null);
        }
        return new b(iIntValue, "Response error: " + sleep, "Request failed with error: " + iIntValue + ", " + info, false, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean injectOMIfNeeded(AdPayload adPayload) {
        if (adPayload == null) {
            return false;
        }
        if (!adPayload.omEnabled()) {
            return true;
        }
        try {
            File destinationDir = getDestinationDir(adPayload);
            if (destinationDir != null && destinationDir.isDirectory()) {
                this.omInjector.injectJsFiles(destinationDir);
                return true;
            }
            onAdLoadFailed(new AssetDownloadError());
            return false;
        } catch (IOException unused) {
            onAdLoadFailed(new AssetDownloadError());
            return false;
        }
    }

    private final boolean isAdLoadOptimizationEnabled(AdPayload adPayload) {
        return this.adLoadOptimizationEnabled && adPayload != null && Intrinsics.areEqual(adPayload.getAdType(), AdPayload.TYPE_VUNGLE_MRAID);
    }

    private final boolean isMainVideo(AdAsset adAsset) {
        AdPayload adPayload = this.advertisement;
        return Intrinsics.areEqual(adPayload != null ? adPayload.getMainVideoUrl() : null, adAsset.getServerPath());
    }

    private final boolean isTemplateUrl(AdAsset adAsset) {
        return adAsset.getFileType() == AdAsset.FileType.ZIP;
    }

    private final boolean isUrlValid(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return URLUtil.isHttpsUrl(str) || URLUtil.isHttpUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: loadAd$lambda-0, reason: not valid java name */
    public static final void m1139loadAd$lambda0(BaseAdLoader this$0, AdLoaderCallback adLoaderCallback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adLoaderCallback, "$adLoaderCallback");
        MraidJsLoader.INSTANCE.downloadJs(this$0.pathProvider, this$0.downloader, this$0.new d(adLoaderCallback));
    }

    private final void onAdReady() {
        String localPath;
        AdPayload adPayload = this.advertisement;
        if (adPayload != null) {
            File destinationDir = getDestinationDir(adPayload);
            if (destinationDir != null) {
                ArrayList arrayList = new ArrayList();
                for (AdAsset adAsset : this.adAssets) {
                    if (adAsset.getStatus() == AdAsset.Status.DOWNLOAD_SUCCESS && (localPath = adAsset.getLocalPath()) != null) {
                        arrayList.add(localPath);
                    }
                }
                adPayload.setMraidAssetDir(destinationDir, arrayList);
            }
            if (this.notifySuccess) {
                return;
            }
            onAdLoadReady();
            AdLoaderCallback adLoaderCallback = this.adLoaderCallback;
            if (adLoaderCallback != null) {
                adLoaderCallback.onSuccess(adPayload);
            }
            this.notifySuccess = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean processTemplate(AdAsset adAsset, AdPayload adPayload) {
        if (adPayload == null || adAsset.getStatus() != AdAsset.Status.DOWNLOAD_SUCCESS) {
            return false;
        }
        String localPath = adAsset.getLocalPath();
        if (localPath == null || localPath.length() == 0) {
            return false;
        }
        File file = new File(adAsset.getLocalPath());
        if (!fileIsValid(file, adAsset)) {
            return false;
        }
        if (adAsset.getFileType() == AdAsset.FileType.ZIP && !unzipFile(adPayload, file)) {
            return false;
        }
        if (isAdLoadOptimizationEnabled(adPayload)) {
            onAdReady();
        }
        return true;
    }

    private final boolean unzipFile(AdPayload adPayload, File file) throws Throwable {
        ArrayList arrayList = new ArrayList();
        for (AdAsset adAsset : this.adAssets) {
            if (adAsset.getFileType() == AdAsset.FileType.ASSET && adAsset.getLocalPath() != null) {
                arrayList.add(adAsset.getLocalPath());
            }
        }
        File destinationDir = getDestinationDir(adPayload);
        if (destinationDir == null || !destinationDir.isDirectory()) {
            throw new IOException("Unable to access Destination Directory");
        }
        try {
            UnzipUtility unzipUtility = UnzipUtility.INSTANCE;
            String path = file.getPath();
            String path2 = destinationDir.getPath();
            Intrinsics.checkNotNullExpressionValue(path2, "destinationDir.path");
            unzipUtility.unzip(path, path2, new e(arrayList));
            StringBuilder sb = new StringBuilder();
            sb.append(destinationDir.getPath());
            String str = File.separator;
            sb.append(str);
            sb.append("index.html");
            if (!new File(sb.toString()).exists()) {
                AnalyticsClient.INSTANCE.logError$vungle_ads_release(115, "Failed to retrieve indexFileUrl from the Ad.", this.adRequest.getPlacement().getReferenceId(), adPayload.getCreativeId(), adPayload.eventId());
                return false;
            }
            if (Intrinsics.areEqual(file.getName(), "template")) {
                File file2 = new File(destinationDir.getPath() + str + "mraid.js");
                if (!file2.exists() && !file2.createNewFile()) {
                    throw new IOException("mraid.js can not be created");
                }
                PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(file2, true)));
                HackMraid.INSTANCE.apply(this.pathProvider, printWriter);
                printWriter.close();
            }
            FileUtility.printDirectoryTree(destinationDir);
            FileUtility.delete(file);
            return true;
        } catch (Exception e2) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(109, "Unzip failed: " + e2.getMessage(), this.adRequest.getPlacement().getReferenceId(), adPayload.getCreativeId(), adPayload.eventId());
            return false;
        }
    }

    private final b validateAdMetadata(AdPayload adPayload) {
        AdPayload.AdUnit adUnit = adPayload.adUnit();
        if ((adUnit != null ? adUnit.getSleep() : null) != null) {
            return getErrorInfo(adPayload);
        }
        String referenceId = this.adRequest.getPlacement().getReferenceId();
        AdPayload adPayload2 = this.advertisement;
        if (!Intrinsics.areEqual(referenceId, adPayload2 != null ? adPayload2.placementId() : null)) {
            return new b(215, "The ad response is missing placement reference id.", null, false, 12, null);
        }
        List<String> supportedTemplateTypes = this.adRequest.getPlacement().getSupportedTemplateTypes();
        AdPayload adPayload3 = this.advertisement;
        if (!CollectionsKt___CollectionsKt.contains(supportedTemplateTypes, adPayload3 != null ? adPayload3.templateType() : null)) {
            return new b(216, "The ad response has an unexpected template type.", null, false, 12, null);
        }
        AdPayload.AdUnit adUnit2 = adPayload.adUnit();
        AdPayload.TemplateSettings templateSettings = adUnit2 != null ? adUnit2.getTemplateSettings() : null;
        if (templateSettings == null) {
            return new b(113, "Missing assets URLs", null, false, 12, null);
        }
        Map<String, AdPayload.CacheableReplacement> cacheableReplacements = templateSettings.getCacheableReplacements();
        if (!adPayload.isNativeTemplateType()) {
            AdPayload.AdUnit adUnit3 = adPayload.adUnit();
            String templateURL = adUnit3 != null ? adUnit3.getTemplateURL() : null;
            if (templateURL == null || templateURL.length() == 0) {
                return new b(105, "Failed to prepare URL for template download.", null, false, 12, null);
            }
            if (!isUrlValid(templateURL)) {
                return new b(112, "Failed to load template asset.", null, false, 12, null);
            }
        } else if (cacheableReplacements != null) {
            AdPayload.CacheableReplacement cacheableReplacement = cacheableReplacements.get(NativeAdInternal.TOKEN_MAIN_IMAGE);
            if ((cacheableReplacement != null ? cacheableReplacement.getUrl() : null) == null) {
                return new b(600, "Unable to load main image.", null, false, 12, null);
            }
            AdPayload.CacheableReplacement cacheableReplacement2 = cacheableReplacements.get(NativeAdInternal.TOKEN_VUNGLE_PRIVACY_ICON_URL);
            if ((cacheableReplacement2 != null ? cacheableReplacement2.getUrl() : null) == null) {
                return new b(600, "Unable to load privacy image.", null, false, 12, null);
            }
        }
        if (adPayload.hasExpired()) {
            return new b(304, "The ad markup has expired for playback.", null, false, 12, null);
        }
        String strEventId = adPayload.eventId();
        if (strEventId == null || strEventId.length() == 0) {
            return new b(200, "Event id is invalid.", null, false, 12, null);
        }
        if (cacheableReplacements != null) {
            Iterator<Map.Entry<String, AdPayload.CacheableReplacement>> it = cacheableReplacements.entrySet().iterator();
            while (it.hasNext()) {
                String url = it.next().getValue().getUrl();
                if (url == null || url.length() == 0) {
                    return new b(111, "Invalid asset URL " + url, null, false, 12, null);
                }
                if (!isUrlValid(url)) {
                    return new b(112, "Invalid asset URL " + url, null, false, 12, null);
                }
            }
        }
        return null;
    }

    public final void cancel() {
        this.downloader.cancelAll();
    }

    public final AdRequest getAdRequest() {
        return this.adRequest;
    }

    public final AdPayload getAdvertisement$vungle_ads_release() {
        return this.advertisement;
    }

    public final Context getContext() {
        return this.context;
    }

    public final PathProvider getPathProvider() {
        return this.pathProvider;
    }

    public final Executors getSdkExecutors() {
        return this.sdkExecutors;
    }

    public final VungleApiClient getVungleApiClient() {
        return this.vungleApiClient;
    }

    public final void handleAdMetaData(AdPayload advertisement) {
        List<String> loadAdUrls;
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        this.advertisement = advertisement;
        b bVarValidateAdMetadata = validateAdMetadata(advertisement);
        if (bVarValidateAdMetadata != null) {
            AnalyticsClient.INSTANCE.logError$vungle_ads_release(bVarValidateAdMetadata.getReason(), bVarValidateAdMetadata.getDescription(), this.adRequest.getPlacement().getReferenceId(), advertisement.getCreativeId(), advertisement.eventId());
            onAdLoadFailed(new InternalError(bVarValidateAdMetadata.getReason(), bVarValidateAdMetadata.getDescriptionExternal()));
            return;
        }
        Set<Map.Entry<String, String>> setEntrySet = advertisement.getDownloadableUrls().entrySet();
        File destinationDir = getDestinationDir(advertisement);
        if (destinationDir == null || !destinationDir.isDirectory() || setEntrySet.isEmpty()) {
            onAdLoadFailed(new AssetDownloadError());
            return;
        }
        AdPayload.AdUnit adUnit = advertisement.adUnit();
        if (adUnit != null && (loadAdUrls = adUnit.getLoadAdUrls()) != null) {
            TpatSender tpatSender = new TpatSender(this.vungleApiClient, advertisement.placementId(), advertisement.getCreativeId(), advertisement.eventId(), this.sdkExecutors.getIO_EXECUTOR(), this.pathProvider);
            Iterator<T> it = loadAdUrls.iterator();
            while (it.hasNext()) {
                tpatSender.pingUrl((String) it.next(), this.sdkExecutors.getJOB_EXECUTOR());
            }
        }
        for (Map.Entry<String, String> entry : setEntrySet) {
            AdAsset asset = getAsset(advertisement, destinationDir, entry.getKey(), entry.getValue());
            if (asset != null) {
                this.adAssets.add(asset);
            }
        }
        downloadAssets(advertisement);
    }

    public boolean isZip(File downloadedFile) {
        Intrinsics.checkNotNullParameter(downloadedFile, "downloadedFile");
        return Intrinsics.areEqual(downloadedFile.getName(), "template");
    }

    public final void loadAd(final AdLoaderCallback adLoaderCallback) {
        Intrinsics.checkNotNullParameter(adLoaderCallback, "adLoaderCallback");
        this.adLoaderCallback = adLoaderCallback;
        this.sdkExecutors.getBACKGROUND_EXECUTOR().execute(new Runnable() { // from class: com.vungle.ads.internal.load.c
            @Override // java.lang.Runnable
            public final void run() {
                BaseAdLoader.m1139loadAd$lambda0(this.a, adLoaderCallback);
            }
        });
    }

    public final void onAdLoadFailed(VungleError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        AdLoaderCallback adLoaderCallback = this.adLoaderCallback;
        if (adLoaderCallback != null) {
            adLoaderCallback.onFailure(error);
        }
    }

    public abstract void onAdLoadReady();

    @WorkerThread
    public void onDownloadCompleted(AdRequest request, String str) {
        Intrinsics.checkNotNullParameter(request, "request");
        Log.d(TAG, "download completed " + request);
        AdPayload adPayload = this.advertisement;
        if (adPayload != null) {
            adPayload.setAssetFullyDownloaded();
        }
        onAdReady();
        this.assetDownloadDurationMetric.markEnd();
        AdPayload adPayload2 = this.advertisement;
        String strPlacementId = adPayload2 != null ? adPayload2.placementId() : null;
        AdPayload adPayload3 = this.advertisement;
        String creativeId = adPayload3 != null ? adPayload3.getCreativeId() : null;
        AdPayload adPayload4 = this.advertisement;
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.assetDownloadDurationMetric, strPlacementId, creativeId, adPayload4 != null ? adPayload4.eventId() : null, (String) null, 16, (Object) null);
    }

    protected abstract void requestAd();

    public final void setAdvertisement$vungle_ads_release(AdPayload adPayload) {
        this.advertisement = adPayload;
    }
}
