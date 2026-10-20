###### Class com.applovin.exoplayer2.b.w (com.applovin.exoplayer2.b.w)
.class public final Lcom/applovin/exoplayer2/b/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/b/f;


# instance fields
.field private gD:F

.field private gE:F

.field private kO:Lcom/applovin/exoplayer2/b/f$a;

.field private kP:Lcom/applovin/exoplayer2/b/f$a;

.field private kQ:Lcom/applovin/exoplayer2/b/f$a;

.field private kR:Lcom/applovin/exoplayer2/b/f$a;

.field private kS:Ljava/nio/ByteBuffer;

.field private kT:Ljava/nio/ByteBuffer;

.field private kU:Z

.field private nm:I

.field private nn:Z

.field private no:Lcom/applovin/exoplayer2/b/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private np:Ljava/nio/ShortBuffer;

.field private nq:J

.field private nr:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/exoplayer2/b/w;->gD:F

    iput v0, p0, Lcom/applovin/exoplayer2/b/w;->gE:F

    sget-object v0, Lcom/applovin/exoplayer2/b/f$a;->jP:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kQ:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kR:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kO:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kP:Lcom/applovin/exoplayer2/b/f$a;

    sget-object v0, Lcom/applovin/exoplayer2/b/f;->jO:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kS:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/w;->np:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kT:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/b/w;->nm:I

    return-void
.end method


# virtual methods
.method public U(J)J
    .registers 18

    move-object v0, p0

    iget-wide v1, v0, Lcom/applovin/exoplayer2/b/w;->nr:J

    const-wide/16 v3, 0x400

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3c

    iget-wide v1, v0, Lcom/applovin/exoplayer2/b/w;->nq:J

    iget-object v3, v0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/b/v;

    invoke-virtual {v3}, Lcom/applovin/exoplayer2/b/v;->eN()I

    move-result v3

    int-to-long v3, v3

    sub-long v7, v1, v3

    iget-object v1, v0, Lcom/applovin/exoplayer2/b/w;->kP:Lcom/applovin/exoplayer2/b/f$a;

    iget v1, v1, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    iget-object v2, v0, Lcom/applovin/exoplayer2/b/w;->kO:Lcom/applovin/exoplayer2/b/f$a;

    iget v2, v2, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    if-ne v1, v2, :cond_2d

    iget-wide v9, v0, Lcom/applovin/exoplayer2/b/w;->nr:J

    move-wide/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v1

    goto :goto_3b

    :cond_2d
    int-to-long v3, v1

    mul-long v11, v7, v3

    iget-wide v3, v0, Lcom/applovin/exoplayer2/b/w;->nr:J

    int-to-long v1, v2

    mul-long v13, v3, v1

    move-wide/from16 v9, p1

    invoke-static/range {v9 .. v14}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v1

    :goto_3b
    return-wide v1

    :cond_3c
    iget v1, v0, Lcom/applovin/exoplayer2/b/w;->gD:F

    float-to-double v1, v1

    move-wide/from16 v3, p1

    long-to-double v3, v3

    mul-double v1, v1, v3

    double-to-long v1, v1

    return-wide v1
.end method

.method public Y()V
    .registers 4

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/applovin/exoplayer2/b/w;->gD:F

    iput v0, p0, Lcom/applovin/exoplayer2/b/w;->gE:F

    sget-object v0, Lcom/applovin/exoplayer2/b/f$a;->jP:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kQ:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kR:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kO:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kP:Lcom/applovin/exoplayer2/b/f$a;

    sget-object v0, Lcom/applovin/exoplayer2/b/f;->jO:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kS:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/w;->np:Ljava/nio/ShortBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kT:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/b/w;->nm:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/w;->nn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/applovin/exoplayer2/b/w;->nq:J

    iput-wide v1, p0, Lcom/applovin/exoplayer2/b/w;->nr:J

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/w;->kU:Z

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/b/f$a;)Lcom/applovin/exoplayer2/b/f$a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/b/f$b;
        }
    .end annotation

    iget v0, p1, Lcom/applovin/exoplayer2/b/f$a;->jQ:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/applovin/exoplayer2/b/w;->nm:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    iget v0, p1, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    :cond_c
    iput-object p1, p0, Lcom/applovin/exoplayer2/b/w;->kQ:Lcom/applovin/exoplayer2/b/f$a;

    new-instance v2, Lcom/applovin/exoplayer2/b/f$a;

    iget p1, p1, Lcom/applovin/exoplayer2/b/f$a;->dL:I

    invoke-direct {v2, v0, p1, v1}, Lcom/applovin/exoplayer2/b/f$a;-><init>(III)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/b/w;->kR:Lcom/applovin/exoplayer2/b/f$a;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b/w;->nn:Z

    return-object v2

    :cond_1b
    new-instance v0, Lcom/applovin/exoplayer2/b/f$b;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/b/f$b;-><init>(Lcom/applovin/exoplayer2/b/f$a;)V

    throw v0
