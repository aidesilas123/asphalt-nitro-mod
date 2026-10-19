###### Class com.bytedance.sdk.component.d.c.f (com.bytedance.sdk.component.d.c.f)
.class public Lcom/bytedance/sdk/component/d/c/f;
.super Ljava/lang/Object;
.source "LoadFactory.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/component/d/m;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/d/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/d/r;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bytedance/sdk/component/d/d;

.field private g:Lcom/bytedance/sdk/component/d/l;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Lcom/bytedance/sdk/component/d/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/d/m;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->e:Ljava/util/Map;

    invoke-static {p2}, Lcom/bytedance/sdk/component/d/c/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/d/m;

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/d/m;->h()Lcom/bytedance/sdk/component/d/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/d/c/a/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/component/d/b;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/q;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/m;->d()Lcom/bytedance/sdk/component/d/q;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/b/a;->a(Lcom/bytedance/sdk/component/d/q;)Lcom/bytedance/sdk/component/d/q;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/b;->b()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/b/a;->a(I)Lcom/bytedance/sdk/component/d/q;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/r;
    .registers 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/m;->e()Lcom/bytedance/sdk/component/d/r;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/b;->b()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/d/c/a/b/e;->a(I)Lcom/bytedance/sdk/component/d/r;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/c;
    .registers 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/m;->f()Lcom/bytedance/sdk/component/d/c;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Lcom/bytedance/sdk/component/d/c/a/a/b;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/b;->e()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/b;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/d/c/f;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/component/d/c/a/a/b;-><init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method private i()Lcom/bytedance/sdk/component/d/d;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/m;->c()Lcom/bytedance/sdk/component/d/d;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/bytedance/sdk/component/d/b/b;->a()Lcom/bytedance/sdk/component/d/d;

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method private j()Lcom/bytedance/sdk/component/d/l;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/m;->a()Lcom/bytedance/sdk/component/d/l;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/component/d/a/b;->a()Lcom/bytedance/sdk/component/d/l;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/m;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/component/d/a/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private l()Lcom/bytedance/sdk/component/d/p;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->b:Lcom/bytedance/sdk/component/d/m;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/m;->g()Lcom/bytedance/sdk/component/d/p;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/bytedance/sdk/component/d/c/g;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/c/g;-><init>()V

    :cond_d
    return-object v0
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/component/d/c/c;)Lcom/bytedance/sdk/component/d/c/b/a;
    .registers 10

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->d()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/bytedance/sdk/component/d/c/b/a;->a:Landroid/widget/ImageView$ScaleType;

    :cond_8
    move-object v4, v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->k()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/bytedance/sdk/component/d/c/b/a;->b:Landroid/graphics/Bitmap$Config;

    :cond_11
    move-object v5, v0

    new-instance v0, Lcom/bytedance/sdk/component/d/c/b/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->g()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/c/c;->h()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/d/c/b/a;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/c;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/c/a/a;->a(Ljava/io/File;)Lcom/bytedance/sdk/component/d/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/d/c/f;->c(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/q;
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/component/d/c/a/a;->g()Lcom/bytedance/sdk/component/d/b;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/f;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/d/q;

    if-nez v1, :cond_21

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/f;->d(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/q;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/f;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v1
.end method

.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/d/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/r;
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/component/d/c/a/a;->g()Lcom/bytedance/sdk/component/d/b;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/f;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/d/r;

    if-nez v1, :cond_21

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/f;->e(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/r;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/f;->d:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v1
.end method

.method public b()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/d/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/c;
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/component/d/c/a/a;->g()Lcom/bytedance/sdk/component/d/b;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/d/c/f;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/d/c;

    if-nez v1, :cond_21

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/d/c/f;->f(Lcom/bytedance/sdk/component/d/b;)Lcom/bytedance/sdk/component/d/c;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/component/d/c/f;->e:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v1
.end method

.method public c()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/component/d/d;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->f:Lcom/bytedance/sdk/component/d/d;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/f;->i()Lcom/bytedance/sdk/component/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->f:Lcom/bytedance/sdk/component/d/d;

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->f:Lcom/bytedance/sdk/component/d/d;

    return-object v0
.end method

.method public e()Lcom/bytedance/sdk/component/d/l;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->g:Lcom/bytedance/sdk/component/d/l;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/f;->j()Lcom/bytedance/sdk/component/d/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->g:Lcom/bytedance/sdk/component/d/l;

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->g:Lcom/bytedance/sdk/component/d/l;

    return-object v0
.end method

.method public f()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->h:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/f;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->h:Ljava/util/concurrent/ExecutorService;

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->h:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public g()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/d/c/c;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->a:Ljava/util/Map;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/component/d/p;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->i:Lcom/bytedance/sdk/component/d/p;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/bytedance/sdk/component/d/c/f;->l()Lcom/bytedance/sdk/component/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->i:Lcom/bytedance/sdk/component/d/p;

    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/component/d/c/f;->i:Lcom/bytedance/sdk/component/d/p;

    return-object v0
.end method
