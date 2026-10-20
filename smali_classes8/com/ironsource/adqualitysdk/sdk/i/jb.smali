###### Class com.json.adqualitysdk.sdk.i.jb (com.ironsource.adqualitysdk.sdk.i.jb)
.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/jb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/jb$a;,
        Lcom/ironsource/adqualitysdk/sdk/i/jb$b;
    }
.end annotation


# static fields
.field private static a:Lcom/ironsource/adqualitysdk/sdk/i/jb;


# instance fields
.field b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/adqualitysdk/sdk/i/jc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->b:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->c:Ljava/util/Set;

    return-void
.end method

.method public static declared-synchronized ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;
    .registers 4

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jb;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a:Lcom/ironsource/adqualitysdk/sdk/i/jb;

    if-nez v1, :cond_1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-lt v1, v2, :cond_14

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;

    invoke-direct {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jb$a;-><init>(B)V

    goto :goto_19

    :cond_14
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/jb$b;

    invoke-direct {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/jb$b;-><init>(B)V

    :goto_19
    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a:Lcom/ironsource/adqualitysdk/sdk/i/jb;

    :cond_1b
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/jb;->a:Lcom/ironsource/adqualitysdk/sdk/i/jb;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected final declared-synchronized a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/adqualitysdk/sdk/i/jc;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract ﻐ(Landroid/app/Application;Landroid/app/Activity;)V
.end method

.method public final declared-synchronized ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract ﻛ()Landroid/app/Activity;
.end method

.method public abstract ｋ()Z
.end method

.method public final declared-synchronized ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jb;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
