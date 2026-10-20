###### Class com.unity3d.ads.adplayer.WebViewAdPlayer.C16672 (com.unity3d.ads.adplayer.WebViewAdPlayer$sendVolumeChange$2)
.class final Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVolumeChange$2;
.super Lkotlin/jvm/internal/t;
.source "WebViewAdPlayer.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendVolumeChange(DLkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/unity3d/ads/adplayer/WebViewEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/unity3d/ads/adplayer/WebViewEvent;",
        "invoke"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $volume:D


# direct methods
.method constructor <init>(D)V
    .registers 3

    iput-wide p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVolumeChange$2;->$volume:D

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/unity3d/ads/adplayer/WebViewEvent;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/adplayer/OnVolumeChangeEvent;

    iget-wide v1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVolumeChange$2;->$volume:D

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/adplayer/OnVolumeChangeEvent;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendVolumeChange$2;->invoke()Lcom/unity3d/ads/adplayer/WebViewEvent;

    move-result-object v0

    return-object v0
.end method
