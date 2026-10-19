###### Class com.bykv.vk.openvk.preload.geckox.GeckoHubImp (com.bykv.vk.openvk.preload.geckox.GeckoHubImp)
.class public Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;
.super Ljava/lang/Object;
.source "GeckoHubImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;-><init>()V

    return-void
.end method

.method public static inst(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;
    .registers 1

    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/c;

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$a;->a()Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;

    move-result-object p0

    return-object p0
.end method

.method public static setRandomHost(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setThreadPoolExecutor(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .registers 1

    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/geckox/b;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method


# virtual methods
.method public findRes(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 5

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;->getWebResourceResponse()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public findResAndMsg(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;
    .registers 5

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/geckox/model/WebResourceResponseModel;

    move-result-object p1

    return-object p1
.end method

.method public getGeckoResLoader()Lcom/bykv/vk/openvk/preload/falconx/loader/a;
    .registers 2

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c;->b()Lcom/bykv/vk/openvk/preload/falconx/loader/a;

    move-result-object v0

    return-object v0
.end method

.method public getResCount(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I
    .registers 3

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public preload(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;Ljava/util/Set;Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    invoke-static {p1, p2, p3, p4}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/statistic/IStatisticMonitor;Ljava/util/Set;Lcom/bykv/vk/openvk/preload/geckox/net/INetWork;)V

    return-void
.end method

.method public releaseGeckoResLoader(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V
    .registers 2

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/c;->a()Lcom/bykv/vk/openvk/preload/geckox/c;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/c;->a(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V

    return-void
.end method

###### Class com.bykv.vk.openvk.preload.geckox.GeckoHubImp.AnonymousClass1 (com.bykv.vk.openvk.preload.geckox.GeckoHubImp$1)
.class final synthetic Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$1;
.super Ljava/lang/Object;
.source "GeckoHubImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bykv.vk.openvk.preload.geckox.GeckoHubImp.a (com.bykv.vk.openvk.preload.geckox.GeckoHubImp$a)
.class final Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$a;
.super Ljava/lang/Object;
.source "GeckoHubImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;-><init>(Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$1;)V

    sput-object v0, Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$a;->a:Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;

    return-void
.end method

.method static synthetic a()Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;
    .registers 1

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp$a;->a:Lcom/bykv/vk/openvk/preload/geckox/GeckoHubImp;

    return-object v0
.end method
