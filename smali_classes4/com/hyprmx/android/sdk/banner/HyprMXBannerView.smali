###### Class com.hyprmx.android.sdk.banner.HyprMXBannerView (com.hyprmx.android.sdk.banner.HyprMXBannerView)
.class public final Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/banner/f;
.implements Lcom/hyprmx/android/sdk/overlay/i;
.implements Lcom/hyprmx/android/sdk/overlay/j$a;
.implements Lcom/hyprmx/android/sdk/banner/j;
.implements Lkotlinx/coroutines/s;
.implements Lcom/hyprmx/android/sdk/banner/HyprMXBannerAd;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\u0008B.\u0008\u0007\u0012\u0008\u0010\u009a\u0001\u001a\u00030\u008b\u0001\u0012\u000c\u0008\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u0001\u0012\t\u0008\u0002\u0010\u009d\u0001\u001a\u00020\u001b\u00a2\u0006\u0006\u0008\u009e\u0001\u0010\u009f\u0001B4\u0008\u0017\u0012\u0008\u0010\u009a\u0001\u001a\u00030\u008b\u0001\u0012\u000c\u0008\u0002\u0010\u009c\u0001\u001a\u0005\u0018\u00010\u009b\u0001\u0012\u0006\u0010y\u001a\u00020\u000f\u0012\u0007\u0010\u0080\u0001\u001a\u00020\u007f\u00a2\u0006\u0006\u0008\u009e\u0001\u0010\u00a0\u0001J\u0012\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\r\u001a\u00020\u000bH\u0002J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\u001b\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0011\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0097\u0001J\t\u0010\u0015\u001a\u00020\u000bH\u0096\u0001J\u0011\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0097\u0001J\u0011\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000fH\u0097\u0001J\u0011\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000fH\u0096\u0001J\u0011\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0096\u0001J\u0011\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0097\u0001J\u0008\u0010\u001e\u001a\u00020\u000bH\u0017J\u0008\u0010\u001f\u001a\u00020\u000bH\u0017J\u0008\u0010 \u001a\u00020\u000bH\u0016J\u0008\u0010!\u001a\u00020\u000bH\u0014J\u0008\u0010\"\u001a\u00020\u000bH\u0014J\u0008\u0010#\u001a\u00020\u000bH\u0016J\u0010\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$H\u0016J\u0008\u0010\'\u001a\u00020\u000bH\u0016J\u0008\u0010(\u001a\u00020\u000bH\u0016J\u0008\u0010)\u001a\u00020\u000bH\u0016J\u0008\u0010*\u001a\u00020\u000bH\u0016J\u0008\u0010+\u001a\u00020\u000bH\u0016J\u0008\u0010,\u001a\u00020\u000bH\u0016J0\u00102\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u001b2\u0006\u00100\u001a\u00020\u001b2\u0006\u00101\u001a\u00020\u001bH\u0014J\u0018\u00106\u001a\u00020\u000b2\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u00020\u001bH\u0014J\u0018\u0010:\u001a\u00020\u000b2\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u00020\u001bH\u0016J\u0008\u0010;\u001a\u00020\u000bH\u0016Jh\u0010I\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\u001b2\u0006\u0010>\u001a\u00020\u001b2\u0006\u0010?\u001a\u00020\u001b2\u0006\u0010@\u001a\u00020\u001b2\u0006\u0010A\u001a\u00020\t2\u0006\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\u001b2\u0006\u0010E\u001a\u00020\u001b2\u0006\u0010G\u001a\u00020F2\u0006\u0010H\u001a\u00020\tH\u0016J\u0010\u0010J\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016R$\u0010L\u001a\u0004\u0018\u00010K8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR$\u0010S\u001a\u0004\u0018\u00010R8@@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010T\u001a\u0004\u0008U\u0010V\"\u0004\u0008W\u0010XR+\u0010`\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008Z\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_R\"\u0010b\u001a\u00020a8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR\"\u0010i\u001a\u00020h8\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008i\u0010j\u001a\u0004\u0008k\u0010l\"\u0004\u0008m\u0010nR\u0018\u0010p\u001a\u0004\u0018\u00010o8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008p\u0010qR$\u0010s\u001a\u0004\u0018\u00010r8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008s\u0010t\u001a\u0004\u0008u\u0010v\"\u0004\u0008w\u0010xR\"\u0010y\u001a\u00020\u000f8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008y\u0010z\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R+\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0006\u0008\u0084\u0001\u0010\u0085\u0001R(\u0010\u0086\u0001\u001a\u00020\t2\u0006\u0010Y\u001a\u00020\t8\u0000@BX\u0080\u000e\u00a2\u0006\u000f\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0005\u0008\u0088\u0001\u0010]R\u001f\u0010\u0089\u0001\u001a\u00020\t8\u0016@\u0016X\u0096\u000f\u00a2\u0006\u000e\u001a\u0005\u0008\u0089\u0001\u0010]\"\u0005\u0008\u008a\u0001\u0010_R$\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008b\u00018\u0016@\u0016X\u0096\u000f\u00a2\u0006\u0010\u001a\u0006\u0008\u008c\u0001\u0010\u008d\u0001\"\u0006\u0008\u008e\u0001\u0010\u008f\u0001R#\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u00058\u0016@\u0016X\u0096\u000f\u00a2\u0006\u0010\u001a\u0006\u0008\u0091\u0001\u0010\u0092\u0001\"\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0016X\u0096\u0005\u00a2\u0006\u0008\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u00a1\u0001"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/hyprmx/android/sdk/banner/f;",
        "Lcom/hyprmx/android/sdk/overlay/i;",
        "",
        "Lcom/hyprmx/android/sdk/overlay/j$a;",
        "Lcom/hyprmx/android/sdk/banner/j;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerAd;",
        "",
        "init",
        "",
        "prepareWebView",
        "trackContainerVisibility",
        "updateWebViewSize",
        "",
        "url",
        "asyncSavePhoto",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "data",
        "createCalendarEvent",
        "hyprMXBrowserClosed",
        "openOutsideApplication",
        "openShareSheet",
        "viewModelIdentifier",
        "showHyprMXBrowser",
        "showPlatformBrowser",
        "",
        "resourceId",
        "showToast",
        "loadAd",
        "destroy",
        "cleanup",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "loadAdSuccess",
        "Lcom/hyprmx/android/sdk/core/HyprMXErrors;",
        "error",
        "loadAdFailure",
        "onAdClicked",
        "reloadWebView",
        "removePresenter",
        "onOutsideAppPresented",
        "onHyprMXBrowserPresented",
        "onHyprMXBrowserClosed",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onLayout",
        "Landroid/view/View;",
        "changedView",
        "visibility",
        "onVisibilityChanged",
        "",
        "rate",
        "opacityThresholdPercent",
        "startVisibilityTracking",
        "stopVisibilityTracking",
        "isShown",
        "visibleHeight",
        "visibleWidth",
        "actualHeight",
        "actualWidth",
        "fullyVisible",
        "partiallyVisible",
        "fullyOffscreen",
        "onScreenX",
        "onScreenY",
        "",
        "alpha",
        "parentAlphaPassesThreshold",
        "onVisibleEvent",
        "storePicture",
        "Lcom/hyprmx/android/sdk/banner/e;",
        "presenter",
        "Lcom/hyprmx/android/sdk/banner/e;",
        "getPresenter$HyprMX_Mobile_Android_SDK_release",
        "()Lcom/hyprmx/android/sdk/banner/e;",
        "setPresenter$HyprMX_Mobile_Android_SDK_release",
        "(Lcom/hyprmx/android/sdk/banner/e;)V",
        "Lcom/hyprmx/android/sdk/presentation/j;",
        "presenterFactory",
        "Lcom/hyprmx/android/sdk/presentation/j;",
        "getPresenterFactory$HyprMX_Mobile_Android_SDK_release",
        "()Lcom/hyprmx/android/sdk/presentation/j;",
        "setPresenterFactory$HyprMX_Mobile_Android_SDK_release",
        "(Lcom/hyprmx/android/sdk/presentation/j;)V",
        "<set-?>",
        "attachedToWindow$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "getAttachedToWindow",
        "()Z",
        "setAttachedToWindow",
        "(Z)V",
        "attachedToWindow",
        "Lcom/hyprmx/android/sdk/core/HyprMXIf;",
        "hyprMX",
        "Lcom/hyprmx/android/sdk/core/HyprMXIf;",
        "getHyprMX$HyprMX_Mobile_Android_SDK_release",
        "()Lcom/hyprmx/android/sdk/core/HyprMXIf;",
        "setHyprMX$HyprMX_Mobile_Android_SDK_release",
        "(Lcom/hyprmx/android/sdk/core/HyprMXIf;)V",
        "Lcom/hyprmx/android/sdk/webview/f;",
        "webView",
        "Lcom/hyprmx/android/sdk/webview/f;",
        "getWebView$HyprMX_Mobile_Android_SDK_release",
        "()Lcom/hyprmx/android/sdk/webview/f;",
        "setWebView$HyprMX_Mobile_Android_SDK_release",
        "(Lcom/hyprmx/android/sdk/webview/f;)V",
        "Lcom/hyprmx/android/sdk/banner/i;",
        "visibilityTracker",
        "Lcom/hyprmx/android/sdk/banner/i;",
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;",
        "listener",
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;",
        "getListener",
        "()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;",
        "setListener",
        "(Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;)V",
        "placementName",
        "Ljava/lang/String;",
        "getPlacementName",
        "()Ljava/lang/String;",
        "setPlacementName",
        "(Ljava/lang/String;)V",
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;",
        "adSize",
        "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;",
        "getAdSize",
        "()Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;",
        "setAdSize",
        "(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V",
        "useCustomSize",
        "Z",
        "getUseCustomSize$HyprMX_Mobile_Android_SDK_release",
        "isOverlayPresented",
        "setOverlayPresented",
        "Landroid/content/Context;",
        "getOverlayContext",
        "()Landroid/content/Context;",
        "setOverlayContext",
        "(Landroid/content/Context;)V",
        "overlayContext",
        "getOverlayListener",
        "()Lcom/hyprmx/android/sdk/overlay/j$a;",
        "setOverlayListener",
        "(Lcom/hyprmx/android/sdk/overlay/j$a;)V",
        "overlayListener",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "coroutineContext",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final synthetic $$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

