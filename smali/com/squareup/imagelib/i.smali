###### Class com.squareup.imagelib.i (com.squareup.imagelib.i)
.class Lcom/squareup/imagelib/i;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/imagelib/i$b;,
        Lcom/squareup/imagelib/i$a;,
        Lcom/squareup/imagelib/i$c;
    }
.end annotation


# instance fields
.field final a:Lcom/squareup/imagelib/i$b;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/concurrent/ExecutorService;

.field final d:Lcom/squareup/imagelib/j;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/imagelib/c;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/squareup/imagelib/a;",
            ">;"
        }
    .end annotation
.end field

.field final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/squareup/imagelib/a;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Landroid/os/Handler;

.field final j:Landroid/os/Handler;

.field final k:Lcom/squareup/imagelib/d;

.field final l:Lcom/squareup/imagelib/w;

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/c;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lcom/squareup/imagelib/i$c;

.field final o:Z

.field p:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lcom/squareup/imagelib/j;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/imagelib/i$b;

    invoke-direct {v0}, Lcom/squareup/imagelib/i$b;-><init>()V

    iput-object v0, p0, Lcom/squareup/imagelib/i;->a:Lcom/squareup/imagelib/i$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/imagelib/a0;->j(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/squareup/imagelib/i;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/squareup/imagelib/i;->c:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lcom/squareup/imagelib/i;->f:Ljava/util/Map;

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lcom/squareup/imagelib/i;->g:Ljava/util/Map;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/squareup/imagelib/i;->h:Ljava/util/Set;

    new-instance p2, Lcom/squareup/imagelib/i$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/squareup/imagelib/i$a;-><init>(Landroid/os/Looper;Lcom/squareup/imagelib/i;)V

    iput-object p2, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    iput-object p4, p0, Lcom/squareup/imagelib/i;->d:Lcom/squareup/imagelib/j;

    iput-object p3, p0, Lcom/squareup/imagelib/i;->j:Landroid/os/Handler;

    iput-object p5, p0, Lcom/squareup/imagelib/i;->k:Lcom/squareup/imagelib/d;

    iput-object p6, p0, Lcom/squareup/imagelib/i;->l:Lcom/squareup/imagelib/w;

    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/squareup/imagelib/i;->m:Ljava/util/List;

    invoke-static {p1}, Lcom/squareup/imagelib/a0;->r(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/squareup/imagelib/i;->p:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, p2}, Lcom/squareup/imagelib/a0;->q(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/squareup/imagelib/i;->o:Z

    new-instance p1, Lcom/squareup/imagelib/i$c;

    invoke-direct {p1, p0}, Lcom/squareup/imagelib/i$c;-><init>(Lcom/squareup/imagelib/i;)V

    iput-object p1, p0, Lcom/squareup/imagelib/i;->n:Lcom/squareup/imagelib/i$c;

    invoke-virtual {p1}, Lcom/squareup/imagelib/i$c;->a()V

    return-void
.end method

.method private a(Lcom/squareup/imagelib/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/squareup/imagelib/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1c
    return-void
.end method

.method private i()V
    .registers 6

    iget-object v0, p0, Lcom/squareup/imagelib/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/squareup/imagelib/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/a;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object v2

    iget-boolean v2, v2, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v2, :cond_38

    invoke-virtual {v1}, Lcom/squareup/imagelib/a;->i()Lcom/squareup/imagelib/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dispatcher"

    const-string v4, "replaying"

    invoke-static {v3, v4, v2}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/squareup/imagelib/i;->w(Lcom/squareup/imagelib/a;Z)V

    goto :goto_12

    :cond_3d
    return-void
.end method

.method private j(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/imagelib/c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4b

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/imagelib/c;

    invoke-virtual {v0}, Lcom/squareup/imagelib/c;->q()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_38

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    invoke-static {v1}, Lcom/squareup/imagelib/a0;->l(Lcom/squareup/imagelib/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dispatcher"

    const-string v1, "delivered"

    invoke-static {v0, v1, p1}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method private k(Lcom/squareup/imagelib/a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/squareup/imagelib/a;->k:Z

    iget-object v1, p0, Lcom/squareup/imagelib/i;->f:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method private l(Lcom/squareup/imagelib/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->h()Lcom/squareup/imagelib/a;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/squareup/imagelib/i;->k(Lcom/squareup/imagelib/a;)V

    :cond_9
    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_22

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/imagelib/a;

    invoke-direct {p0, v2}, Lcom/squareup/imagelib/i;->k(Lcom/squareup/imagelib/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    return-void
.end method


# virtual methods
.method b(Z)V
    .registers 5

    iget-object v0, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method c(Lcom/squareup/imagelib/a;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method d(Lcom/squareup/imagelib/c;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method e(Lcom/squareup/imagelib/c;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method f(Landroid/net/NetworkInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method g(Lcom/squareup/imagelib/c;)V
    .registers 5

    iget-object v0, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method h(Lcom/squareup/imagelib/a;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/i;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method m(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/squareup/imagelib/i;->p:Z

    return-void
.end method

.method n()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/imagelib/i;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/squareup/imagelib/i;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/squareup/imagelib/i;->j:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, v0}, Lcom/squareup/imagelib/i;->j(Ljava/util/List;)V

    return-void
.end method

.method o(Lcom/squareup/imagelib/a;)V
    .registers 6

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/c;

    const-string v2, "canceled"

    const-string v3, "Dispatcher"

    if-eqz v1, :cond_33

    invoke-virtual {v1, p1}, Lcom/squareup/imagelib/c;->f(Lcom/squareup/imagelib/a;)V

    invoke-virtual {v1}, Lcom/squareup/imagelib/c;->c()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->i()Lcom/squareup/imagelib/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/squareup/imagelib/i;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/squareup/imagelib/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->i()Lcom/squareup/imagelib/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "because paused request got canceled"

    invoke-static {v3, v2, v0, v1}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    iget-object v0, p0, Lcom/squareup/imagelib/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/imagelib/a;

    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_80

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->i()Lcom/squareup/imagelib/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from replaying"

    invoke-static {v3, v2, p1, v0}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method p(Lcom/squareup/imagelib/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->p()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/imagelib/MemoryPolicy;->g(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/squareup/imagelib/i;->k:Lcom/squareup/imagelib/d;

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->s()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/imagelib/d;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_17
    iget-object v0, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/i;->a(Lcom/squareup/imagelib/c;)V

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->q()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_38

    invoke-static {p1}, Lcom/squareup/imagelib/a0;->l(Lcom/squareup/imagelib/c;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Dispatcher"

    const-string v1, "batched"

    const-string v2, "for completion"

    invoke-static {v0, v1, p1, v2}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method q(Lcom/squareup/imagelib/c;Z)V
    .registers 6

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->q()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_2b

    invoke-static {p1}, Lcom/squareup/imagelib/a0;->l(Lcom/squareup/imagelib/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "for error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string p2, " (will replay)"

    goto :goto_1d

    :cond_1b
    const-string p2, ""

    :goto_1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v1, v2, v0, p2}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object p2, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/i;->a(Lcom/squareup/imagelib/c;)V

    return-void
.end method

.method r(Landroid/net/NetworkInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/imagelib/i;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Lcom/squareup/imagelib/r;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/squareup/imagelib/r;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/r;->a(Landroid/net/NetworkInfo;)V

    :cond_b
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-direct {p0}, Lcom/squareup/imagelib/i;->i()V

    :cond_16
    return-void
.end method

.method s(Ljava/lang/Object;)V
    .registers 15

    iget-object v0, p0, Lcom/squareup/imagelib/i;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/imagelib/c;

    invoke-virtual {v1}, Lcom/squareup/imagelib/c;->q()Lcom/squareup/imagelib/Picasso;

    move-result-object v2

    iget-boolean v2, v2, Lcom/squareup/imagelib/Picasso;->p:Z

    invoke-virtual {v1}, Lcom/squareup/imagelib/c;->h()Lcom/squareup/imagelib/a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/squareup/imagelib/c;->i()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_38

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_38

    const/4 v6, 0x1

    goto :goto_39

    :cond_38
    const/4 v6, 0x0

    :goto_39
    if-nez v3, :cond_3e

    if-nez v6, :cond_3e

    goto :goto_13

    :cond_3e
    const-string v7, "\' was paused"

    const-string v8, "because tag \'"

    const-string v9, "paused"

    const-string v10, "Dispatcher"

    if-eqz v3, :cond_7b

    invoke-virtual {v3}, Lcom/squareup/imagelib/a;->j()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-virtual {v1, v3}, Lcom/squareup/imagelib/c;->f(Lcom/squareup/imagelib/a;)V

    iget-object v11, p0, Lcom/squareup/imagelib/i;->g:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_7b

    iget-object v3, v3, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {v3}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v3, v11}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    if-eqz v6, :cond_c1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_82
    if-ltz v3, :cond_c1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/imagelib/a;

    invoke-virtual {v5}, Lcom/squareup/imagelib/a;->j()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    goto :goto_be

    :cond_95
    invoke-virtual {v1, v5}, Lcom/squareup/imagelib/c;->f(Lcom/squareup/imagelib/a;)V

    iget-object v6, p0, Lcom/squareup/imagelib/i;->g:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_be

    iget-object v5, v5, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {v5}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v9, v5, v6}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    :goto_be
    add-int/lit8 v3, v3, -0x1

    goto :goto_82

    :cond_c1
    invoke-virtual {v1}, Lcom/squareup/imagelib/c;->c()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz v2, :cond_13

    invoke-static {v1}, Lcom/squareup/imagelib/a0;->l(Lcom/squareup/imagelib/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "canceled"

    const-string v3, "all actions paused"

    invoke-static {v10, v2, v1, v3}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_d9
    return-void
.end method

.method t(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/squareup/imagelib/i;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/squareup/imagelib/i;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/imagelib/a;

    invoke-virtual {v2}, Lcom/squareup/imagelib/a;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_31
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_14

    :cond_38
    if-eqz v0, :cond_45

    iget-object p1, p0, Lcom/squareup/imagelib/i;->j:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_45
    return-void
.end method

.method u(Lcom/squareup/imagelib/c;)V
    .registers 7

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/squareup/imagelib/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1, v1}, Lcom/squareup/imagelib/i;->q(Lcom/squareup/imagelib/c;Z)V

    return-void

    :cond_14
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/squareup/imagelib/i;->o:Z

    if-eqz v2, :cond_27

    iget-object v0, p0, Lcom/squareup/imagelib/i;->b:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-static {v0, v2}, Lcom/squareup/imagelib/a0;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :cond_27
    const/4 v2, 0x1

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    iget-boolean v4, p0, Lcom/squareup/imagelib/i;->p:Z

    invoke-virtual {p1, v4, v0}, Lcom/squareup/imagelib/c;->w(ZLandroid/net/NetworkInfo;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->x()Z

    move-result v4

    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/squareup/imagelib/i;->o:Z

    if-eqz v0, :cond_46

    if-eqz v4, :cond_46

    const/4 v1, 0x1

    :cond_46
    invoke-virtual {p0, p1, v1}, Lcom/squareup/imagelib/i;->q(Lcom/squareup/imagelib/c;Z)V

    if-eqz v1, :cond_4e

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/i;->l(Lcom/squareup/imagelib/c;)V

    :cond_4e
    return-void

    :cond_4f
    iget-boolean v0, p0, Lcom/squareup/imagelib/i;->o:Z

    if-eqz v0, :cond_5f

    if-eqz v3, :cond_56

    goto :goto_5f

    :cond_56
    invoke-virtual {p0, p1, v4}, Lcom/squareup/imagelib/i;->q(Lcom/squareup/imagelib/c;Z)V

    if-eqz v4, :cond_5e

    invoke-direct {p0, p1}, Lcom/squareup/imagelib/i;->l(Lcom/squareup/imagelib/c;)V

    :cond_5e
    return-void

    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->q()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-boolean v0, v0, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz v0, :cond_72

    invoke-static {p1}, Lcom/squareup/imagelib/a0;->l(Lcom/squareup/imagelib/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "retrying"

    invoke-static {v1, v2, v0}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    invoke-virtual {p1}, Lcom/squareup/imagelib/c;->k()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/squareup/imagelib/p$a;

    if-eqz v0, :cond_83

    iget v0, p1, Lcom/squareup/imagelib/c;->m:I

    sget-object v1, Lcom/squareup/imagelib/NetworkPolicy;->a:Lcom/squareup/imagelib/NetworkPolicy;

    iget v1, v1, Lcom/squareup/imagelib/NetworkPolicy;->e:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/squareup/imagelib/c;->m:I

    :cond_83
    iget-object v0, p0, Lcom/squareup/imagelib/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p1, Lcom/squareup/imagelib/c;->r:Ljava/util/concurrent/Future;

    return-void
.end method

.method v(Lcom/squareup/imagelib/a;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/imagelib/i;->w(Lcom/squareup/imagelib/a;Z)V

    return-void
.end method

.method w(Lcom/squareup/imagelib/a;Z)V
    .registers 7

    iget-object v0, p0, Lcom/squareup/imagelib/i;->h:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_45

    iget-object p2, p0, Lcom/squareup/imagelib/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object p2

    iget-boolean p2, p2, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz p2, :cond_44

    iget-object p2, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p2}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "because tag \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->j()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is paused"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    invoke-static {v1, v0, p2, p1}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    return-void

    :cond_45
    iget-object v0, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/imagelib/c;

    if-eqz v0, :cond_57

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/c;->b(Lcom/squareup/imagelib/a;)V

    return-void

    :cond_57
    iget-object v0, p0, Lcom/squareup/imagelib/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object p2

    iget-boolean p2, p2, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz p2, :cond_74

    iget-object p1, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Lcom/squareup/imagelib/a0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    return-void

    :cond_75
    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/imagelib/i;->k:Lcom/squareup/imagelib/d;

    iget-object v3, p0, Lcom/squareup/imagelib/i;->l:Lcom/squareup/imagelib/w;

    invoke-static {v0, p0, v2, v3, p1}, Lcom/squareup/imagelib/c;->g(Lcom/squareup/imagelib/Picasso;Lcom/squareup/imagelib/i;Lcom/squareup/imagelib/d;Lcom/squareup/imagelib/w;Lcom/squareup/imagelib/a;)Lcom/squareup/imagelib/c;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/imagelib/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Lcom/squareup/imagelib/c;->r:Ljava/util/concurrent/Future;

    iget-object v2, p0, Lcom/squareup/imagelib/i;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_9d

    iget-object p2, p0, Lcom/squareup/imagelib/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    invoke-virtual {p1}, Lcom/squareup/imagelib/a;->g()Lcom/squareup/imagelib/Picasso;

    move-result-object p2

    iget-boolean p2, p2, Lcom/squareup/imagelib/Picasso;->p:Z

    if-eqz p2, :cond_b0

    iget-object p1, p1, Lcom/squareup/imagelib/a;->b:Lcom/squareup/imagelib/s;

    invoke-virtual {p1}, Lcom/squareup/imagelib/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    invoke-static {v1, p2, p1}, Lcom/squareup/imagelib/a0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-void
.end method

###### Class com.squareup.imagelib.i.a (com.squareup.imagelib.i$a)
.class Lcom/squareup/imagelib/i$a;
.super Landroid/os/Handler;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/imagelib/i;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/squareup/imagelib/i;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_70

    :pswitch_6
    sget-object v0, Lcom/squareup/imagelib/Picasso;->a:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/imagelib/i$a$a;

    invoke-direct {v1, p0, p1}, Lcom/squareup/imagelib/i$a$a;-><init>(Lcom/squareup/imagelib/i$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6e

    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->t(Ljava/lang/Object;)V

    goto :goto_6e

    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->s(Ljava/lang/Object;)V

    goto :goto_6e

    :pswitch_21
    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_29

    const/4 v1, 0x1

    :cond_29
    invoke-virtual {v0, v1}, Lcom/squareup/imagelib/i;->m(Z)V

    goto :goto_6e

    :pswitch_2d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->r(Landroid/net/NetworkInfo;)V

    goto :goto_6e

    :pswitch_37
    iget-object p1, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {p1}, Lcom/squareup/imagelib/i;->n()V

    goto :goto_6e

    :pswitch_3d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/imagelib/c;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1, v1}, Lcom/squareup/imagelib/i;->q(Lcom/squareup/imagelib/c;Z)V

    goto :goto_6e

    :pswitch_47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/imagelib/c;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->u(Lcom/squareup/imagelib/c;)V

    goto :goto_6e

    :pswitch_51
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/imagelib/c;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->p(Lcom/squareup/imagelib/c;)V

    goto :goto_6e

    :pswitch_5b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/imagelib/a;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->o(Lcom/squareup/imagelib/a;)V

    goto :goto_6e

    :pswitch_65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/imagelib/a;

    iget-object v0, p0, Lcom/squareup/imagelib/i$a;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->v(Lcom/squareup/imagelib/a;)V

    :goto_6e
    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5b
        :pswitch_6
        :pswitch_51
        :pswitch_47
        :pswitch_3d
        :pswitch_37
        :pswitch_6
        :pswitch_2d
        :pswitch_21
        :pswitch_19
        :pswitch_11
    .end packed-switch
.end method

###### Class com.squareup.imagelib.i.a.RunnableC0444a (com.squareup.imagelib.i$a$a)
.class Lcom/squareup/imagelib/i$a$a;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/i$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Message;

.field final synthetic b:Lcom/squareup/imagelib/i$a;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/i$a;Landroid/os/Message;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/imagelib/i$a$a;->b:Lcom/squareup/imagelib/i$a;

    iput-object p2, p0, Lcom/squareup/imagelib/i$a$a;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown handler message received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/imagelib/i$a$a;->a:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

###### Class com.squareup.imagelib.i.b (com.squareup.imagelib.i$b)
.class Lcom/squareup/imagelib/i$b;
.super Landroid/os/HandlerThread;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    const-string v0, "Picasso-Dispatcher"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

###### Class com.squareup.imagelib.i.c (com.squareup.imagelib.i$c)
.class Lcom/squareup/imagelib/i$c;
.super Landroid/content/BroadcastReceiver;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/imagelib/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/squareup/imagelib/i;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/i;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/squareup/imagelib/i$c;->a:Lcom/squareup/imagelib/i;

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/imagelib/i$c;->a:Lcom/squareup/imagelib/i;

    iget-boolean v1, v1, Lcom/squareup/imagelib/i;->o:Z

    if-eqz v1, :cond_15

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_15
    iget-object v1, p0, Lcom/squareup/imagelib/i$c;->a:Lcom/squareup/imagelib/i;

    iget-object v1, v1, Lcom/squareup/imagelib/i;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v0, p0, Lcom/squareup/imagelib/i$c;->a:Lcom/squareup/imagelib/i;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/squareup/imagelib/i;->b(Z)V

    goto :goto_3c

    :cond_23
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    const-string p2, "connectivity"

    invoke-static {p1, p2}, Lcom/squareup/imagelib/a0;->p(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/squareup/imagelib/i$c;->a:Lcom/squareup/imagelib/i;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/imagelib/i;->f(Landroid/net/NetworkInfo;)V

    :cond_3c
    :goto_3c
    return-void
.end method
