###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.f (com.fyber.inneractive.sdk.player.exoplayer2.util.f)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[J


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->b:[J

    return-void
.end method


# virtual methods
.method public a(I)J
    .registers 5

    if-ltz p1, :cond_b

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->b:[J

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

    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(J)V
    .registers 6

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->b:[J

    array-length v2, v1

    if-ne v0, v2, :cond_f

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->b:[J

    :cond_f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->b:[J

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a:I

    aput-wide p1, v0, v1

    return-void
.end method
