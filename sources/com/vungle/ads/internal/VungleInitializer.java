package com.vungle.ads.internal;

import android.content.Context;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.PermissionChecker;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.o2;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ConfigurationError;
import com.vungle.ads.ConfigurationResponseError;
import com.vungle.ads.InitializationListener;
import com.vungle.ads.InvalidAppId;
import com.vungle.ads.Metric;
import com.vungle.ads.NetworkPermissionsNotGranted;
import com.vungle.ads.NetworkUnreachable;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.SdkAlreadyInitialized;
import com.vungle.ads.SdkInitializationInProgress;
import com.vungle.ads.SdkNotInitialized;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.UnknownConfigurationError;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.load.MraidJsLoader;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.Call;
import com.vungle.ads.internal.network.Response;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.task.CleanupJob;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.task.ResendTpatJob;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.ThreadUtil;
import java.net.UnknownHostException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
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
/* JADX INFO: compiled from: VungleInitializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\r\u0010\u0019\u001a\u00020\u0014H\u0000¢\u0006\u0002\b\u001aJ3\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00140\u001dH\u0002J\u001e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0018J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\u00182\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020\u00142\u0006\u0010'\u001a\u00020\u0018H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\r8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006,²\u0006\n\u0010-\u001a\u00020.X\u008a\u0084\u0002²\u0006\n\u0010/\u001a\u000200X\u008a\u0084\u0002²\u0006\n\u00101\u001a\u000202X\u008a\u0084\u0002²\u0006\n\u00101\u001a\u000202X\u008a\u0084\u0002²\u0006\n\u0010/\u001a\u000200X\u008a\u0084\u0002²\u0006\n\u00103\u001a\u000204X\u008a\u0084\u0002²\u0006\n\u00105\u001a\u000206X\u008a\u0084\u0002²\u0006\n\u00107\u001a\u000208X\u008a\u0084\u0002²\u0006\n\u00109\u001a\u00020:X\u008a\u0084\u0002²\u0006\n\u0010;\u001a\u00020<X\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/VungleInitializer;", "", "()V", "initRequestToResponseMetric", "Lcom/vungle/ads/TimeIntervalMetric;", "isInitialized", "", "isInitialized$vungle_ads_release$annotations", "isInitialized$vungle_ads_release", "()Z", "setInitialized$vungle_ads_release", "(Z)V", "isInitializing", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isInitializing$vungle_ads_release$annotations", "isInitializing$vungle_ads_release", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "setInitializing$vungle_ads_release", "(Ljava/util/concurrent/atomic/AtomicBoolean;)V", "configure", "", "context", "Landroid/content/Context;", "callback", "Lcom/vungle/ads/InitializationListener;", "deInit", "deInit$vungle_ads_release", "downloadJs", "downloadListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "downloaded", o2.a.f6463e, "appId", "", "initializationCallback", "isAppIdInvalid", "onInitError", "initCallback", "exception", "Lcom/vungle/ads/VungleError;", "onInitSuccess", "Companion", "vungle-ads_release", "platform", "Lcom/vungle/ads/internal/platform/Platform;", "sdkExecutors", "Lcom/vungle/ads/internal/executor/Executors;", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "filePreferences", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "omInjector", "Lcom/vungle/ads/internal/omsdk/OMInjector;", "jobRunner", "Lcom/vungle/ads/internal/task/JobRunner;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "downloader", "Lcom/vungle/ads/internal/downloader/Downloader;"}, mv = {1, 7, 1}, xi = 48)
public final class VungleInitializer {
    public static final a Companion = new a(null);
    private static final String TAG = "VungleInitializer";
    private boolean isInitialized;
    private AtomicBoolean isInitializing = new AtomicBoolean(false);
    private TimeIntervalMetric initRequestToResponseMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.INIT_REQUEST_TO_RESPONSE_DURATION_MS);

    /* JADX INFO: compiled from: VungleInitializer.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/VungleInitializer$Companion;", "", "()V", "TAG", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends Lambda implements Function0<VungleApiClient> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
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
    public static final class c extends Lambda implements Function0<Executors> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
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
    public static final class d extends Lambda implements Function0<FilePreferences> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.persistence.FilePreferences, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final FilePreferences invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(FilePreferences.class);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class e extends Lambda implements Function0<OMInjector> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.c, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final OMInjector invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(OMInjector.class);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class f extends Lambda implements Function0<JobRunner> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.task.c, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final JobRunner invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(JobRunner.class);
        }
    }

    /* JADX INFO: compiled from: VungleInitializer.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class g extends Lambda implements Function1<Boolean, v> {
        final /* synthetic */ InitializationListener $callback;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(InitializationListener initializationListener) {
            super(1);
            this.$callback = initializationListener;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Boolean bool) {
            invoke(bool.booleanValue());
            return v.a;
        }

        public final void invoke(boolean z) {
            if (!z) {
                VungleInitializer.this.setInitialized$vungle_ads_release(false);
                VungleInitializer.this.onInitError(this.$callback, new ConfigurationError());
            } else {
                VungleInitializer.this.setInitialized$vungle_ads_release(true);
                VungleInitializer.this.onInitSuccess(this.$callback);
                Log.d(VungleInitializer.TAG, "onSuccess");
            }
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class h extends Lambda implements Function0<PathProvider> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.g, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final PathProvider invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(PathProvider.class);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class i extends Lambda implements Function0<Downloader> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.downloader.b, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final Downloader invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(Downloader.class);
        }
    }

    /* JADX INFO: compiled from: VungleInitializer.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class j extends Lambda implements Function1<Integer, v> {
        final /* synthetic */ Function1<Boolean, v> $downloadListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        j(Function1<? super Boolean, v> function1) {
            super(1);
            this.$downloadListener = function1;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Integer num) {
            invoke(num.intValue());
            return v.a;
        }

        public final void invoke(int i) {
            if (i == 11) {
                this.$downloadListener.invoke(Boolean.FALSE);
            } else {
                this.$downloadListener.invoke(Boolean.TRUE);
            }
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class k extends Lambda implements Function0<Platform> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.j.d, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final Platform invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(Platform.class);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class l extends Lambda implements Function0<Executors> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(Context context) {
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
    public static final class m extends Lambda implements Function0<VungleApiClient> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final VungleApiClient invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(VungleApiClient.class);
        }
    }

    private final void configure(Context context, InitializationListener initializationListener) {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.a;
        Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new b(context));
        try {
            this.initRequestToResponseMetric.markStart();
            Call<ConfigPayload> callConfig = m1118configure$lambda5(lazy).config();
            Response<ConfigPayload> responseExecute = callConfig != null ? callConfig.execute() : null;
            if (responseExecute == null) {
                onInitError(initializationListener, new SdkNotInitialized().logError$vungle_ads_release());
                return;
            }
            if (!responseExecute.isSuccessful()) {
                onInitError(initializationListener, new ConfigurationError().logError$vungle_ads_release());
                return;
            }
            this.initRequestToResponseMetric.markEnd();
            ConfigPayload configPayloadBody = responseExecute.body();
            if ((configPayloadBody != null ? configPayloadBody.getEndpoints() : null) == null) {
                onInitError(initializationListener, new ConfigurationResponseError().logError$vungle_ads_release());
                return;
            }
            ConfigManager configManager = ConfigManager.INSTANCE;
            configManager.initWithConfig(configPayloadBody);
            AnalyticsClient.INSTANCE.init$vungle_ads_release(m1118configure$lambda5(lazy), m1119configure$lambda6(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new c(context))).getLOGGER_EXECUTOR(), configManager.getLogLevel(), configManager.getMetricsEnabled());
            if (!configManager.validateEndpoints$vungle_ads_release()) {
                onInitError(initializationListener, new ConfigurationError());
                return;
            }
            Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new d(context));
            String configExtension = configPayloadBody.getConfigExtension();
            if (configExtension == null || configExtension.length() == 0) {
                m1120configure$lambda7(lazy2).remove("config_extension").apply();
            } else {
                m1120configure$lambda7(lazy2).put("config_extension", configExtension).apply();
            }
            if (configManager.omEnabled()) {
                m1121configure$lambda9(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new e(context))).init();
            }
            if (configManager.placements() == null) {
                onInitError(initializationListener, new ConfigurationError());
                return;
            }
            PrivacyManager.INSTANCE.updateDisableAdId(configManager.shouldDisableAdId());
            Lazy lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new f(context));
            m1117configure$lambda10(lazy3).execute(CleanupJob.Companion.makeJobInfo$default(CleanupJob.Companion, null, 1, null));
            m1117configure$lambda10(lazy3).execute(ResendTpatJob.Companion.makeJobInfo());
            downloadJs(context, new g(initializationListener));
        } catch (Throwable th) {
            this.isInitialized = false;
            Log.e(TAG, Log.getStackTraceString(th));
            if (th instanceof UnknownHostException ? true : th instanceof SecurityException) {
                onInitError(initializationListener, new NetworkUnreachable().logError$vungle_ads_release());
            } else if (th instanceof VungleError) {
                onInitError(initializationListener, th);
            } else {
                onInitError(initializationListener, new UnknownConfigurationError().logError$vungle_ads_release());
            }
        }
    }

    /* JADX INFO: renamed from: configure$lambda-10, reason: not valid java name */
    private static final JobRunner m1117configure$lambda10(Lazy<? extends JobRunner> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: configure$lambda-5, reason: not valid java name */
    private static final VungleApiClient m1118configure$lambda5(Lazy<VungleApiClient> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: configure$lambda-6, reason: not valid java name */
    private static final Executors m1119configure$lambda6(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: configure$lambda-7, reason: not valid java name */
    private static final FilePreferences m1120configure$lambda7(Lazy<FilePreferences> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: configure$lambda-9, reason: not valid java name */
    private static final OMInjector m1121configure$lambda9(Lazy<OMInjector> lazy) {
        return lazy.getValue();
    }

    private final void downloadJs(Context context, Function1<? super Boolean, v> function1) {
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.a;
        MraidJsLoader.INSTANCE.downloadJs(m1122downloadJs$lambda13(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new h(context))), m1123downloadJs$lambda14(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new i(context))), new j(function1));
    }

    /* JADX INFO: renamed from: downloadJs$lambda-13, reason: not valid java name */
    private static final PathProvider m1122downloadJs$lambda13(Lazy<PathProvider> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: downloadJs$lambda-14, reason: not valid java name */
    private static final Downloader m1123downloadJs$lambda14(Lazy<? extends Downloader> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: init$lambda-0, reason: not valid java name */
    private static final Platform m1124init$lambda0(Lazy<? extends Platform> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: init$lambda-1, reason: not valid java name */
    private static final Executors m1125init$lambda1(Lazy<? extends Executors> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: init$lambda-2, reason: not valid java name */
    private static final VungleApiClient m1126init$lambda2(Lazy<VungleApiClient> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: init$lambda-3, reason: not valid java name */
    public static final void m1127init$lambda3(Context context, String appId, VungleInitializer this$0, InitializationListener initializationCallback, Lazy vungleApiClient$delegate) {
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(appId, "$appId");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(initializationCallback, "$initializationCallback");
        Intrinsics.checkNotNullParameter(vungleApiClient$delegate, "$vungleApiClient$delegate");
        PrivacyManager.INSTANCE.init(context);
        m1126init$lambda2(vungleApiClient$delegate).initialize(appId);
        this$0.configure(context, initializationCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: init$lambda-4, reason: not valid java name */
    public static final void m1128init$lambda4(VungleInitializer this$0, InitializationListener initializationCallback) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(initializationCallback, "$initializationCallback");
        this$0.onInitError(initializationCallback, new OutOfMemory().logError$vungle_ads_release());
    }

    private final boolean isAppIdInvalid(String str) {
        return StringsKt__StringsJVMKt.isBlank(str);
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitialized$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void isInitializing$vungle_ads_release$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onInitError(final InitializationListener initializationListener, final VungleError vungleError) {
        this.isInitializing.set(false);
        ThreadUtil.INSTANCE.runOnUiThread(new Runnable() { // from class: com.vungle.ads.internal.b
            @Override // java.lang.Runnable
            public final void run() {
                VungleInitializer.m1129onInitError$lambda11(initializationListener, vungleError);
            }
        });
        String localizedMessage = vungleError.getLocalizedMessage();
        if (localizedMessage == null) {
            localizedMessage = "Exception code is " + vungleError.getCode();
        }
        Log.e(TAG, localizedMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onInitError$lambda-11, reason: not valid java name */
    public static final void m1129onInitError$lambda11(InitializationListener initCallback, VungleError exception) {
        Intrinsics.checkNotNullParameter(initCallback, "$initCallback");
        Intrinsics.checkNotNullParameter(exception, "$exception");
        initCallback.onError(exception);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onInitSuccess(final InitializationListener initializationListener) {
        this.isInitializing.set(false);
        ThreadUtil.INSTANCE.runOnUiThread(new Runnable() { // from class: com.vungle.ads.internal.d
            @Override // java.lang.Runnable
            public final void run() {
                VungleInitializer.m1130onInitSuccess$lambda12(initializationListener, this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onInitSuccess$lambda-12, reason: not valid java name */
    public static final void m1130onInitSuccess$lambda12(InitializationListener initCallback, VungleInitializer this$0) {
        Intrinsics.checkNotNullParameter(initCallback, "$initCallback");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        initCallback.onSuccess();
        AnalyticsClient.INSTANCE.logMetric$vungle_ads_release((Metric) this$0.initRequestToResponseMetric, (14 & 2) != 0 ? null : null, (14 & 4) != 0 ? null : null, (14 & 8) != 0 ? null : null, (14 & 16) != 0 ? null : VungleApiClient.Companion.getBASE_URL$vungle_ads_release());
    }

    public final void deInit$vungle_ads_release() {
        ServiceLocator.Companion.deInit();
        VungleApiClient.Companion.reset$vungle_ads_release();
        this.isInitialized = false;
        this.isInitializing.set(false);
    }

    public final void init(final String appId, final Context context, final InitializationListener initializationCallback) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationCallback, "initializationCallback");
        if (isAppIdInvalid(appId)) {
            onInitError(initializationCallback, new InvalidAppId().logError$vungle_ads_release());
            return;
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.a;
        if (!m1124init$lambda0(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new k(context))).isAtLeastMinimumSDK()) {
            Log.e(TAG, "SDK is supported only for API versions 21 and above");
            onInitError(initializationCallback, new SdkVersionTooLow().logError$vungle_ads_release());
            return;
        }
        if (isInitialized()) {
            Log.d(TAG, "init already complete");
            new SdkAlreadyInitialized().logErrorNoReturnValue$vungle_ads_release();
            onInitSuccess(initializationCallback);
        } else if (this.isInitializing.getAndSet(true)) {
            Log.d(TAG, "init ongoing");
            onInitError(initializationCallback, new SdkInitializationInProgress().logError$vungle_ads_release());
        } else if (PermissionChecker.checkCallingOrSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") != 0 || PermissionChecker.checkCallingOrSelfPermission(context, "android.permission.INTERNET") != 0) {
            Log.e(TAG, "Network permissions not granted");
            onInitError(initializationCallback, new NetworkPermissionsNotGranted());
        } else {
            Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new l(context));
            final Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new m(context));
            m1125init$lambda1(lazy).getBACKGROUND_EXECUTOR().execute(new Runnable() { // from class: com.vungle.ads.internal.e
                @Override // java.lang.Runnable
                public final void run() {
                    VungleInitializer.m1127init$lambda3(context, appId, this, initializationCallback, lazy2);
                }
            }, new Runnable() { // from class: com.vungle.ads.internal.c
                @Override // java.lang.Runnable
                public final void run() {
                    VungleInitializer.m1128init$lambda4(this.a, initializationCallback);
                }
            });
        }
    }

    public final boolean isInitialized() {
        return this.isInitialized;
    }

    public final boolean isInitialized$vungle_ads_release() {
        return this.isInitialized;
    }

    public final AtomicBoolean isInitializing$vungle_ads_release() {
        return this.isInitializing;
    }

    public final void setInitialized$vungle_ads_release(boolean z) {
        this.isInitialized = z;
    }

    public final void setInitializing$vungle_ads_release(AtomicBoolean atomicBoolean) {
        Intrinsics.checkNotNullParameter(atomicBoolean, "<set-?>");
        this.isInitializing = atomicBoolean;
    }
}
