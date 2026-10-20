###### Class com.fyber.inneractive.sdk.player.exoplayer2.util.q (com.fyber.inneractive.sdk.player.exoplayer2.util.q)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)Lcom/fyber/inneractive/sdk/player/exoplayer2/m;
    .registers 4

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(J)V

    :cond_b
    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    return-object p1
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->b:J

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->c:J

    :cond_c
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;)V
    .registers 4

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;->o()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a(J)V

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/g;->i()Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    return-void
.end method

.method public i()Lcom/fyber/inneractive/sdk/player/exoplayer2/m;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    return-object v0
.end method

.method public o()J
    .registers 8

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->b:J

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->a:Z

    if-eqz v2, :cond_22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->c:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/q;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iget v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    invoke-static {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->a(J)J

    move-result-wide v2

    goto :goto_21

    :cond_1c
    iget v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->c:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    :goto_21
    add-long/2addr v0, v2

    :cond_22
    return-wide v0
.end method
