###### Class com.applovin.exoplayer2.h.o (com.applovin.exoplayer2.h.o)
.class public Lcom/applovin/exoplayer2/h/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final LL:J

.field public final LM:I

.field public final gM:Ljava/lang/Object;

.field public final gP:I

.field public final gQ:I


# direct methods
.method protected constructor <init>(Lcom/applovin/exoplayer2/h/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iput-object v0, p0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget v0, p1, Lcom/applovin/exoplayer2/h/o;->gP:I

    iput v0, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    iget v0, p1, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iput v0, p0, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iget-wide v0, p1, Lcom/applovin/exoplayer2/h/o;->LL:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/h/o;->LL:J

    iget p1, p1, Lcom/applovin/exoplayer2/h/o;->LM:I

    iput p1, p0, Lcom/applovin/exoplayer2/h/o;->LM:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/h/o;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/h/o;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IIJI)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iput p2, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    iput p3, p0, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iput-wide p4, p0, Lcom/applovin/exoplayer2/h/o;->LL:J

    iput p6, p0, Lcom/applovin/exoplayer2/h/o;->LM:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 11

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/h/o;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .registers 12

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/h/o;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;)Lcom/applovin/exoplayer2/h/o;
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p0

    goto :goto_19

    :cond_a
    new-instance v0, Lcom/applovin/exoplayer2/h/o;

    iget v3, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    iget v4, p0, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iget-wide v5, p0, Lcom/applovin/exoplayer2/h/o;->LL:J

    iget v7, p0, Lcom/applovin/exoplayer2/h/o;->LM:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/h/o;-><init>(Ljava/lang/Object;IIJI)V

    :goto_19
    return-object v0
.end method

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
    instance-of v1, p1, Lcom/applovin/exoplayer2/h/o;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/exoplayer2/h/o;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    iget-object v3, p1, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    iget v3, p1, Lcom/applovin/exoplayer2/h/o;->gP:I

    if-ne v1, v3, :cond_31

    iget v1, p0, Lcom/applovin/exoplayer2/h/o;->gQ:I

    iget v3, p1, Lcom/applovin/exoplayer2/h/o;->gQ:I

    if-ne v1, v3, :cond_31

    iget-wide v3, p0, Lcom/applovin/exoplayer2/h/o;->LL:J

    iget-wide v5, p1, Lcom/applovin/exoplayer2/h/o;->LL:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_31

    iget v1, p0, Lcom/applovin/exoplayer2/h/o;->LM:I

    iget p1, p1, Lcom/applovin/exoplayer2/h/o;->LM:I

    if-ne v1, p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/o;->gM:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/h/o;->gQ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/o;->LL:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/applovin/exoplayer2/h/o;->LM:I

    add-int/2addr v1, v0

    return v1
.end method

.method public la()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/o;->gP:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
