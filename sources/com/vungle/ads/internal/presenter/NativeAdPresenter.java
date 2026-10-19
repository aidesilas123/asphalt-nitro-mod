package com.vungle.ads.internal.presenter;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.PrivacyUrlError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.NativeOMTracker;
import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import com.vungle.ads.internal.ui.PresenterAppLeftCallback;
import com.vungle.ads.internal.util.ExternalRouter;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.PathProvider;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.n;

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
/* JADX INFO: compiled from: NativeAdPresenter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 92\u00020\u0001:\u00019B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010#\u001a\u00020$J\u000e\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020'J\b\u0010(\u001a\u00020\fH\u0002J\u0012\u0010)\u001a\u00020$2\b\u0010*\u001a\u0004\u0018\u00010'H\u0002J\u0006\u0010+\u001a\u00020$J\u0012\u0010,\u001a\u00020$2\b\u0010-\u001a\u0004\u0018\u00010'H\u0002J\u0006\u0010.\u001a\u00020$J\u001a\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020'2\n\b\u0002\u00101\u001a\u0004\u0018\u00010'J\u0010\u00102\u001a\u00020$2\b\u00103\u001a\u0004\u0018\u00010\u000eJ\b\u00104\u001a\u00020$H\u0002J\b\u00105\u001a\u00020$H\u0002J\u000e\u00106\u001a\u00020$2\u0006\u00107\u001a\u000208R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u0016\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0016\u001a\u0004\b \u0010!¨\u0006:"}, d2 = {"Lcom/vungle/ads/internal/presenter/NativeAdPresenter;", "", "context", "Landroid/content/Context;", "delegate", "Lcom/vungle/ads/internal/presenter/NativePresenterDelegate;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "executor", "Ljava/util/concurrent/Executor;", "(Landroid/content/Context;Lcom/vungle/ads/internal/presenter/NativePresenterDelegate;Lcom/vungle/ads/internal/model/AdPayload;Ljava/util/concurrent/Executor;)V", "adViewed", "", "bus", "Lcom/vungle/ads/internal/presenter/AdEventListener;", "currentDialog", "Landroid/app/Dialog;", "executors", "Lcom/vungle/ads/internal/executor/Executors;", "getExecutors", "()Lcom/vungle/ads/internal/executor/Executors;", "executors$delegate", "Lkotlin/Lazy;", "omTracker", "Lcom/vungle/ads/internal/omsdk/NativeOMTracker;", "pathProvider", "Lcom/vungle/ads/internal/util/PathProvider;", "getPathProvider", "()Lcom/vungle/ads/internal/util/PathProvider;", "pathProvider$delegate", "vungleApiClient", "Lcom/vungle/ads/internal/network/VungleApiClient;", "getVungleApiClient", "()Lcom/vungle/ads/internal/network/VungleApiClient;", "vungleApiClient$delegate", "detach", "", "initOMTracker", "omSdkData", "", "needShowGdpr", "onDownload", "ctaUrl", "onImpression", "onPrivacy", "privacyUrl", "prepare", "processCommand", "action", "value", "setEventListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "showGdpr", "start", "startTracking", "rootView", "Landroid/view/View;", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class NativeAdPresenter {
    public static final String DOWNLOAD = "download";
    public static final String OPEN_PRIVACY = "openPrivacy";
    public static final String TPAT = "tpat";
    public static final String VIDEO_VIEWED = "videoViewed";
    private boolean adViewed;
    private final AdPayload advertisement;
    private AdEventListener bus;
    private final Context context;
    private Dialog currentDialog;
    private final NativePresenterDelegate delegate;
    private Executor executor;
    private final Lazy executors$delegate;
    private NativeOMTracker omTracker;
    private final Lazy pathProvider$delegate;
    private final Lazy vungleApiClient$delegate;
    public static final a Companion = new a(null);
    private static final String TAG = Reflection.getOrCreateKotlinClass(NativeAdPresenter.class).s();

    /* JADX INFO: compiled from: NativeAdPresenter.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/presenter/NativeAdPresenter$Companion;", "", "()V", "DOWNLOAD", "", "OPEN_PRIVACY", "TAG", "TPAT", "VIDEO_VIEWED", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: NativeAdPresenter.kt */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/vungle/ads/internal/presenter/NativeAdPresenter$onDownload$3", "Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;", "onDeeplinkClick", "", "opened", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b implements PresenterAdOpenCallback {
        final /* synthetic */ TpatSender $tpatSender;

        b(TpatSender tpatSender) {
            this.$tpatSender = tpatSender;
        }

        @Override // com.vungle.ads.internal.ui.PresenterAdOpenCallback
        public void onDeeplinkClick(boolean opened) {
            AdPayload adPayload = NativeAdPresenter.this.advertisement;
            List<String> tpatUrls = adPayload != null ? adPayload.getTpatUrls("deeplink.click", String.valueOf(opened)) : null;
            if (tpatUrls != null) {
                TpatSender tpatSender = this.$tpatSender;
                NativeAdPresenter nativeAdPresenter = NativeAdPresenter.this;
                Iterator<T> it = tpatUrls.iterator();
                while (it.hasNext()) {
                    tpatSender.sendTpat((String) it.next(), nativeAdPresenter.executor);
                }
            }
        }
    }

    /* JADX INFO: compiled from: ServiceLocator.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "invoke", "()Ljava/lang/Object;", "com/vungle/ads/ServiceLocator$Companion$inject$1"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends Lambda implements Function0<VungleApiClient> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context) {
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
    public static final class d extends Lambda implements Function0<Executors> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Context context) {
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
    public static final class e extends Lambda implements Function0<PathProvider> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.g, java.lang.Object] */
        @Override // kotlin.jvm.functions.Function0
        public final PathProvider invoke() {
            return ServiceLocator.Companion.getInstance(this.$context).getOrBuild$vungle_ads_release(PathProvider.class);
        }
    }

    public NativeAdPresenter(Context context, NativePresenterDelegate delegate, AdPayload adPayload, Executor executor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(executor, "executor");
        this.context = context;
        this.delegate = delegate;
        this.advertisement = adPayload;
        this.executor = executor;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.a;
        this.vungleApiClient$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new c(context));
        this.executors$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new d(context));
        this.pathProvider$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new e(context));
    }

    private final Executors getExecutors() {
        return (Executors) this.executors$delegate.getValue();
    }

    private final PathProvider getPathProvider() {
        return (PathProvider) this.pathProvider$delegate.getValue();
    }

    private final VungleApiClient getVungleApiClient() {
        return (VungleApiClient) this.vungleApiClient$delegate.getValue();
    }

    private final boolean needShowGdpr() {
        return ConfigManager.INSTANCE.getGDPRIsCountryDataProtected() && Intrinsics.areEqual("unknown", PrivacyManager.INSTANCE.getConsentStatus());
    }

    private final void onDownload(String str) {
        AdPayload.AdUnit adUnit;
        AdPayload adPayload = this.advertisement;
        List tpatUrls$default = adPayload != null ? AdPayload.getTpatUrls$default(adPayload, "clickUrl", null, 2, null) : null;
        VungleApiClient vungleApiClient = getVungleApiClient();
        String placementRefId = this.delegate.getPlacementRefId();
        AdPayload adPayload2 = this.advertisement;
        String creativeId = adPayload2 != null ? adPayload2.getCreativeId() : null;
        AdPayload adPayload3 = this.advertisement;
        TpatSender tpatSender = new TpatSender(vungleApiClient, placementRefId, creativeId, adPayload3 != null ? adPayload3.eventId() : null, getExecutors().getIO_EXECUTOR(), getPathProvider());
        if (tpatUrls$default == null || tpatUrls$default.isEmpty()) {
            AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
            String placementRefId2 = this.delegate.getPlacementRefId();
            AdPayload adPayload4 = this.advertisement;
            analyticsClient.logError$vungle_ads_release(129, "Empty tpat key: clickUrl", (24 & 4) != 0 ? null : placementRefId2, (24 & 8) != 0 ? null : adPayload4 != null ? adPayload4.getCreativeId() : null, (24 & 16) != 0 ? null : null);
        } else {
            Iterator it = tpatUrls$default.iterator();
            while (it.hasNext()) {
                tpatSender.sendTpat((String) it.next(), this.executor);
            }
        }
        if (str != null) {
            tpatSender.sendTpat(str, this.executor);
        }
        AdPayload adPayload5 = this.advertisement;
        ExternalRouter.launch((adPayload5 == null || (adUnit = adPayload5.adUnit()) == null) ? null : adUnit.getDeeplinkUrl(), str, this.context, true, new PresenterAppLeftCallback(this.bus, null), new b(tpatSender));
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext(MRAIDPresenter.OPEN, "adClick", this.delegate.getPlacementRefId());
        }
    }

    private final void onPrivacy(String str) {
        if (str != null) {
            if (FileUtility.INSTANCE.isValidUrl(str)) {
                if (ExternalRouter.launch(null, str, this.context, true, new PresenterAppLeftCallback(this.bus, this.delegate.getPlacementRefId()), null)) {
                    return;
                }
                new PrivacyUrlError(str).logErrorNoReturnValue$vungle_ads_release();
            } else {
                VungleError placementId$vungle_ads_release = new PrivacyUrlError(str).setPlacementId$vungle_ads_release(this.delegate.getPlacementRefId());
                AdPayload adPayload = this.advertisement;
                VungleError creativeId$vungle_ads_release = placementId$vungle_ads_release.setCreativeId$vungle_ads_release(adPayload != null ? adPayload.getCreativeId() : null);
                AdPayload adPayload2 = this.advertisement;
                creativeId$vungle_ads_release.setEventId$vungle_ads_release(adPayload2 != null ? adPayload2.eventId() : null).logErrorNoReturnValue$vungle_ads_release();
            }
        }
    }

    public static /* synthetic */ void processCommand$default(NativeAdPresenter nativeAdPresenter, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        nativeAdPresenter.processCommand(str, str2);
    }

    private final void showGdpr() {
        PrivacyManager.INSTANCE.updateGdprConsent("opted_out_by_timeout", "vungle_modal", null);
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.vungle.ads.internal.presenter.h
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                NativeAdPresenter.m1156showGdpr$lambda6(this.a, dialogInterface, i);
            }
        };
        ConfigManager configManager = ConfigManager.INSTANCE;
        String gDPRConsentTitle = configManager.getGDPRConsentTitle();
        String gDPRConsentMessage = configManager.getGDPRConsentMessage();
        String gDPRButtonAccept = configManager.getGDPRButtonAccept();
        String gDPRButtonDeny = configManager.getGDPRButtonDeny();
        Context context = this.context;
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, context.getApplicationInfo().theme));
        boolean z = true;
        if (!(gDPRConsentTitle == null || gDPRConsentTitle.length() == 0)) {
            builder.setTitle(gDPRConsentTitle);
        }
        if (gDPRConsentMessage != null && gDPRConsentMessage.length() != 0) {
            z = false;
        }
        if (!z) {
            builder.setMessage(gDPRConsentMessage);
        }
        builder.setPositiveButton(gDPRButtonAccept, onClickListener);
        builder.setNegativeButton(gDPRButtonDeny, onClickListener);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.vungle.ads.internal.presenter.g
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                NativeAdPresenter.m1157showGdpr$lambda7(this.a, dialogInterface);
            }
        });
        this.currentDialog = alertDialogCreate;
        alertDialogCreate.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showGdpr$lambda-6, reason: not valid java name */
    public static final void m1156showGdpr$lambda6(NativeAdPresenter this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        PrivacyManager.INSTANCE.updateGdprConsent(i != -2 ? i != -1 ? "opted_out_by_timeout" : PrivacyConsent.OPT_IN.getValue() : PrivacyConsent.OPT_OUT.getValue(), "vungle_modal", null);
        this$0.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showGdpr$lambda-7, reason: not valid java name */
    public static final void m1157showGdpr$lambda7(NativeAdPresenter this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.currentDialog = null;
    }

    private final void start() {
        if (needShowGdpr()) {
            showGdpr();
        }
    }

    public final void detach() {
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.stop();
        }
        Dialog dialog = this.currentDialog;
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext(TtmlNode.END, null, this.delegate.getPlacementRefId());
        }
    }

    public final void initOMTracker(String omSdkData) {
        Intrinsics.checkNotNullParameter(omSdkData, "omSdkData");
        AdPayload adPayload = this.advertisement;
        boolean zOmEnabled = adPayload != null ? adPayload.omEnabled() : false;
        if ((omSdkData.length() > 0) && ConfigManager.INSTANCE.omEnabled() && zOmEnabled) {
            this.omTracker = new NativeOMTracker(omSdkData);
        }
    }

    public final void onImpression() {
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.impressionOccurred();
        }
    }

    public final void prepare() {
        start();
        AdEventListener adEventListener = this.bus;
        if (adEventListener != null) {
            adEventListener.onNext("start", null, this.delegate.getPlacementRefId());
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void processCommand(String action, String str) {
        Intrinsics.checkNotNullParameter(action, "action");
        boolean z = true;
        switch (action.hashCode()) {
            case -511324706:
                if (action.equals("openPrivacy")) {
                    onPrivacy(str);
                    return;
                }
                break;
            case 3566511:
                if (action.equals("tpat")) {
                    if (str == null || str.length() == 0) {
                        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                        String placementRefId = this.delegate.getPlacementRefId();
                        AdPayload adPayload = this.advertisement;
                        analyticsClient.logError$vungle_ads_release(129, "Empty tpat key", (24 & 4) != 0 ? null : placementRefId, (24 & 8) != 0 ? null : adPayload != null ? adPayload.getCreativeId() : null, (24 & 16) != 0 ? null : null);
                        return;
                    }
                    AdPayload adPayload2 = this.advertisement;
                    List tpatUrls$default = adPayload2 != null ? AdPayload.getTpatUrls$default(adPayload2, str, null, 2, null) : null;
                    if (tpatUrls$default != null && !tpatUrls$default.isEmpty()) {
                        z = false;
                    }
                    if (z) {
                        AnalyticsClient analyticsClient2 = AnalyticsClient.INSTANCE;
                        String str2 = "Invalid tpat key: " + str;
                        String placementRefId2 = this.delegate.getPlacementRefId();
                        AdPayload adPayload3 = this.advertisement;
                        analyticsClient2.logError$vungle_ads_release(128, str2, (24 & 4) != 0 ? null : placementRefId2, (24 & 8) != 0 ? null : adPayload3 != null ? adPayload3.getCreativeId() : null, (24 & 16) != 0 ? null : null);
                        return;
                    }
                    VungleApiClient vungleApiClient = getVungleApiClient();
                    String placementRefId3 = this.delegate.getPlacementRefId();
                    AdPayload adPayload4 = this.advertisement;
                    String creativeId = adPayload4 != null ? adPayload4.getCreativeId() : null;
                    AdPayload adPayload5 = this.advertisement;
                    TpatSender tpatSender = new TpatSender(vungleApiClient, placementRefId3, creativeId, adPayload5 != null ? adPayload5.eventId() : null, getExecutors().getIO_EXECUTOR(), getPathProvider());
                    Iterator it = tpatUrls$default.iterator();
                    while (it.hasNext()) {
                        tpatSender.sendTpat((String) it.next(), this.executor);
                    }
                    return;
                }
                break;
            case 1118284383:
                if (action.equals("videoViewed")) {
                    AdEventListener adEventListener = this.bus;
                    if (adEventListener == null || this.adViewed) {
                        return;
                    }
                    this.adViewed = true;
                    if (adEventListener != null) {
                        adEventListener.onNext("adViewed", null, this.delegate.getPlacementRefId());
                    }
                    VungleApiClient vungleApiClient2 = getVungleApiClient();
                    String placementRefId4 = this.delegate.getPlacementRefId();
                    AdPayload adPayload6 = this.advertisement;
                    String creativeId2 = adPayload6 != null ? adPayload6.getCreativeId() : null;
                    AdPayload adPayload7 = this.advertisement;
                    TpatSender tpatSender2 = new TpatSender(vungleApiClient2, placementRefId4, creativeId2, adPayload7 != null ? adPayload7.eventId() : null, getExecutors().getIO_EXECUTOR(), getPathProvider());
                    List<String> impressionUrls = this.delegate.getImpressionUrls();
                    if (impressionUrls != null) {
                        Iterator<T> it2 = impressionUrls.iterator();
                        while (it2.hasNext()) {
                            tpatSender2.sendTpat((String) it2.next(), this.executor);
                        }
                        return;
                    }
                    return;
                }
                break;
            case 1427818632:
                if (action.equals("download")) {
                    onDownload(str);
                    return;
                }
                break;
        }
        Log.w(TAG, "Unknown native ad action: " + action);
    }

    public final void setEventListener(AdEventListener adEventListener) {
        this.bus = adEventListener;
    }

    public final void startTracking(View rootView) {
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        NativeOMTracker nativeOMTracker = this.omTracker;
        if (nativeOMTracker != null) {
            nativeOMTracker.start(rootView);
        }
    }
}
