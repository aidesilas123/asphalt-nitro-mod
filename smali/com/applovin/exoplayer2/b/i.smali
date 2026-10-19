###### Class com.applovin.exoplayer2.b.i (com.applovin.exoplayer2.b.i)
.class final Lcom/applovin/exoplayer2/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/b/i$a;
    }
.end annotation


# instance fields
.field private Z:I

.field private final jX:Lcom/applovin/exoplayer2/b/i$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private jY:J

.field private jZ:J

.field private ka:J

.field private kb:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/applovin/exoplayer2/l/ai;->acV:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_14

    new-instance v0, Lcom/applovin/exoplayer2/b/i$a;

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/b/i$a;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/i;->Y()V

    goto :goto_1b

    :cond_14
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/i;->ax(I)V

    :goto_1b
    return-void
.end method

.method private ax(I)V
    .registers 8

    iput p1, p0, Lcom/applovin/exoplayer2/b/i;->Z:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_27

    const/4 v2, 0x1

    if-eq p1, v2, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/i;->jZ:J

    goto :goto_3a

    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1e
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/i;->jZ:J

    goto :goto_3a

    :cond_24
    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/i;->jZ:J

    goto :goto_3a

    :cond_27
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/exoplayer2/b/i;->ka:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/applovin/exoplayer2/b/i;->kb:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/exoplayer2/b/i;->jY:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/b/i;->jZ:J

    :goto_3a
    return-void
.end method


# virtual methods
.method public G(J)Z
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    iget-wide v2, p0, Lcom/applovin/exoplayer2/b/i;->ka:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/applovin/exoplayer2/b/i;->jZ:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    goto/16 :goto_78

    :cond_11
    iput-wide p1, p0, Lcom/applovin/exoplayer2/b/i;->ka:J

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/i$a;->dX()Z

    move-result v0

    iget v2, p0, Lcom/applovin/exoplayer2/b/i;->Z:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_50

    const/4 p1, 0x2

    if-eq v2, v4, :cond_3a

    if-eq v2, p1, :cond_34

    if-eq v2, v3, :cond_2e

    const/4 p1, 0x4

    if-ne v2, p1, :cond_28

    goto :goto_77

    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2e
    if-eqz v0, :cond_77

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/i;->Y()V

    goto :goto_77

    :cond_34
    if-nez v0, :cond_77

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/i;->Y()V

    goto :goto_77

    :cond_3a
    if-eqz v0, :cond_4c

    iget-object p2, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/b/i$a;->dW()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/applovin/exoplayer2/b/i;->kb:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_77

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/b/i;->ax(I)V

    goto :goto_77

    :cond_4c
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/i;->Y()V

    goto :goto_77

    :cond_50
    if-eqz v0, :cond_6a

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/b/i$a;->dV()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/applovin/exoplayer2/b/i;->jY:J

    cmp-long v5, p1, v2

    if-ltz v5, :cond_78

    iget-object p1, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/b/i$a;->dW()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/b/i;->kb:J

    invoke-direct {p0, v4}, Lcom/applovin/exoplayer2/b/i;->ax(I)V

    goto :goto_77

    :cond_6a
    iget-wide v1, p0, Lcom/applovin/exoplayer2/b/i;->jY:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x7a120

    cmp-long v4, p1, v1

    if-lez v4, :cond_77

    invoke-direct {p0, v3}, Lcom/applovin/exoplayer2/b/i;->ax(I)V

    :cond_77
    :goto_77
    move v1, v0

    :cond_78
    :goto_78
    return v1
.end method

.method public Y()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/b/i;->ax(I)V

    :cond_8
    return-void
.end method

.method public dS()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/b/i;->ax(I)V

    return-void
.end method

.method public dT()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/b/i;->Z:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/b/i;->Y()V

    :cond_8
    return-void
.end method

.method public dU()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/b/i;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public dV()J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/i$a;->dV()J

    move-result-wide v0

    goto :goto_e

    :cond_9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_e
    return-wide v0
.end method

.method public dW()J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/b/i;->jX:Lcom/applovin/exoplayer2/b/i$a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/b/i$a;->dW()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, -0x1

    :goto_b
    return-wide v0
.end method
