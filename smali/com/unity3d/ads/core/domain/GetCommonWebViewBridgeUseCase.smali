###### Class com.unity3d.ads.core.domain.GetCommonWebViewBridgeUseCase (com.unity3d.ads.core.domain.GetCommonWebViewBridgeUseCase)
.class public final Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;
.super Ljava/lang/Object;
.source "GetCommonWebViewBridgeUseCase.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0011\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;",
        "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "invoke",
        "Lcom/unity3d/ads/adplayer/WebViewBridge;",
        "webViewContainer",
        "Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final dispatcher:Lkotlinx/coroutines/r;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;-><init>(Lkotlinx/coroutines/r;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/r;)V
    .registers 3

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;->dispatcher:Lkotlinx/coroutines/r;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/r;ILkotlin/jvm/internal/n;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;-><init>(Lkotlinx/coroutines/r;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)Lcom/unity3d/ads/adplayer/WebViewBridge;
    .registers 4

    const-string v0, "webViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;->dispatcher:Lkotlinx/coroutines/r;

    new-instance v1, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    invoke-direct {v1, v0, p1}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/adplayer/WebViewContainer;)V

    return-object v1
.end method
