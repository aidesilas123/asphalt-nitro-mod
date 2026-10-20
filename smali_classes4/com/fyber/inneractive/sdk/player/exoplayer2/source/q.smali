###### Class com.fyber.inneractive.sdk.player.exoplayer2.source.q (com.fyber.inneractive.sdk.player.exoplayer2.source.q)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/p;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JJJJZZ)V
    .registers 11

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;-><init>()V

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->b:J

    iput-wide p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->c:J

    iput-wide p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->d:J

    iput-wide p7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->e:J

    iput-boolean p10, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->f:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 15

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;-><init>(JJJJZZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .registers 3

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->g:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_b

    :cond_a
    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(III)I

    if-eqz p3, :cond_a

    sget-object p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->g:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->b:J

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->d:J

    neg-long v3, v3

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->a:Ljava/lang/Object;

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->b:Ljava/lang/Object;

    iput v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    iput-wide v1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    iput-wide v3, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->e:J

    return-object p2
.end method

.method public a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$c;ZJ)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(III)I

    if-eqz p3, :cond_a

    sget-object p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->g:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iget-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->e:J

    iget-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->f:Z

    if-eqz p3, :cond_1d

    add-long/2addr v1, p4

    iget-wide p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->c:J

    cmp-long v3, v1, p4

    if-lez v3, :cond_1d

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :cond_1d
    iget-wide p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->c:J

    iget-wide v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;->d:J

    iput-object p1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->a:Ljava/lang/Object;

    iput-boolean p3, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->b:Z

    iput-wide v1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->e:J

    iput-wide p4, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->f:J

    iput v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->c:I

    iput v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->d:I

    iput-wide v3, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->g:J

    return-object p2
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
