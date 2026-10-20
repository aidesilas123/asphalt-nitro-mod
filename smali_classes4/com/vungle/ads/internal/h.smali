###### Class com.vungle.ads.internal.VungleInternal (com.vungle.ads.internal.h)
.class public final Lcom/vungle/ads/internal/h;
.super Ljava/lang/Object;
.source "VungleInternal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008\u00b2\u0006\n\u0010\t\u001a\u00020\nX\u008a\u0084\u0002\u00b2\u0006\n\u0010\u000b\u001a\u00020\u000cX\u008a\u0084\u0002\u00b2\u0006\n\u0010\r\u001a\u00020\u000eX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vungle/ads/internal/VungleInternal;",
        "",
        "()V",
        "getAvailableBidTokens",
        "",
        "context",
        "Landroid/content/Context;",
        "getSdkVersion",
        "vungle-ads_release",
        "provider",
        "Lcom/vungle/ads/internal/util/ConcurrencyTimeoutProvider;",
        "sdkExecutors",
        "Lcom/vungle/ads/internal/executor/SDKExecutors;",
        "bidTokenEncoder",
        "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/i;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/vungle/ads/internal/h;->getAvailableBidTokens$lambda-3(Lkotlin/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-0(Lkotlin/i;)Lcom/vungle/ads/internal/util/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/util/d;",
            ">;)",
            "Lcom/vungle/ads/internal/util/d;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/util/d;

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-1(Lkotlin/i;)Lcom/vungle/ads/internal/executor/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/executor/c;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/c;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/c;

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-2(Lkotlin/i;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;",
            ">;)",
            "Lcom/vungle/ads/internal/bidding/BidTokenEncoder;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    return-object p0
.end method

.method private static final getAvailableBidTokens$lambda-3(Lkotlin/i;)Ljava/lang/String;
    .registers 2

    const-string v0, "$bidTokenEncoder$delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vungle/ads/internal/h;->getAvailableBidTokens$lambda-2(Lkotlin/i;)Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->encode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAvailableBidTokens(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->a:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/h$a;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/h$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    new-instance v2, Lcom/vungle/ads/internal/h$b;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/h$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v2

    new-instance v3, Lcom/vungle/ads/internal/h$c;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/h$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/executor/FutureResult;

    invoke-static {v2}, Lcom/vungle/ads/internal/h;->getAvailableBidTokens$lambda-1(Lkotlin/i;)Lcom/vungle/ads/internal/executor/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/ads/internal/executor/c;->getIoExecutor()Lcom/vungle/ads/internal/executor/d;

    move-result-object v2

    new-instance v3, Lcom/vungle/ads/internal/f;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/f;-><init>(Lkotlin/i;)V

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/executor/d;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/executor/FutureResult;-><init>(Ljava/util/concurrent/Future;)V

    invoke-static {v1}, Lcom/vungle/ads/internal/h;->getAvailableBidTokens$lambda-0(Lkotlin/i;)Lcom/vungle/ads/internal/util/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/util/d;->getTimeout()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lcom/vungle/ads/internal/executor/FutureResult;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "7.1.0"

    return-object v0
.end method
