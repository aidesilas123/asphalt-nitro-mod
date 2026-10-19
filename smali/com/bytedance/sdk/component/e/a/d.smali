###### Class com.bytedance.sdk.component.e.a.d (com.bytedance.sdk.component.e.a.d)
.class public Lcom/bytedance/sdk/component/e/a/d;
.super Ljava/lang/Object;
.source "EventMultiUtils.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/component/e/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/component/e/a/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/e/a/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/e/a/d;->a:Lcom/bytedance/sdk/component/e/a/d;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 3

    if-nez p1, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/b/a;->a()V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a()V

    :cond_c
    :goto_c
    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/e/a/a;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/c/a;->a()V

    goto :goto_2e

    :cond_14
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->d()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Lcom/bytedance/sdk/component/e/a/f;->f()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_2e

    new-instance v0, Lcom/bytedance/sdk/component/e/a/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/e/a/d$1;-><init>(Lcom/bytedance/sdk/component/e/a/d;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/e/a/d/a;I)V
    .registers 4

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/b/b/a;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    :cond_c
    :goto_c
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/e/a/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/a/d;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/e/a/d;Lcom/bytedance/sdk/component/e/a/d/a;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/e/a/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/e/a/d;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/e/a/d;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/e/a/d;Ljava/lang/String;Ljava/util/List;ZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/e/a/d;->a(Ljava/lang/String;Ljava/util/List;ZI)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    if-nez p2, :cond_6

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/b/b/a;->a(Ljava/lang/String;)V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Ljava/lang/String;)V

    :cond_c
    :goto_c
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    if-nez p4, :cond_6

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/component/e/a/b/b/a;->a(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p4, v0, :cond_c

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/component/e/a/b/b/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_c
    :goto_c
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/f;)Z
    .registers 6

    if-eqz p1, :cond_27

    if-nez p2, :cond_5

    goto :goto_27

    :cond_5
    invoke-interface {p2}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    return v2

    :cond_e
    invoke-interface {p2}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    if-ne v0, v2, :cond_19

    invoke-interface {p2}, Lcom/bytedance/sdk/component/e/a/f;->o()Z

    move-result p1

    return p1

    :cond_19
    :try_start_19
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->a(Landroid/content/Context;)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1e

    return p1

    :catchall_1e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/e/a/c/c;->d(Ljava/lang/String;)V

    return v2

    :cond_27
    :goto_27
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)V
    .registers 3

    if-nez p1, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/b/a;->b()V

    goto :goto_c

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/b/b/b;->b()V

    :cond_c
    :goto_c
    return-void
.end method

