###### Class com.applovin.exoplayer2.ae (com.applovin.exoplayer2.ae)
.class final Lcom/applovin/exoplayer2/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final de:J

.field public final fE:Lcom/applovin/exoplayer2/h/p$a;

.field public final fF:J

.field public final fG:J

.field public final fH:J

.field public final fI:Z

.field public final fJ:Z

.field public final fK:Z

.field public final fL:Z


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/h/p$a;JJJJZZZZ)V
    .registers 22

    move-object v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_15

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v7, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v7, 0x1

    :goto_16
    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    if-eqz v3, :cond_20

    if-eqz v2, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v7, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v7, 0x1

    :goto_21
    invoke-static {v7}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    if-eqz v1, :cond_2c

    if-nez v2, :cond_2d

    if-nez v3, :cond_2d

    if-nez v4, :cond_2d

    :cond_2c
    const/4 v5, 0x1

    :cond_2d
    invoke-static {v5}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    move-object v5, p1

    iput-object v5, v0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    move-wide v5, p2

    iput-wide v5, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    move-wide v5, p4

    iput-wide v5, v0, Lcom/applovin/exoplayer2/ae;->de:J

    move-wide v5, p6

    iput-wide v5, v0, Lcom/applovin/exoplayer2/ae;->fG:J

    move-wide/from16 v5, p8

    iput-wide v5, v0, Lcom/applovin/exoplayer2/ae;->fH:J

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/ae;->fI:Z

    iput-boolean v2, v0, Lcom/applovin/exoplayer2/ae;->fJ:Z

    iput-boolean v3, v0, Lcom/applovin/exoplayer2/ae;->fK:Z

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/ae;->fL:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_57

    const-class v2, Lcom/applovin/exoplayer2/ae;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_57

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/ae;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ae;->fF:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_55

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->de:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ae;->de:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_55

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->fG:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ae;->fG:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_55

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->fH:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/ae;->fH:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_55

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ae;->fI:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ae;->fI:Z

    if-ne v2, v3, :cond_55

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ae;->fJ:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ae;->fJ:Z

    if-ne v2, v3, :cond_55

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ae;->fK:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ae;->fK:Z

    if-ne v2, v3, :cond_55

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/ae;->fL:Z

    iget-boolean v3, p1, Lcom/applovin/exoplayer2/ae;->fL:Z

    if-ne v2, v3, :cond_55

    iget-object v2, p0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-static {v2, p1}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_56

    :cond_55
    const/4 v0, 0x0

    :goto_56
    return v0

    :cond_57
    :goto_57
    return v1
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/h/o;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->fF:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->de:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->fG:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/ae;->fH:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ae;->fI:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ae;->fJ:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ae;->fK:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/ae;->fL:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public v(J)Lcom/applovin/exoplayer2/ae;
    .registers 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    move-object v1, v0

    goto :goto_24

    :cond_a
    new-instance v1, Lcom/applovin/exoplayer2/ae;

    iget-object v4, v0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v7, v0, Lcom/applovin/exoplayer2/ae;->de:J

    iget-wide v9, v0, Lcom/applovin/exoplayer2/ae;->fG:J

    iget-wide v11, v0, Lcom/applovin/exoplayer2/ae;->fH:J

    iget-boolean v13, v0, Lcom/applovin/exoplayer2/ae;->fI:Z

    iget-boolean v14, v0, Lcom/applovin/exoplayer2/ae;->fJ:Z

    iget-boolean v15, v0, Lcom/applovin/exoplayer2/ae;->fK:Z

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/ae;->fL:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/applovin/exoplayer2/ae;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJJJZZZZ)V

    :goto_24
    return-object v1
.end method

.method public w(J)Lcom/applovin/exoplayer2/ae;
    .registers 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/applovin/exoplayer2/ae;->de:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    move-object v1, v0

    goto :goto_24

    :cond_a
    new-instance v1, Lcom/applovin/exoplayer2/ae;

    iget-object v4, v0, Lcom/applovin/exoplayer2/ae;->fE:Lcom/applovin/exoplayer2/h/p$a;

    iget-wide v5, v0, Lcom/applovin/exoplayer2/ae;->fF:J

    iget-wide v9, v0, Lcom/applovin/exoplayer2/ae;->fG:J

    iget-wide v11, v0, Lcom/applovin/exoplayer2/ae;->fH:J

    iget-boolean v13, v0, Lcom/applovin/exoplayer2/ae;->fI:Z

    iget-boolean v14, v0, Lcom/applovin/exoplayer2/ae;->fJ:Z

    iget-boolean v15, v0, Lcom/applovin/exoplayer2/ae;->fK:Z

    iget-boolean v2, v0, Lcom/applovin/exoplayer2/ae;->fL:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/applovin/exoplayer2/ae;-><init>(Lcom/applovin/exoplayer2/h/p$a;JJJJZZZZ)V

    :goto_24
    return-object v1
.end method
