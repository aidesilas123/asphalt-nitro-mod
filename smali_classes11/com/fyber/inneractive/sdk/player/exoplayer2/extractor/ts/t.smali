###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.t (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.t)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/q;


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

.field public b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)V
    .registers 12

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->c:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a()J

    move-result-wide v3

    const/4 v5, 0x0

    const-string v6, "application/x-scte35"

    invoke-static {v5, v6, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->c:Z

    :cond_29
    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-interface {v0, p1, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;I)V

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_40

    iget-wide v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    :cond_3e
    move-wide v4, v1

    goto :goto_4b

    :cond_40
    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long p1, v4, v8

    if-eqz p1, :cond_3e

    :goto_4b
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(JIII[B)V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;)V
    .registers 6

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->a()V

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->c()I

    move-result p1

    const/4 v0, 0x4

    invoke-interface {p2, p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(II)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/t;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-virtual {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/x-scte35"

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p2, p3, v0, v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    return-void
.end method
