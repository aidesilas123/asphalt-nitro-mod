###### Class com.squareup.imagelib.Picasso (com.squareup.imagelib.Picasso)
.class public Lcom/squareup/imagelib/Picasso;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/Picasso$d;,
        Lcom/squareup/imagelib/Picasso$e;,
        Lcom/squareup/imagelib/Picasso$c;,
        Lcom/squareup/imagelib/Picasso$LoadedFrom;,
        Lcom/squareup/imagelib/Picasso$b;,
        Lcom/squareup/imagelib/Picasso$Priority;
    }
.end annotation


# static fields
.field static final a:Landroid/os/Handler;

.field static volatile b:Lcom/squareup/imagelib/Picasso;


# instance fields
.field private final c:Lcom/squareup/imagelib/Picasso$d;

.field private final d:Lcom/squareup/imagelib/Picasso$e;

.field private final e:Lcom/squareup/imagelib/Picasso$c;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/u;",
            ">;"
        }
    .end annotation
.end field

.field final g:Landroid/content/Context;

.field final h:Lcom/squareup/imagelib/i;

.field final i:Lcom/squareup/imagelib/d;

.field final j:Lcom/squareup/imagelib/w;

.field final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/squareup/imagelib/a;",
            ">;"
        }
    .end annotation
.end field

.field final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lcom/squareup/imagelib/h;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final n:Landroid/graphics/Bitmap$Config;

.field o:Z

.field volatile p:Z