.end method

.method public cR()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/b/w;->kU:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/v;->eO()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public d(Ljava/nio/ByteBuffer;)V
    .registers 9

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/b/v;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lcom/applovin/exoplayer2/b/w;->nq:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/applovin/exoplayer2/b/w;->nq:J

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/b/v;->a(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public dG()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/v;->dG()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/w;->kU:Z

    return-void
.end method

.method public dH()Ljava/nio/ByteBuffer;
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/v;->eO()I

    move-result v1

    if-lez v1, :cond_45

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/w;->kS:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_27

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/exoplayer2/b/w;->kS:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/applovin/exoplayer2/b/w;->np:Ljava/nio/ShortBuffer;

    goto :goto_31

    :cond_27
    iget-object v2, p0, Lcom/applovin/exoplayer2/b/w;->kS:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/applovin/exoplayer2/b/w;->np:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_31
    iget-object v2, p0, Lcom/applovin/exoplayer2/b/w;->np:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/b/v;->b(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/applovin/exoplayer2/b/w;->nr:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/exoplayer2/b/w;->nr:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kS:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kS:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kT:Ljava/nio/ByteBuffer;

    :cond_45
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kT:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/applovin/exoplayer2/b/f;->jO:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/w;->kT:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public dI()V
    .registers 10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/w;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kQ:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kO:Lcom/applovin/exoplayer2/b/f$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/w;->kR:Lcom/applovin/exoplayer2/b/f$a;

    iput-object v1, p0, Lcom/applovin/exoplayer2/b/w;->kP:Lcom/applovin/exoplayer2/b/f$a;

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/b/w;->nn:Z

    if-eqz v2, :cond_25

    new-instance v2, Lcom/applovin/exoplayer2/b/v;

    iget v4, v0, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    iget v5, v0, Lcom/applovin/exoplayer2/b/f$a;->dL:I

    iget v6, p0, Lcom/applovin/exoplayer2/b/w;->gD:F

    iget v7, p0, Lcom/applovin/exoplayer2/b/w;->gE:F

    iget v8, v1, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/applovin/exoplayer2/b/v;-><init>(IIFFI)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    goto :goto_2c

    :cond_25
    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->no:Lcom/applovin/exoplayer2/b/v;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/v;->dI()V

    :cond_2c
    :goto_2c
    sget-object v0, Lcom/applovin/exoplayer2/b/f;->jO:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kT:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/w;->nq:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/w;->nr:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/b/w;->kU:Z

    return-void
.end method

.method public isActive()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kR:Lcom/applovin/exoplayer2/b/f$a;

    iget v0, v0, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    iget v0, p0, Lcom/applovin/exoplayer2/b/w;->gD:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2c

    iget v0, p0, Lcom/applovin/exoplayer2/b/w;->gE:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-gez v0, :cond_2c

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/w;->kR:Lcom/applovin/exoplayer2/b/f$a;

    iget v0, v0, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/b/w;->kQ:Lcom/applovin/exoplayer2/b/f$a;

    iget v1, v1, Lcom/applovin/exoplayer2/b/f$a;->dM:I

    if-eq v0, v1, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0
.end method

.method public l(F)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/b/w;->gD:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/applovin/exoplayer2/b/w;->gD:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b/w;->nn:Z

    :cond_b
    return-void
.end method

.method public m(F)V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/b/w;->gE:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/applovin/exoplayer2/b/w;->gE:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/b/w;->nn:Z

    :cond_b
    return-void
.end method
