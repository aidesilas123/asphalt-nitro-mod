###### Class com.bytedance.sdk.component.e.a.i (com.bytedance.sdk.component.e.a.i)
.class public Lcom/bytedance/sdk/component/e/a/i;
.super Ljava/lang/Object;
.source "LogInternalManager.java"


# static fields
.field private static volatile j:Lcom/bytedance/sdk/component/e/a/e/a;

.field private static m:Lcom/bytedance/sdk/component/e/a/i;


# instance fields
.field private volatile a:Landroid/content/Context;

.field private volatile b:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private volatile c:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private volatile d:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private volatile e:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private volatile f:Lcom/bytedance/sdk/component/e/a/d/b/a;

.field private volatile g:Lcom/bytedance/sdk/component/e/a/a/e;

.field private volatile h:Z

.field private volatile i:Lcom/bytedance/sdk/component/e/a/f;

.field private volatile k:Lcom/bytedance/sdk/component/e/a/b/c;

.field private volatile l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/e/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static e()Lcom/bytedance/sdk/component/e/a/e/a;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/e/a/i;->j:Lcom/bytedance/sdk/component/e/a/e/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/bytedance/sdk/component/e/a/i;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/e/a/i;->j:Lcom/bytedance/sdk/component/e/a/e/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bytedance/sdk/component/e/a/e/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/e/a/e/b;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/e/a/i;->j:Lcom/bytedance/sdk/component/e/a/e/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bytedance/sdk/component/e/a/i;->j:Lcom/bytedance/sdk/component/e/a/e/a;

    return-object v0
.end method

.method public static declared-synchronized g()Lcom/bytedance/sdk/component/e/a/i;
    .registers 2

    const-class v0, Lcom/bytedance/sdk/component/e/a/i;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/component/e/a/i;->m:Lcom/bytedance/sdk/component/e/a/i;

    if-nez v1, :cond_e

    new-instance v1, Lcom/bytedance/sdk/component/e/a/i;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/e/a/i;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/e/a/i;->m:Lcom/bytedance/sdk/component/e/a/i;

    :cond_e
    sget-object v1, Lcom/bytedance/sdk/component/e/a/i;->m:Lcom/bytedance/sdk/component/e/a/i;
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
.method public a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->g:Lcom/bytedance/sdk/component/e/a/a/e;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->k:Lcom/bytedance/sdk/component/e/a/b/c;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/d/a;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/e/a/d/a;->a(J)V

    sget-object v0, Lcom/bytedance/sdk/component/e/a/b/d;->a:Lcom/bytedance/sdk/component/e/a/b/d;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/d/a;->d()B

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/e/a/b/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;I)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->f:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->i:Lcom/bytedance/sdk/component/e/a/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/f/a;->a()Lcom/bytedance/sdk/component/e/a/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/e/a/f/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/f/a;->a()Lcom/bytedance/sdk/component/e/a/f/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/e/a/f/b;->a(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/bytedance/sdk/component/e/a/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->b:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/e/a/i;->h:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/e/a/i;->h:Z

    return v0
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/e/a/b/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->l:Ljava/util/Map;

    return-object v0
.end method

.method public c(Lcom/bytedance/sdk/component/e/a/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->c:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-void
.end method

.method public d()Lcom/bytedance/sdk/component/e/a/a/e;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->g:Lcom/bytedance/sdk/component/e/a/a/e;

    return-object v0
.end method

.method public d(Lcom/bytedance/sdk/component/e/a/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->d:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-void
.end method

.method public e(Lcom/bytedance/sdk/component/e/a/d/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/e/a/i;->e:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-void
.end method

.method public f()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->a:Landroid/content/Context;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/component/e/a/b/c;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->k:Lcom/bytedance/sdk/component/e/a/b/c;

    return-object v0
.end method

.method public i()V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/e/a/b/d;->a:Lcom/bytedance/sdk/component/e/a/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/b/d;->b()V

    return-void
.end method

.method public j()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->f:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-object v0
.end method

.method public k()V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/e/a/b/d;->a:Lcom/bytedance/sdk/component/e/a/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/b/d;->c()V

    return-void
.end method

.method public l()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->b:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-object v0
.end method

.method public m()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->c:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-object v0
.end method

.method public n()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->d:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-object v0
.end method

.method public o()Lcom/bytedance/sdk/component/e/a/d/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->e:Lcom/bytedance/sdk/component/e/a/d/b/a;

    return-object v0
.end method

.method public p()Lcom/bytedance/sdk/component/e/a/f;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/e/a/i;->i:Lcom/bytedance/sdk/component/e/a/f;

    return-object v0
.end method
