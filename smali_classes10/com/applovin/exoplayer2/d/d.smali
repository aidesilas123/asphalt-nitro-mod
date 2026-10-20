###### Class com.applovin.exoplayer2.d.d (com.applovin.exoplayer2.d.d)
.class public final Lcom/applovin/exoplayer2/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/d/i;


# instance fields
.field private eL:Lcom/applovin/exoplayer2/ab$d;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final rT:Ljava/lang/Object;

.field private sY:Lcom/applovin/exoplayer2/d/h;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private sZ:Lcom/applovin/exoplayer2/k/t$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ta:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/d/d;->rT:Ljava/lang/Object;

    return-void
.end method

.method private b(Lcom/applovin/exoplayer2/ab$d;)Lcom/applovin/exoplayer2/d/h;
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x12
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/d/d;->sZ:Lcom/applovin/exoplayer2/k/t$b;

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    new-instance v0, Lcom/applovin/exoplayer2/k/q$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/k/q$a;-><init>()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/d/d;->ta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/k/q$a;->aO(Ljava/lang/String;)Lcom/applovin/exoplayer2/k/q$a;

    move-result-object v0

    :goto_10
    new-instance v1, Lcom/applovin/exoplayer2/d/p;

    iget-object v2, p1, Lcom/applovin/exoplayer2/ab$d;->ez:Landroid/net/Uri;

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    :cond_18
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1c
    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ab$d;->eD:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/applovin/exoplayer2/d/p;-><init>(Ljava/lang/String;ZLcom/applovin/exoplayer2/k/t$b;)V

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$d;->eA:Lcom/applovin/exoplayer2/common/a/u;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/u;->gk()Lcom/applovin/exoplayer2/common/a/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/w;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/applovin/exoplayer2/d/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_47
    new-instance v0, Lcom/applovin/exoplayer2/d/c$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/d/c$a;-><init>()V

    iget-object v2, p1, Lcom/applovin/exoplayer2/ab$d;->ey:Ljava/util/UUID;

    sget-object v3, Lcom/applovin/exoplayer2/d/o;->tq:Lcom/applovin/exoplayer2/d/m$c;

    invoke-virtual {v0, v2, v3}, Lcom/applovin/exoplayer2/d/c$a;->a(Ljava/util/UUID;Lcom/applovin/exoplayer2/d/m$c;)Lcom/applovin/exoplayer2/d/c$a;

    move-result-object v0

    iget-boolean v2, p1, Lcom/applovin/exoplayer2/ab$d;->eB:Z

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/d/c$a;->K(Z)Lcom/applovin/exoplayer2/d/c$a;

    move-result-object v0

    iget-boolean v2, p1, Lcom/applovin/exoplayer2/ab$d;->eC:Z

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/d/c$a;->L(Z)Lcom/applovin/exoplayer2/d/c$a;

    move-result-object v0

    iget-object v2, p1, Lcom/applovin/exoplayer2/ab$d;->eE:Lcom/applovin/exoplayer2/common/a/s;

    invoke-static {v2}, Lcom/applovin/exoplayer2/common/b/c;->f(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/d/c$a;->e([I)Lcom/applovin/exoplayer2/d/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/d/c$a;->a(Lcom/applovin/exoplayer2/d/r;)Lcom/applovin/exoplayer2/d/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/ab$d;->bW()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/exoplayer2/d/c;->a(I[B)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/ab;)Lcom/applovin/exoplayer2/d/h;
    .registers 4

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ab$f;->eL:Lcom/applovin/exoplayer2/ab$d;

    if-eqz p1, :cond_32

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_12

    goto :goto_32

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/d/d;->rT:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-object v1, p0, Lcom/applovin/exoplayer2/d/d;->eL:Lcom/applovin/exoplayer2/ab$d;

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/d;->eL:Lcom/applovin/exoplayer2/ab$d;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/d/d;->b(Lcom/applovin/exoplayer2/ab$d;)Lcom/applovin/exoplayer2/d/h;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/d/d;->sY:Lcom/applovin/exoplayer2/d/h;

    :cond_25
    iget-object p1, p0, Lcom/applovin/exoplayer2/d/d;->sY:Lcom/applovin/exoplayer2/d/h;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/d/h;

    monitor-exit v0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    sget-object p1, Lcom/applovin/exoplayer2/d/h;->ti:Lcom/applovin/exoplayer2/d/h;

    return-object p1
.end method
