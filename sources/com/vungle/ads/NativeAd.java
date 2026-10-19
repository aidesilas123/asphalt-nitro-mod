package com.vungle.ads;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.hc;
import com.json.o2;
import com.vungle.ads.NativeAd;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.ImpressionTracker;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.NativeAdPresenter;
import com.vungle.ads.internal.presenter.NativePresenterDelegate;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.WatermarkView;
import com.vungle.ads.internal.ui.view.MediaView;
import com.vungle.ads.internal.util.ImageLoader;
import com.vungle.ads.internal.util.ThreadUtil;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
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
/* JADX INFO: compiled from: NativeAd.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009d\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t*\u0001\u0019\u0018\u0000 V2\u00020\u0001:\u0002UVB\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u001f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0015\u00104\u001a\u0002052\u0006\u0010\u0002\u001a\u00020\u0003H\u0010¢\u0006\u0002\b6J\u001c\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u00052\b\u0010:\u001a\u0004\u0018\u00010\rH\u0002J\u0006\u0010;\u001a\u00020\u0005J\u0006\u0010<\u001a\u00020\u0005J\u0006\u0010=\u001a\u00020\u0005J\r\u0010>\u001a\u0004\u0018\u00010?¢\u0006\u0002\u0010@J\u0006\u0010A\u001a\u00020\u0005J\u0006\u0010B\u001a\u00020\u0005J\r\u0010C\u001a\u00020\u0005H\u0000¢\u0006\u0002\bDJ\b\u0010E\u001a\u00020\u0005H\u0002J\r\u0010F\u001a\u00020\u0005H\u0000¢\u0006\u0002\bGJ\r\u0010H\u001a\u00020\u0005H\u0000¢\u0006\u0002\bIJ\u0006\u0010J\u001a\u00020KJ\u0015\u0010L\u001a\u0002082\u0006\u0010M\u001a\u00020NH\u0010¢\u0006\u0002\bOJ\u0006\u0010P\u001a\u000208J0\u0010Q\u001a\u0002082\u0006\u0010R\u001a\u00020\u001c2\u0006\u0010S\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eJ\u0006\u0010T\u001a\u000208R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b\"\u0010#R\u001b\u0010&\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010%\u001a\u0004\b(\u0010)R\u001b\u0010+\u001a\u00020,8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010%\u001a\u0004\b-\u0010.R\u001c\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u000101X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006W"}, d2 = {"Lcom/vungle/ads/NativeAd;", "Lcom/vungle/ads/BaseAd;", "context", "Landroid/content/Context;", o2.i, "", "(Landroid/content/Context;Ljava/lang/String;)V", "adConfig", "Lcom/vungle/ads/AdConfig;", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V", "adContentView", "Lcom/vungle/ads/internal/ui/view/MediaView;", "adIconView", "Landroid/widget/ImageView;", "adOptionsPosition", "", "getAdOptionsPosition$annotations", "()V", "getAdOptionsPosition", "()I", "setAdOptionsPosition", "(I)V", "adOptionsView", "Lcom/vungle/ads/NativeAdOptionsView;", "adPlayCallback", "com/vungle/ads/NativeAd$adPlayCallback$1", "Lcom/vungle/ads/NativeAd$adPlayCallback$1;", "adRootView", "Landroid/widget/FrameLayout;", "clickableViews", "", "Landroid/view/View;", "executors", "Lcom/vungle/ads/internal/executor/Executors;", "getExecutors", "()Lcom/vungle/ads/internal/executor/Executors;", "executors$delegate", "Lkotlin/Lazy;", "imageLoader", "Lcom/vungle/ads/internal/util/ImageLoader;", "getImageLoader", "()Lcom/vungle/ads/internal/util/ImageLoader;", "imageLoader$delegate", "impressionTracker", "Lcom/vungle/ads/internal/ImpressionTracker;", "getImpressionTracker", "()Lcom/vungle/ads/internal/ImpressionTracker;", "impressionTracker$delegate", "nativeAdAssetMap", "", "presenter", "Lcom/vungle/ads/internal/presenter/NativeAdPresenter;", "constructAdInternal", "Lcom/vungle/ads/NativeAdInternal;", "constructAdInternal$vungle_ads_release", "displayImage", "", "path", "imageView", "getAdBodyText", "getAdCallToActionText", "getAdSponsoredText", "getAdStarRating", "", "()Ljava/lang/Double;", "getAdTitle", "getAppIcon", "getCtaUrl", "getCtaUrl$vungle_ads_release", "getMainImagePath", "getPrivacyIconUrl", "getPrivacyIconUrl$vungle_ads_release", "getPrivacyUrl", "getPrivacyUrl$vungle_ads_release", "hasCallToAction", "", hc.j, "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "onAdLoaded$vungle_ads_release", "performCTA", "registerViewForInteraction", "rootView", "mediaView", "unregisterView", "AdOptionsPosition", "Companion", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class NativeAd extends BaseAd {
    public static final int BOTTOM_LEFT = 2;
    public static final int BOTTOM_RIGHT = 3;
    public static final a Companion = new a(null);
    public static final int TOP_LEFT = 0;
    public static final int TOP_RIGHT = 1;
    private MediaView adContentView;
    private ImageView adIconView;
    private int adOptionsPosition;
    private NativeAdOptionsView adOptionsView;
    private final b adPlayCallback;
    private FrameLayout adRootView;
    private Collection<? extends View> clickableViews;
    private final Lazy executors$delegate;
    private final Lazy imageLoader$delegate;
    private final Lazy impressionTracker$delegate;
    private Map<String, String> nativeAdAssetMap;
    private NativeAdPresenter presenter;

    /* JADX INFO: compiled from: NativeAd.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/vungle/ads/NativeAd$Companion;", "", "()V", "BOTTOM_LEFT", "", "BOTTOM_RIGHT", "TOP_LEFT", "TOP_RIGHT", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: NativeAd.kt */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"com/vungle/ads/NativeAd$adPlayCallback$1", "Lcom/vungle/ads/internal/presenter/AdPlayCallback;", "onAdClick", "", "id", "", "onAdEnd", "onAdImpression", hc.k, hc.i, "onAdStart", "onFailure", "error", "Lcom/vungle/ads/VungleError;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class b implements AdPlayCallback {
        final /* synthetic */ String $placementId;

        b(String str) {
            this.$placementId = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdClick$lambda-3, reason: not valid java name */
        public static final void m1102onAdClick$lambda3(NativeAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdClicked(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdEnd$lambda-2, reason: not valid java name */
        public static final void m1103onAdEnd$lambda2(NativeAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdEnd(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdImpression$lambda-1, reason: not valid java name */
        public static final void m1104onAdImpression$lambda1(NativeAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdImpression(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdLeftApplication$lambda-4, reason: not valid java name */
        public static final void m1105onAdLeftApplication$lambda4(NativeAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdLeftApplication(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdStart$lambda-0, reason: not valid java name */
        public static final void m1106onAdStart$lambda0(NativeAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdStart(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onFailure$lambda-5, reason: not valid java name */
        public static final void m1107onFailure$lambda5(NativeAd this$0, VungleError error) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(error, "$error");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToPlay(this$0, error);
            }
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdClick(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final NativeAd nativeAd = NativeAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.y
                @Override // java.lang.Runnable
                public final void run() {
                    NativeAd.b.m1102onAdClick$lambda3(nativeAd);
                }
            });
            NativeAd.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(NativeAd.this.getDisplayToClickMetric$vungle_ads_release(), (16 & 2) != 0 ? null : this.$placementId, (16 & 4) != 0 ? null : NativeAd.this.getCreativeId(), (16 & 8) != 0 ? null : NativeAd.this.getEventId(), (16 & 16) != 0 ? null : null);
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdEnd(String id) {
            NativeAd.this.getAdInternal().setAdState(AdInternal.AdState.FINISHED);
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final NativeAd nativeAd = NativeAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.a0
                @Override // java.lang.Runnable
                public final void run() {
                    NativeAd.b.m1103onAdEnd$lambda2(nativeAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdImpression(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final NativeAd nativeAd = NativeAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.b0
                @Override // java.lang.Runnable
                public final void run() {
                    NativeAd.b.m1104onAdImpression$lambda1(nativeAd);
                }
            });
            NativeAd.this.getShowToDisplayMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, NativeAd.this.getShowToDisplayMetric$vungle_ads_release(), this.$placementId, NativeAd.this.getCreativeId(), NativeAd.this.getEventId(), (String) null, 16, (Object) null);
            NativeAd.this.getDisplayToClickMetric$vungle_ads_release().markStart();
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdLeftApplication(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final NativeAd nativeAd = NativeAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.d0
                @Override // java.lang.Runnable
                public final void run() {
                    NativeAd.b.m1105onAdLeftApplication$lambda4(nativeAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdRewarded(String id) {
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdStart(String id) {
            NativeAd.this.getAdInternal().setAdState(AdInternal.AdState.PLAYING);
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final NativeAd nativeAd = NativeAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.c0
                @Override // java.lang.Runnable
                public final void run() {
                    NativeAd.b.m1106onAdStart$lambda0(nativeAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onFailure(final VungleError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            NativeAd.this.getAdInternal().setAdState(AdInternal.AdState.ERROR);
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final NativeAd nativeAd = NativeAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.z
                @Override // java.lang.Runnable
                public final void run() {
                    NativeAd.b.m1107onFailure$lambda5(nativeAd, error);
                }
            });
        }
    }

    /* JADX INFO: compiled from: NativeAd.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Landroid/graphics/Bitmap;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class c extends Lambda implements Function1<Bitmap, kotlin.v> {
        final /* synthetic */ ImageView $imageView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(ImageView imageView) {
            super(1);
            this.$imageView = imageView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: invoke$lambda-0, reason: not valid java name */
        public static final void m1108invoke$lambda0(ImageView imageView, Bitmap it) {
            Intrinsics.checkNotNullParameter(it, "$it");
            imageView.setImageBitmap(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(Bitmap bitmap) {
            invoke2(bitmap);
            return kotlin.v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(final Bitmap it) {
            Intrinsics.checkNotNullParameter(it, "it");
            final ImageView imageView = this.$imageView;
            if (imageView != null) {
                ThreadUtil.INSTANCE.runOnUiThread(new Runnable() { // from class: com.vungle.ads.e0
                    @Override // java.lang.Runnable
                    public final void run() {
                        NativeAd.c.m1108invoke$lambda0(imageView, it);
                    }
                });
            }
        }
    }

    /* JADX INFO: compiled from: NativeAd.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vungle/ads/internal/util/ImageLoader;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class d extends Lambda implements Function0<ImageLoader> {
        d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ImageLoader invoke() {
            ImageLoader companion = ImageLoader.INSTANCE.getInstance();
            companion.init(NativeAd.this.getExecutors().getIO_EXECUTOR());
            return companion;
        }
    }

    /* JADX INFO: compiled from: NativeAd.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/vungle/ads/internal/ImpressionTracker;", "invoke"}, mv = {1, 7, 1}, xi = 48)
    static final class e extends Lambda implements Function0<ImpressionTracker> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final ImpressionTracker invoke() {
            return new ImpressionTracker(this.$context);
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NativeAd(Context context, String placementId) throws InternalError {
        this(context, placementId, new AdConfig());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        if (context instanceof Application) {
            throw new InternalError(-1000, "Activity context is required to create NativeAd instance.");
        }
    }

    private NativeAd(Context context, String str, AdConfig adConfig) {
        super(context, str, adConfig);
        this.imageLoader$delegate = LazyKt__LazyJVMKt.lazy(new d());
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        this.executors$delegate = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.a, (Function0) new f(context));
        this.impressionTracker$delegate = LazyKt__LazyJVMKt.lazy(new e(context));
        this.adOptionsPosition = 1;
        this.adOptionsView = new NativeAdOptionsView(context);
        this.adPlayCallback = new b(str);
    }

    private final void displayImage(String str, ImageView imageView) {
        getImageLoader().displayImage(str, new c(imageView));
    }

    public static /* synthetic */ void getAdOptionsPosition$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Executors getExecutors() {
        return (Executors) this.executors$delegate.getValue();
    }

    private final ImageLoader getImageLoader() {
        return (ImageLoader) this.imageLoader$delegate.getValue();
    }

    private final ImpressionTracker getImpressionTracker() {
        return (ImpressionTracker) this.impressionTracker$delegate.getValue();
    }

    private final String getMainImagePath() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_MAIN_IMAGE)) == null) ? "" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerViewForInteraction$lambda-1, reason: not valid java name */
    public static final void m1099registerViewForInteraction$lambda1(NativeAd this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NativeAdPresenter nativeAdPresenter = this$0.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand("openPrivacy", this$0.getPrivacyUrl$vungle_ads_release());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerViewForInteraction$lambda-3$lambda-2, reason: not valid java name */
    public static final void m1100registerViewForInteraction$lambda3$lambda2(NativeAd this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NativeAdPresenter nativeAdPresenter = this$0.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand("download", this$0.getCtaUrl$vungle_ads_release());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: registerViewForInteraction$lambda-4, reason: not valid java name */
    public static final void m1101registerViewForInteraction$lambda4(NativeAd this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        NativeAdPresenter nativeAdPresenter = this$0.presenter;
        if (nativeAdPresenter != null) {
            NativeAdPresenter.processCommand$default(nativeAdPresenter, "videoViewed", null, 2, null);
        }
        NativeAdPresenter nativeAdPresenter2 = this$0.presenter;
        if (nativeAdPresenter2 != null) {
            nativeAdPresenter2.processCommand("tpat", "checkpoint.0");
        }
        NativeAdPresenter nativeAdPresenter3 = this$0.presenter;
        if (nativeAdPresenter3 != null) {
            nativeAdPresenter3.onImpression();
        }
    }

    @Override // com.vungle.ads.BaseAd
    public NativeAdInternal constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new NativeAdInternal(context);
    }

    public final String getAdBodyText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_DESCRIPTION)) == null) ? "" : str;
    }

    public final String getAdCallToActionText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_CTA_BUTTON_TEXT)) == null) ? "" : str;
    }

    public final int getAdOptionsPosition() {
        return this.adOptionsPosition;
    }

    public final String getAdSponsoredText() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_SPONSORED_BY)) == null) ? "" : str;
    }

    public final Double getAdStarRating() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        if (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_RATING_VALUE)) == null) {
            str = "";
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Double.valueOf(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public final String getAdTitle() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_NAME)) == null) ? "" : str;
    }

    public final String getAppIcon() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_APP_ICON)) == null) ? "" : str;
    }

    public final String getCtaUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_CTA_BUTTON_URL)) == null) ? "" : str;
    }

    public final String getPrivacyIconUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_VUNGLE_PRIVACY_ICON_URL)) == null) ? "" : str;
    }

    public final String getPrivacyUrl$vungle_ads_release() {
        String str;
        Map<String, String> map = this.nativeAdAssetMap;
        return (map == null || (str = map.get(NativeAdInternal.TOKEN_VUNGLE_PRIVACY_URL)) == null) ? "" : str;
    }

    public final boolean hasCallToAction() {
        return getCtaUrl$vungle_ads_release().length() > 0;
    }

    @Override // com.vungle.ads.BaseAd
    public void onAdLoaded$vungle_ads_release(AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        super.onAdLoaded$vungle_ads_release(advertisement);
        this.nativeAdAssetMap = advertisement.getMRAIDArgsInMap();
    }

    public final void performCTA() {
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.processCommand("download", getCtaUrl$vungle_ads_release());
        }
    }

    public final void registerViewForInteraction(FrameLayout rootView, MediaView mediaView, ImageView imageView, Collection<? extends View> collection) {
        String str;
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Intrinsics.checkNotNullParameter(mediaView, "mediaView");
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        analyticsClient.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), (16 & 2) != 0 ? null : getPlacementId(), (16 & 4) != 0 ? null : getCreativeId(), (16 & 8) != 0 ? null : getEventId(), (16 & 16) != 0 ? null : null);
        VungleError vungleErrorCanPlayAd = getAdInternal().canPlayAd(true);
        if (vungleErrorCanPlayAd != null) {
            if (getAdInternal().isErrorTerminal$vungle_ads_release(vungleErrorCanPlayAd.getCode())) {
                getAdInternal().setAdState(AdInternal.AdState.ERROR);
                Map<String, String> map = this.nativeAdAssetMap;
                if (map != null) {
                    map.clear();
                }
            }
            BaseAdListener adListener = getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToPlay(this, vungleErrorCanPlayAd);
                return;
            }
            return;
        }
        getResponseToShowMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getPlacementId(), getCreativeId(), getEventId(), (String) null, 16, (Object) null);
        getShowToDisplayMetric$vungle_ads_release().markStart();
        this.adRootView = rootView;
        this.adContentView = mediaView;
        this.adIconView = imageView;
        this.clickableViews = collection;
        Context context = getContext();
        Object adInternal = getAdInternal();
        Intrinsics.checkNotNull(adInternal, "null cannot be cast to non-null type com.vungle.ads.internal.presenter.NativePresenterDelegate");
        this.presenter = new NativeAdPresenter(context, (NativePresenterDelegate) adInternal, getAdInternal().getAdvertisement(), getExecutors().getJOB_EXECUTOR());
        Map<String, String> map2 = this.nativeAdAssetMap;
        if (map2 == null || (str = map2.get(NativeAdInternal.TOKEN_OM_SDK_DATA)) == null) {
            str = "";
        }
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.initOMTracker(str);
        }
        NativeAdPresenter nativeAdPresenter2 = this.presenter;
        if (nativeAdPresenter2 != null) {
            nativeAdPresenter2.startTracking(rootView);
        }
        NativeAdPresenter nativeAdPresenter3 = this.presenter;
        if (nativeAdPresenter3 != null) {
            nativeAdPresenter3.setEventListener(new AdEventListener(this.adPlayCallback, getAdInternal().getPlacement()));
        }
        this.adOptionsView.setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NativeAd.m1099registerViewForInteraction$lambda1(this.a, view);
            }
        });
        if (collection == null) {
            collection = CollectionsKt__CollectionsJVMKt.listOf(mediaView);
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setOnClickListener(new View.OnClickListener() { // from class: com.vungle.ads.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NativeAd.m1100registerViewForInteraction$lambda3$lambda2(this.a, view);
                }
            });
        }
        this.adOptionsView.renderTo(rootView, this.adOptionsPosition);
        getImpressionTracker().addView(rootView, new ImpressionTracker.b() { // from class: com.vungle.ads.w
            @Override // com.vungle.ads.internal.ImpressionTracker.b
            public final void onImpression(View view) {
                NativeAd.m1101registerViewForInteraction$lambda4(this.a, view);
            }
        });
        displayImage(getMainImagePath(), mediaView.getMainImage$vungle_ads_release());
        displayImage(getAppIcon(), imageView);
        displayImage(getPrivacyIconUrl$vungle_ads_release(), this.adOptionsView.getPrivacyIcon$vungle_ads_release());
        String watermark$vungle_ads_release = getAdConfig().getWatermark$vungle_ads_release();
        if (watermark$vungle_ads_release != null) {
            Context context2 = rootView.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "rootView.context");
            WatermarkView watermarkView = new WatermarkView(context2, watermark$vungle_ads_release);
            rootView.addView(watermarkView);
            watermarkView.bringToFront();
        }
        NativeAdPresenter nativeAdPresenter4 = this.presenter;
        if (nativeAdPresenter4 != null) {
            nativeAdPresenter4.prepare();
        }
    }

    public final void setAdOptionsPosition(int i) {
        this.adOptionsPosition = i;
    }

    public final void unregisterView() {
        if (getAdInternal().getAdState() == AdInternal.AdState.FINISHED) {
            return;
        }
        Collection<? extends View> collection = this.clickableViews;
        if (collection != null) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                ((View) it.next()).setOnClickListener(null);
            }
        }
        Map<String, String> map = this.nativeAdAssetMap;
        if (map != null) {
            map.clear();
        }
        getImpressionTracker().destroy();
        MediaView mediaView = this.adContentView;
        if (mediaView != null) {
            mediaView.destroy();
        }
        this.adOptionsView.destroy();
        NativeAdPresenter nativeAdPresenter = this.presenter;
        if (nativeAdPresenter != null) {
            nativeAdPresenter.detach();
        }
    }
}
