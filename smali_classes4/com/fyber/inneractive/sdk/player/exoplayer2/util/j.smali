###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.j (com.fyber.inneractive.sdk.player.exoplayer2.util.j)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a:[B

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->d:I

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 9

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_21

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a:[B

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    goto :goto_7

    :cond_21
    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a:[B

    iget v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    rsub-int/lit8 v6, v2, 0x8

    shr-int/2addr v4, v6

    or-int/2addr v1, v4

    rsub-int/lit8 p1, p1, 0x20

    const/4 v4, -0x1

    ushr-int p1, v4, p1

    and-int/2addr p1, v1

    if-ne v2, v3, :cond_3b

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    :cond_3b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a()V

    return p1
.end method

.method public final a()V
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    if-ltz v0, :cond_10

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->d:I

    if-lt v0, v1, :cond_e

    if-ne v0, v1, :cond_10

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    return-void
.end method

.method public b(I)V
    .registers 3

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a()V

    return-void
.end method

.method public b()Z
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    aget-byte v0, v0, v1

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    const/16 v3, 0x80

    shr-int/2addr v3, v2

    and-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    add-int/2addr v2, v4

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1f

    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    :cond_1f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a()V

    return v0
.end method

.method public c(I)V
    .registers 5

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v2, p1

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    const/4 p1, 0x7

    if-le v2, p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->b:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->c:I

    :cond_1a
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/j;->a()V

    return-void
.end method
