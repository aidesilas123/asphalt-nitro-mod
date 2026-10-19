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

###### Class com.ironsource.adqualitysdk.sdk.i.iy.a (com.ironsource.adqualitysdk.sdk.i.iy$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﾇ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->g(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a;)V

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->i(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/je;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->d(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.a.C0348a (com.ironsource.adqualitysdk.sdk.i.iy$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/jb;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->g(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Lcom/ironsource/adqualitysdk/sdk/i/je;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jb;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/jc;)V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a$a;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.a.C0348a.C0349a (com.ironsource.adqualitysdk.sdk.i.iy$a$a$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->j(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.a.b (com.ironsource.adqualitysdk.sdk.i.iy$a$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/je;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/je;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Landroid/app/Activity;)V
    .registers 2

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$a;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

.method public final ﾒ(Landroid/app/Activity;)V
    .registers 2

    new-instance p1, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$b;

    invoke-direct {p1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;)V

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.a.b.C0350a (com.ironsource.adqualitysdk.sdk.i.iy$a$b$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;->ﻛ(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$b;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.a.b.C0351b (com.ironsource.adqualitysdk.sdk.i.iy$a$b$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;->ﾒ(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/iy$a;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/iy$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->j(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.b (com.ironsource.adqualitysdk.sdk.i.iy$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$b;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$b;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->c(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Z

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.c (com.ironsource.adqualitysdk.sdk.i.iy$c)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$c;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->f(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$c;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->j(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.d (com.ironsource.adqualitysdk.sdk.i.iy$d)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$d;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

.field private synthetic e:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;->e:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->f(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$d;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.e (com.ironsource.adqualitysdk.sdk.i.iy$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$e;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/iy;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/iy;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->h(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->a(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ij;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->d(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$a;

    invoke-direct {v3, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    :cond_2d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_53

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$b;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->e(Lcom/ironsource/adqualitysdk/sdk/i/iy;Landroid/view/Choreographer$FrameCallback;)Landroid/view/Choreographer$FrameCallback;

    :cond_45
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->b(Lcom/ironsource/adqualitysdk/sdk/i/iy;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_53
    const-wide/16 v0, 0x32

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V

    return-void

    :cond_59
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->d:Lcom/ironsource/adqualitysdk/sdk/i/iy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/iy;->e(Lcom/ironsource/adqualitysdk/sdk/i/iy;Landroid/view/Choreographer$FrameCallback;)Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.e.a (com.ironsource.adqualitysdk.sdk.i.iy$e$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$e$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$e;->ﻛ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/ij;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ij;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/ij;

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ij;->ﻐ()V

    return-void
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.iy.e.b (com.ironsource.adqualitysdk.sdk.i.iy$e$b)
.class final Lcom/ironsource/adqualitysdk/sdk/i/iy$e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/iy$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/adqualitysdk/sdk/i/il;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/il;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/il;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 3

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/iy$e$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/il;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void
.end method
