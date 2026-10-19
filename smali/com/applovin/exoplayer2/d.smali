###### Class com.applovin.exoplayer2.d (com.applovin.exoplayer2.d)
.class public abstract Lcom/applovin/exoplayer2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/an;


# instance fields
.field protected final U:Lcom/applovin/exoplayer2/ba$c;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/ba$c;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ba$c;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/d;->U:Lcom/applovin/exoplayer2/ba$c;

    return-void
.end method

.method private L()I
    .registers 3

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aF()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    return v0
.end method

.method private c(J)V
    .registers 8

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aN()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aM()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_16

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_16
    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/d;->b(J)V

    return-void
.end method


# virtual methods
.method public final A()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->G()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/d;->o(I)V

    :cond_a
    return-void
.end method

.method public final B()V
    .registers 6

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3e

    :cond_11
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->z()Z

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->I()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->J()Z

    move-result v1

    if-nez v1, :cond_27

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->A()V

    goto :goto_3e

    :cond_27
    if-eqz v0, :cond_39

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aN()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aJ()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_39

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->A()V

    goto :goto_3e

    :cond_39
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/exoplayer2/d;->b(J)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final C()Z
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->F()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public final D()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->F()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/d;->o(I)V

    :cond_a
    return-void
.end method

.method public final E()V
    .registers 2

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2a

    :cond_11
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->C()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->D()V

    goto :goto_2a

    :cond_1b
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->I()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->H()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->w()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final F()I
    .registers 5

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, -0x1

    goto :goto_1c

    :cond_c
    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d;->L()I

    move-result v2

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aG()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/ba;->a(IIZ)I

    move-result v0

    :goto_1c
    return v0
.end method

.method public final G()I
    .registers 5

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, -0x1

    goto :goto_1c

    :cond_c
    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/d;->L()I

    move-result v2

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aG()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/exoplayer2/ba;->b(IIZ)I

    move-result v0

    :goto_1c
    return v0
.end method

.method public final H()Z
    .registers 4

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/d;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ba$c;->iN:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final I()Z
    .registers 4

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/d;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba$c;->dn()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public final J()Z
    .registers 4

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/d;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v0

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ba$c;->iM:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final K()J
    .registers 4

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1e

    :cond_10
    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/d;->U:Lcom/applovin/exoplayer2/ba$c;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/exoplayer2/ba;->a(ILcom/applovin/exoplayer2/ba$c;)Lcom/applovin/exoplayer2/ba$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ba$c;->dl()J

    move-result-wide v0

    :goto_1e
    return-wide v0
.end method

.method protected a(Lcom/applovin/exoplayer2/an$a;)Lcom/applovin/exoplayer2/an$a;
    .registers 6

    new-instance v0, Lcom/applovin/exoplayer2/an$a$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/an$a$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/an$a$a;->c(Lcom/applovin/exoplayer2/an$a;)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->J()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->z()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    if-nez v2, :cond_38

    const/4 v2, 0x1

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/4 v0, 0x6

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->z()Z

    move-result v2

    if-nez v2, :cond_5a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->I()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->J()Z

    move-result v2

    if-eqz v2, :cond_62

    :cond_5a
    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    if-nez v2, :cond_62

    const/4 v2, 0x1

    goto :goto_63

    :cond_62
    const/4 v2, 0x0

    :goto_63
    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->C()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    if-nez v2, :cond_76

    const/4 v2, 0x1

    goto :goto_77

    :cond_76
    const/4 v2, 0x0

    :goto_77
    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aX()Lcom/applovin/exoplayer2/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ba;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->C()Z

    move-result v2

    if-nez v2, :cond_99

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->I()Z

    move-result v2

    if-eqz v2, :cond_a1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->H()Z

    move-result v2

    if-eqz v2, :cond_a1

    :cond_99
    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    if-nez v2, :cond_a1

    const/4 v2, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v2, 0x0

    :goto_a2
    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/16 v0, 0x9

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->J()Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    if-nez v2, :cond_c1

    const/4 v2, 0x1

    goto :goto_c2

    :cond_c1
    const/4 v2, 0x0

    :goto_c2
    invoke-virtual {p1, v0, v2}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->J()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aP()Z

    move-result v2

    if-nez v2, :cond_d5

    goto :goto_d6

    :cond_d5
    const/4 v1, 0x0

    :goto_d6
    invoke-virtual {p1, v0, v1}, Lcom/applovin/exoplayer2/an$a$a;->d(IZ)Lcom/applovin/exoplayer2/an$a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/an$a$a;->cC()Lcom/applovin/exoplayer2/an$a;

    move-result-object p1

    return-object p1
.end method

.method public final b(J)V
    .registers 4

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/applovin/exoplayer2/an;->a(IJ)V

    return-void
.end method

.method public final n(I)Z
    .registers 3

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aA()Lcom/applovin/exoplayer2/an$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/an$a;->X(I)Z

    move-result p1

    return p1
.end method

.method public final o(I)V
    .registers 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/an;->a(IJ)V

    return-void
.end method

.method public final v()Z
    .registers 3

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aB()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aE()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aC()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public final w()V
    .registers 2

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aL()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/d;->o(I)V

    return-void
.end method

.method public final x()V
    .registers 3

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aH()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/d;->c(J)V

    return-void
.end method

.method public final y()V
    .registers 3

    invoke-interface {p0}, Lcom/applovin/exoplayer2/an;->aI()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/d;->c(J)V

    return-void
.end method

.method public final z()Z
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/d;->G()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
