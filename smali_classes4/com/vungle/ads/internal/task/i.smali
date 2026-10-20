###### Class com.vungle.ads.internal.task.VungleJobCreator (com.vungle.ads.internal.task.i)
.class public final Lcom/vungle/ads/internal/task/i;
.super Ljava/lang/Object;
.source "VungleJobCreator.kt"

# interfaces
.implements Lcom/vungle/ads/internal/task/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vungle/ads/internal/task/VungleJobCreator;",
        "Lcom/vungle/ads/internal/task/JobCreator;",
        "context",
        "Landroid/content/Context;",
        "pathProvider",
        "Lcom/vungle/ads/internal/util/PathProvider;",
        "(Landroid/content/Context;Lcom/vungle/ads/internal/util/PathProvider;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getPathProvider",
        "()Lcom/vungle/ads/internal/util/PathProvider;",
        "create",
        "Lcom/vungle/ads/internal/task/Job;",
        "tag",
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
.field private final context:Landroid/content/Context;

.field private final pathProvider:Lcom/vungle/ads/internal/util/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/g;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/task/i;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/task/i;->pathProvider:Lcom/vungle/ads/internal/util/g;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/vungle/ads/internal/task/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/ads/internal/task/h;
        }
    .end annotation

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_4b

    const-string v0, "CleanupJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance p1, Lcom/vungle/ads/internal/task/CleanupJob;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/i;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/i;->pathProvider:Lcom/vungle/ads/internal/util/g;

    invoke-direct {p1, v0, v1}, Lcom/vungle/ads/internal/task/CleanupJob;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/g;)V

    goto :goto_33

    :cond_22
    const-string v0, "ResendTpatJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance p1, Lcom/vungle/ads/internal/task/f;

    iget-object v0, p0, Lcom/vungle/ads/internal/task/i;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/task/i;->pathProvider:Lcom/vungle/ads/internal/util/g;

    invoke-direct {p1, v0, v1}, Lcom/vungle/ads/internal/task/f;-><init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/g;)V

    :goto_33
    return-object p1

    :cond_34
    new-instance v0, Lcom/vungle/ads/internal/task/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Job Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/task/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    new-instance p1, Lcom/vungle/ads/internal/task/h;

    const-string v0, "Job tag is null"

    invoke-direct {p1, v0}, Lcom/vungle/ads/internal/task/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/task/i;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getPathProvider()Lcom/vungle/ads/internal/util/g;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/task/i;->pathProvider:Lcom/vungle/ads/internal/util/g;

    return-object v0
.end method
