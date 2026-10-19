package com.vungle.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.json.hc;
import com.json.o2;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.load.AdLoaderCallback;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ThreadUtil;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
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
/* JADX INFO: compiled from: BaseAd.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\r\u0010.\u001a\u00020/H\u0016¢\u0006\u0002\u00100J\u0015\u00101\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\u0003H ¢\u0006\u0002\b2J\u0012\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0005H\u0016J\u0015\u00106\u001a\u0002042\u0006\u00107\u001a\u000208H\u0010¢\u0006\u0002\b9J\b\u0010:\u001a\u000204H\u0002J\u001d\u0010;\u001a\u0002042\u0006\u0010<\u001a\u00020\u00002\u0006\u0010=\u001a\u00020>H\u0010¢\u0006\u0002\b?J\u001f\u0010@\u001a\u0002042\u0006\u0010<\u001a\u00020\u00002\b\u00105\u001a\u0004\u0018\u00010\u0005H\u0010¢\u0006\u0002\bAR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\f8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\"\u0010\u001a\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\u00020\u001eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\"\u0010!\u001a\u0004\u0018\u00010\u00052\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001cR\u001c\u0010$\u001a\u00020%8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020%X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010)R\u0014\u0010,\u001a\u00020%X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010)¨\u0006B"}, d2 = {"Lcom/vungle/ads/BaseAd;", "Lcom/vungle/ads/Ad;", "context", "Landroid/content/Context;", o2.i, "", "adConfig", "Lcom/vungle/ads/AdConfig;", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V", "getAdConfig", "()Lcom/vungle/ads/AdConfig;", "adInternal", "Lcom/vungle/ads/internal/AdInternal;", "getAdInternal", "()Lcom/vungle/ads/internal/AdInternal;", "adInternal$delegate", "Lkotlin/Lazy;", "adListener", "Lcom/vungle/ads/BaseAdListener;", "getAdListener", "()Lcom/vungle/ads/BaseAdListener;", "setAdListener", "(Lcom/vungle/ads/BaseAdListener;)V", "getContext", "()Landroid/content/Context;", "<set-?>", "creativeId", "getCreativeId", "()Ljava/lang/String;", "displayToClickMetric", "Lcom/vungle/ads/OneShotTimeIntervalMetric;", "getDisplayToClickMetric$vungle_ads_release", "()Lcom/vungle/ads/OneShotTimeIntervalMetric;", "eventId", "getEventId", "getPlacementId", "requestToResponseMetric", "Lcom/vungle/ads/TimeIntervalMetric;", "getRequestToResponseMetric$vungle_ads_release$annotations", "()V", "getRequestToResponseMetric$vungle_ads_release", "()Lcom/vungle/ads/TimeIntervalMetric;", "responseToShowMetric", "getResponseToShowMetric$vungle_ads_release", "showToDisplayMetric", "getShowToDisplayMetric$vungle_ads_release", "canPlayAd", "", "()Ljava/lang/Boolean;", "constructAdInternal", "constructAdInternal$vungle_ads_release", "load", "", "adMarkup", hc.j, "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "onAdLoaded$vungle_ads_release", "onLoadEnd", "onLoadFailure", "baseAd", "vungleError", "Lcom/vungle/ads/VungleError;", "onLoadFailure$vungle_ads_release", "onLoadSuccess", "onLoadSuccess$vungle_ads_release", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public abstract class BaseAd implements Ad {
    private final AdConfig adConfig;
    private final Lazy adInternal$delegate;
    private BaseAdListener adListener;
    private final Context context;
    private String creativeId;
    private final OneShotTimeIntervalMetric displayToClickMetric;
    private String eventId;
    private final String placementId;
    private final TimeIntervalMetric requestToResponseMetric;
    private final TimeIntervalMetric responseToShowMetric;
    private final TimeIntervalMetric showToDisplayMetric;

    /* JADX INFO: compiled from: BaseAd.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vungle/ads/internal/AdInternal;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class a extends Lambda implements Function0<AdInternal> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final AdInternal invoke() {
            BaseAd baseAd = BaseAd.this;
            return baseAd.constructAdInternal$vungle_ads_release(baseAd.getContext());
        }
    }

    /* JADX INFO: compiled from: BaseAd.kt */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"com/vungle/ads/BaseAd$load$1", "Lcom/vungle/ads/internal/load/AdLoaderCallback;", "onFailure", "", "error", "Lcom/vungle/ads/VungleError;", "onSuccess", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b implements AdLoaderCallback {
        final /* synthetic */ String $adMarkup;

        b(String str) {
            this.$adMarkup = str;
        }

        @Override // com.vungle.ads.internal.load.AdLoaderCallback
        public void onFailure(VungleError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            BaseAd baseAd = BaseAd.this;
            baseAd.onLoadFailure$vungle_ads_release(baseAd, error);
        }

        @Override // com.vungle.ads.internal.load.AdLoaderCallback
        public void onSuccess(AdPayload advertisement) {
            Intrinsics.checkNotNullParameter(advertisement, "advertisement");
            BaseAd.this.onAdLoaded$vungle_ads_release(advertisement);
            BaseAd baseAd = BaseAd.this;
            baseAd.onLoadSuccess$vungle_ads_release(baseAd, this.$adMarkup);
        }
    }

    public BaseAd(Context context, String placementId, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.context = context;
        this.placementId = placementId;
        this.adConfig = adConfig;
        this.adInternal$delegate = LazyKt__LazyJVMKt.lazy(new a());
        this.requestToResponseMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_REQUEST_TO_RESPONSE_DURATION_MS);
        this.responseToShowMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_RESPONSE_TO_SHOW_DURATION_MS);
        this.showToDisplayMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_SHOW_TO_DISPLAY_DURATION_MS);
        this.displayToClickMetric = new OneShotTimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_DISPLAY_TO_CLICK_DURATION_MS);
    }

    @VisibleForTesting(otherwise = 2)
    public static /* synthetic */ void getRequestToResponseMetric$vungle_ads_release$annotations() {
    }

    private final void onLoadEnd() {
        this.requestToResponseMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.requestToResponseMetric, this.placementId, this.creativeId, this.eventId, (String) null, 16, (Object) null);
        this.responseToShowMetric.markStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onLoadFailure$lambda-1, reason: not valid java name */
    public static final void m1097onLoadFailure$lambda1(BaseAd this$0, VungleError vungleError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(vungleError, "$vungleError");
        BaseAdListener baseAdListener = this$0.adListener;
        if (baseAdListener != null) {
            baseAdListener.onAdFailedToLoad(this$0, vungleError);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onLoadSuccess$lambda-0, reason: not valid java name */
    public static final void m1098onLoadSuccess$lambda0(BaseAd this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseAdListener baseAdListener = this$0.adListener;
        if (baseAdListener != null) {
            baseAdListener.onAdLoaded(this$0);
        }
    }

    @Override // com.vungle.ads.Ad
    public Boolean canPlayAd() {
        return Boolean.valueOf(AdInternal.canPlayAd$default(getAdInternal(), false, 1, null) == null);
    }

    public abstract AdInternal constructAdInternal$vungle_ads_release(Context context);

    public final AdConfig getAdConfig() {
        return this.adConfig;
    }

    public final AdInternal getAdInternal() {
        return (AdInternal) this.adInternal$delegate.getValue();
    }

    public final BaseAdListener getAdListener() {
        return this.adListener;
    }

    public final Context getContext() {
        return this.context;
    }

    public final String getCreativeId() {
        return this.creativeId;
    }

    public final OneShotTimeIntervalMetric getDisplayToClickMetric$vungle_ads_release() {
        return this.displayToClickMetric;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final TimeIntervalMetric getRequestToResponseMetric$vungle_ads_release() {
        return this.requestToResponseMetric;
    }

    public final TimeIntervalMetric getResponseToShowMetric$vungle_ads_release() {
        return this.responseToShowMetric;
    }

    public final TimeIntervalMetric getShowToDisplayMetric$vungle_ads_release() {
        return this.showToDisplayMetric;
    }

    @Override // com.vungle.ads.Ad
    public void load(String str) {
        this.requestToResponseMetric.markStart();
        getAdInternal().loadAd(this.placementId, str, new b(str));
    }

    public void onAdLoaded$vungle_ads_release(AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        advertisement.setAdConfig(this.adConfig);
        this.creativeId = advertisement.getCreativeId();
        this.eventId = advertisement.eventId();
    }

    public void onLoadFailure$vungle_ads_release(BaseAd baseAd, final VungleError vungleError) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(vungleError, "vungleError");
        ThreadUtil.INSTANCE.runOnUiThread(new Runnable() { // from class: com.vungle.ads.m
            @Override // java.lang.Runnable
            public final void run() {
                BaseAd.m1097onLoadFailure$lambda1(this.a, vungleError);
            }
        });
        onLoadEnd();
    }

    public void onLoadSuccess$vungle_ads_release(BaseAd baseAd, String str) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        ThreadUtil.INSTANCE.runOnUiThread(new Runnable() { // from class: com.vungle.ads.n
            @Override // java.lang.Runnable
            public final void run() {
                BaseAd.m1098onLoadSuccess$lambda0(this.a);
            }
        });
        onLoadEnd();
    }

    public final void setAdListener(BaseAdListener baseAdListener) {
        this.adListener = baseAdListener;
    }
}
