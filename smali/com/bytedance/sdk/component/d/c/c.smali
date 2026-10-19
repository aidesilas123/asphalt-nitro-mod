###### Class com.bytedance.sdk.component.d.c.c (com.bytedance.sdk.component.d.c.c)
.class public Lcom/bytedance/sdk/component/d/c/c;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/d/c/c$a;,
        Lcom/bytedance/sdk/component/d/c/c$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Ljava/util/concurrent/ExecutorService;

.field private D:Z

.field a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/bytedance/sdk/component/d/o;

.field private f:Landroid/widget/ImageView$ScaleType;

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:I

.field private i:I

.field private j:Lcom/bytedance/sdk/component/d/h;

.field private k:Lcom/bytedance/sdk/component/d/u;

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m:Z

.field private n:Z

.field private o:Z

.field private p:Lcom/bytedance/sdk/component/d/s;

.field private q:Lcom/bytedance/sdk/component/d/t;

.field private r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/component/d/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroid/os/Handler;

.field private t:Z

.field private u:Lcom/bytedance/sdk/component/d/g;

.field private v:I

.field private w:Lcom/bytedance/sdk/component/d/c/f;

.field private x:Lcom/bytedance/sdk/component/d/c/a;

.field private y:Lcom/bytedance/sdk/component/d/b;

