###### Class com.applovin.exoplayer2.g.g (com.applovin.exoplayer2.g.g)
.class public abstract Lcom/applovin/exoplayer2/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/applovin/exoplayer2/g/d;)Lcom/applovin/exoplayer2/g/a;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p1, Lcom/applovin/exoplayer2/c/g;->rH:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/c/a;->gX()Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 p1, 0x0

    goto :goto_2c

    :cond_28
    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/g/g;->a(Lcom/applovin/exoplayer2/g/d;Ljava/nio/ByteBuffer;)Lcom/applovin/exoplayer2/g/a;

    move-result-object p1

    :goto_2c
    return-object p1
.end method

.method protected abstract a(Lcom/applovin/exoplayer2/g/d;Ljava/nio/ByteBuffer;)Lcom/applovin/exoplayer2/g/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
