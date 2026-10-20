###### Class com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.a (com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.a)
.class public abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

.field public final b:I

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field public final h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;ILcom/fyber/inneractive/sdk/player/exoplayer2/i;ILjava/lang/Object;JJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->b:I

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iput p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->d:I

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->e:Ljava/lang/Object;

    iput-wide p7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->f:J

    iput-wide p9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->g:J

    return-void
.end method


# virtual methods
.method public abstract c()J
.end method
