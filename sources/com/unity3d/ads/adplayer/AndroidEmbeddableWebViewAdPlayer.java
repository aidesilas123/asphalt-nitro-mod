package com.unity3d.ads.adplayer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.google.protobuf.ByteString;
import com.json.z5;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.misc.ViewUtilities;
import gateway.v1.AllowedPiiOuterClass;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.flow.Flow;
import org.json.JSONObject;

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
/* JADX INFO: compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J!\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010#J\u0019\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0096Aø\u0001\u0000¢\u0006\u0002\u0010'J\u0019\u0010(\u001a\u00020\n2\u0006\u0010)\u001a\u00020*H\u0096Aø\u0001\u0000¢\u0006\u0002\u0010+J\u0011\u0010,\u001a\u00020\nH\u0096Aø\u0001\u0000¢\u0006\u0002\u0010-J\u0019\u0010.\u001a\u00020\n2\u0006\u0010/\u001a\u000200H\u0096Aø\u0001\u0000¢\u0006\u0002\u00101J\u0019\u00102\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u001aH\u0096Aø\u0001\u0000¢\u0006\u0002\u00103J\u0019\u00104\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u001aH\u0096Aø\u0001\u0000¢\u0006\u0002\u00103J\u0019\u00105\u001a\u00020\n2\u0006\u00106\u001a\u000200H\u0096Aø\u0001\u0000¢\u0006\u0002\u00101J\u0019\u00107\u001a\u00020\n2\u0006\u00108\u001a\u000209H\u0096Aø\u0001\u0000¢\u0006\u0002\u0010:R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u000eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0010R\u0012\u0010\u0014\u001a\u00020\u0015X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R$\u0010\u0018\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u00190\u000eX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006;"}, d2 = {"Lcom/unity3d/ads/adplayer/AndroidEmbeddableWebViewAdPlayer;", "Lcom/unity3d/ads/adplayer/AdPlayer;", "Lcom/unity3d/ads/adplayer/EmbeddableAdPlayer;", "webViewAdPlayer", "Lcom/unity3d/ads/adplayer/WebViewAdPlayer;", "webViewContainer", "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V", "loadEvent", "Lkotlinx/coroutines/Deferred;", "", "getLoadEvent", "()Lkotlinx/coroutines/Deferred;", "markCampaignStateAsShown", "Lkotlinx/coroutines/flow/Flow;", "getMarkCampaignStateAsShown", "()Lkotlinx/coroutines/flow/Flow;", "onShowEvent", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "getOnShowEvent", "scope", "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "updateCampaignState", "Lkotlin/Pair;", "Lcom/google/protobuf/ByteString;", "", "getUpdateCampaignState", "getEmbeddable", "Landroid/view/ViewGroup;", "showOptions", "Lcom/unity3d/ads/adplayer/ShowOptions;", "size", "Lcom/unity3d/services/banners/UnityBannerSize;", "(Lcom/unity3d/ads/adplayer/ShowOptions;Lcom/unity3d/services/banners/UnityBannerSize;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onAllowedPiiChange", "value", "Lgateway/v1/AllowedPiiOuterClass$AllowedPii;", "(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onBroadcastEvent", NotificationCompat.CATEGORY_EVENT, "Lorg/json/JSONObject;", "(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "requestShow", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendMuteChange", "isMuted", "", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendPrivacyFsmChange", "(Lcom/google/protobuf/ByteString;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendUserConsentChange", "sendVisibilityChange", z5.k, "sendVolumeChange", "volume", "", "(DLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class AndroidEmbeddableWebViewAdPlayer implements AdPlayer, EmbeddableAdPlayer {
    private final WebViewAdPlayer webViewAdPlayer;
    private final AndroidWebViewContainer webViewContainer;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidEmbeddableWebViewAdPlayer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroid/widget/RelativeLayout;", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2", f = "AndroidEmbeddableWebViewAdPlayer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super RelativeLayout>, Object> {
        final /* synthetic */ ShowOptions $showOptions;
        final /* synthetic */ UnityBannerSize $size;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ AndroidEmbeddableWebViewAdPlayer this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(ShowOptions showOptions, AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer, UnityBannerSize unityBannerSize, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$showOptions = showOptions;
            this.this$0 = androidEmbeddableWebViewAdPlayer;
            this.$size = unityBannerSize;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$showOptions, this.this$0, this.$size, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super RelativeLayout> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            ShowOptions showOptions = this.$showOptions;
            if (!(showOptions instanceof AndroidShowOptions)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            Context context = ((AndroidShowOptions) showOptions).getContext();
            final RelativeLayout relativeLayout = new RelativeLayout(context);
            final AndroidEmbeddableWebViewAdPlayer androidEmbeddableWebViewAdPlayer = this.this$0;
            UnityBannerSize unityBannerSize = this.$size;
            relativeLayout.setBackgroundColor(0);
            relativeLayout.setGravity(17);
            ViewGroup.LayoutParams layoutParams = relativeLayout.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.width = (int) ViewUtilities.dpFromPx(context, unityBannerSize.getWidth());
            layoutParams2.height = (int) ViewUtilities.dpFromPx(context, unityBannerSize.getHeight());
            relativeLayout.setLayoutParams(layoutParams2);
            relativeLayout.addView(androidEmbeddableWebViewAdPlayer.webViewContainer.getWebView());
            if (ViewCompat.isAttachedToWindow(relativeLayout)) {
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2$bannerContainer$1$2$1(androidEmbeddableWebViewAdPlayer, null), 3, null);
            } else {
                relativeLayout.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2$invokeSuspend$lambda$3$$inlined$doOnAttach$1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                        Intrinsics.checkNotNullParameter(view, "view");
                        relativeLayout.removeOnAttachStateChangeListener(this);
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2$bannerContainer$1$2$1(androidEmbeddableWebViewAdPlayer, null), 3, null);
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                        Intrinsics.checkNotNullParameter(view, "view");
                    }
                });
            }
            if (ViewCompat.isAttachedToWindow(relativeLayout)) {
                relativeLayout.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.unity3d.ads.adplayer.AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2$invokeSuspend$lambda$3$$inlined$doOnDetach$1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                        Intrinsics.checkNotNullParameter(view, "view");
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                        Intrinsics.checkNotNullParameter(view, "view");
                        relativeLayout.removeOnAttachStateChangeListener(this);
                        relativeLayout.removeAllViews();
                        BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2$bannerContainer$1$3$1(androidEmbeddableWebViewAdPlayer, null), 3, null);
                    }
                });
            } else {
                relativeLayout.removeAllViews();
                BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AndroidEmbeddableWebViewAdPlayer$getEmbeddable$2$bannerContainer$1$3$1(androidEmbeddableWebViewAdPlayer, null), 3, null);
            }
            return relativeLayout;
        }
    }

    public AndroidEmbeddableWebViewAdPlayer(WebViewAdPlayer webViewAdPlayer, AndroidWebViewContainer webViewContainer) {
        Intrinsics.checkNotNullParameter(webViewAdPlayer, "webViewAdPlayer");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        this.webViewAdPlayer = webViewAdPlayer;
        this.webViewContainer = webViewContainer;
    }

    @Override // com.unity3d.ads.adplayer.EmbeddableAdPlayer
    public Object getEmbeddable(ShowOptions showOptions, UnityBannerSize unityBannerSize, Continuation<? super ViewGroup> continuation) {
        return CoroutineScopeKt.coroutineScope(new AnonymousClass2(showOptions, this, unityBannerSize, null), continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Deferred<v> getLoadEvent() {
        return this.webViewAdPlayer.getLoadEvent();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Flow<v> getMarkCampaignStateAsShown() {
        return this.webViewAdPlayer.getMarkCampaignStateAsShown();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Flow<ShowEvent> getOnShowEvent() {
        return this.webViewAdPlayer.getOnShowEvent();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public CoroutineScope getScope() {
        return this.webViewAdPlayer.getScope();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Flow<Pair<ByteString, Integer>> getUpdateCampaignState() {
        return this.webViewAdPlayer.getUpdateCampaignState();
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object onAllowedPiiChange(AllowedPiiOuterClass.AllowedPii allowedPii, Continuation<? super v> continuation) {
        return this.webViewAdPlayer.onAllowedPiiChange(allowedPii, continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object onBroadcastEvent(JSONObject jSONObject, Continuation<? super v> continuation) {
        return this.webViewAdPlayer.onBroadcastEvent(jSONObject, continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object requestShow(Continuation<? super v> continuation) {
        return this.webViewAdPlayer.requestShow(continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object sendMuteChange(boolean z, Continuation<? super v> continuation) {
        return this.webViewAdPlayer.sendMuteChange(z, continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object sendPrivacyFsmChange(ByteString byteString, Continuation<? super v> continuation) {
        return this.webViewAdPlayer.sendPrivacyFsmChange(byteString, continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object sendUserConsentChange(ByteString byteString, Continuation<? super v> continuation) {
        return this.webViewAdPlayer.sendUserConsentChange(byteString, continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object sendVisibilityChange(boolean z, Continuation<? super v> continuation) {
        return this.webViewAdPlayer.sendVisibilityChange(z, continuation);
    }

    @Override // com.unity3d.ads.adplayer.AdPlayer
    public Object sendVolumeChange(double d2, Continuation<? super v> continuation) {
        return this.webViewAdPlayer.sendVolumeChange(d2, continuation);
    }
}
