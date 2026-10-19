###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.d (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp3.d)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b$a;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:[J

.field public final e:J

.field public final f:I


# direct methods
.method public constructor <init>(JJJ[JJI)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->a:J

    iput-wide p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->b:J

    iput-wide p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->c:J

    iput-object p7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->d:[J

    iput-wide p8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->e:J

    iput p10, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->f:I

    return-void
.end method


# virtual methods
.method public a(J)J
    .registers 12

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->a()Z

    move-result v0

    if-nez v0, :cond_9

    iget-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->a:J

    return-wide p1

    :cond_9
    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->b:J

    long-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x43800000    # 256.0f

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1b

    const/4 v0, 0x0

    goto :goto_3a

    :cond_1b
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_20

    goto :goto_3a

    :cond_20
    float-to-int p2, p1

    if-nez p2, :cond_24

    goto :goto_2b

    :cond_24
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->d:[J

    add-int/lit8 v2, p2, -0x1

    aget-wide v2, v1, v2

    long-to-float v1, v2

    :goto_2b
    const/16 v2, 0x63

    if-ge p2, v2, :cond_34

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->d:[J

    aget-wide v2, v0, p2

    long-to-float v0, v2

    :cond_34
    sub-float/2addr v0, v1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    :goto_3a
    float-to-double p1, v0

    const-wide/high16 v0, 0x3f70000000000000L    # 0.00390625

    mul-double p1, p1, v0

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->e:J

    long-to-double v0, v0

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->a:J

    add-long/2addr p1, v0

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->c:J

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    cmp-long v8, v2, v4

    if-eqz v8, :cond_57

    sub-long/2addr v2, v6

    goto :goto_60

    :cond_57
    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->f:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->e:J

    add-long/2addr v0, v2

    sub-long v2, v0, v6

    :goto_60
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->d:[J

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public b(J)J
    .registers 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->a()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_5a

    iget-wide v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->a:J

    cmp-long v1, p1, v4

    if-gez v1, :cond_11

    goto :goto_5a

    :cond_11
    sub-long v4, p1, v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4070000000000000L    # 256.0

    mul-double v4, v4, v6

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->e:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->d:[J

    double-to-long v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v1, v6, v7, v9, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b([JJZZ)I

    move-result v1

    add-int/2addr v1, v9

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->b:J

    int-to-long v10, v1

    mul-long v10, v10, v6

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    if-nez v1, :cond_32

    move-wide v14, v2

    goto :goto_38

    :cond_32
    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->d:[J

    add-int/lit8 v14, v1, -0x1

    aget-wide v14, v8, v14

    :goto_38
    const/16 v8, 0x63

    if-ne v1, v8, :cond_3f

    const-wide/16 v16, 0x100

    goto :goto_43

    :cond_3f
    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->d:[J

    aget-wide v16, v8, v1

    :goto_43
    add-int/2addr v1, v9

    int-to-long v8, v1

    mul-long v6, v6, v8

    div-long/2addr v6, v12

    cmp-long v1, v16, v14

    if-nez v1, :cond_4d

    goto :goto_58

    :cond_4d
    sub-long/2addr v6, v10

    long-to-double v1, v6

    long-to-double v6, v14

    sub-double/2addr v4, v6

    mul-double v1, v1, v4

    sub-long v3, v16, v14

    long-to-double v3, v3

    div-double/2addr v1, v3

    double-to-long v2, v1

    :goto_58
    add-long/2addr v10, v2

    return-wide v10

    :cond_5a
    :goto_5a
    return-wide v2
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/d;->b:J

    return-wide v0
.end method
