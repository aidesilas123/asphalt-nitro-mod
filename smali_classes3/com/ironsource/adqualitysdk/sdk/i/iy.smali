###### Class com.json.adqualitysdk.sdk.i.iy (com.ironsource.adqualitysdk.sdk.i.iy)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/iy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# instance fields
.field private b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ironsource/adqualitysdk/sdk/i/ij;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Landroid/view/Choreographer$FrameCallback;

.field private f:Lcom/ironsource/adqualitysdk/sdk/i/je;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->c:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Ljava/util/Set;
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->c:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/view/Choreographer$FrameCallback;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->e:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b:Z

    return v0
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/iy;Landroid/view/Choreographer$FrameCallback;)Landroid/view/Choreographer$FrameCallback;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->e:Landroid/view/Choreographer$FrameCallback;

    return-object p1
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->c:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Lcom/ironsource/adqualitysdk/sdk/i/je;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->f:Lcom/ironsource/adqualitysdk/sdk/i/je;

    return-object p0
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b:Z

    return p0
.end method

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/je;)Lcom/ironsource/adqualitysdk/sdk/i/je;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->f:Lcom/ironsource/adqualitysdk/sdk/i/je;

    return-object p1
.end method

.method static synthetic j(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V
    .registers 3

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b:Z

    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1d

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b:Z

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static declared-synchronized ﻛ()Lcom/ironsource/adqualitysdk/sdk/i/iy;
    .registers 2

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/iy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/iy;->a:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;-><init>()V

    sput-object v1, Lcom/ironsource/adqualitysdk/sdk/i/iy;->a:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    :cond_e
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/iy;->a:Lcom/ironsource/adqualitysdk/sdk/i/iy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

.method public final declared-synchronized ﾇ()V
    .registers 2

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
    .registers 3

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method
