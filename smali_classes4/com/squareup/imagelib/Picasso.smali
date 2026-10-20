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
