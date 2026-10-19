package com.hyprmx.android.sdk.banner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.banner.HyprMXBannerSize;
import com.hyprmx.android.sdk.core.HyprMX;
import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.hyprmx.android.sdk.core.HyprMXIf;
import com.hyprmx.android.sdk.core.HyprMXState;
import com.hyprmx.android.sdk.core.t;
import com.hyprmx.android.sdk.overlay.j;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.a1;
import com.hyprmx.android.sdk.utility.w;
import com.json.hc;
import com.json.o2;
import com.json.z5;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.x;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\bB.\b\u0007\u0012\b\u0010\u009a\u0001\u001a\u00030\u008b\u0001\u0012\f\b\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u0001\u0012\t\b\u0002\u0010\u009d\u0001\u001a\u00020\u001b¢\u0006\u0006\b\u009e\u0001\u0010\u009f\u0001B4\b\u0017\u0012\b\u0010\u009a\u0001\u001a\u00030\u008b\u0001\u0012\f\b\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u0001\u0012\u0006\u0010y\u001a\u00020\u000f\u0012\u0007\u0010\u0080\u0001\u001a\u00020\u007f¢\u0006\u0006\b\u009e\u0001\u0010 \u0001J\u0012\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\n\u001a\u00020\tH\u0002J\b\u0010\r\u001a\u00020\u000bH\u0002J\b\u0010\u000e\u001a\u00020\u000bH\u0002J\u001b\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0096Aø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0097\u0001J\t\u0010\u0015\u001a\u00020\u000bH\u0096\u0001J\u0011\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0097\u0001J\u0011\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0097\u0001J\u0011\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000fH\u0096\u0001J\u0011\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0096\u0001J\u0011\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0097\u0001J\b\u0010\u001e\u001a\u00020\u000bH\u0017J\b\u0010\u001f\u001a\u00020\u000bH\u0017J\b\u0010 \u001a\u00020\u000bH\u0016J\b\u0010!\u001a\u00020\u000bH\u0014J\b\u0010\"\u001a\u00020\u000bH\u0014J\b\u0010#\u001a\u00020\u000bH\u0016J\u0010\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$H\u0016J\b\u0010'\u001a\u00020\u000bH\u0016J\b\u0010(\u001a\u00020\u000bH\u0016J\b\u0010)\u001a\u00020\u000bH\u0016J\b\u0010*\u001a\u00020\u000bH\u0016J\b\u0010+\u001a\u00020\u000bH\u0016J\b\u0010,\u001a\u00020\u000bH\u0016J0\u00102\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u001b2\u0006\u00101\u001a\u00020\u001bH\u0014J\u0018\u00106\u001a\u00020\u000b2\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u001bH\u0014J\u0018\u0010:\u001a\u00020\u000b2\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u00020\u001bH\u0016J\b\u0010;\u001a\u00020\u000bH\u0016Jh\u0010I\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\u001b2\u0006\u0010>\u001a\u00020\u001b2\u0006\u0010?\u001a\u00020\u001b2\u0006\u0010@\u001a\u00020\u001b2\u0006\u0010A\u001a\u00020\t2\u0006\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020\u001b2\u0006\u0010G\u001a\u00020F2\u0006\u0010H\u001a\u00020\tH\u0016J\u0010\u0010J\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R$\u0010L\u001a\u0004\u0018\u00010K8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bL\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010QR$\u0010S\u001a\u0004\u0018\u00010R8@@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR+\u0010`\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\bZ\u0010[\u001a\u0004\b\\\u0010]\"\u0004\b^\u0010_R\"\u0010b\u001a\u00020a8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bb\u0010c\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\"\u0010i\u001a\u00020h8\u0000@\u0000X\u0080.¢\u0006\u0012\n\u0004\bi\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\u0018\u0010p\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010qR$\u0010s\u001a\u0004\u0018\u00010r8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\bs\u0010t\u001a\u0004\bu\u0010v\"\u0004\bw\u0010xR\"\u0010y\u001a\u00020\u000f8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R+\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0016@\u0016X\u0097\u000e¢\u0006\u0018\n\u0006\b\u0080\u0001\u0010\u0081\u0001\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001\"\u0006\b\u0084\u0001\u0010\u0085\u0001R(\u0010\u0086\u0001\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t8\u0000@BX\u0080\u000e¢\u0006\u000f\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0005\b\u0088\u0001\u0010]R\u001f\u0010\u0089\u0001\u001a\u00020\t8\u0016@\u0016X\u0096\u000f¢\u0006\u000e\u001a\u0005\b\u0089\u0001\u0010]\"\u0005\b\u008a\u0001\u0010_R$\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0016@\u0016X\u0096\u000f¢\u0006\u0010\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001\"\u0006\b\u008e\u0001\u0010\u008f\u0001R#\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0096\u000f¢\u0006\u0010\u001a\u0006\b\u0091\u0001\u0010\u0092\u0001\"\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0016X\u0096\u0005¢\u0006\b\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006¡\u0001"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;", "Landroid/widget/FrameLayout;", "Lcom/hyprmx/android/sdk/banner/f;", "Lcom/hyprmx/android/sdk/overlay/i;", "", "Lcom/hyprmx/android/sdk/overlay/j$a;", "Lcom/hyprmx/android/sdk/banner/j;", "Lkotlinx/coroutines/CoroutineScope;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerAd;", "", o2.a.f6463e, "", "prepareWebView", "trackContainerVisibility", "updateWebViewSize", "", "url", "asyncSavePhoto", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data", "createCalendarEvent", "hyprMXBrowserClosed", "openOutsideApplication", "openShareSheet", "viewModelIdentifier", "showHyprMXBrowser", "showPlatformBrowser", "", "resourceId", "showToast", "loadAd", "destroy", "cleanup", "onAttachedToWindow", "onDetachedFromWindow", "loadAdSuccess", "Lcom/hyprmx/android/sdk/core/HyprMXErrors;", "error", "loadAdFailure", hc.f6149f, "reloadWebView", "removePresenter", "onOutsideAppPresented", "onHyprMXBrowserPresented", "onHyprMXBrowserClosed", "changed", "left", ViewHierarchyConstants.DIMENSION_TOP_KEY, TtmlNode.RIGHT, "bottom", "onLayout", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "", "rate", "opacityThresholdPercent", "startVisibilityTracking", "stopVisibilityTracking", z5.m, "visibleHeight", "visibleWidth", "actualHeight", "actualWidth", "fullyVisible", "partiallyVisible", "fullyOffscreen", "onScreenX", "onScreenY", "", "alpha", "parentAlphaPassesThreshold", "onVisibleEvent", "storePicture", "Lcom/hyprmx/android/sdk/banner/e;", "presenter", "Lcom/hyprmx/android/sdk/banner/e;", "getPresenter$HyprMX_Mobile_Android_SDK_release", "()Lcom/hyprmx/android/sdk/banner/e;", "setPresenter$HyprMX_Mobile_Android_SDK_release", "(Lcom/hyprmx/android/sdk/banner/e;)V", "Lcom/hyprmx/android/sdk/presentation/j;", "presenterFactory", "Lcom/hyprmx/android/sdk/presentation/j;", "getPresenterFactory$HyprMX_Mobile_Android_SDK_release", "()Lcom/hyprmx/android/sdk/presentation/j;", "setPresenterFactory$HyprMX_Mobile_Android_SDK_release", "(Lcom/hyprmx/android/sdk/presentation/j;)V", "<set-?>", "attachedToWindow$delegate", "Lkotlin/properties/ReadWriteProperty;", "getAttachedToWindow", "()Z", "setAttachedToWindow", "(Z)V", "attachedToWindow", "Lcom/hyprmx/android/sdk/core/HyprMXIf;", "hyprMX", "Lcom/hyprmx/android/sdk/core/HyprMXIf;", "getHyprMX$HyprMX_Mobile_Android_SDK_release", "()Lcom/hyprmx/android/sdk/core/HyprMXIf;", "setHyprMX$HyprMX_Mobile_Android_SDK_release", "(Lcom/hyprmx/android/sdk/core/HyprMXIf;)V", "Lcom/hyprmx/android/sdk/webview/f;", "webView", "Lcom/hyprmx/android/sdk/webview/f;", "getWebView$HyprMX_Mobile_Android_SDK_release", "()Lcom/hyprmx/android/sdk/webview/f;", "setWebView$HyprMX_Mobile_Android_SDK_release", "(Lcom/hyprmx/android/sdk/webview/f;)V", "Lcom/hyprmx/android/sdk/banner/i;", "visibilityTracker", "Lcom/hyprmx/android/sdk/banner/i;", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;", "getListener", "()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;", "setListener", "(Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;)V", "placementName", "Ljava/lang/String;", "getPlacementName", "()Ljava/lang/String;", "setPlacementName", "(Ljava/lang/String;)V", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", o2.h.O, "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "getAdSize", "()Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "setAdSize", "(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V", "useCustomSize", "Z", "getUseCustomSize$HyprMX_Mobile_Android_SDK_release", "isOverlayPresented", "setOverlayPresented", "Landroid/content/Context;", "getOverlayContext", "()Landroid/content/Context;", "setOverlayContext", "(Landroid/content/Context;)V", "overlayContext", "getOverlayListener", "()Lcom/hyprmx/android/sdk/overlay/j$a;", "setOverlayListener", "(Lcom/hyprmx/android/sdk/overlay/j$a;)V", "overlayListener", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class HyprMXBannerView extends FrameLayout implements f, com.hyprmx.android.sdk.overlay.i, j.a, j, CoroutineScope, HyprMXBannerAd {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.mutableProperty1(new x(HyprMXBannerView.class, "attachedToWindow", "getAttachedToWindow()Z", 0))};
    private final /* synthetic */ com.hyprmx.android.sdk.overlay.j $$delegate_0;
    private final /* synthetic */ CoroutineScope $$delegate_1;
    private HyprMXBannerSize adSize;
    private final ReadWriteProperty attachedToWindow$delegate;
    private HyprMXIf hyprMX;
    private HyprMXBannerListener listener;
    private String placementName;
    private e presenter;
    private com.hyprmx.android.sdk.presentation.j presenterFactory;
    private boolean useCustomSize;
    private i visibilityTracker;
    public com.hyprmx.android.sdk.webview.f webView;

    public static final class a extends ObservableProperty<Boolean> {
        public final /* synthetic */ HyprMXBannerView a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Boolean bool, HyprMXBannerView hyprMXBannerView) {
            super(bool);
            this.a = hyprMXBannerView;
        }

        @Override // kotlin.properties.ObservableProperty
        public final void afterChange(KProperty<?> property, Boolean bool, Boolean bool2) {
            Intrinsics.checkNotNullParameter(property, "property");
            boolean zBooleanValue = bool2.booleanValue();
            bool.booleanValue();
            e presenter = this.a.getPresenter();
            if (presenter != null) {
                presenter.a(zBooleanValue);
            }
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerView$storePicture$1", f = "HyprMXBannerView.kt", i = {}, l = {317}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, Continuation<? super b> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return HyprMXBannerView.this.new b(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HyprMXBannerView hyprMXBannerView = HyprMXBannerView.this;
                String str = this.c;
                this.a = 1;
                if (hyprMXBannerView.asyncSavePhoto(str, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HyprMXBannerView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HyprMXBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HyprMXBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.$$delegate_0 = new com.hyprmx.android.sdk.overlay.j(context, false, 6);
        this.$$delegate_1 = CoroutineScopeKt.MainScope();
        Delegates delegates = Delegates.a;
        this.attachedToWindow$delegate = new a(Boolean.FALSE, this);
        this.hyprMX = HyprMX.INSTANCE;
        this.placementName = "";
        if (attributeSet != null) {
            HyprMXBannerSize hyprMXBannerSizeA = a1.a(context, attributeSet);
            if (hyprMXBannerSizeA != null) {
                if (hyprMXBannerSizeA instanceof HyprMXBannerSize.HyprMXAdSizeCustom) {
                    this.useCustomSize = true;
                } else {
                    setAdSize(hyprMXBannerSizeA);
                }
            }
            String strB = a1.b(context, attributeSet);
            if (strB != null) {
                setPlacementName(strB);
            }
        }
        prepareWebView(true);
        setOverlayListener(this);
        this.visibilityTracker = new h(this);
    }

    public /* synthetic */ HyprMXBannerView(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HyprMXBannerView(Context context, AttributeSet attributeSet, String placementName, HyprMXBannerSize adSize) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        setPlacementName(placementName);
        setAdSize(adSize);
    }

    public /* synthetic */ HyprMXBannerView(Context context, AttributeSet attributeSet, String str, HyprMXBannerSize hyprMXBannerSize, int i, n nVar) {
        this(context, (i & 2) != 0 ? null : attributeSet, str, hyprMXBannerSize);
    }

    private final boolean getAttachedToWindow() {
        return ((Boolean) this.attachedToWindow$delegate.getValue(this, $$delegatedProperties[0])).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void prepareWebView(boolean r5) {
        /*
            r4 = this;
            if (r5 != 0) goto L12
            com.hyprmx.android.sdk.webview.f r5 = r4.getWebView$HyprMX_Mobile_Android_SDK_release()
            int r5 = r4.indexOfChild(r5)
            r0 = -1
            if (r5 == r0) goto Lf
            r5 = 1
            goto L10
        Lf:
            r5 = 0
        L10:
            if (r5 != 0) goto L38
        L12:
            com.hyprmx.android.sdk.webview.f r5 = new com.hyprmx.android.sdk.webview.f
            android.content.Context r0 = r4.getContext()
            java.lang.String r1 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            android.content.Context r2 = r4.getContext()
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r1)
            android.webkit.WebView r1 = com.hyprmx.android.sdk.webview.m.a(r2)
            r2 = 0
            r3 = 14
            r5.<init>(r0, r2, r1, r3)
            r4.setWebView$HyprMX_Mobile_Android_SDK_release(r5)
            com.hyprmx.android.sdk.webview.f r5 = r4.getWebView$HyprMX_Mobile_Android_SDK_release()
            r4.addView(r5)
        L38:
            r4.updateWebViewSize()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.banner.HyprMXBannerView.prepareWebView(boolean):void");
    }

    public static /* synthetic */ void prepareWebView$default(HyprMXBannerView hyprMXBannerView, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        hyprMXBannerView.prepareWebView(z);
    }

    private final void setAttachedToWindow(boolean z) {
        this.attachedToWindow$delegate.setValue(this, $$delegatedProperties[0], Boolean.valueOf(z));
    }

    private final void trackContainerVisibility() {
        setTag(Integer.valueOf(getVisibility()));
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.hyprmx.android.sdk.banner.k
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                HyprMXBannerView.trackContainerVisibility$lambda$4(this.a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void trackContainerVisibility$lambda$4(HyprMXBannerView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int visibility = this$0.getVisibility();
        Object tag = this$0.getTag();
        Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type kotlin.Int");
        if (((Integer) tag).intValue() != visibility) {
            this$0.setTag(Integer.valueOf(this$0.getVisibility()));
            e eVar = this$0.presenter;
            if (eVar != null) {
                eVar.a(this$0.getVisibility());
            }
        }
    }

    private final void updateWebViewSize() {
        HyprMXBannerSize adSize = getAdSize();
        if (adSize != null) {
            HyprMXLog.d("Updating webview banner with size: " + adSize.getWidth() + ", " + adSize.getHeight());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(w.a(adSize.getWidth(), getContext()), w.a(adSize.getHeight(), getContext()));
            layoutParams.gravity = 17;
            getWebView$HyprMX_Mobile_Android_SDK_release().setLayoutParams(layoutParams);
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public Object asyncSavePhoto(String str, Continuation<? super v> continuation) {
        return this.$$delegate_0.asyncSavePhoto(str, continuation);
    }

    public void cleanup() {
        setListener(null);
        e eVar = this.presenter;
        if (eVar != null) {
            eVar.L();
        }
        e eVar2 = this.presenter;
        if (eVar2 != null) {
            eVar2.a((com.hyprmx.android.sdk.core.d) null);
        }
        this.presenter = null;
        i iVar = this.visibilityTracker;
        if (iVar != null) {
            iVar.a();
        }
        this.visibilityTracker = null;
        getWebView$HyprMX_Mobile_Android_SDK_release().c();
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void createCalendarEvent(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.$$delegate_0.createCalendarEvent(data);
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public void destroy() {
        cleanup();
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public HyprMXBannerSize getAdSize() {
        return this.adSize;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return this.$$delegate_1.getCoroutineContext();
    }

    /* JADX INFO: renamed from: getHyprMX$HyprMX_Mobile_Android_SDK_release, reason: from getter */
    public final HyprMXIf getHyprMX() {
        return this.hyprMX;
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public HyprMXBannerListener getListener() {
        return this.listener;
    }

    public Context getOverlayContext() {
        return this.$$delegate_0.a;
    }

    public j.a getOverlayListener() {
        return this.$$delegate_0.f4607e;
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public String getPlacementName() {
        return this.placementName;
    }

    /* JADX INFO: renamed from: getPresenter$HyprMX_Mobile_Android_SDK_release, reason: from getter */
    public final e getPresenter() {
        return this.presenter;
    }

    public final com.hyprmx.android.sdk.presentation.j getPresenterFactory$HyprMX_Mobile_Android_SDK_release() {
        com.hyprmx.android.sdk.presentation.j jVar = this.presenterFactory;
        if (jVar != null) {
            return jVar;
        }
        com.hyprmx.android.sdk.core.j jVar2 = t.a.f4521g;
        if (jVar2 != null) {
            return jVar2.a.t();
        }
        return null;
    }

    /* JADX INFO: renamed from: getUseCustomSize$HyprMX_Mobile_Android_SDK_release, reason: from getter */
    public final boolean getUseCustomSize() {
        return this.useCustomSize;
    }

    public final com.hyprmx.android.sdk.webview.f getWebView$HyprMX_Mobile_Android_SDK_release() {
        com.hyprmx.android.sdk.webview.f fVar = this.webView;
        if (fVar != null) {
            return fVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webView");
        return null;
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public void hyprMXBrowserClosed() {
        this.$$delegate_0.hyprMXBrowserClosed();
    }

    public boolean isOverlayPresented() {
        return this.$$delegate_0.f4606d;
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public void loadAd() {
        g gVarA;
        int width = getWidth();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        float fB = w.b(width, context);
        int height = getHeight();
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        float fB2 = w.b(height, context2);
        HyprMXLog.d("\n      HyprMXBannerView.loadAd \n          HyprMX = " + HyprMX.INSTANCE.getInitializationState() + "\n          placementName = " + getPlacementName() + "\n          definedSize = " + getAdSize() + "\n          actualWidth = " + fB + "\n          actualHeight = " + fB2 + "\n          useCustomSize = " + this.useCustomSize + "\n      ");
        if (this.hyprMX.getInitializationState() != HyprMXState.INITIALIZATION_COMPLETE) {
            HyprMXErrors hyprMXErrors = HyprMXErrors.SDK_NOT_INITIALIZED;
            HyprMXLog.e(hyprMXErrors.toString());
            HyprMXBannerListener listener = getListener();
            if (listener != null) {
                listener.onAdFailedToLoad(this, hyprMXErrors);
                return;
            }
            return;
        }
        if (StringsKt__StringsJVMKt.isBlank(getPlacementName())) {
            HyprMXErrors hyprMXErrors2 = HyprMXErrors.PLACEMENT_NAME_NOT_SET;
            HyprMXLog.e(hyprMXErrors2.toString());
            HyprMXBannerListener listener2 = getListener();
            if (listener2 != null) {
                listener2.onAdFailedToLoad(this, hyprMXErrors2);
                return;
            }
            return;
        }
        HyprMXBannerSize adSize = getAdSize();
        if (adSize == null) {
            if (!this.useCustomSize) {
                HyprMXErrors hyprMXErrors3 = HyprMXErrors.AD_SIZE_NOT_SET;
                HyprMXLog.e(hyprMXErrors3.toString());
                HyprMXBannerListener listener3 = getListener();
                if (listener3 != null) {
                    listener3.onAdFailedToLoad(this, hyprMXErrors3);
                    return;
                }
                return;
            }
            adSize = new HyprMXBannerSize.HyprMXAdSizeCustom(MathKt__MathJVMKt.roundToInt(fB), MathKt__MathJVMKt.roundToInt(fB2));
        }
        e eVar = this.presenter;
        if (eVar != null) {
            eVar.a(adSize, fB, fB2);
            return;
        }
        g gVar = null;
        prepareWebView$default(this, false, 1, null);
        com.hyprmx.android.sdk.presentation.j presenterFactory$HyprMX_Mobile_Android_SDK_release = getPresenterFactory$HyprMX_Mobile_Android_SDK_release();
        if (presenterFactory$HyprMX_Mobile_Android_SDK_release != null && (gVarA = presenterFactory$HyprMX_Mobile_Android_SDK_release.a(this, getPlacementName())) != null) {
            int width2 = getWidth();
            Context context3 = getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "context");
            float fB3 = w.b(width2, context3);
            int height2 = getHeight();
            Context context4 = getContext();
            Intrinsics.checkNotNullExpressionValue(context4, "context");
            gVarA.b.a(fB3, w.b(height2, context4));
            gVarA.b.a(getAttachedToWindow());
            gVarA.b.a(getVisibility());
            getWebView$HyprMX_Mobile_Android_SDK_release().b(gVarA.b.a(), null);
            gVarA.a(adSize, fB, fB2);
            gVar = gVarA;
        }
        this.presenter = gVar;
    }

    @Override // com.hyprmx.android.sdk.banner.f
    public void loadAdFailure(HyprMXErrors error) {
        Intrinsics.checkNotNullParameter(error, "error");
        HyprMXBannerListener listener = getListener();
        if (listener != null) {
            listener.onAdFailedToLoad(this, error);
        }
    }

    @Override // com.hyprmx.android.sdk.banner.f
    public void loadAdSuccess() {
        HyprMXBannerListener listener = getListener();
        if (listener != null) {
            listener.onAdLoaded(this);
        }
    }

    @Override // com.hyprmx.android.sdk.banner.f
    public void onAdClicked() {
        HyprMXBannerListener listener = getListener();
        if (listener != null) {
            listener.onAdClicked(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        StringBuilder sb = new StringBuilder("onAttachedToWindow ");
        e eVar = this.presenter;
        sb.append(eVar != null ? eVar.a() : null);
        HyprMXLog.d(sb.toString());
        setAttachedToWindow(true);
        trackContainerVisibility();
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        StringBuilder sb = new StringBuilder("onDetachedFromWindow ");
        e eVar = this.presenter;
        sb.append(eVar != null ? eVar.a() : null);
        HyprMXLog.d(sb.toString());
        setAttachedToWindow(false);
        i iVar = this.visibilityTracker;
        if (iVar != null) {
            iVar.a();
        }
        super.onDetachedFromWindow();
    }

    @Override // com.hyprmx.android.sdk.overlay.j.a
    public void onHyprMXBrowserClosed() {
        HyprMXBannerListener listener = getListener();
        if (listener != null) {
            listener.onAdClosed(this);
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.j.a
    public void onHyprMXBrowserPresented() {
        HyprMXBannerListener listener = getListener();
        if (listener != null) {
            listener.onAdOpened(this);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        if (changed) {
            StringBuilder sb = new StringBuilder("onLayout (");
            int width = getWidth();
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            sb.append(w.b(width, context));
            sb.append(", ");
            int height = getHeight();
            Context context2 = getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "context");
            sb.append(w.b(height, context2));
            sb.append(") for ");
            e eVar = this.presenter;
            sb.append(eVar != null ? eVar.a() : null);
            HyprMXLog.d(sb.toString());
            e eVar2 = this.presenter;
            if (eVar2 != null) {
                int width2 = getWidth();
                Context context3 = getContext();
                Intrinsics.checkNotNullExpressionValue(context3, "context");
                float fB = w.b(width2, context3);
                int height2 = getHeight();
                Context context4 = getContext();
                Intrinsics.checkNotNullExpressionValue(context4, "context");
                eVar2.a(fB, w.b(height2, context4));
            }
        }
        super.onLayout(changed, left, top, right, bottom);
    }

    @Override // com.hyprmx.android.sdk.overlay.j.a
    public void onOutsideAppPresented() {
        HyprMXBannerListener listener = getListener();
        if (listener != null) {
            listener.onAdLeftApplication(this);
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View changedView, int visibility) {
        Intrinsics.checkNotNullParameter(changedView, "changedView");
        super.onVisibilityChanged(changedView, visibility);
        e eVar = this.presenter;
        if (eVar != null) {
            eVar.a(visibility);
        }
    }

    @Override // com.hyprmx.android.sdk.banner.j
    public void onVisibleEvent(boolean isShown, int visibleHeight, int visibleWidth, int actualHeight, int actualWidth, boolean fullyVisible, boolean partiallyVisible, boolean fullyOffscreen, int onScreenX, int onScreenY, float alpha, boolean parentAlphaPassesThreshold) {
        e eVar = this.presenter;
        if (eVar != null) {
            eVar.onVisibleEvent(isShown, visibleHeight, visibleWidth, actualHeight, actualWidth, fullyVisible, partiallyVisible, fullyOffscreen, onScreenX, onScreenY, alpha, parentAlphaPassesThreshold);
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void openOutsideApplication(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.$$delegate_0.openOutsideApplication(url);
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void openShareSheet(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.$$delegate_0.openShareSheet(data);
    }

    @Override // com.hyprmx.android.sdk.banner.f
    public void reloadWebView() {
        removeAllViews();
    }

    @Override // com.hyprmx.android.sdk.banner.f
    public void removePresenter() {
        this.presenter = null;
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public void setAdSize(HyprMXBannerSize hyprMXBannerSize) {
        this.adSize = hyprMXBannerSize;
    }

    public final void setHyprMX$HyprMX_Mobile_Android_SDK_release(HyprMXIf hyprMXIf) {
        Intrinsics.checkNotNullParameter(hyprMXIf, "<set-?>");
        this.hyprMX = hyprMXIf;
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public void setListener(HyprMXBannerListener hyprMXBannerListener) {
        this.listener = hyprMXBannerListener;
    }

    public void setOverlayContext(Context context) {
        this.$$delegate_0.a = context;
    }

    public void setOverlayListener(j.a aVar) {
        this.$$delegate_0.f4607e = aVar;
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public void setOverlayPresented(boolean z) {
        this.$$delegate_0.f4606d = z;
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerAd
    public void setPlacementName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.placementName = str;
    }

    public final void setPresenter$HyprMX_Mobile_Android_SDK_release(e eVar) {
        this.presenter = eVar;
    }

    public final void setPresenterFactory$HyprMX_Mobile_Android_SDK_release(com.hyprmx.android.sdk.presentation.j jVar) {
        this.presenterFactory = jVar;
    }

    public final void setWebView$HyprMX_Mobile_Android_SDK_release(com.hyprmx.android.sdk.webview.f fVar) {
        Intrinsics.checkNotNullParameter(fVar, "<set-?>");
        this.webView = fVar;
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public void showHyprMXBrowser(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        this.$$delegate_0.showHyprMXBrowser(viewModelIdentifier);
    }

    @Override // com.hyprmx.android.sdk.overlay.i
    public void showPlatformBrowser(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.$$delegate_0.showPlatformBrowser(url);
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    @RetainMethodSignature
    public void showToast(int resourceId) {
        this.$$delegate_0.showToast(resourceId);
    }

    @Override // com.hyprmx.android.sdk.banner.f
    public void startVisibilityTracking(long rate, int opacityThresholdPercent) {
        i iVar = this.visibilityTracker;
        if (iVar != null) {
            iVar.a(this, rate, opacityThresholdPercent, this);
        }
    }

    @Override // com.hyprmx.android.sdk.banner.f
    public void stopVisibilityTracking() {
        i iVar = this.visibilityTracker;
        if (iVar != null) {
            iVar.a();
        }
    }

    @Override // com.hyprmx.android.sdk.overlay.i, com.hyprmx.android.sdk.core.a
    public void storePicture(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(url, null), 3, null);
    }
}