.field private final synthetic $$delegate_1:Lkotlinx/coroutines/s;

.field private adSize:Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;

.field private final attachedToWindow$delegate:Lkotlin/x/d;

.field private hyprMX:Lcom/hyprmx/android/sdk/core/HyprMXIf;

.field private listener:Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

.field private placementName:Ljava/lang/String;

.field private presenter:Lcom/hyprmx/android/sdk/banner/e;

.field private presenterFactory:Lcom/hyprmx/android/sdk/presentation/j;

.field private useCustomSize:Z

.field private visibilityTracker:Lcom/hyprmx/android/sdk/banner/i;

.field public webView:Lcom/hyprmx/android/sdk/webview/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/x;

    const-class v2, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;

    const-string v3, "attachedToWindow"

    const-string v4, "getAttachedToWindow()Z"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/x;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/w;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lcom/hyprmx/android/sdk/overlay/j;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p3, p1, v0, v1}, Lcom/hyprmx/android/sdk/overlay/j;-><init>(Landroid/content/Context;ZI)V

    iput-object p3, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/s;

    move-result-object p3

    iput-object p3, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_1:Lkotlinx/coroutines/s;

    sget-object p3, Lkotlin/x/a;->a:Lkotlin/x/a;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView$a;

    invoke-direct {v0, p3, p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView$a;-><init>(Ljava/lang/Boolean;Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->attachedToWindow$delegate:Lkotlin/x/d;

    sget-object p3, Lcom/hyprmx/android/sdk/core/HyprMX;->INSTANCE:Lcom/hyprmx/android/sdk/core/HyprMX;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->hyprMX:Lcom/hyprmx/android/sdk/core/HyprMXIf;

    const-string p3, ""

    iput-object p3, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->placementName:Ljava/lang/String;

    const/4 p3, 0x1

    if-eqz p2, :cond_46

    invoke-static {p1, p2}, Lcom/hyprmx/android/sdk/utility/a1;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;

    move-result-object v0

    if-eqz v0, :cond_3d

    instance-of v1, v0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeCustom;

    if-eqz v1, :cond_3a

    iput-boolean p3, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->useCustomSize:Z

    goto :goto_3d

    :cond_3a
    invoke-virtual {p0, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setAdSize(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V

    :cond_3d
    :goto_3d
    invoke-static {p1, p2}, Lcom/hyprmx/android/sdk/utility/a1;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_46

    invoke-virtual {p0, p1}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setPlacementName(Ljava/lang/String;)V

    :cond_46
    invoke-direct {p0, p3}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->prepareWebView(Z)V

    invoke-virtual {p0, p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setOverlayListener(Lcom/hyprmx/android/sdk/overlay/j$a;)V

    new-instance p1, Lcom/hyprmx/android/sdk/banner/h;

    invoke-direct {p1, p0}, Lcom/hyprmx/android/sdk/banner/h;-><init>(Lkotlinx/coroutines/s;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->visibilityTracker:Lcom/hyprmx/android/sdk/banner/i;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/n;)V

    invoke-virtual {p0, p3}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setPlacementName(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setAdSize(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;ILkotlin/jvm/internal/n;)V
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V

    return-void
.end method

.method public static synthetic a(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
    .registers 1

    invoke-static {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->trackContainerVisibility$lambda$4(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    return-void
.end method

.method private final getAttachedToWindow()Z
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->attachedToWindow$delegate:Lkotlin/x/d;

    sget-object v1, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/x/d;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final prepareWebView(Z)V
    .registers 6

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getWebView$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/webview/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-nez p1, :cond_38

    :cond_12
    new-instance p1, Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/hyprmx/android/sdk/webview/m;->a(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/hyprmx/android/sdk/webview/f;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebView;I)V

    invoke-virtual {p0, p1}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setWebView$HyprMX_Mobile_Android_SDK_release(Lcom/hyprmx/android/sdk/webview/f;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getWebView$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/webview/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_38
    invoke-direct {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->updateWebViewSize()V

    return-void
.end method

.method public static synthetic prepareWebView$default(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-direct {p0, p1}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->prepareWebView(Z)V

    return-void
.end method

.method private final setAttachedToWindow(Z)V
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->attachedToWindow$delegate:Lkotlin/x/d;

    sget-object v1, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/x/d;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final trackContainerVisibility()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/banner/k;

    invoke-direct {v1, p0}, Lcom/hyprmx/android/sdk/banner/k;-><init>(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static final trackContainerVisibility$lambda$4(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_30

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/banner/e;->a(I)V

    :cond_30
    return-void
.end method

.method private final updateWebViewSize()V
    .registers 5

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getAdSize()Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;

    move-result-object v0

    if-eqz v0, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating webview banner with size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hyprmx/android/sdk/utility/w;->a(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hyprmx/android/sdk/utility/w;->a(ILandroid/content/Context;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getWebView$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/webview/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4f
    return-void
.end method


# virtual methods
.method public asyncSavePhoto(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1, p2}, Lcom/hyprmx/android/sdk/overlay/j;->asyncSavePhoto(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public cleanup()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setListener(Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/core/c;->L()V

    :cond_b
    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v1, v0}, Lcom/hyprmx/android/sdk/core/c;->a(Lcom/hyprmx/android/sdk/core/d;)V

    :goto_13
    iput-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->visibilityTracker:Lcom/hyprmx/android/sdk/banner/i;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/banner/i;->a()V

    :cond_1c
    iput-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->visibilityTracker:Lcom/hyprmx/android/sdk/banner/i;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getWebView$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/webview/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/webview/f;->c()V

    return-void
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->createCalendarEvent(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 1

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->cleanup()V

    return-void
.end method

.method public getAdSize()Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->adSize:Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_1:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getHyprMX$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/core/HyprMXIf;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->hyprMX:Lcom/hyprmx/android/sdk/core/HyprMXIf;

    return-object v0
.end method

.method public getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->listener:Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    return-object v0
.end method

.method public getOverlayContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getOverlayListener()Lcom/hyprmx/android/sdk/overlay/j$a;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/overlay/j;->e:Lcom/hyprmx/android/sdk/overlay/j$a;

    return-object v0
.end method

.method public getPlacementName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPresenter$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/banner/e;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    return-object v0
.end method

.method public final getPresenterFactory$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/presentation/j;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenterFactory:Lcom/hyprmx/android/sdk/presentation/j;

    if-nez v0, :cond_12

    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/hyprmx/android/sdk/core/j;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->t()Lcom/hyprmx/android/sdk/presentation/j;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :cond_12
    :goto_12
    return-object v0
.end method

.method public final getUseCustomSize$HyprMX_Mobile_Android_SDK_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->useCustomSize:Z

    return v0
.end method

.method public final getWebView$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/webview/f;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->webView:Lcom/hyprmx/android/sdk/webview/f;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public hyprMXBrowserClosed()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0}, Lcom/hyprmx/android/sdk/overlay/j;->hyprMXBrowserClosed()V

    return-void
.end method

.method public isOverlayPresented()Z
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    iget-boolean v0, v0, Lcom/hyprmx/android/sdk/overlay/j;->d:Z

    return v0
.end method

.method public loadAd()V
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n      HyprMXBannerView.loadAd \n          HyprMX = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/hyprmx/android/sdk/core/HyprMX;->INSTANCE:Lcom/hyprmx/android/sdk/core/HyprMX;

    invoke-virtual {v4}, Lcom/hyprmx/android/sdk/core/HyprMX;->getInitializationState()Lcom/hyprmx/android/sdk/core/HyprMXState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n          placementName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n          definedSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getAdSize()Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n          actualWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\n          actualHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\n          useCustomSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->useCustomSize:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "\n      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->hyprMX:Lcom/hyprmx/android/sdk/core/HyprMXIf;

    invoke-interface {v3}, Lcom/hyprmx/android/sdk/core/HyprMXIf;->getInitializationState()Lcom/hyprmx/android/sdk/core/HyprMXState;

    move-result-object v3

    sget-object v4, Lcom/hyprmx/android/sdk/core/HyprMXState;->INITIALIZATION_COMPLETE:Lcom/hyprmx/android/sdk/core/HyprMXState;

    if-eq v3, v4, :cond_8b

    sget-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->SDK_NOT_INITIALIZED:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v1

    if-eqz v1, :cond_8a

    invoke-interface {v1, p0, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdFailedToLoad(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V

    :cond_8a
    return-void

    :cond_8b
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a8

    sget-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->PLACEMENT_NAME_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-interface {v1, p0, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdFailedToLoad(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V

    :cond_a7
    return-void

    :cond_a8
    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getAdSize()Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;

    move-result-object v3

    if-nez v3, :cond_d3

    iget-boolean v3, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->useCustomSize:Z

    if-eqz v3, :cond_c0

    new-instance v3, Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeCustom;

    invoke-static {v0}, Lkotlin/math/b;->roundToInt(F)I

    move-result v4

    invoke-static {v1}, Lkotlin/math/b;->roundToInt(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize$HyprMXAdSizeCustom;-><init>(II)V

    goto :goto_d3

    :cond_c0
    sget-object v0, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->AD_SIZE_NOT_SET:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v1

    if-eqz v1, :cond_d2

    invoke-interface {v1, p0, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdFailedToLoad(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V

    :cond_d2
    return-void

    :cond_d3
    :goto_d3
    iget-object v4, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v4, :cond_db

    invoke-interface {v4, v3, v0, v1}, Lcom/hyprmx/android/sdk/banner/e;->a(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;FF)V

    return-void

    :cond_db
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->prepareWebView$default(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getPresenterFactory$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/presentation/j;

    move-result-object v4

    if-eqz v4, :cond_137

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Lcom/hyprmx/android/sdk/presentation/j;->a(Lcom/hyprmx/android/sdk/banner/f;Ljava/lang/String;)Lcom/hyprmx/android/sdk/banner/g;

    move-result-object v4

    if-eqz v4, :cond_137

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v7}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v2

    iget-object v7, v4, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v7, v5, v2}, Lcom/hyprmx/android/sdk/banner/d;->a(FF)V

    invoke-direct {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getAttachedToWindow()Z

    move-result v2

    iget-object v5, v4, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v5, v2}, Lcom/hyprmx/android/sdk/banner/d;->a(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    iget-object v5, v4, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v5, v2}, Lcom/hyprmx/android/sdk/banner/d;->a(I)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getWebView$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/webview/f;

    move-result-object v2

    iget-object v5, v4, Lcom/hyprmx/android/sdk/banner/g;->b:Lcom/hyprmx/android/sdk/banner/d;

    invoke-interface {v5}, Lcom/hyprmx/android/sdk/core/a0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v6}, Lcom/hyprmx/android/sdk/webview/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v0, v1}, Lcom/hyprmx/android/sdk/banner/g;->a(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;FF)V

    move-object v6, v4

    :cond_137
    iput-object v6, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    return-void
.end method

.method public loadAdFailure(Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V
    .registers 3

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0, p1}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdFailedToLoad(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V

    :cond_e
    return-void
.end method

.method public loadAdSuccess()V
    .registers 2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdLoaded(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    :cond_9
    return-void
.end method

.method public onAdClicked()V
    .registers 2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdClicked(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    :cond_9
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/presentation/k;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setAttachedToWindow(Z)V

    invoke-direct {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->trackContainerVisibility()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDetachedFromWindow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/presentation/k;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->setAttachedToWindow(Z)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->visibilityTracker:Lcom/hyprmx/android/sdk/banner/i;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/banner/i;->a()V

    :cond_26
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onHyprMXBrowserClosed()V
    .registers 2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdClosed(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    :cond_9
    return-void
.end method

.method public onHyprMXBrowserPresented()V
    .registers 2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdOpened(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    :cond_9
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 11

    if-eqz p1, :cond_72

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLayout ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v1, :cond_42

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/presentation/k;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/hyprmx/android/sdk/banner/e;->a(FF)V

    :cond_72
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onOutsideAppPresented()V
    .registers 2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getListener()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;->onAdLeftApplication(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V

    :cond_9
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz p1, :cond_f

    invoke-interface {p1, p2}, Lcom/hyprmx/android/sdk/banner/e;->a(I)V

    :cond_f
    return-void
.end method

.method public onVisibleEvent(ZIIIIZZZIIFZ)V
    .registers 27

    move-object v0, p0

    iget-object v1, v0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    if-eqz v1, :cond_1f

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Lcom/hyprmx/android/sdk/banner/j;->onVisibleEvent(ZIIIIZZZIIFZ)V

    :cond_1f
    return-void
.end method

.method public openOutsideApplication(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->openOutsideApplication(Ljava/lang/String;)V

    return-void
.end method

.method public openShareSheet(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->openShareSheet(Ljava/lang/String;)V

    return-void
.end method

.method public reloadWebView()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removePresenter()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    return-void
.end method

.method public setAdSize(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->adSize:Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;

    return-void
.end method

.method public final setHyprMX$HyprMX_Mobile_Android_SDK_release(Lcom/hyprmx/android/sdk/core/HyprMXIf;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->hyprMX:Lcom/hyprmx/android/sdk/core/HyprMXIf;

    return-void
.end method

.method public setListener(Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->listener:Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;

    return-void
.end method

.method public setOverlayContext(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/overlay/j;->a:Landroid/content/Context;

    return-void
.end method

.method public setOverlayListener(Lcom/hyprmx/android/sdk/overlay/j$a;)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/overlay/j;->e:Lcom/hyprmx/android/sdk/overlay/j$a;

    return-void
.end method

.method public setOverlayPresented(Z)V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    iput-boolean p1, v0, Lcom/hyprmx/android/sdk/overlay/j;->d:Z

    return-void
.end method

.method public setPlacementName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->placementName:Ljava/lang/String;

    return-void
.end method

.method public final setPresenter$HyprMX_Mobile_Android_SDK_release(Lcom/hyprmx/android/sdk/banner/e;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenter:Lcom/hyprmx/android/sdk/banner/e;

    return-void
.end method

.method public final setPresenterFactory$HyprMX_Mobile_Android_SDK_release(Lcom/hyprmx/android/sdk/presentation/j;)V
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->presenterFactory:Lcom/hyprmx/android/sdk/presentation/j;

    return-void
.end method

.method public final setWebView$HyprMX_Mobile_Android_SDK_release(Lcom/hyprmx/android/sdk/webview/f;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->webView:Lcom/hyprmx/android/sdk/webview/f;

    return-void
.end method

.method public showHyprMXBrowser(Ljava/lang/String;)V
    .registers 3

    const-string v0, "viewModelIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->showHyprMXBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public showPlatformBrowser(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->showPlatformBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public showToast(I)V
    .registers 3
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->$$delegate_0:Lcom/hyprmx/android/sdk/overlay/j;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/overlay/j;->showToast(I)V

    return-void
.end method

.method public startVisibilityTracking(JI)V
    .registers 10

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->visibilityTracker:Lcom/hyprmx/android/sdk/banner/i;

    if-eqz v0, :cond_b

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/hyprmx/android/sdk/banner/i;->a(Landroid/view/View;JILcom/hyprmx/android/sdk/banner/j;)V

    :cond_b
    return-void
.end method

.method public stopVisibilityTracking()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->visibilityTracker:Lcom/hyprmx/android/sdk/banner/i;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/banner/i;->a()V

    :cond_7
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .registers 9

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView$b;-><init>(Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
