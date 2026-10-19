package com.vungle.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.downloader.AssetDownloader;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.executor.SDKExecutors;
import com.vungle.ads.internal.locale.LocaleInfo;
import com.vungle.ads.internal.locale.SystemLocaleInfo;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.omsdk.OMTracker;
import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.platform.AndroidPlatform;
import com.vungle.ads.internal.platform.Platform;
import com.vungle.ads.internal.task.JobCreator;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.task.JobRunnerThreadPriorityHelper;
import com.vungle.ads.internal.task.VungleJobCreator;
import com.vungle.ads.internal.task.VungleJobRunner;
import com.vungle.ads.internal.util.ConcurrencyTimeoutProvider;
import com.vungle.ads.internal.util.PathProvider;
import java.util.HashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

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
/* JADX INFO: compiled from: ServiceLocator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001a\u001bB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\r2\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\u000f\u001a\u0002H\rH\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0012\u001a\u00020\fH\u0002J#\u0010\u0013\u001a\u0002H\r\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0007H\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0016\u001a\u0002H\r\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0007¢\u0006\u0002\u0010\u0015J\u0018\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u00072\n\u0010\u000e\u001a\u0006\u0012\u0002\b\u00030\u0007H\u0002J\u001a\u0010\u0018\u001a\u00020\u0019\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0007R \u0010\u0005\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\b\u001a\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\f\u0012\n\u0012\u0002\b\u00030\tR\u00020\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/vungle/ads/ServiceLocator;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", WebPreferenceConstants.CLEAR_CACHE_EXIT, "", "Ljava/lang/Class;", "creators", "Lcom/vungle/ads/ServiceLocator$Creator;", "ctx", "bindService", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "serviceClass", NotificationCompat.CATEGORY_SERVICE, "bindService$vungle_ads_release", "(Ljava/lang/Class;Ljava/lang/Object;)V", "buildCreators", "getOrBuild", "getOrBuild$vungle_ads_release", "(Ljava/lang/Class;)Ljava/lang/Object;", "getService", "getServiceClass", "isCreated", "", "Companion", "Creator", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class ServiceLocator {
    public static final Companion Companion = new Companion(null);

    @SuppressLint({"StaticFieldLeak"})
    private static volatile ServiceLocator INSTANCE;
    private final Map<Class<?>, Object> cache;
    private final Map<Class<?>, a<?>> creators;
    private final Context ctx;

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Keep
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eJ#\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00110\u0010\"\n\b\u0000\u0010\u0011\u0018\u0001*\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0086\bR&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/ServiceLocator$Companion;", "", "()V", "INSTANCE", "Lcom/vungle/ads/ServiceLocator;", "getINSTANCE$vungle_ads_release$annotations", "getINSTANCE$vungle_ads_release", "()Lcom/vungle/ads/ServiceLocator;", "setINSTANCE$vungle_ads_release", "(Lcom/vungle/ads/ServiceLocator;)V", "deInit", "", "getInstance", "context", "Landroid/content/Context;", "inject", "Lkotlin/Lazy;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* JADX INFO: compiled from: ServiceLocator.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;"}, mv = {1, 7, 1}, xi = 176)
        public static final class a<T> extends Lambda implements Function0<T> {
            final /* synthetic */ Context $context;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(Context context) {
                super(0);
                this.$context = context;
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                ServiceLocator companion = ServiceLocator.Companion.getInstance(this.$context);
                Intrinsics.reifiedOperationMarker(4, RequestConfiguration.MAX_AD_CONTENT_RATING_T);
                return (T) companion.getOrBuild$vungle_ads_release(Object.class);
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        @VisibleForTesting
        public static /* synthetic */ void getINSTANCE$vungle_ads_release$annotations() {
        }

        public final synchronized void deInit() {
            setINSTANCE$vungle_ads_release(null);
        }

        public final ServiceLocator getINSTANCE$vungle_ads_release() {
            return ServiceLocator.INSTANCE;
        }

        public final ServiceLocator getInstance(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ServiceLocator iNSTANCE$vungle_ads_release = getINSTANCE$vungle_ads_release();
            if (iNSTANCE$vungle_ads_release == null) {
                synchronized (this) {
                    Companion companion = ServiceLocator.Companion;
                    ServiceLocator iNSTANCE$vungle_ads_release2 = companion.getINSTANCE$vungle_ads_release();
                    if (iNSTANCE$vungle_ads_release2 == null) {
                        iNSTANCE$vungle_ads_release2 = new ServiceLocator(context, null);
                        companion.setINSTANCE$vungle_ads_release(iNSTANCE$vungle_ads_release2);
                    }
                    iNSTANCE$vungle_ads_release = iNSTANCE$vungle_ads_release2;
                }
            }
            return iNSTANCE$vungle_ads_release;
        }

        public final /* synthetic */ <T> Lazy<T> inject(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.a;
            Intrinsics.needClassReification();
            return LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new a(context));
        }

        public final void setINSTANCE$vungle_ads_release(ServiceLocator serviceLocator) {
            ServiceLocator.INSTANCE = serviceLocator;
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b¢\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\r\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0002\u0010\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/vungle/ads/ServiceLocator$Creator;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "isSingleton", "", "(Lcom/vungle/ads/ServiceLocator;Z)V", "()Z", "create", "()Ljava/lang/Object;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    private abstract class a<T> {
        private final boolean isSingleton;

        public a(boolean z) {
            this.isSingleton = z;
        }

        public /* synthetic */ a(ServiceLocator serviceLocator, boolean z, int i, kotlin.jvm.internal.n nVar) {
            this((i & 1) != 0 ? true : z);
        }

        public abstract T create();

        public final boolean isSingleton() {
            return this.isSingleton;
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$10", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends a<BidTokenEncoder> {
        b() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public BidTokenEncoder create() {
            return new BidTokenEncoder(ServiceLocator.this.ctx);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$11", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/util/PathProvider;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends a<PathProvider> {
        c() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public PathProvider create() {
            return new PathProvider(ServiceLocator.this.ctx);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$12", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/downloader/Downloader;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class d extends a<Downloader> {
        d() {
            super(false);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public Downloader create() {
            return new AssetDownloader(((Executors) ServiceLocator.this.getOrBuild$vungle_ads_release(Executors.class)).getDOWNLOADER_EXECUTOR(), (PathProvider) ServiceLocator.this.getOrBuild$vungle_ads_release(PathProvider.class));
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$13", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/util/ConcurrencyTimeoutProvider;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class e extends a<ConcurrencyTimeoutProvider> {
        e(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public ConcurrencyTimeoutProvider create() {
            return new ConcurrencyTimeoutProvider();
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$1", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/task/JobCreator;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class f extends a<JobCreator> {
        f() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public JobCreator create() {
            return new VungleJobCreator(ServiceLocator.this.ctx, (PathProvider) ServiceLocator.this.getOrBuild$vungle_ads_release(PathProvider.class));
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$2", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/task/JobRunner;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class g extends a<JobRunner> {
        g() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public JobRunner create() {
            return new VungleJobRunner((JobCreator) ServiceLocator.this.getOrBuild$vungle_ads_release(JobCreator.class), ((Executors) ServiceLocator.this.getOrBuild$vungle_ads_release(Executors.class)).getJOB_EXECUTOR(), new JobRunnerThreadPriorityHelper());
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$3", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/network/VungleApiClient;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class h extends a<VungleApiClient> {
        h() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public VungleApiClient create() {
            return new VungleApiClient(ServiceLocator.this.ctx, (Platform) ServiceLocator.this.getOrBuild$vungle_ads_release(Platform.class), (FilePreferences) ServiceLocator.this.getOrBuild$vungle_ads_release(FilePreferences.class));
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$4", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/platform/Platform;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class i extends a<Platform> {
        i() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public Platform create() {
            return new AndroidPlatform(ServiceLocator.this.ctx, ((Executors) ServiceLocator.this.getOrBuild$vungle_ads_release(Executors.class)).getUA_EXECUTOR());
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$5", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/executor/Executors;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class j extends a<Executors> {
        j(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public Executors create() {
            return new SDKExecutors();
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$6", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/omsdk/OMInjector;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class k extends a<OMInjector> {
        k() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public OMInjector create() {
            return new OMInjector(ServiceLocator.this.ctx);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$7", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/omsdk/OMTracker$Factory;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class l extends a<OMTracker.a> {
        l(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public OMTracker.a create() {
            return new OMTracker.a();
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$8", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/persistence/FilePreferences;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class m extends a<FilePreferences> {
        m() {
            super(ServiceLocator.this, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public FilePreferences create() {
            return new FilePreferences(((Executors) ServiceLocator.this.getOrBuild$vungle_ads_release(Executors.class)).getIO_EXECUTOR(), (PathProvider) ServiceLocator.this.getOrBuild$vungle_ads_release(PathProvider.class), null, 4, null);
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\f\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003J\b\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\u0005"}, d2 = {"com/vungle/ads/ServiceLocator$buildCreators$9", "Lcom/vungle/ads/ServiceLocator$Creator;", "Lcom/vungle/ads/internal/locale/LocaleInfo;", "Lcom/vungle/ads/ServiceLocator;", "create", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class n extends a<LocaleInfo> {
        n(ServiceLocator serviceLocator) {
            super(serviceLocator, false, 1, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.vungle.ads.ServiceLocator.a
        public LocaleInfo create() {
            return new SystemLocaleInfo();
        }
    }

    private ServiceLocator(Context context) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.ctx = applicationContext;
        this.creators = new HashMap();
        this.cache = new HashMap();
        buildCreators();
    }

    public /* synthetic */ ServiceLocator(Context context, kotlin.jvm.internal.n nVar) {
        this(context);
    }

    private final void buildCreators() {
        this.creators.put(JobCreator.class, new f());
        this.creators.put(JobRunner.class, new g());
        this.creators.put(VungleApiClient.class, new h());
        this.creators.put(Platform.class, new i());
        this.creators.put(Executors.class, new j(this));
        this.creators.put(OMInjector.class, new k());
        this.creators.put(OMTracker.a.class, new l(this));
        this.creators.put(FilePreferences.class, new m());
        this.creators.put(LocaleInfo.class, new n(this));
        this.creators.put(BidTokenEncoder.class, new b());
        this.creators.put(PathProvider.class, new c());
        this.creators.put(Downloader.class, new d());
        this.creators.put(ConcurrencyTimeoutProvider.class, new e(this));
    }

    private final Class<?> getServiceClass(Class<?> cls) {
        for (Class<?> cls2 : this.creators.keySet()) {
            if (cls2.isAssignableFrom(cls)) {
                return cls2;
            }
        }
        throw new IllegalArgumentException("Unknown dependency for " + cls);
    }

    @VisibleForTesting
    public final <T> void bindService$vungle_ads_release(Class<?> serviceClass, T t) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        this.cache.put(serviceClass, t);
    }

    @VisibleForTesting
    public final <T> T getOrBuild$vungle_ads_release(Class<T> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        Class<?> serviceClass2 = getServiceClass(serviceClass);
        T t = (T) this.cache.get(serviceClass2);
        if (t != null) {
            return t;
        }
        a<?> aVar = this.creators.get(serviceClass2);
        if (aVar == null) {
            throw new IllegalArgumentException("Unknown class");
        }
        T t2 = (T) aVar.create();
        if (aVar.isSingleton()) {
            this.cache.put(serviceClass2, t2);
        }
        return t2;
    }

    public final synchronized <T> T getService(Class<T> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        return (T) getOrBuild$vungle_ads_release(serviceClass);
    }

    public final synchronized <T> boolean isCreated(Class<T> serviceClass) {
        Intrinsics.checkNotNullParameter(serviceClass, "serviceClass");
        return this.cache.containsKey(getServiceClass(serviceClass));
    }
}
