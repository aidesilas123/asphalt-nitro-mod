###### Class com.unity3d.scar.adapter.common.i (com.unity3d.scar.adapter.common.i)
.class public abstract Lcom/unity3d/scar/adapter/common/i;
.super Ljava/lang/Object;
.source "ScarAdapterBase.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/d;


# instance fields
.field protected a:Lcom/unity3d/scar/adapter/common/l/c;

.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unity3d/scar/adapter/common/scarads/a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/unity3d/scar/adapter/common/scarads/a;

.field protected d:Lcom/unity3d/scar/adapter/common/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/scar/adapter/common/b<",
            "Lcom/unity3d/scar/adapter/common/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/b<",
            "Lcom/unity3d/scar/adapter/common/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/i;->b:Ljava/util/Map;

    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ZLcom/unity3d/scar/adapter/common/l/b;)V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/i;->a:Lcom/unity3d/scar/adapter/common/l/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/unity3d/scar/adapter/common/l/c;->a(Landroid/content/Context;ZLcom/unity3d/scar/adapter/common/l/b;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/l/b;)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/i;->a:Lcom/unity3d/scar/adapter/common/l/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unity3d/scar/adapter/common/l/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;Lcom/unity3d/scar/adapter/common/l/b;)V

    return-void
.end method

.method public d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/i;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/scar/adapter/common/scarads/a;

    if-nez v0, :cond_2a

    iget-object p1, p0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find ad for placement \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/unity3d/scar/adapter/common/GMAAdsError;->NoAdsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/unity3d/scar/adapter/common/GMAAdsError;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/unity3d/scar/adapter/common/b;->handleError(Lcom/unity3d/scar/adapter/common/h;)V

    goto :goto_34

    :cond_2a
    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/i;->c:Lcom/unity3d/scar/adapter/common/scarads/a;

    new-instance p2, Lcom/unity3d/scar/adapter/common/i$a;

    invoke-direct {p2, p0, p1}, Lcom/unity3d/scar/adapter/common/i$a;-><init>(Lcom/unity3d/scar/adapter/common/i;Landroid/app/Activity;)V

    invoke-static {p2}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_34
    return-void
.end method
