###### Class com.unity3d.scar.adapter.common.a (com.unity3d.scar.adapter.common.a)
.class public Lcom/unity3d/scar/adapter/common/a;
.super Ljava/lang/Object;
.source "DispatchGroup.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    iput v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    return-void
.end method

.method private d()V
    .registers 2

    iget v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unity3d/scar/adapter/common/a;->a:I

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/common/a;->d()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/a;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/unity3d/scar/adapter/common/a;->d()V

    return-void
.end method
