###### Class com.applovin.exoplayer2.m (com.applovin.exoplayer2.m)
.class final Lcom/applovin/exoplayer2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/l/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/m$a;
    }
.end annotation


# instance fields
.field private final aX:Lcom/applovin/exoplayer2/l/ac;

.field private final aY:Lcom/applovin/exoplayer2/m$a;

.field private aZ:Lcom/applovin/exoplayer2/ar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ba:Lcom/applovin/exoplayer2/l/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private bb:Z

.field private bc:Z


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/m$a;Lcom/applovin/exoplayer2/l/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m;->aY:Lcom/applovin/exoplayer2/m$a;

    new-instance p1, Lcom/applovin/exoplayer2/l/ac;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/l/ac;-><init>(Lcom/applovin/exoplayer2/l/d;)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m;->bb:Z

    return-void
.end method

.method private g(Z)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m;->h(Z)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m;->bb:Z

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/m;->bc:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/ac;->start()V

    :cond_12
    return-void

    :cond_13
    iget-object p1, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/l/s;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/s;->au()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/m;->bb:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/ac;->au()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_33

    iget-object p1, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/ac;->W()V

    return-void

    :cond_33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/m;->bb:Z

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/m;->bc:Z

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/l/ac;->start()V

    :cond_3f
    iget-object v2, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v2, v0, v1}, Lcom/applovin/exoplayer2/l/ac;->d(J)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/s;->av()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/ac;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/am;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/ac;->a(Lcom/applovin/exoplayer2/am;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aY:Lcom/applovin/exoplayer2/m$a;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/m$a;->b(Lcom/applovin/exoplayer2/am;)V

    :cond_5e
    return-void
.end method

.method private h(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aZ:Lcom/applovin/exoplayer2/ar;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/applovin/exoplayer2/ar;->cR()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aZ:Lcom/applovin/exoplayer2/ar;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/ar;->isReady()Z

    move-result v0

    if-nez v0, :cond_1d

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/applovin/exoplayer2/m;->aZ:Lcom/applovin/exoplayer2/ar;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->R()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method


# virtual methods
.method public W()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m;->bc:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/ac;->W()V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/am;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/l/s;->a(Lcom/applovin/exoplayer2/am;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/l/s;->av()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    :cond_d
    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/ac;->a(Lcom/applovin/exoplayer2/am;)V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/ar;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/ar;->O()Lcom/applovin/exoplayer2/l/s;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    if-eq v0, v1, :cond_26

    if-nez v1, :cond_1a

    iput-object v0, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    iput-object p1, p0, Lcom/applovin/exoplayer2/m;->aZ:Lcom/applovin/exoplayer2/ar;

    iget-object p1, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/ac;->av()Lcom/applovin/exoplayer2/am;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/l/s;->a(Lcom/applovin/exoplayer2/am;)V

    goto :goto_26

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/applovin/exoplayer2/p;->a(Ljava/lang/RuntimeException;)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    throw p1

    :cond_26
    :goto_26
    return-void
.end method

.method public au()J
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/m;->bb:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/ac;->au()J

    move-result-wide v0

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/l/s;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/s;->au()J

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public av()Lcom/applovin/exoplayer2/am;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/applovin/exoplayer2/l/s;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/ac;->av()Lcom/applovin/exoplayer2/am;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public b(Lcom/applovin/exoplayer2/ar;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aZ:Lcom/applovin/exoplayer2/ar;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/m;->ba:Lcom/applovin/exoplayer2/l/s;

    iput-object p1, p0, Lcom/applovin/exoplayer2/m;->aZ:Lcom/applovin/exoplayer2/ar;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/m;->bb:Z

    :cond_c
    return-void
.end method

.method public d(J)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/l/ac;->d(J)V

    return-void
.end method

.method public f(Z)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/m;->g(Z)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/m;->au()J

    move-result-wide v0

    return-wide v0
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/m;->bc:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/m;->aX:Lcom/applovin/exoplayer2/l/ac;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/ac;->start()V

    return-void
.end method
