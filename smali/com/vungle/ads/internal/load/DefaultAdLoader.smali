###### Class com.vungle.ads.internal.load.DefaultAdLoader (com.vungle.ads.internal.load.DefaultAdLoader)
.class public final Lcom/vungle/ads/internal/load/DefaultAdLoader;
.super Lcom/vungle/ads/internal/load/BaseAdLoader;
.source "DefaultAdLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0012H\u0016J\u0008\u0010\u0018\u001a\u00020\u0012H\u0014J\u0012\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vungle/ads/internal/load/DefaultAdLoader;",
        "Lcom/vungle/ads/internal/load/BaseAdLoader;",
        "context",
        "Landroid/content/Context;",
        "vungleApiClient",
        "Lcom/vungle/ads/internal/network/VungleApiClient;",
        "sdkExecutors",
        "Lcom/vungle/ads/internal/executor/Executors;",
        "omInjector",
        "Lcom/vungle/ads/internal/omsdk/OMInjector;",
        "downloader",
        "Lcom/vungle/ads/internal/downloader/Downloader;",
        "pathProvider",
        "Lcom/vungle/ads/internal/util/PathProvider;",
        "adRequest",
        "Lcom/vungle/ads/internal/load/AdRequest;",
        "(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/Executors;Lcom/vungle/ads/internal/omsdk/OMInjector;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/load/AdRequest;)V",
        "fetchAdMetadata",
        "",
        "adSize",
        "",
        "placement",
        "Lcom/vungle/ads/internal/model/Placement;",
        "onAdLoadReady",
        "requestAd",
        "retrofitToVungleError",
        "Lcom/vungle/ads/VungleError;",
        "throwable",
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/omsdk/c;Lcom/vungle/ads/internal/downloader/b;Lcom/vungle/ads/internal/util/g;Lcom/vungle/ads/internal/load/g;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vungleApiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkExecutors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omInjector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lcom/vungle/ads/internal/load/BaseAdLoader;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/omsdk/c;Lcom/vungle/ads/internal/downloader/b;Lcom/vungle/ads/internal/util/g;Lcom/vungle/ads/internal/load/g;)V

    return-void
.end method