.method private b(Lcom/bytedance/sdk/component/e/a/a;Landroid/content/Context;)V
    .registers 4

    const-string v0, "context == null"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "AdLogConfig == null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->d()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object p1

    const-string p2, "AdLogDepend ==null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/component/e/a/d/a;)V
    .registers 6

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->p()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v0

    if-eqz p1, :cond_8d

    if-eqz v0, :cond_8d

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_8d

    :cond_1d
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->b()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/e/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/f;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchEvent mainProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_51

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/i;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    return-void

    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sub thread dispatch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/d;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/d;->d()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/e/a/d$4;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/bytedance/sdk/component/e/a/d$4;-><init>(Lcom/bytedance/sdk/component/e/a/d;Ljava/lang/String;Lcom/bytedance/sdk/component/e/a/d/a;Lcom/bytedance/sdk/component/e/a/f;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8d

    :cond_7e
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/e/a/d;->a(Lcom/bytedance/sdk/component/e/a/d/a;I)V

    goto :goto_8d

    :cond_86
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/i;->a(Lcom/bytedance/sdk/component/e/a/d/a;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/e/a/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/a/d;->b(I)V

    return-void
.end method

.method private d()Z
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public a()V
    .registers 5

    const-string v0, "EventMultiUtils start"

    invoke-static {v0}, Lcom/bytedance/sdk/component/e/a/c/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->p()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_20

    goto :goto_64

    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->b()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/e/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/f;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->i()V

    return-void

    :cond_40
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/d;->d()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/e/a/d$2;

    const-string v3, "start"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/e/a/d$2;-><init>(Lcom/bytedance/sdk/component/e/a/d;Ljava/lang/String;Lcom/bytedance/sdk/component/e/a/f;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_64

    :cond_55
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/e/a/d;->a(I)V

    goto :goto_64

    :cond_5d
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->i()V

    :cond_64
    :goto_64
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/a;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/e/a/d;->b(Lcom/bytedance/sdk/component/e/a/a;Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/e/a/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->i()Lcom/bytedance/sdk/component/e/a/b/c;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->a(Lcom/bytedance/sdk/component/e/a/b/c;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->f()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->b(Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->g()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->c(Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->b()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->a(Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->h()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->d(Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->e()Lcom/bytedance/sdk/component/e/a/d/b/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->e(Lcom/bytedance/sdk/component/e/a/d/b/a;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/e;

    move-result-object v0

    if-nez v0, :cond_59

    sget-object v0, Lcom/bytedance/sdk/component/e/a/a/a/e;->a:Lcom/bytedance/sdk/component/e/a/a/a/e;

    goto :goto_5d

    :cond_59
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->a()Lcom/bytedance/sdk/component/e/a/a/e;

    move-result-object v0

    :goto_5d
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->a(Lcom/bytedance/sdk/component/e/a/a/e;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->j()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->b(Z)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->d()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->a(Lcom/bytedance/sdk/component/e/a/f;)V

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->c()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/e/a/i;->a(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->l()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/a/b/c/c;->a(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/e/a/a;->k()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/e/a/b/c/c;->b(I)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/a/d;->a(Lcom/bytedance/sdk/component/e/a/a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/e/a/d/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/e/a/d;->b(Lcom/bytedance/sdk/component/e/a/d/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->p()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_6c

    :cond_1b
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->i()Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v1

    if-nez v1, :cond_2f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    return-void

    :cond_2f
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->b()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/e/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/f;)Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_65

    :cond_48
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/d;->d()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/e/a/d$6;

    const-string v3, "trackFailed"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/bytedance/sdk/component/e/a/d$6;-><init>(Lcom/bytedance/sdk/component/e/a/d;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/e/a/f;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_64

    :cond_5d
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/e/a/d;->a(Ljava/lang/String;I)V

    :goto_64
    return-void

    :cond_65
    :goto_65
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/i;->a(Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)V
    .registers 13
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

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->p()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v7

    if-eqz v7, :cond_8a

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8a

    invoke-interface {v7}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_1c

    goto/16 :goto_8a

    :cond_1c
    invoke-interface {v7}, Lcom/bytedance/sdk/component/e/a/f;->i()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    invoke-interface {v7}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    if-eqz p2, :cond_32

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_32
    return-void

    :cond_33
    invoke-interface {v7}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    if-nez v0, :cond_48

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    if-eqz p2, :cond_47

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_47
    return-void

    :cond_48
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->b()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/bytedance/sdk/component/e/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/f;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_83

    :cond_61
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/d;->d()Z

    move-result p4

    if-eqz p4, :cond_7b

    invoke-interface {v7}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object p4

    new-instance v0, Lcom/bytedance/sdk/component/e/a/d$5;

    const-string v3, "trackFailed"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/e/a/d$5;-><init>(Lcom/bytedance/sdk/component/e/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/e/a/f;)V

    invoke-interface {p4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_82

    :cond_7b
    invoke-interface {v7}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/e/a/d;->a(Ljava/lang/String;Ljava/util/List;ZI)V

    :goto_82
    return-void

    :cond_83
    :goto_83
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/component/e/a/i;->a(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/e/a/i;->a(Z)V

    return-void
.end method

.method public b()V
    .registers 5

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->p()Lcom/bytedance/sdk/component/e/a/f;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_5f

    :cond_1b
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->b()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/e/a/i;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/e/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/e/a/f;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->k()V

    return-void

    :cond_3b
    invoke-direct {p0}, Lcom/bytedance/sdk/component/e/a/d;->d()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/e/a/d$3;

    const-string v3, "stop"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/e/a/d$3;-><init>(Lcom/bytedance/sdk/component/e/a/d;Ljava/lang/String;Lcom/bytedance/sdk/component/e/a/f;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5f

    :cond_50
    invoke-interface {v0}, Lcom/bytedance/sdk/component/e/a/f;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/e/a/d;->b(I)V

    goto :goto_5f

    :cond_58
    invoke-static {}, Lcom/bytedance/sdk/component/e/a/i;->g()Lcom/bytedance/sdk/component/e/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/e/a/i;->k()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method
