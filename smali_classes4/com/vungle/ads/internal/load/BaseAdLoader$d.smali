###### Class com.vungle.ads.internal.load.BaseAdLoader.d (com.vungle.ads.internal.load.BaseAdLoader$d)
.class final Lcom/vungle/ads/internal/load/BaseAdLoader$d;
.super Lkotlin/jvm/internal/t;
.source "BaseAdLoader.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/load/BaseAdLoader;->loadAd$lambda-0(Lcom/vungle/ads/internal/load/BaseAdLoader;Lcom/vungle/ads/internal/load/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $adLoaderCallback:Lcom/vungle/ads/internal/load/f;

.field final synthetic this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/load/BaseAdLoader;Lcom/vungle/ads/internal/load/f;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$d;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$d;->$adLoaderCallback:Lcom/vungle/ads/internal/load/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader$d;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .registers 15

    const/16 v0, 0xa

    if-eq p1, v0, :cond_15

    const/16 v1, 0xd

    if-eq p1, v1, :cond_15

    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$d;->$adLoaderCallback:Lcom/vungle/ads/internal/load/f;

    new-instance v0, Lcom/vungle/ads/l1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/vungle/ads/l1;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    invoke-interface {p1, v0}, Lcom/vungle/ads/internal/load/f;->onFailure(Lcom/vungle/ads/VungleError;)V

    goto :goto_39

    :cond_15
    if-ne p1, v0, :cond_34

    sget-object v3, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->MRAID_DOWNLOAD_JS_RETRY_SUCCESS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    const-wide/16 v5, 0x0

    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$d;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdRequest()Lcom/vungle/ads/internal/load/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/g;->getPlacement()Lcom/vungle/ads/internal/model/Placement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3a

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_34
    iget-object p1, p0, Lcom/vungle/ads/internal/load/BaseAdLoader$d;->this$0:Lcom/vungle/ads/internal/load/BaseAdLoader;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->requestAd()V

    :goto_39
    return-void
.end method
