###### Class com.fyber.inneractive.sdk.player.exoplayer2.audio.c.C0174c (com.fyber.inneractive.sdk.player.exoplayer2.audio.c$c)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final j:Landroid/media/AudioTimestamp;

.field public k:J

.field public l:J

.field public m:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$a;)V

    new-instance v0, Landroid/media/AudioTimestamp;

    invoke-direct {v0}, Landroid/media/AudioTimestamp;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/AudioTrack;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a(Landroid/media/AudioTrack;Z)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->l:J

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->m:J

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->m:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    iget-wide v0, v0, Landroid/media/AudioTimestamp;->nanoTime:J

    return-wide v0
.end method

.method public d()Z
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$b;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->j:Landroid/media/AudioTimestamp;

    iget-wide v1, v1, Landroid/media/AudioTimestamp;->framePosition:J

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->l:J

    cmp-long v5, v3, v1

    if-lez v5, :cond_1b

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    :cond_1b
    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->l:J

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->k:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$c;->m:J

    :cond_25
    return v0
.end method
