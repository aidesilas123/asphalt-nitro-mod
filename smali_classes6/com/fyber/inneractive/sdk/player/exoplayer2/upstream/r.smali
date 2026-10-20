###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.r (com.fyber.inneractive.sdk.player.exoplayer2.upstream.r)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/r;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;)V

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0<",
            "-",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;
    .registers 3

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/q;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;)V

    return-object v0
.end method
