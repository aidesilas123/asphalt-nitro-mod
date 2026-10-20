###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.u (com.fyber.inneractive.sdk.player.exoplayer2.upstream.u)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/u;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/t;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;I)V

    return-void
.end method