.field q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/squareup/imagelib/Picasso$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/imagelib/Picasso$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/squareup/imagelib/Picasso;->b:Lcom/squareup/imagelib/Picasso;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/Picasso$d;Lcom/squareup/imagelib/Picasso$e;Ljava/util/List;Lcom/squareup/imagelib/w;Landroid/graphics/Bitmap$Config;ZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/squareup/imagelib/i;",
            "Lcom/squareup/imagelib/d;",
            "Lcom/squareup/imagelib/Picasso$d;",
            "Lcom/squareup/imagelib/Picasso$e;",
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/u;",
            ">;",
            "Lcom/squareup/imagelib/w;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/squareup/imagelib/Picasso;->h:Lcom/squareup/imagelib/i;

    iput-object p3, p0, Lcom/squareup/imagelib/Picasso;->i:Lcom/squareup/imagelib/d;

    iput-object p4, p0, Lcom/squareup/imagelib/Picasso;->c:Lcom/squareup/imagelib/Picasso$d;

    iput-object p5, p0, Lcom/squareup/imagelib/Picasso;->d:Lcom/squareup/imagelib/Picasso$e;

    iput-object p8, p0, Lcom/squareup/imagelib/Picasso;->n:Landroid/graphics/Bitmap$Config;

    if-eqz p6, :cond_16

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_17

    :cond_16
    const/4 p3, 0x0

    :goto_17
    new-instance p4, Ljava/util/ArrayList;

    add-int/lit8 p3, p3, 0x7

    invoke-direct {p4, p3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance p3, Lcom/squareup/imagelib/v;

    invoke-direct {p3, p1}, Lcom/squareup/imagelib/v;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2b

    invoke-interface {p4, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2b
    new-instance p3, Lcom/squareup/imagelib/f;

    invoke-direct {p3, p1}, Lcom/squareup/imagelib/f;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/squareup/imagelib/MediaStoreRequestHandler;

    invoke-direct {p3, p1}, Lcom/squareup/imagelib/MediaStoreRequestHandler;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/squareup/imagelib/g;

    invoke-direct {p3, p1}, Lcom/squareup/imagelib/g;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/squareup/imagelib/b;

    invoke-direct {p3, p1}, Lcom/squareup/imagelib/b;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lcom/squareup/imagelib/l;

    invoke-direct {p3, p1}, Lcom/squareup/imagelib/l;-><init>(Landroid/content/Context;)V

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/squareup/imagelib/p;

    iget-object p2, p2, Lcom/squareup/imagelib/i;->d:Lcom/squareup/imagelib/j;

    invoke-direct {p1, p2, p7}, Lcom/squareup/imagelib/p;-><init>(Lcom/squareup/imagelib/j;Lcom/squareup/imagelib/w;)V

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/squareup/imagelib/Picasso;->j:Lcom/squareup/imagelib/w;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso;->k:Ljava/util/Map;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso;->l:Ljava/util/Map;

    iput-boolean p9, p0, Lcom/squareup/imagelib/Picasso;->o:Z

    iput-boolean p10, p0, Lcom/squareup/imagelib/Picasso;->p:Z

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso;->m:Ljava/lang/ref/ReferenceQueue;

    new-instance p2, Lcom/squareup/imagelib/Picasso$c;

    sget-object p3, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lcom/squareup/imagelib/Picasso$c;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/squareup/imagelib/Picasso;->e:Lcom/squareup/imagelib/Picasso$c;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/squareup/imagelib/Picasso;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/Picasso;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 4

    invoke-static {}, Lcom/squareup/imagelib/a0;->c()V

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/imagelib/a;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/squareup/imagelib/a;->a()V

    iget-object v1, p0, Lcom/squareup/imagelib/Picasso;->h:Lcom/squareup/imagelib/i;

    invoke-virtual {v1, v0}, Lcom/squareup/imagelib/i;->c(Lcom/squareup/imagelib/a;)V

    :cond_15
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/imagelib/h;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/squareup/imagelib/h;->a()V

    :cond_28
    return-void
.end method

.method private f(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;Lcom/squareup/imagelib/a;)V
    .registers 6

    invoke-virtual {p3}, Lcom/squareup/imagelib/a;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p3}, Lcom/squareup/imagelib/a;->m()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->k:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v0, "Main"

    if-eqz p1, :cond_48

    if-eqz p2, :cond_40

    invoke-virtual {p3, p1, p2}, Lcom/squareup/imagelib/a;->b(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;)V

    iget-boolean p1, p0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz p1, :cond_5a

    iget-object p1, p3, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_40
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_48
    invoke-virtual {p3}, Lcom/squareup/imagelib/a;->c()V

    iget-boolean p1, p0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz p1, :cond_5a

    iget-object p1, p3, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "errored"

    invoke-static {v0, p2, p1}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public static setSingletonInstance(Lcom/squareup/imagelib/Picasso;)V
    .registers 3

    if-eqz p0, :cond_18

    const-class v0, Lcom/squareup/imagelib/Picasso;

    monitor-enter v0

    :try_start_5
    sget-object v1, Lcom/squareup/imagelib/Picasso;->b:Lcom/squareup/imagelib/Picasso;

    if-nez v1, :cond_d

    sput-object p0, Lcom/squareup/imagelib/Picasso;->b:Lcom/squareup/imagelib/Picasso;

    monitor-exit v0

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Singleton instance already exists."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Picasso must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static with(Landroid/content/Context;)Lcom/squareup/imagelib/Picasso;
    .registers 3

    sget-object v0, Lcom/squareup/imagelib/Picasso;->b:Lcom/squareup/imagelib/Picasso;

    if-nez v0, :cond_1b

    const-class v0, Lcom/squareup/imagelib/Picasso;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/squareup/imagelib/Picasso;->b:Lcom/squareup/imagelib/Picasso;

    if-nez v1, :cond_16

    new-instance v1, Lcom/squareup/imagelib/Picasso$b;

    invoke-direct {v1, p0}, Lcom/squareup/imagelib/Picasso$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/squareup/imagelib/Picasso$b;->a()Lcom/squareup/imagelib/Picasso;

    move-result-object p0

    sput-object p0, Lcom/squareup/imagelib/Picasso;->b:Lcom/squareup/imagelib/Picasso;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/squareup/imagelib/Picasso;->b:Lcom/squareup/imagelib/Picasso;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/widget/ImageView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/Picasso;->b(Ljava/lang/Object;)V

    return-void
.end method

.method d(Lcom/squareup/imagelib/c;)V
    .registers 9

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->h()Lcom/squareup/imagelib/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->i()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-nez v0, :cond_1b

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :cond_1b
    :goto_1b
    if-nez v2, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->j()Lcom/squareup/imagelib/s;

    move-result-object v2

    iget-object v2, v2, Lcom/squareup/imagelib/s;->e:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->k()Ljava/lang/Exception;

    move-result-object v5

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->s()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->o()Lcom/squareup/imagelib/Picasso$LoadedFrom;

    move-result-object p1

    if-eqz v0, :cond_35

    invoke-direct {p0, v6, p1, v0}, Lcom/squareup/imagelib/Picasso;->f(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;Lcom/squareup/imagelib/a;)V

    :cond_35
    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_3b
    if-ge v3, v0, :cond_49

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/imagelib/a;

    invoke-direct {p0, v6, p1, v4}, Lcom/squareup/imagelib/Picasso;->f(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;Lcom/squareup/imagelib/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_49
    iget-object p1, p0, Lcom/squareup/imagelib/Picasso;->c:Lcom/squareup/imagelib/Picasso$d;

    if-eqz p1, :cond_52

    if-eqz v5, :cond_52

    invoke-interface {p1, p0, v2, v5}, Lcom/squareup/imagelib/Picasso$d;->a(Lcom/squareup/imagelib/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_52
    return-void
.end method

.method e(Landroid/widget/ImageView;Lcom/squareup/imagelib/h;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/Picasso;->b(Ljava/lang/Object;)V

    :cond_b
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method g(Lcom/squareup/imagelib/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/squareup/imagelib/Picasso;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_16

    invoke-direct {p0, v0}, Lcom/squareup/imagelib/Picasso;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/squareup/imagelib/Picasso;->k:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {p0, p1}, Lcom/squareup/imagelib/Picasso;->n(Lcom/squareup/imagelib/a;)V

    return-void
.end method

.method h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->f:Ljava/util/List;

    return-object v0
.end method

.method public i(Landroid/net/Uri;)Lcom/squareup/imagelib/t;
    .registers 4

    new-instance v0, Lcom/squareup/imagelib/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/squareup/imagelib/t;-><init>(Lcom/squareup/imagelib/Picasso;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public j(Ljava/io/File;)Lcom/squareup/imagelib/t;
    .registers 4

    if-nez p1, :cond_a

    new-instance p1, Lcom/squareup/imagelib/t;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/squareup/imagelib/t;-><init>(Lcom/squareup/imagelib/Picasso;Landroid/net/Uri;I)V

    return-object p1

    :cond_a
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/imagelib/Picasso;->i(Landroid/net/Uri;)Lcom/squareup/imagelib/t;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;)Lcom/squareup/imagelib/t;
    .registers 4

    if-nez p1, :cond_a

    new-instance p1, Lcom/squareup/imagelib/t;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/squareup/imagelib/t;-><init>(Lcom/squareup/imagelib/Picasso;Landroid/net/Uri;I)V

    return-object p1

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/imagelib/Picasso;->i(Landroid/net/Uri;)Lcom/squareup/imagelib/t;

    move-result-object p1

    return-object p1

    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method l(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->i:Lcom/squareup/imagelib/d;

    invoke-interface {v0, p1}, Lcom/squareup/imagelib/d;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->j:Lcom/squareup/imagelib/w;

    invoke-virtual {v0}, Lcom/squareup/imagelib/w;->d()V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->j:Lcom/squareup/imagelib/w;

    invoke-virtual {v0}, Lcom/squareup/imagelib/w;->e()V

    :goto_13
    return-object p1
.end method

.method m(Lcom/squareup/imagelib/a;)V
    .registers 6

    iget v0, p1, Lcom/squareup/imagelib/a;->e:I

    invoke-static {v0}, Lcom/squareup/imagelib/MemoryPolicy;->f(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/imagelib/Picasso;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const-string v1, "Main"

    if-eqz v0, :cond_3c

    sget-object v2, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-direct {p0, v0, v2, p1}, Lcom/squareup/imagelib/Picasso;->f(Landroid/graphics/Bitmap;Lcom/squareup/imagelib/Picasso$LoadedFrom;Lcom/squareup/imagelib/a;)V

    iget-boolean v0, p0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_4e

    iget-object p1, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "completed"

    invoke-static {v1, v2, p1, v0}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    :cond_3c
    invoke-virtual {p0, p1}, Lcom/squareup/imagelib/Picasso;->g(Lcom/squareup/imagelib/a;)V

    iget-boolean v0, p0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_4e

    iget-object p1, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "resumed"

    invoke-static {v1, v0, p1}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method n(Lcom/squareup/imagelib/a;)V
    .registers 3

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->h:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->h(Lcom/squareup/imagelib/a;)V

    return-void
.end method

.method o(Lcom/squareup/imagelib/s;)Lcom/squareup/imagelib/s;
    .registers 5

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso;->d:Lcom/squareup/imagelib/Picasso$e;

    invoke-interface {v0, p1}, Lcom/squareup/imagelib/Picasso$e;->a(Lcom/squareup/imagelib/s;)Lcom/squareup/imagelib/s;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request transformer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/imagelib/Picasso;->d:Lcom/squareup/imagelib/Picasso$e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returned null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.squareup.imagelib.Picasso.LoadedFrom (com.squareup.imagelib.Picasso$LoadedFrom)
.class public final enum Lcom/squareup/imagelib/Picasso$LoadedFrom;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadedFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/imagelib/Picasso$LoadedFrom;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field public static final enum b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field public static final enum c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

.field private static final synthetic d:[Lcom/squareup/imagelib/Picasso$LoadedFrom;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const v3, -0xff0100

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    new-instance v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const-string v1, "DISK"

    const/4 v2, 0x1

    const v3, -0xffff01

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    new-instance v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const-string v1, "NETWORK"

    const/4 v2, 0x2

    const/high16 v3, -0x10000

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/imagelib/Picasso$LoadedFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-static {}, Lcom/squareup/imagelib/Picasso$LoadedFrom;->e()[Lcom/squareup/imagelib/Picasso$LoadedFrom;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->d:[Lcom/squareup/imagelib/Picasso$LoadedFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->e:I

    return-void
.end method

.method private static synthetic e()[Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/imagelib/Picasso$LoadedFrom;

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->a:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->b:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$LoadedFrom;->c:Lcom/squareup/imagelib/Picasso$LoadedFrom;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 2

    const-class v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/imagelib/Picasso$LoadedFrom;

    return-object p0
.end method

.method public static values()[Lcom/squareup/imagelib/Picasso$LoadedFrom;
    .registers 1

    sget-object v0, Lcom/squareup/imagelib/Picasso$LoadedFrom;->d:[Lcom/squareup/imagelib/Picasso$LoadedFrom;

    invoke-virtual {v0}, [Lcom/squareup/imagelib/Picasso$LoadedFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/imagelib/Picasso$LoadedFrom;

    return-object v0
.end method

###### Class com.squareup.imagelib.Picasso.Priority (com.squareup.imagelib.Picasso$Priority)
.class public final enum Lcom/squareup/imagelib/Picasso$Priority;
.super Ljava/lang/Enum;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/imagelib/Picasso$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/squareup/imagelib/Picasso$Priority;

.field public static final enum b:Lcom/squareup/imagelib/Picasso$Priority;

.field public static final enum c:Lcom/squareup/imagelib/Picasso$Priority;

.field private static final synthetic d:[Lcom/squareup/imagelib/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/squareup/imagelib/Picasso$Priority;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/imagelib/Picasso$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->a:Lcom/squareup/imagelib/Picasso$Priority;

    new-instance v0, Lcom/squareup/imagelib/Picasso$Priority;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/squareup/imagelib/Picasso$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->b:Lcom/squareup/imagelib/Picasso$Priority;

    new-instance v0, Lcom/squareup/imagelib/Picasso$Priority;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/squareup/imagelib/Picasso$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->c:Lcom/squareup/imagelib/Picasso$Priority;

    invoke-static {}, Lcom/squareup/imagelib/Picasso$Priority;->e()[Lcom/squareup/imagelib/Picasso$Priority;

    move-result-object v0

    sput-object v0, Lcom/squareup/imagelib/Picasso$Priority;->d:[Lcom/squareup/imagelib/Picasso$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/squareup/imagelib/Picasso$Priority;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/squareup/imagelib/Picasso$Priority;

    sget-object v1, Lcom/squareup/imagelib/Picasso$Priority;->a:Lcom/squareup/imagelib/Picasso$Priority;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$Priority;->b:Lcom/squareup/imagelib/Picasso$Priority;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/imagelib/Picasso$Priority;->c:Lcom/squareup/imagelib/Picasso$Priority;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/imagelib/Picasso$Priority;
    .registers 2

    const-class v0, Lcom/squareup/imagelib/Picasso$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/imagelib/Picasso$Priority;

    return-object p0
.end method

.method public static values()[Lcom/squareup/imagelib/Picasso$Priority;
    .registers 1

    sget-object v0, Lcom/squareup/imagelib/Picasso$Priority;->d:[Lcom/squareup/imagelib/Picasso$Priority;

    invoke-virtual {v0}, [Lcom/squareup/imagelib/Picasso$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/imagelib/Picasso$Priority;

    return-object v0
.end method

###### Class com.squareup.imagelib.Picasso.a (com.squareup.imagelib.Picasso$a)
.class Lcom/squareup/imagelib/Picasso$a;
.super Landroid/os/Handler;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3f

    const/16 v1, 0xd

    if-ne v0, v1, :cond_26

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_16
    if-ge v2, v0, :cond_7b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/a;

    iget-object v3, v1, Lcom/squareup/imagelib/a;->a:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v3, v1}, Lcom/squareup/imagelib/Picasso;->m(Lcom/squareup/imagelib/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_26
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handler message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_3f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_47
    if-ge v2, v0, :cond_7b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/c;

    iget-object v3, v1, Lcom/squareup/imagelib/c;->f:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {v3, v1}, Lcom/squareup/imagelib/Picasso;->d(Lcom/squareup/imagelib/c;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/imagelib/a;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_72

    iget-object v0, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {v0}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main"

    const-string v2, "canceled"

    const-string v3, "target got garbage collected"

    invoke-static {v1, v2, v0, v3}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    iget-object v0, p1, Lcom/squareup/imagelib/a;->a:Lcom/squareup/imagelib/Picasso;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/squareup/imagelib/Picasso;->a(Lcom/squareup/imagelib/Picasso;Ljava/lang/Object;)V

    :cond_7b
    return-void
.end method

###### Class com.squareup.imagelib.Picasso.b (com.squareup.imagelib.Picasso$b)
.class public Lcom/squareup/imagelib/Picasso$b;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/squareup/imagelib/j;

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/squareup/imagelib/d;

.field private e:Lcom/squareup/imagelib/Picasso$d;

.field private f:Lcom/squareup/imagelib/Picasso$e;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/u;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso$b;->a:Landroid/content/Context;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/squareup/imagelib/Picasso;
    .registers 15

    iget-object v7, p0, Lcom/squareup/imagelib/Picasso$b;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->b:Lcom/squareup/imagelib/j;

    if-nez v0, :cond_c

    invoke-static {v7}, Lcom/squareup/imagelib/a0;->g(Landroid/content/Context;)Lcom/squareup/imagelib/j;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->b:Lcom/squareup/imagelib/j;

    :cond_c
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    if-nez v0, :cond_17

    new-instance v0, Lcom/squareup/imagelib/n;

    invoke-direct {v0, v7}, Lcom/squareup/imagelib/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    :cond_17
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->c:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_22

    new-instance v0, Lcom/squareup/imagelib/r;

    invoke-direct {v0}, Lcom/squareup/imagelib/r;-><init>()V

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->c:Ljava/util/concurrent/ExecutorService;

    :cond_22
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->f:Lcom/squareup/imagelib/Picasso$e;

    if-nez v0, :cond_2a

    sget-object v0, Lcom/squareup/imagelib/Picasso$e;->a:Lcom/squareup/imagelib/Picasso$e;

    iput-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->f:Lcom/squareup/imagelib/Picasso$e;

    :cond_2a
    new-instance v8, Lcom/squareup/imagelib/w;

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    invoke-direct {v8, v0}, Lcom/squareup/imagelib/w;-><init>(Lcom/squareup/imagelib/d;)V

    new-instance v9, Lcom/squareup/imagelib/i;

    iget-object v2, p0, Lcom/squareup/imagelib/Picasso$b;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    iget-object v4, p0, Lcom/squareup/imagelib/Picasso$b;->b:Lcom/squareup/imagelib/j;

    iget-object v5, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    move-object v0, v9

    move-object v1, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/squareup/imagelib/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/imagelib/j;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;)V

    new-instance v11, Lcom/squareup/imagelib/Picasso;

    iget-object v3, p0, Lcom/squareup/imagelib/Picasso$b;->d:Lcom/squareup/imagelib/d;

    iget-object v4, p0, Lcom/squareup/imagelib/Picasso$b;->e:Lcom/squareup/imagelib/Picasso$d;

    iget-object v5, p0, Lcom/squareup/imagelib/Picasso$b;->f:Lcom/squareup/imagelib/Picasso$e;

    iget-object v6, p0, Lcom/squareup/imagelib/Picasso$b;->g:Ljava/util/List;

    iget-object v10, p0, Lcom/squareup/imagelib/Picasso$b;->h:Landroid/graphics/Bitmap$Config;

    iget-boolean v12, p0, Lcom/squareup/imagelib/Picasso$b;->i:Z

    iget-boolean v13, p0, Lcom/squareup/imagelib/Picasso$b;->j:Z

    move-object v0, v11

    move-object v2, v9

    move-object v7, v8

    move-object v8, v10

    move v9, v12

    move v10, v13

    invoke-direct/range {v0 .. v10}, Lcom/squareup/imagelib/Picasso;-><init>(Landroid/content/Context;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/Picasso$d;Lcom/squareup/imagelib/Picasso$e;Ljava/util/List;Lcom/squareup/imagelib/w;Landroid/graphics/Bitmap$Config;ZZ)V

    return-object v11
.end method

.method public b(Z)Lcom/squareup/imagelib/Picasso$b;
    .registers 2

    iput-boolean p1, p0, Lcom/squareup/imagelib/Picasso$b;->j:Z

    return-object p0
.end method

###### Class com.squareup.imagelib.Picasso.c (com.squareup.imagelib.Picasso$c)
.class Lcom/squareup/imagelib/Picasso$c;
.super Ljava/lang/Thread;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso$c;->a:Ljava/lang/ref/ReferenceQueue;

    iput-object p2, p0, Lcom/squareup/imagelib/Picasso$c;->b:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string p1, "Picasso-refQueue"

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$c;->a:Ljava/lang/ref/ReferenceQueue;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/squareup/imagelib/a$a;

    iget-object v1, p0, Lcom/squareup/imagelib/Picasso$c;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    if-eqz v0, :cond_24

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v0, v0, Lcom/squareup/imagelib/a$a;->a:Lcom/squareup/imagelib/a;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/squareup/imagelib/Picasso$c;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_24
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_27} :catch_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_5

    :catch_28
    move-exception v0

    iget-object v1, p0, Lcom/squareup/imagelib/Picasso$c;->b:Landroid/os/Handler;

    new-instance v2, Lcom/squareup/imagelib/Picasso$c$a;

    invoke-direct {v2, p0, v0}, Lcom/squareup/imagelib/Picasso$c$a;-><init>(Lcom/squareup/imagelib/Picasso$c;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_33
    return-void
.end method

###### Class com.squareup.imagelib.Picasso.c.a (com.squareup.imagelib.Picasso$c$a)
.class Lcom/squareup/imagelib/Picasso$c$a;
.super Ljava/lang/Object;
.source "Picasso.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/Picasso$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/squareup/imagelib/Picasso$c;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/Picasso$c;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso$c$a;->b:Lcom/squareup/imagelib/Picasso$c;

    iput-object p2, p0, Lcom/squareup/imagelib/Picasso$c$a;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/squareup/imagelib/Picasso$c$a;->a:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

###### Class com.squareup.imagelib.Picasso.d (com.squareup.imagelib.Picasso$d)
.class public interface abstract Lcom/squareup/imagelib/Picasso$d;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract a(Lcom/squareup/imagelib/Picasso;Landroid/net/Uri;Ljava/lang/Exception;)V
.end method

###### Class com.squareup.imagelib.Picasso.e (com.squareup.imagelib.Picasso$e)
.class public interface abstract Lcom/squareup/imagelib/Picasso$e;
.super Ljava/lang/Object;
.source "Picasso.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# static fields
.field public static final a:Lcom/squareup/imagelib/Picasso$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/squareup/imagelib/Picasso$e$a;

    invoke-direct {v0}, Lcom/squareup/imagelib/Picasso$e$a;-><init>()V

    sput-object v0, Lcom/squareup/imagelib/Picasso$e;->a:Lcom/squareup/imagelib/Picasso$e;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/squareup/imagelib/s;)Lcom/squareup/imagelib/s;
.end method

###### Class com.squareup.imagelib.Picasso.e.a (com.squareup.imagelib.Picasso$e$a)
.class Lcom/squareup/imagelib/Picasso$e$a;
.super Ljava/lang/Object;
.source "Picasso.java"

# interfaces
.implements Lcom/squareup/imagelib/Picasso$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/Picasso$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/imagelib/s;)Lcom/squareup/imagelib/s;
    .registers 2

    return-object p1
.end method
