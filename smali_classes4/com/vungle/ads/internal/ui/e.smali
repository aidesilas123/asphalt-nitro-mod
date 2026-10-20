###### Class com.vungle.ads.internal.ui.PresenterAppLeftCallback (com.vungle.ads.internal.ui.e)
.class public final Lcom/vungle/ads/internal/ui/e;
.super Ljava/lang/Object;
.source "PresenterAppLeftCallback.kt"

# interfaces
.implements Lcom/vungle/ads/internal/util/ActivityManager$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ui/PresenterAppLeftCallback;",
        "Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;",
        "bus",
        "Lcom/vungle/ads/internal/presenter/AdEventListener;",
        "placementRefId",
        "",
        "(Lcom/vungle/ads/internal/presenter/AdEventListener;Ljava/lang/String;)V",
        "onLeftApplication",
        "",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bus:Lcom/vungle/ads/internal/presenter/i;

.field private final placementRefId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/i;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/e;->bus:Lcom/vungle/ads/internal/presenter/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/e;->placementRefId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLeftApplication()V
    .registers 5

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/e;->bus:Lcom/vungle/ads/internal/presenter/i;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/e;->placementRefId:Ljava/lang/String;

    const-string v2, "open"

    const-string v3, "adLeftApplication"

    invoke-virtual {v0, v2, v3, v1}, Lcom/vungle/ads/internal/presenter/i;->onNext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method
