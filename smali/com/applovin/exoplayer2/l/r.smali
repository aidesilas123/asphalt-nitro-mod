###### Class com.applovin.exoplayer2.l.r (com.applovin.exoplayer2.l.r)
.class public final Lcom/applovin/exoplayer2/l/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ack:[J

.field private oW:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/l/r;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/applovin/exoplayer2/l/r;->ack:[J

    return-void
.end method


# virtual methods
.method public bo(J)V
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/l/r;->oW:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/r;->ack:[J

    array-length v2, v1

    if-ne v0, v2, :cond_f

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/r;->ack:[J

    :cond_f
    iget-object v0, p0, Lcom/applovin/exoplayer2/l/r;->ack:[J

    iget v1, p0, Lcom/applovin/exoplayer2/l/r;->oW:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/applovin/exoplayer2/l/r;->oW:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public fu(I)J
    .registers 5

    if-ltz p1, :cond_b

    iget v0, p0, Lcom/applovin/exoplayer2/l/r;->oW:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/r;->ack:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/applovin/exoplayer2/l/r;->oW:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pa()[J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/r;->ack:[J

    iget v1, p0, Lcom/applovin/exoplayer2/l/r;->oW:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/l/r;->oW:I

    return v0
.end method
