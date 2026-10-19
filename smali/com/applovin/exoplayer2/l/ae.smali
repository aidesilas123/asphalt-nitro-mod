###### Class com.applovin.exoplayer2.l.ae (com.applovin.exoplayer2.l.ae)
.class final Lcom/applovin/exoplayer2/l/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/l/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/l/ae$a;
    }
.end annotation


# static fields
.field private static final acO:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "messagePool"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/l/ae$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final jS:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/applovin/exoplayer2/l/ae;->acO:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/l/ae$a;)V
    .registers 4

    sget-object v0, Lcom/applovin/exoplayer2/l/ae;->acO:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_e

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/l/ae$a;)V
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ae;->a(Lcom/applovin/exoplayer2/l/ae$a;)V

    return-void
.end method

.method private static pP()Lcom/applovin/exoplayer2/l/ae$a;
    .registers 3

    sget-object v0, Lcom/applovin/exoplayer2/l/ae;->acO:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/applovin/exoplayer2/l/ae$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/applovin/exoplayer2/l/ae$a;-><init>(Lcom/applovin/exoplayer2/l/ae$1;)V

    goto :goto_1c

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/l/ae$a;

    :goto_1c
    monitor-exit v0

    return-object v1

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method public Q(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public a(IIILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;
    .registers 7
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/applovin/exoplayer2/l/ae;->pP()Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/applovin/exoplayer2/l/ae$a;->a(Landroid/os/Message;Lcom/applovin/exoplayer2/l/ae;)Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/exoplayer2/l/o$a;)Z
    .registers 3

    check-cast p1, Lcom/applovin/exoplayer2/l/ae$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/ae$a;->a(Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method public c(ILjava/lang/Object;)Lcom/applovin/exoplayer2/l/o$a;
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/applovin/exoplayer2/l/ae;->pP()Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/applovin/exoplayer2/l/ae$a;->a(Landroid/os/Message;Lcom/applovin/exoplayer2/l/ae;)Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Runnable;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public fq(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    return p1
.end method

.method public fr(I)Lcom/applovin/exoplayer2/l/o$a;
    .registers 4

    invoke-static {}, Lcom/applovin/exoplayer2/l/ae;->pP()Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/applovin/exoplayer2/l/ae$a;->a(Landroid/os/Message;Lcom/applovin/exoplayer2/l/ae;)Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object p1

    return-object p1
.end method

.method public fs(I)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public ft(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public j(III)Lcom/applovin/exoplayer2/l/o$a;
    .registers 6

    invoke-static {}, Lcom/applovin/exoplayer2/l/ae;->pP()Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/applovin/exoplayer2/l/ae$a;->a(Landroid/os/Message;Lcom/applovin/exoplayer2/l/ae;)Lcom/applovin/exoplayer2/l/ae$a;

    move-result-object p1

    return-object p1
.end method

.method public k(IJ)Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae;->jS:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method

###### Class com.applovin.exoplayer2.l.ae.AnonymousClass1 (com.applovin.exoplayer2.l.ae$1)
.class synthetic Lcom/applovin/exoplayer2/l/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.l.ae.a (com.applovin.exoplayer2.l.ae$a)
.class final Lcom/applovin/exoplayer2/l/ae$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/l/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private acP:Landroid/os/Message;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private acQ:Lcom/applovin/exoplayer2/l/ae;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/l/ae$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/ae$a;-><init>()V

    return-void
.end method

.method private recycle()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acQ:Lcom/applovin/exoplayer2/l/ae;

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/ae;->b(Lcom/applovin/exoplayer2/l/ae$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Lcom/applovin/exoplayer2/l/ae;)Lcom/applovin/exoplayer2/l/ae$a;
    .registers 3

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    iput-object p2, p0, Lcom/applovin/exoplayer2/l/ae$a;->acQ:Lcom/applovin/exoplayer2/l/ae;

    return-object p0
.end method

.method public a(Landroid/os/Handler;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/ae$a;->recycle()V

    return p1
.end method

.method public oY()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/ae$a;->acP:Landroid/os/Message;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0}, Lcom/applovin/exoplayer2/l/ae$a;->recycle()V

    return-void
.end method
