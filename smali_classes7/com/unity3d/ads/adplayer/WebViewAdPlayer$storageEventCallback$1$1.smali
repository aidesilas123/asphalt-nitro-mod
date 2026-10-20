###### Class com.unity3d.ads.adplayer.WebViewAdPlayer$storageEventCallback$1.AnonymousClass1 (com.unity3d.ads.adplayer.WebViewAdPlayer$storageEventCallback$1$1)
.class final Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;
.super Lkotlin/coroutines/jvm/internal/j;
.source "WebViewAdPlayer.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;->invoke(Lcom/unity3d/services/core/device/StorageEventInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.unity3d.ads.adplayer.WebViewAdPlayer$storageEventCallback$1$1"
    f = "WebViewAdPlayer.kt"
    i = {}
    l = {
        0x4a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Lcom/unity3d/services/core/device/StorageEventInfo;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Lcom/unity3d/services/core/device/StorageEventInfo;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/WebViewAdPlayer;",
            "Lcom/unity3d/services/core/device/StorageEventInfo;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->$it:Lcom/unity3d/services/core/device/StorageEventInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->$it:Lcom/unity3d/services/core/device/StorageEventInfo;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;-><init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Lcom/unity3d/services/core/device/StorageEventInfo;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_40

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    invoke-static {p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->access$getBridge$p(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)Lcom/unity3d/ads/adplayer/WebViewBridge;

    move-result-object p1

    new-instance v1, Lcom/unity3d/ads/adplayer/OnStorageEvent;

    iget-object v3, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->$it:Lcom/unity3d/services/core/device/StorageEventInfo;

    invoke-virtual {v3}, Lcom/unity3d/services/core/device/StorageEventInfo;->getEventType()Lcom/unity3d/services/core/device/StorageEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->$it:Lcom/unity3d/services/core/device/StorageEventInfo;

    invoke-virtual {v4}, Lcom/unity3d/services/core/device/StorageEventInfo;->getStorageType()Lcom/unity3d/services/core/device/StorageManager$StorageType;

    move-result-object v4

    iget-object v5, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->$it:Lcom/unity3d/services/core/device/StorageEventInfo;

    invoke-virtual {v5}, Lcom/unity3d/services/core/device/StorageEventInfo;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/unity3d/ads/adplayer/OnStorageEvent;-><init>(Lcom/unity3d/services/core/device/StorageEvent;Lcom/unity3d/services/core/device/StorageManager$StorageType;Ljava/lang/Object;)V

    iput v2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lcom/unity3d/ads/adplayer/WebViewBridge;->sendEvent(Lcom/unity3d/ads/adplayer/WebViewEvent;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_40

    return-object v0

    :cond_40
    :goto_40
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
