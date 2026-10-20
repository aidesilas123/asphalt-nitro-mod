###### Class com.vungle.ads.internal.presenter.NativeAdPresenter.b (com.vungle.ads.internal.presenter.NativeAdPresenter$b)
.class public final Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;
.super Ljava/lang/Object;
.source "NativeAdPresenter.kt"

# interfaces
.implements Lcom/vungle/ads/internal/ui/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->onDownload(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/vungle/ads/internal/presenter/NativeAdPresenter$onDownload$3",
        "Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;",
        "onDeeplinkClick",
        "",
        "opened",
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
.field final synthetic $tpatSender:Lcom/vungle/ads/internal/network/h;

.field final synthetic this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;Lcom/vungle/ads/internal/network/h;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->$tpatSender:Lcom/vungle/ads/internal/network/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeeplinkClick(Z)V
    .registers 6

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-static {v0}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getAdvertisement$p(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "deeplink.click"

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz p1, :cond_32

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->$tpatSender:Lcom/vungle/ads/internal/network/h;

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/NativeAdPresenter$b;->this$0:Lcom/vungle/ads/internal/presenter/NativeAdPresenter;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/ads/internal/presenter/NativeAdPresenter;->access$getExecutor$p(Lcom/vungle/ads/internal/presenter/NativeAdPresenter;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/vungle/ads/internal/network/h;->sendTpat(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    goto :goto_1e

    :cond_32
    return-void
.end method
