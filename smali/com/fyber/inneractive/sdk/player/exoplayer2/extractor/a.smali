###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;->a:[J

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;->b:[J

    array-length p1, p1

    if-lez p1, :cond_14

    add-int/lit8 p1, p1, -0x1

    aget-wide p2, p3, p1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;->c:J

    goto :goto_18

    :cond_14
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;->c:J

    :goto_18
    return-void
.end method


# virtual methods
.method public a(J)J
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;->a:[J

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;->c:J

    return-wide v0
.end method