.field private z:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/d/c/c$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->r:Ljava/util/Queue;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->s:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->t:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->a(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->b:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/component/d/c/c$a;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->b(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/o;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/d/c/c$a;-><init>(Lcom/bytedance/sdk/component/d/c/c;Lcom/bytedance/sdk/component/d/o;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->e:Lcom/bytedance/sdk/component/d/o;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->c(Lcom/bytedance/sdk/component/d/c/c$b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->l:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->d(Lcom/bytedance/sdk/component/d/c/c$b;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->f:Landroid/widget/ImageView$ScaleType;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->e(Lcom/bytedance/sdk/component/d/c/c$b;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->g:Landroid/graphics/Bitmap$Config;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->f(Lcom/bytedance/sdk/component/d/c/c$b;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/d/c/c;->h:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->g(Lcom/bytedance/sdk/component/d/c/c$b;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/d/c/c;->i:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->h(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/u;

    move-result-object v0

    if-nez v0, :cond_55

    sget-object v0, Lcom/bytedance/sdk/component/d/u;->a:Lcom/bytedance/sdk/component/d/u;

    goto :goto_59

    :cond_55
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->h(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/u;

    move-result-object v0

    :goto_59
    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->k:Lcom/bytedance/sdk/component/d/u;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->i(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/t;

    move-result-object v0

    if-nez v0, :cond_64

    sget-object v0, Lcom/bytedance/sdk/component/d/t;->b:Lcom/bytedance/sdk/component/d/t;

    goto :goto_68

    :cond_64
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->i(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/t;

    move-result-object v0

    :goto_68
    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->q:Lcom/bytedance/sdk/component/d/t;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->j(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/s;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->p:Lcom/bytedance/sdk/component/d/s;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->y:Lcom/bytedance/sdk/component/d/b;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->k(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->k(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/c/c;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->k(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Ljava/lang/String;)V

    :cond_8e
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->l(Lcom/bytedance/sdk/component/d/c/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->n:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->m(Lcom/bytedance/sdk/component/d/c/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->o:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->n(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->w:Lcom/bytedance/sdk/component/d/c/f;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->o(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->j:Lcom/bytedance/sdk/component/d/h;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->p(Lcom/bytedance/sdk/component/d/c/c$b;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/d/c/c;->A:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->q(Lcom/bytedance/sdk/component/d/c/c$b;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/d/c/c;->z:I

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->r(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->C:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->s(Lcom/bytedance/sdk/component/d/c/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->B:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->t(Lcom/bytedance/sdk/component/d/c/c$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/d/c/c;->D:Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/c;->r:Ljava/util/Queue;

    new-instance v0, Lcom/bytedance/sdk/component/d/d/c;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/d/c;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/d/c/c$b;Lcom/bytedance/sdk/component/d/c/c$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/c;-><init>(Lcom/bytedance/sdk/component/d/c/c$b;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/b;
    .registers 3

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->u(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/b;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->u(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/b;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->v(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c$b;->v(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a;->a(Ljava/io/File;)Lcom/bytedance/sdk/component/d/b;

    move-result-object p1

    return-object p1

    :cond_23
    invoke-static {}, Lcom/bytedance/sdk/component/d/c/a/a;->g()Lcom/bytedance/sdk/component/d/b;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    new-instance v0, Lcom/bytedance/sdk/component/d/d/h;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/d/h;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/d/d/h;->a(Lcom/bytedance/sdk/component/d/c/c;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/c;->r:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/c;ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/c/c;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/c;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/d/c/c;->m:Z

    return p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/d/c/c;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->r:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/s;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->p:Lcom/bytedance/sdk/component/d/s;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/i;
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/c;->w()Lcom/bytedance/sdk/component/d/i;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/component/d/c/c;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->l:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/u;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->k:Lcom/bytedance/sdk/component/d/u;

    return-object p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/component/d/c/c;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->s:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/h;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->j:Lcom/bytedance/sdk/component/d/h;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/t;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->q:Lcom/bytedance/sdk/component/d/t;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/component/d/c/c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method private w()Lcom/bytedance/sdk/component/d/i;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->w:Lcom/bytedance/sdk/component/d/c/f;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->e:Lcom/bytedance/sdk/component/d/o;

    if-eqz v0, :cond_10

    const/16 v1, 0x3ed

    const-string v2, "not init !"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/o;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    return-object p0

    :cond_11
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c;->C:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/c/f;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->C:Ljava/util/concurrent/ExecutorService;

    :cond_1b
    new-instance v0, Lcom/bytedance/sdk/component/d/c/c$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/d/c/c$1;-><init>(Lcom/bytedance/sdk/component/d/c/c;)V

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/d/c/c;->D:Z

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_3d

    :cond_28
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c;->C:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3d

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->a:Ljava/util/concurrent/Future;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_3d

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/c;->v:I

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/d/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c;->x:Lcom/bytedance/sdk/component/d/c/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/d/g;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c;->u:Lcom/bytedance/sdk/component/d/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/d/c/c;->t:Z

    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/d/d/i;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->m:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->r:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/d/c/c;->h:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_18
    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c;->c:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/d/c/c;->i:I

    return v0
.end method

.method public d()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->f:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/graphics/Bitmap$Config;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/d/c/c;->z:I

    return v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/d/c/c;->A:I

    return v0
.end method

.method public i()Lcom/bytedance/sdk/component/d/o;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->e:Lcom/bytedance/sdk/component/d/o;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Landroid/graphics/Bitmap$Config;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public l()Lcom/bytedance/sdk/component/d/u;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->k:Lcom/bytedance/sdk/component/d/u;

    return-object v0
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->n:Z

    return v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->o:Z

    return v0
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->t:Z

    return v0
.end method

.method public p()Lcom/bytedance/sdk/component/d/g;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->u:Lcom/bytedance/sdk/component/d/g;

    return-object v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lcom/bytedance/sdk/component/d/c/c;->v:I

    return v0
.end method

.method public r()Lcom/bytedance/sdk/component/d/c/a;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->x:Lcom/bytedance/sdk/component/d/c/a;

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/component/d/c/f;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->w:Lcom/bytedance/sdk/component/d/c/f;

    return-object v0
.end method

.method public t()Lcom/bytedance/sdk/component/d/b;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c;->y:Lcom/bytedance/sdk/component/d/b;

    return-object v0
.end method

.method public u()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/d/c/c;->B:Z

    return v0
.end method

.method public v()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/d/c/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/d/c/c;->l()Lcom/bytedance/sdk/component/d/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.bytedance.sdk.component.d.c.c.AnonymousClass1 (com.bytedance.sdk.component.d.c.c$1)
.class Lcom/bytedance/sdk/component/d/c/c$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/c/c;->w()Lcom/bytedance/sdk/component/d/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/d/c/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/d/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/c/c;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->b(Lcom/bytedance/sdk/component/d/c/c;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/d/d/i;

    if-nez v0, :cond_17

    goto :goto_4b

    :cond_17
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c;->c(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/s;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c;->c(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/s;

    move-result-object v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/d/i;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/d/s;->a(Ljava/lang/String;Lcom/bytedance/sdk/component/d/i;)V

    :cond_2e
    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/d/i;->a(Lcom/bytedance/sdk/component/d/c/c;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c;->c(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/s;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c;->c(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/s;

    move-result-object v1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/d/i;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/component/d/s;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/d/i;)V

    goto :goto_0

    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/c/c;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    const/16 v1, 0x3eb

    const-string v2, "canceled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/c/c;ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_0 .. :try_end_5d} :catchall_5e

    goto :goto_7f

    :catchall_5e
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    const/16 v2, 0x7d0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/d/c/c;->a(Lcom/bytedance/sdk/component/d/c/c;ILjava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->c(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/s;

    move-result-object v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->c(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/s;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$1;->a:Lcom/bytedance/sdk/component/d/c/c;

    const-string v2, "exception"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/d/s;->b(Ljava/lang/String;Lcom/bytedance/sdk/component/d/i;)V

    :cond_7f
    :goto_7f
    return-void
.end method

###### Class com.bytedance.sdk.component.d.c.c.a (com.bytedance.sdk.component.d.c.c$a)
.class Lcom/bytedance/sdk/component/d/c/c$a;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/d/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/d/c/c;

.field private b:Lcom/bytedance/sdk/component/d/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/c/c;Lcom/bytedance/sdk/component/d/o;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/c$a;->b:Lcom/bytedance/sdk/component/d/o;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/c$a;)Lcom/bytedance/sdk/component/d/o;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->b:Lcom/bytedance/sdk/component/d/o;

    return-object p0
.end method

.method private a(Landroid/widget/ImageView;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    const v1, 0x413c0901

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c;->j(Lcom/bytedance/sdk/component/d/c/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->i(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/t;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/d/t;->b:Lcom/bytedance/sdk/component/d/t;

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->g(Lcom/bytedance/sdk/component/d/c/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/d/c/c$a$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/c/c$a$3;-><init>(Lcom/bytedance/sdk/component/d/c/c$a;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20

    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->b:Lcom/bytedance/sdk/component/d/o;

    if-eqz v0, :cond_20

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/d/o;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public a(Lcom/bytedance/sdk/component/d/k;)V
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->e(Lcom/bytedance/sdk/component/d/c/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/c/c;->f(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/u;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/component/d/u;->c:Lcom/bytedance/sdk/component/d/u;

    if-eq v1, v2, :cond_3a

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/d/c/c$a;->a(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->b()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v2}, Lcom/bytedance/sdk/component/d/c/c;->g(Lcom/bytedance/sdk/component/d/c/c;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/d/c/c$a$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/component/d/c/c$a$1;-><init>(Lcom/bytedance/sdk/component/d/c/c$a;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->h(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/h;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->h(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/h;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/h;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/d/k;->a(Ljava/lang/Object;)V
    :try_end_5f
    .catchall {:try_start_3a .. :try_end_5f} :catchall_60

    goto :goto_61

    :catchall_60
    nop

    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->i(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/t;

    move-result-object v0

    sget-object v1, Lcom/bytedance/sdk/component/d/t;->b:Lcom/bytedance/sdk/component/d/t;

    if-ne v0, v1, :cond_7a

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->a:Lcom/bytedance/sdk/component/d/c/c;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c;->g(Lcom/bytedance/sdk/component/d/c/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/d/c/c$a$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/d/c/c$a$2;-><init>(Lcom/bytedance/sdk/component/d/c/c$a;Lcom/bytedance/sdk/component/d/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_81

    :cond_7a
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a;->b:Lcom/bytedance/sdk/component/d/o;

    if-eqz v0, :cond_81

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/d/o;->a(Lcom/bytedance/sdk/component/d/k;)V

    :cond_81
    :goto_81
    return-void
.end method

###### Class com.bytedance.sdk.component.d.c.c.a.AnonymousClass1 (com.bytedance.sdk.component.d.c.c$a$1)
.class Lcom/bytedance/sdk/component/d/c/c$a$1;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/c/c$a;->a(Lcom/bytedance/sdk/component/d/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/bytedance/sdk/component/d/c/c$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/d/c/c$a;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .registers 4

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$a$1;->c:Lcom/bytedance/sdk/component/d/c/c$a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/c$a$1;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/c/c$a$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$a$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.d.c.c.a.AnonymousClass2 (com.bytedance.sdk.component.d.c.c$a$2)
.class Lcom/bytedance/sdk/component/d/c/c$a$2;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/c/c$a;->a(Lcom/bytedance/sdk/component/d/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/component/d/k;

.field final synthetic b:Lcom/bytedance/sdk/component/d/c/c$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/d/c/c$a;Lcom/bytedance/sdk/component/d/k;)V
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$a$2;->b:Lcom/bytedance/sdk/component/d/c/c$a;

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/c$a$2;->a:Lcom/bytedance/sdk/component/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a$2;->b:Lcom/bytedance/sdk/component/d/c/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c$a;->a(Lcom/bytedance/sdk/component/d/c/c$a;)Lcom/bytedance/sdk/component/d/o;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a$2;->b:Lcom/bytedance/sdk/component/d/c/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c$a;->a(Lcom/bytedance/sdk/component/d/c/c$a;)Lcom/bytedance/sdk/component/d/o;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/c$a$2;->a:Lcom/bytedance/sdk/component/d/k;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/o;->a(Lcom/bytedance/sdk/component/d/k;)V

    :cond_13
    return-void
.end method

###### Class com.bytedance.sdk.component.d.c.c.a.AnonymousClass3 (com.bytedance.sdk.component.d.c.c$a$3)
.class Lcom/bytedance/sdk/component/d/c/c$a$3;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/d/c/c$a;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Throwable;

.field final synthetic d:Lcom/bytedance/sdk/component/d/c/c$a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/d/c/c$a;ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->d:Lcom/bytedance/sdk/component/d/c/c$a;

    iput p2, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->a:I

    iput-object p3, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->d:Lcom/bytedance/sdk/component/d/c/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c$a;->a(Lcom/bytedance/sdk/component/d/c/c$a;)Lcom/bytedance/sdk/component/d/o;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->d:Lcom/bytedance/sdk/component/d/c/c$a;

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/c$a;->a(Lcom/bytedance/sdk/component/d/c/c$a;)Lcom/bytedance/sdk/component/d/o;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/component/d/c/c$a$3;->c:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/d/o;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    return-void
.end method

###### Class com.bytedance.sdk.component.d.c.c.b (com.bytedance.sdk.component.d.c.c$b)
.class public Lcom/bytedance/sdk/component/d/c/c$b;
.super Ljava/lang/Object;
.source "ImageRequest.java"

# interfaces
.implements Lcom/bytedance/sdk/component/d/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/d/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/bytedance/sdk/component/d/o;

.field private b:Landroid/widget/ImageView;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/ImageView$ScaleType;

.field private f:Landroid/graphics/Bitmap$Config;

.field private g:I

.field private h:I

.field private i:Lcom/bytedance/sdk/component/d/u;

.field private j:Lcom/bytedance/sdk/component/d/t;

.field private k:Lcom/bytedance/sdk/component/d/s;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/bytedance/sdk/component/d/b;

.field private p:Lcom/bytedance/sdk/component/d/c/f;

.field private q:Lcom/bytedance/sdk/component/d/h;

.field private r:I

.field private s:I

.field private t:Z

.field private u:Ljava/util/concurrent/ExecutorService;

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/c/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->p:Lcom/bytedance/sdk/component/d/c/f;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/o;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->a:Lcom/bytedance/sdk/component/d/o;

    return-object p0
.end method

.method static synthetic c(Lcom/bytedance/sdk/component/d/c/c$b;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/bytedance/sdk/component/d/c/c$b;)Landroid/widget/ImageView$ScaleType;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->e:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method static synthetic e(Lcom/bytedance/sdk/component/d/c/c$b;)Landroid/graphics/Bitmap$Config;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->f:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method static synthetic f(Lcom/bytedance/sdk/component/d/c/c$b;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->g:I

    return p0
.end method

.method static synthetic g(Lcom/bytedance/sdk/component/d/c/c$b;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->h:I

    return p0
.end method

.method static synthetic h(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/u;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->i:Lcom/bytedance/sdk/component/d/u;

    return-object p0
.end method

.method static synthetic i(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/t;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->j:Lcom/bytedance/sdk/component/d/t;

    return-object p0
.end method

.method static synthetic j(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/s;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->k:Lcom/bytedance/sdk/component/d/s;

    return-object p0
.end method

.method static synthetic k(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/bytedance/sdk/component/d/c/c$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->l:Z

    return p0
.end method

.method static synthetic m(Lcom/bytedance/sdk/component/d/c/c$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->m:Z

    return p0
.end method

.method static synthetic n(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/c/f;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->p:Lcom/bytedance/sdk/component/d/c/f;

    return-object p0
.end method

.method static synthetic o(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/h;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->q:Lcom/bytedance/sdk/component/d/h;

    return-object p0
.end method

.method static synthetic p(Lcom/bytedance/sdk/component/d/c/c$b;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->s:I

    return p0
.end method

.method static synthetic q(Lcom/bytedance/sdk/component/d/c/c$b;)I
    .registers 1

    iget p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->r:I

    return p0
.end method

.method static synthetic r(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->u:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic s(Lcom/bytedance/sdk/component/d/c/c$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->t:Z

    return p0
.end method

.method static synthetic t(Lcom/bytedance/sdk/component/d/c/c$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->v:Z

    return p0
.end method

.method static synthetic u(Lcom/bytedance/sdk/component/d/c/c$b;)Lcom/bytedance/sdk/component/d/b;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->o:Lcom/bytedance/sdk/component/d/b;

    return-object p0
.end method

.method static synthetic v(Lcom/bytedance/sdk/component/d/c/c$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/component/d/c/c$b;->n:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/d/i;
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->b:Landroid/widget/ImageView;

    new-instance p1, Lcom/bytedance/sdk/component/d/c/c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/d/c/c;-><init>(Lcom/bytedance/sdk/component/d/c/c$b;Lcom/bytedance/sdk/component/d/c/c$1;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c;->d(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/component/d/o;)Lcom/bytedance/sdk/component/d/i;
    .registers 3

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->a:Lcom/bytedance/sdk/component/d/o;

    new-instance p1, Lcom/bytedance/sdk/component/d/c/c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/d/c/c;-><init>(Lcom/bytedance/sdk/component/d/c/c$b;Lcom/bytedance/sdk/component/d/c/c$1;)V

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/c;->d(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/component/d/o;Lcom/bytedance/sdk/component/d/t;)Lcom/bytedance/sdk/component/d/i;
    .registers 3

    iput-object p2, p0, Lcom/bytedance/sdk/component/d/c/c$b;->j:Lcom/bytedance/sdk/component/d/t;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/c/c$b;->a(Lcom/bytedance/sdk/component/d/o;)Lcom/bytedance/sdk/component/d/i;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->g:I

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->f:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->e:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/d/h;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->q:Lcom/bytedance/sdk/component/d/h;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/d/s;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->k:Lcom/bytedance/sdk/component/d/s;

    return-object p0
.end method

.method public a(Lcom/bytedance/sdk/component/d/u;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->i:Lcom/bytedance/sdk/component/d/u;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->m:Z

    return-object p0
.end method

.method public b(I)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->h:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->n:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->r:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/component/d/j;
    .registers 2

    iput p1, p0, Lcom/bytedance/sdk/component/d/c/c$b;->s:I

    return-object p0
.end method
