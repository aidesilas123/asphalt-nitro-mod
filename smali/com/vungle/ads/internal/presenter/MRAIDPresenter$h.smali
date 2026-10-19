###### Class com.vungle.ads.internal.presenter.MRAIDPresenter.h (com.vungle.ads.internal.presenter.MRAIDPresenter$h)
.class final Lcom/vungle/ads/internal/presenter/MRAIDPresenter$h;
.super Lkotlin/jvm/internal/t;
.source "MRAIDPresenter.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/presenter/MRAIDPresenter;-><init>(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/ui/VungleWebClient;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/omsdk/OMTracker;Lcom/vungle/ads/internal/model/BidPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/util/SuspendableTimer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vungle/ads/internal/util/SuspendableTimer;",
        "invoke"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$h;->this$0:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/vungle/ads/internal/util/SuspendableTimer;
    .registers 10

    new-instance v8, Lcom/vungle/ads/internal/util/SuspendableTimer;

    new-instance v5, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$h$a;

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$h;->this$0:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    invoke-direct {v5, v0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$h$a;-><init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V

    const-wide/high16 v1, 0x4018000000000000L    # 6.0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/vungle/ads/internal/util/SuspendableTimer;-><init>(DZLkotlin/jvm/b/a;Lkotlin/jvm/b/a;ILkotlin/jvm/internal/n;)V

    return-object v8
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$h;->invoke()Lcom/vungle/ads/internal/util/SuspendableTimer;

    move-result-object v0

    return-object v0
.end method