.method public static final synthetic access$retrofitToVungleError(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;
    .registers 2

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/DefaultAdLoader;->retrofitToVungleError(Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;

    move-result-object p0

    return-object p0
.end method

.method private final fetchAdMetadata(Ljava/lang/String;Lcom/vungle/ads/internal/model/Placement;)V
    .registers 6

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->checkIsRetryAfterActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance p1, Lcom/vungle/ads/l0;

    invoke-direct {p1}, Lcom/vungle/ads/l0;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v0

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/Placement;->getHeaderBidding()Z

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/vungle/ads/internal/network/VungleApiClient;->requestAd(Ljava/lang/String;Ljava/lang/String;Z)Lcom/vungle/ads/internal/network/e;

    move-result-object p1

    if-nez p1, :cond_36

    new-instance p1, Lcom/vungle/ads/i0;

    invoke-direct {p1}, Lcom/vungle/ads/i0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_36
    new-instance v0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;

    invoke-direct {v0, p0, p2}, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;-><init>(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;)V

    invoke-interface {p1, v0}, Lcom/vungle/ads/internal/network/e;->enqueue(Lcom/vungle/ads/internal/network/f;)V

    return-void
.end method

.method private final retrofitToVungleError(Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;
    .registers 5

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_a

    new-instance p1, Lcom/vungle/ads/i0;

    invoke-direct {p1}, Lcom/vungle/ads/i0;-><init>()V

    goto :goto_29

    :cond_a
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    new-instance p1, Lcom/vungle/ads/d1;

    const/16 v0, 0x273f

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/vungle/ads/d1;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/n;)V

    goto :goto_29

    :cond_18
    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_24

    new-instance p1, Lcom/vungle/ads/d1;

    const/16 v0, 0x2724

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/vungle/ads/d1;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/n;)V

    goto :goto_29

    :cond_24
    new-instance p1, Lcom/vungle/ads/i0;

    invoke-direct {p1}, Lcom/vungle/ads/i0;-><init>()V

    :goto_29
    return-object p1
.end method


# virtual methods
.method public onAdLoadReady()V
    .registers 1

    return-void
.end method

.method protected requestAd()V
    .registers 3

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdRequest()Lcom/vungle/ads/internal/load/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/load/g;->getRequestAdSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdRequest()Lcom/vungle/ads/internal/load/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/load/g;->getPlacement()Lcom/vungle/ads/internal/model/Placement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vungle/ads/internal/load/DefaultAdLoader;->fetchAdMetadata(Ljava/lang/String;Lcom/vungle/ads/internal/model/Placement;)V

    return-void
.end method

###### Class com.vungle.ads.internal.load.DefaultAdLoader.a (com.vungle.ads.internal.load.DefaultAdLoader$a)
.class public final Lcom/vungle/ads/internal/load/DefaultAdLoader$a;
.super Ljava/lang/Object;
.source "DefaultAdLoader.kt"

# interfaces
.implements Lcom/vungle/ads/internal/network/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/load/DefaultAdLoader;->fetchAdMetadata(Ljava/lang/String;Lcom/vungle/ads/internal/model/Placement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/ads/internal/network/f<",
        "Lcom/vungle/ads/internal/model/AdPayload;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J(\u0010\t\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00062\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/vungle/ads/internal/load/DefaultAdLoader$fetchAdMetadata$1",
        "Lcom/vungle/ads/internal/network/Callback;",
        "Lcom/vungle/ads/internal/model/AdPayload;",
        "onFailure",
        "",
        "call",
        "Lcom/vungle/ads/internal/network/Call;",
        "t",
        "",
        "onResponse",
        "response",
        "Lcom/vungle/ads/internal/network/Response;",
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
.field final synthetic $placement:Lcom/vungle/ads/internal/model/Placement;

.field final synthetic this$0:Lcom/vungle/ads/internal/load/DefaultAdLoader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->this$0:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->$placement:Lcom/vungle/ads/internal/model/Placement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/g;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->onResponse$lambda-0(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/g;)V

    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;Lcom/vungle/ads/internal/model/Placement;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->onFailure$lambda-1(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;Lcom/vungle/ads/internal/model/Placement;)V

    return-void
.end method

.method private static final onFailure$lambda-1(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;Lcom/vungle/ads/internal/model/Placement;)V
    .registers 20

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$placement"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Lcom/vungle/ads/internal/load/DefaultAdLoader;->access$retrofitToVungleError(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;)Lcom/vungle/ads/VungleError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result v1

    const/16 v3, 0x2724

    const/4 v4, 0x0

    if-eq v1, v3, :cond_6f

    const/16 v3, 0x273f

    if-eq v1, v3, :cond_48

    sget-object v5, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v6, 0x67

    invoke-virtual/range {p2 .. p2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdPayload;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_37

    :cond_36
    move-object v9, v4

    :goto_37
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->eventId()Ljava/lang/String;

    move-result-object v4

    :cond_41
    move-object v10, v4

    const-string v7, "Unable to decode ads response."

    invoke-virtual/range {v5 .. v10}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    :cond_48
    sget-object v11, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v12, 0xd9

    invoke-virtual/range {p2 .. p2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdPayload;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_5d

    :cond_5c
    move-object v15, v4

    :goto_5d
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->eventId()Ljava/lang/String;

    move-result-object v4

    :cond_67
    move-object/from16 v16, v4

    const-string v13, "Timeout for ads call."

    invoke-virtual/range {v11 .. v16}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    :cond_6f
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v3, 0x65

    invoke-virtual/range {p2 .. p2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v2

    if-eqz v2, :cond_83

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/AdPayload;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_84

    :cond_83
    move-object v6, v4

    :goto_84
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getAdvertisement$vungle_ads_release()Lcom/vungle/ads/internal/model/AdPayload;

    move-result-object v0

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->eventId()Ljava/lang/String;

    move-result-object v4

    :cond_8e
    move-object v7, v4

    const-string v2, "Ads request error."

    move-object v0, v1

    move v1, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_99
    return-void
.end method

.method private static final onResponse$lambda-0(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/g;)V
    .registers 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/network/VungleApiClient;->getRetryAfterHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_29

    new-instance p1, Lcom/vungle/ads/m0;

    invoke-direct {p1}, Lcom/vungle/ads/m0;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_29
    const/4 v0, 0x0

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Lcom/vungle/ads/internal/network/g;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_33

    const/4 v0, 0x1

    :cond_33
    if-eqz v0, :cond_50

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v2, 0x68

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, "Failed to get a successful response from the API call"

    invoke-static/range {v1 .. v8}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Lcom/vungle/ads/p1;

    invoke-direct {p1}, Lcom/vungle/ads/p1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_50
    const/4 v0, 0x0

    if-eqz p2, :cond_5a

    invoke-virtual {p2}, Lcom/vungle/ads/internal/network/g;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/ads/internal/model/AdPayload;

    goto :goto_5b

    :cond_5a
    move-object p2, v0

    :goto_5b
    if-eqz p2, :cond_61

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/AdPayload;->adUnit()Lcom/vungle/ads/internal/model/AdPayload$AdUnit;

    move-result-object v0

    :cond_61
    if-nez v0, :cond_7e

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v2, 0xd7

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, "Ad response is empty."

    invoke-static/range {v1 .. v8}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    new-instance p1, Lcom/vungle/ads/p1;

    invoke-direct {p1}, Lcom/vungle/ads/p1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->onAdLoadFailed(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_7e
    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/load/BaseAdLoader;->handleAdMetaData(Lcom/vungle/ads/internal/model/AdPayload;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/ads/internal/network/e;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/e<",
            "Lcom/vungle/ads/internal/model/AdPayload;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->this$0:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getSdkExecutors()Lcom/vungle/ads/internal/executor/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getBackgroundExecutor()Lcom/vungle/ads/internal/executor/d;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->this$0:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->$placement:Lcom/vungle/ads/internal/model/Placement;

    new-instance v2, Lcom/vungle/ads/internal/load/e;

    invoke-direct {v2, v0, p2, v1}, Lcom/vungle/ads/internal/load/e;-><init>(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;Lcom/vungle/ads/internal/model/Placement;)V

    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/executor/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lcom/vungle/ads/internal/network/e;Lcom/vungle/ads/internal/network/g;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/e<",
            "Lcom/vungle/ads/internal/model/AdPayload;",
            ">;",
            "Lcom/vungle/ads/internal/network/g<",
            "Lcom/vungle/ads/internal/model/AdPayload;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->this$0:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/load/BaseAdLoader;->getSdkExecutors()Lcom/vungle/ads/internal/executor/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getBackgroundExecutor()Lcom/vungle/ads/internal/executor/d;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->this$0:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->$placement:Lcom/vungle/ads/internal/model/Placement;

    new-instance v2, Lcom/vungle/ads/internal/load/d;

    invoke-direct {v2, v0, v1, p2}, Lcom/vungle/ads/internal/load/d;-><init>(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/g;)V

    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/executor/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.vungle.ads.internal.load.d (com.vungle.ads.internal.load.d)
.class public final synthetic Lcom/vungle/ads/internal/load/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

.field public final synthetic b:Lcom/vungle/ads/internal/model/Placement;

.field public final synthetic c:Lcom/vungle/ads/internal/network/g;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/g;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/d;->a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/d;->b:Lcom/vungle/ads/internal/model/Placement;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/d;->c:Lcom/vungle/ads/internal/network/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/load/d;->a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/d;->b:Lcom/vungle/ads/internal/model/Placement;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/d;->c:Lcom/vungle/ads/internal/network/g;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->a(Lcom/vungle/ads/internal/load/DefaultAdLoader;Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/network/g;)V

    return-void
.end method

###### Class com.vungle.ads.internal.load.e (com.vungle.ads.internal.load.e)
.class public final synthetic Lcom/vungle/ads/internal/load/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Lcom/vungle/ads/internal/model/Placement;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;Lcom/vungle/ads/internal/model/Placement;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/e;->a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/e;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/e;->c:Lcom/vungle/ads/internal/model/Placement;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/load/e;->a:Lcom/vungle/ads/internal/load/DefaultAdLoader;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/e;->b:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/e;->c:Lcom/vungle/ads/internal/model/Placement;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/load/DefaultAdLoader$a;->b(Lcom/vungle/ads/internal/load/DefaultAdLoader;Ljava/lang/Throwable;Lcom/vungle/ads/internal/model/Placement;)V

    return-void
.end method
