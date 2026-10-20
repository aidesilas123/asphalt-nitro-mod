###### Class com.fyber.inneractive.sdk.player.exoplayer2.source.e (com.fyber.inneractive.sdk.player.exoplayer2.source.e)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/source/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:J

.field public final synthetic c:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;ILcom/fyber/inneractive/sdk/player/exoplayer2/i;ILjava/lang/Object;J)V
    .registers 8

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/e;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/e;->a:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/e;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f;

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/e;->b:J

    invoke-static {v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;J)J

    check-cast v1, Lcom/fyber/inneractive/sdk/player/controller/u;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/controller/u;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s AdaptiveMediaSourceEventListener onDownstreamFormatChanged called."

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
