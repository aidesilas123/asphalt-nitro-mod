###### Class com.applovin.exoplayer2.e (com.applovin.exoplayer2.e)
.class public abstract Lcom/applovin/exoplayer2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/ar;
.implements Lcom/applovin/exoplayer2/as;


# instance fields
.field private final V:I

.field private final W:Lcom/applovin/exoplayer2/w;

.field private X:Lcom/applovin/exoplayer2/at;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Y:I

.field private Z:I

.field private aa:Lcom/applovin/exoplayer2/h/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ab:[Lcom/applovin/exoplayer2/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ac:J

.field private ad:J

.field private ae:J

.field private af:Z

.field private ag:Z


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e;->V:I

    new-instance p1, Lcom/applovin/exoplayer2/w;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/w;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e;->W:Lcom/applovin/exoplayer2/w;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e;->ae:J

    return-void
.end method


# virtual methods
.method public final M()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/e;->V:I

    return v0
.end method

.method public final N()Lcom/applovin/exoplayer2/as;
    .registers 1

    return-object p0
.end method

.method public O()Lcom/applovin/exoplayer2/l/s;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final P()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/e;->Z:I

    return v0
.end method

.method public final Q()Lcom/applovin/exoplayer2/h/x;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->aa:Lcom/applovin/exoplayer2/h/x;

    return-object v0
.end method

.method public final R()Z
    .registers 6

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e;->ae:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final S()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e;->ae:J

    return-wide v0
.end method

.method public final T()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e;->af:Z

    return-void
.end method

.method public final U()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e;->af:Z

    return v0
.end method

.method public final V()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->aa:Lcom/applovin/exoplayer2/h/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/x;->kR()V

    return-void
.end method

.method public final W()V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/e;->Z:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput v1, p0, Lcom/applovin/exoplayer2/e;->Z:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ab()V

    return-void
.end method

.method public final X()V
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/e;->Z:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->W:Lcom/applovin/exoplayer2/w;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/w;->clear()V

    iput v2, p0, Lcom/applovin/exoplayer2/e;->Z:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e;->aa:Lcom/applovin/exoplayer2/h/x;

    iput-object v0, p0, Lcom/applovin/exoplayer2/e;->ab:[Lcom/applovin/exoplayer2/v;

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e;->af:Z

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ac()V

    return-void
.end method

.method public final Y()V
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/e;->Z:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->W:Lcom/applovin/exoplayer2/w;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/w;->clear()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ad()V

    return-void
.end method

.method public Z()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected final a(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->aa:Lcom/applovin/exoplayer2/h/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/h/x;->b(Lcom/applovin/exoplayer2/w;Lcom/applovin/exoplayer2/c/g;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_30

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/c/a;->gY()Z

    move-result p1

    if-eqz p1, :cond_20

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e;->ae:J

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e;->af:Z

    if-eqz p1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, -0x3

    :goto_1f
    return v0

    :cond_20
    iget-wide v0, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e;->ac:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/applovin/exoplayer2/c/g;->rJ:J

    iget-wide p1, p0, Lcom/applovin/exoplayer2/e;->ae:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e;->ae:J

    goto :goto_59

    :cond_30
    const/4 p2, -0x5

    if-ne p3, p2, :cond_59

    iget-object p2, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/exoplayer2/v;

    iget-wide v0, p2, Lcom/applovin/exoplayer2/v;->dD:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_59

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v;->bR()Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    iget-wide v1, p2, Lcom/applovin/exoplayer2/v;->dD:J

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e;->ac:J

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/v$a;->p(J)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p2

    iput-object p2, p1, Lcom/applovin/exoplayer2/w;->dU:Lcom/applovin/exoplayer2/v;

    :cond_59
    :goto_59
    return p3
.end method

.method protected final a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;I)Lcom/applovin/exoplayer2/p;
    .registers 5
    .param p2    # Lcom/applovin/exoplayer2/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/applovin/exoplayer2/e;->a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;ZI)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Ljava/lang/Throwable;Lcom/applovin/exoplayer2/v;ZI)Lcom/applovin/exoplayer2/p;
    .registers 14
    .param p2    # Lcom/applovin/exoplayer2/v;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1c

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e;->ag:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e;->ag:Z

    const/4 v0, 0x0

    :try_start_a
    invoke-interface {p0, p2}, Lcom/applovin/exoplayer2/as;->b(Lcom/applovin/exoplayer2/v;)I

    move-result v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/z1;->c(I)I

    move-result v1
    :try_end_12
    .catch Lcom/applovin/exoplayer2/p; {:try_start_a .. :try_end_12} :catch_1a
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e;->ag:Z

    move v6, v1

    goto :goto_1e

    :catchall_16
    move-exception p1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e;->ag:Z

    throw p1

    :catch_1a
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e;->ag:Z

    :cond_1c
    const/4 v1, 0x4

    const/4 v6, 0x4

    :goto_1e
    invoke-interface {p0}, Lcom/applovin/exoplayer2/ar;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->ah()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Lcom/applovin/exoplayer2/p;->a(Ljava/lang/Throwable;Ljava/lang/String;ILcom/applovin/exoplayer2/v;IZI)Lcom/applovin/exoplayer2/p;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(FF)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/y1;->a(Lcom/applovin/exoplayer2/ar;FF)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected a(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method public final a(Lcom/applovin/exoplayer2/at;[Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/h/x;JZZJJ)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    move-object v7, p0

    move-wide v8, p4

    move/from16 v10, p6

    iget v0, v7, Lcom/applovin/exoplayer2/e;->Z:I

    const/4 v1, 0x1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    move-object v0, p1

    iput-object v0, v7, Lcom/applovin/exoplayer2/e;->X:Lcom/applovin/exoplayer2/at;

    iput v1, v7, Lcom/applovin/exoplayer2/e;->Z:I

    iput-wide v8, v7, Lcom/applovin/exoplayer2/e;->ad:J

    move/from16 v0, p7

    invoke-virtual {p0, v10, v0}, Lcom/applovin/exoplayer2/e;->a(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    invoke-virtual/range {v0 .. v6}, Lcom/applovin/exoplayer2/e;->a([Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/h/x;JJ)V

    invoke-virtual {p0, v8, v9, v10}, Lcom/applovin/exoplayer2/e;->a(JZ)V

    return-void
.end method

.method protected a(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected a([Lcom/applovin/exoplayer2/v;JJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method public final a([Lcom/applovin/exoplayer2/v;Lcom/applovin/exoplayer2/h/x;JJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e;->af:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-object p2, p0, Lcom/applovin/exoplayer2/e;->aa:Lcom/applovin/exoplayer2/h/x;

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e;->ae:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_13

    iput-wide p3, p0, Lcom/applovin/exoplayer2/e;->ae:J

    :cond_13
    iput-object p1, p0, Lcom/applovin/exoplayer2/e;->ab:[Lcom/applovin/exoplayer2/v;

    iput-wide p5, p0, Lcom/applovin/exoplayer2/e;->ac:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/exoplayer2/e;->a([Lcom/applovin/exoplayer2/v;JJ)V

    return-void
.end method

.method protected aa()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    return-void
.end method

.method protected ab()V
    .registers 1

    return-void
.end method

.method protected ac()V
    .registers 1

    return-void
.end method

.method protected ad()V
    .registers 1

    return-void
.end method

.method protected final ae()Lcom/applovin/exoplayer2/w;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->W:Lcom/applovin/exoplayer2/w;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/w;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->W:Lcom/applovin/exoplayer2/w;

    return-object v0
.end method

.method protected final af()[Lcom/applovin/exoplayer2/v;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->ab:[Lcom/applovin/exoplayer2/v;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/exoplayer2/v;

    return-object v0
.end method

.method protected final ag()Lcom/applovin/exoplayer2/at;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->X:Lcom/applovin/exoplayer2/at;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/at;

    return-object v0
.end method

.method protected final ah()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/e;->Y:I

    return v0
.end method

.method protected final ai()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->R()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e;->af:Z

    goto :goto_15

    :cond_9
    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->aa:Lcom/applovin/exoplayer2/h/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/x;

    invoke-interface {v0}, Lcom/applovin/exoplayer2/h/x;->isReady()Z

    move-result v0

    :goto_15
    return v0
.end method

.method public final d(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e;->af:Z

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e;->ad:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e;->ae:J

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/e;->a(JZ)V

    return-void
.end method

.method protected e(J)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/e;->aa:Lcom/applovin/exoplayer2/h/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/h/x;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e;->ac:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/applovin/exoplayer2/h/x;->aS(J)I

    move-result p1

    return p1
.end method

.method public final p(I)V
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/e;->Y:I

    return-void
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/p;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e;->Z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/applovin/exoplayer2/e;->Z:I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e;->aa()V

    return-void
.end method
