###### Class com.vungle.ads.internal.task.ResendTpatJob (com.vungle.ads.internal.task.f)
.class public final Lcom/vungle/ads/internal/task/f;
.super Ljava/lang/Object;
.source "ResendTpatJob.kt"

# interfaces
.implements Lcom/vungle/ads/internal/task/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012\u00b2\u0006\n\u0010\u0013\u001a\u00020\u0014X\u008a\u0084\u0002\u00b2\u0006\n\u0010\u0015\u001a\u00020\u0016X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vungle/ads/internal/task/ResendTpatJob;",
        "Lcom/vungle/ads/internal/task/Job;",
        "context",
        "Landroid/content/Context;",
        "pathProvider",
        "Lcom/vungle/ads/internal/util/PathProvider;",
        "(Landroid/content/Context;Lcom/vungle/ads/internal/util/PathProvider;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getPathProvider",
        "()Lcom/vungle/ads/internal/util/PathProvider;",
        "onRunJob",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "jobRunner",
        "Lcom/vungle/ads/internal/task/JobRunner;",
        "Companion",
        "vungle-ads_release",
        "vungleApiClient",
        "Lcom/vungle/ads/internal/network/VungleApiClient;",
        "executors",
        "Lcom/vungle/ads/internal/executor/Executors;"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/task/f$a;

.field public static final TAG:Ljava/lang/String; = "ResendTpatJob"


# instance fields
.field private final context:Landroid/content/Context;

.field private final pathProvider:Lcom/vungle/ads/internal/util/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/task/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/f$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/task/f;->Companion:Lcom/vungle/ads/internal/task/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/g;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/f;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/task/f;->pathProvider:Lcom/vungle/ads/internal/util/g;

    return-void
.end method

.method private static final onRunJob$lambda-0(Lkotlin/i;)Lcom/vungle/ads/internal/network/VungleApiClient;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/network/VungleApiClient;",
            ">;)",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object p0
.end method

.method private static final onRunJob$lambda-1(Lkotlin/i;)Lcom/vungle/ads/internal/executor/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "+",
            "Lcom/vungle/ads/internal/executor/a;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getPathProvider()Lcom/vungle/ads/internal/util/g;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->pathProvider:Lcom/vungle/ads/internal/util/g;

    return-object v0
.end method

.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/c;)I
    .registers 11

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "jobRunner"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object p1, p0, Lcom/vungle/ads/internal/task/f;->context:Landroid/content/Context;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->a:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/vungle/ads/internal/task/f$b;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/task/f$b;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/ads/internal/task/f;->context:Landroid/content/Context;

    new-instance v1, Lcom/vungle/ads/internal/task/f$c;

    invoke-direct {v1, v0}, Lcom/vungle/ads/internal/task/f$c;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p2

    new-instance v7, Lcom/vungle/ads/internal/network/h;

    invoke-static {p1}, Lcom/vungle/ads/internal/task/f;->onRunJob$lambda-0(Lkotlin/i;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v1

    invoke-static {p2}, Lcom/vungle/ads/internal/task/f;->onRunJob$lambda-1(Lkotlin/i;)Lcom/vungle/ads/internal/executor/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getIoExecutor()Lcom/vungle/ads/internal/executor/d;

    move-result-object v5

    iget-object v6, p0, Lcom/vungle/ads/internal/task/f;->pathProvider:Lcom/vungle/ads/internal/util/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/vungle/ads/internal/network/h;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/g;)V

    invoke-static {p2}, Lcom/vungle/ads/internal/task/f;->onRunJob$lambda-1(Lkotlin/i;)Lcom/vungle/ads/internal/executor/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getJobExecutor()Lcom/vungle/ads/internal/executor/d;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/vungle/ads/internal/network/h;->resendStoredTpats$vungle_ads_release(Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x0

    return p1
.end method

###### Class com.vungle.ads.internal.task.ResendTpatJob.a (com.vungle.ads.internal.task.f$a)
.class public final Lcom/vungle/ads/internal/task/f$a;
.super Ljava/lang/Object;
.source "ResendTpatJob.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/task/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vungle/ads/internal/task/ResendTpatJob$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "makeJobInfo",
        "Lcom/vungle/ads/internal/task/JobInfo;",
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
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeJobInfo()Lcom/vungle/ads/internal/task/JobInfo;
    .registers 3

    new-instance v0, Lcom/vungle/ads/internal/task/JobInfo;

    const-string v1, "ResendTpatJob"

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/JobInfo;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/JobInfo;->setPriority(I)Lcom/vungle/ads/internal/task/JobInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/task/JobInfo;->setUpdateCurrent(Z)Lcom/vungle/ads/internal/task/JobInfo;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.task.ResendTpatJob.b (com.vungle.ads.internal.task.f$b)
.class public final Lcom/vungle/ads/internal/task/f$b;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/task/f;->onRunJob(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/c;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/network/VungleApiClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/task/f$b;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/f$b;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.task.ResendTpatJob.c (com.vungle.ads.internal.task.f$c)
.class public final Lcom/vungle/ads/internal/task/f$c;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/task/f;->onRunJob(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/c;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/executor/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/task/f$c;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/f$c;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
