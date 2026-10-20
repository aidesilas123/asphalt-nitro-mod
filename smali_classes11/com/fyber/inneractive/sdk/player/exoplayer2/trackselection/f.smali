###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.f)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

.field public c:I


# direct methods
.method public varargs constructor <init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    array-length p1, p1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    if-eq v1, v0, :cond_f

    goto :goto_1a

    :cond_f
    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->c:I

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->c:I

    :cond_e
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->c:I

    return v0
.end method
