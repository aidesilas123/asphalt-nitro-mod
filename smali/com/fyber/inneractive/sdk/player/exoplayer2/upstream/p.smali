###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.p (com.fyber.inneractive.sdk.player.exoplayer2.upstream.p)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/p;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/s;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0<",
            "-",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;IIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0<",
            "-",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;",
            ">;IIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/s;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/p;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/p;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/p;->d:I

    iput p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/p;->e:I

    iput-boolean p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/p;->f:Z

    return-void
.end method
