###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.d.b (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.d$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

.field public c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;

.field public d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/c;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;->r:J

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;->l:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;->q:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/j;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/i;

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->e:I

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->g:I

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->f:I

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/c;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/c;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-interface {p2, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d$b;->a()V

    return-void
.end method
