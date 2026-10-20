###### Class com.applovin.exoplayer2.e.g.n (com.applovin.exoplayer2.e.g.n)
.class final Lcom/applovin/exoplayer2/e/g/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final AG:Lcom/applovin/exoplayer2/e/g/k;

.field public final Bq:[J

.field public final fH:J

.field public final jA:I

.field public final tR:[I

.field public final tS:[J

.field public final zH:I

.field public final zJ:[I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/g/k;[J[II[J[IJ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    array-length v0, p6

    array-length v1, p5

    if-ne v0, v1, :cond_1e

    const/4 v2, 0x1

    :cond_1e
    invoke-static {v2}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/g/n;->AG:Lcom/applovin/exoplayer2/e/g/k;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/g/n;->tS:[J

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/g/n;->tR:[I

    iput p4, p0, Lcom/applovin/exoplayer2/e/g/n;->zH:I

    iput-object p5, p0, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    iput-object p6, p0, Lcom/applovin/exoplayer2/e/g/n;->zJ:[I

    iput-wide p7, p0, Lcom/applovin/exoplayer2/e/g/n;->fH:J

    array-length p1, p2

    iput p1, p0, Lcom/applovin/exoplayer2/e/g/n;->jA:I

    array-length p1, p6

    if-lez p1, :cond_3e

    array-length p1, p6

    sub-int/2addr p1, v3

    aget p2, p6, p1

    const/high16 p3, 0x20000000

    or-int/2addr p2, p3

    aput p2, p6, p1

    :cond_3e
    return-void
.end method


# virtual methods
.method public aA(J)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/applovin/exoplayer2/l/ai;->a([JJZZ)I

    move-result p1

    :goto_8
    if-ltz p1, :cond_15

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/n;->zJ:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_12

    return p1

    :cond_12
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public aB(J)I
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/applovin/exoplayer2/l/ai;->b([JJZZ)I

    move-result p1

    :goto_8
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/n;->Bq:[J

    array-length p2, p2

    if-ge p1, p2, :cond_18

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/g/n;->zJ:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_15

    return p1

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p1, -0x1

    return p1
.end method
