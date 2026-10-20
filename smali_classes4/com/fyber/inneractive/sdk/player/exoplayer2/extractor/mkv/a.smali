###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;

.field public d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->a:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->b:Ljava/util/Stack;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;I)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;I)J

    move-result-wide v0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_e

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double p1, p1

    goto :goto_12

    :cond_e
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    :goto_12
    return-wide p1
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)Z
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "Error parsing vorbis codec private"

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    :goto_12
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    const-wide/16 v6, -0x1

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, -0x1

    if-nez v3, :cond_8a8

    move-object v3, v1

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iget-wide v14, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;

    iget-wide v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;->b:J

    cmp-long v3, v14, v8

    if-ltz v3, :cond_8a8

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->b:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;

    iget v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;->a:I

    check-cast v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v8, 0xa0

    if-eq v3, v8, :cond_882

    const/16 v8, 0xae

    const/4 v9, 0x0

    if-eq v3, v8, :cond_17b

    const/16 v2, 0x4dbb

    const v8, 0x1c53bb6b

    if-eq v3, v2, :cond_164

    const/16 v2, 0x6240

    if-eq v3, v2, :cond_13a

    const/16 v2, 0x6d80

    if-eq v3, v2, :cond_127

    const v2, 0x1549a966

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v3, v2, :cond_10f

    const v2, 0x1654ae6b

    if-eq v3, v2, :cond_f9

    if-eq v3, v8, :cond_71

    goto/16 :goto_161

    :cond_71
    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->u:Z

    if-nez v2, :cond_161

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->Y:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    iget-wide v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->p:J

    cmp-long v3, v12, v6

    if-eqz v3, :cond_e8

    iget-wide v6, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->s:J

    cmp-long v3, v6, v10

    if-eqz v3, :cond_e8

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->B:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    if-eqz v3, :cond_e8

    iget v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a:I

    if-eqz v3, :cond_e8

    iget-object v6, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    if-eqz v6, :cond_e8

    iget v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a:I

    if-eq v6, v3, :cond_94

    goto :goto_e8

    :cond_94
    new-array v6, v3, [I

    new-array v7, v3, [J

    new-array v8, v3, [J

    new-array v10, v3, [J

    const/4 v11, 0x0

    :goto_9d
    if-ge v11, v3, :cond_b5

    iget-object v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->B:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    invoke-virtual {v12, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a(I)J

    move-result-wide v12

    aput-wide v12, v10, v11

    iget-wide v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->p:J

    iget-object v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    invoke-virtual {v14, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;->a(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    aput-wide v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_9d

    :cond_b5
    :goto_b5
    add-int/lit8 v11, v3, -0x1

    if-ge v4, v11, :cond_cc

    add-int/lit8 v11, v4, 0x1

    aget-wide v12, v7, v11

    aget-wide v14, v7, v4

    sub-long/2addr v12, v14

    long-to-int v13, v12

    aput v13, v6, v4

    aget-wide v12, v10, v11

    aget-wide v14, v10, v4

    sub-long/2addr v12, v14

    aput-wide v12, v8, v4

    move v4, v11

    goto :goto_b5

    :cond_cc
    iget-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->p:J

    iget-wide v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->o:J

    add-long/2addr v3, v12

    aget-wide v12, v7, v11

    sub-long/2addr v3, v12

    long-to-int v4, v3

    aput v4, v6, v11

    iget-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->s:J

    aget-wide v12, v10, v11

    sub-long/2addr v3, v12

    aput-wide v3, v8, v11

    iput-object v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->B:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    iput-object v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;

    invoke-direct {v3, v6, v7, v8, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/a;-><init>([I[J[J[J)V

    goto :goto_f3

    :cond_e8
    :goto_e8
    iput-object v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->B:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    iput-object v9, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->C:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/f;

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;

    iget-wide v6, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->s:J

    invoke-direct {v3, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m$a;-><init>(J)V

    :goto_f3
    invoke-interface {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;)V

    iput-boolean v5, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->u:Z

    goto :goto_161

    :cond_f9
    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_107

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->Y:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->c()V

    goto :goto_161

    :cond_107
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "No valid tracks were found"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10f
    iget-wide v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->q:J

    cmp-long v4, v2, v10

    if-nez v4, :cond_11a

    const-wide/32 v2, 0xf4240

    iput-wide v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->q:J

    :cond_11a
    iget-wide v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->r:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_161

    invoke-virtual {v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->a(J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->s:J

    goto :goto_161

    :cond_127
    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;

    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->e:Z

    if-eqz v2, :cond_161

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->f:[B

    if-nez v1, :cond_132

    goto :goto_161

    :cond_132
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Combining encryption and compression is not supported"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13a
    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;

    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->e:Z

    if-eqz v2, :cond_161

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->g:[B

    if-eqz v2, :cond_159

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    new-array v6, v5, [Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;

    sget-object v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->b:Ljava/util/UUID;

    const-string v9, "video/webm"

    invoke-direct {v7, v8, v9, v2, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    aput-object v7, v6, v4

    invoke-direct {v3, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;-><init>(Z[Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a$b;)V

    iput-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    goto :goto_161

    :cond_159
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_161
    :goto_161
    const/4 v4, 0x1

    goto/16 :goto_8a7

    :cond_164
    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->v:I

    if-eq v2, v13, :cond_173

    iget-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->w:J

    cmp-long v9, v3, v6

    if-eqz v9, :cond_173

    if-ne v2, v8, :cond_161

    iput-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->y:J

    goto :goto_161

    :cond_173
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17b
    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->a:Ljava/lang/String;

    const-string v6, "V_VP8"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_VP9"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_MPEG2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_MPEG4/ISO/SP"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_MPEG4/ISO/ASP"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_MPEG4/ISO/AP"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_MPEG4/ISO/AVC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_MS/VFW/FOURCC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "V_THEORA"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_OPUS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_VORBIS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_AAC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_MPEG/L2"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_MPEG/L3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_AC3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_EAC3"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_TRUEHD"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_DTS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_DTS/EXPRESS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_DTS/LOSSLESS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_FLAC"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_MS/ACM"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "A_PCM/INT/LIT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "S_TEXT/UTF8"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "S_VOBSUB"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "S_HDMV/PGS"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    const-string v7, "S_DVBSUB"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_260

    goto :goto_262

    :cond_260
    const/4 v3, 0x0

    goto :goto_263

    :cond_262
    :goto_262
    const/4 v3, 0x1

    :goto_263
    if-eqz v3, :cond_87d

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;

    iget-object v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->Y:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    iget v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->b:I

    iget-object v14, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->a:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v9, 0x18

    const/16 v13, 0x10

    sparse-switch v15, :sswitch_data_a36

    goto/16 :goto_3eb

    :sswitch_27d
    const-string v6, "A_OPUS"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_287

    goto/16 :goto_3eb

    :cond_287
    const/16 v6, 0x1b

    goto/16 :goto_3ec

    :sswitch_28b
    const-string v6, "A_FLAC"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_295

    goto/16 :goto_3eb

    :cond_295
    const/16 v6, 0x1a

    goto/16 :goto_3ec

    :sswitch_299
    const-string v6, "A_EAC3"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a3

    goto/16 :goto_3eb

    :cond_2a3
    const/16 v6, 0x19

    goto/16 :goto_3ec

    :sswitch_2a7
    const-string v6, "V_MPEG2"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b1

    goto/16 :goto_3eb

    :cond_2b1
    const/16 v6, 0x18

    goto/16 :goto_3ec

    :sswitch_2b5
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2bf

    goto/16 :goto_3eb

    :cond_2bf
    const/16 v6, 0x17

    goto/16 :goto_3ec

    :sswitch_2c3
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2cd

    goto/16 :goto_3eb

    :cond_2cd
    const/16 v6, 0x16

    goto/16 :goto_3ec

    :sswitch_2d1
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2db

    goto/16 :goto_3eb

    :cond_2db
    const/16 v6, 0x15

    goto/16 :goto_3ec

    :sswitch_2df
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e9

    goto/16 :goto_3eb

    :cond_2e9
    const/16 v6, 0x14

    goto/16 :goto_3ec

    :sswitch_2ed
    const-string v6, "V_THEORA"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f7

    goto/16 :goto_3eb

    :cond_2f7
    const/16 v6, 0x13

    goto/16 :goto_3ec

    :sswitch_2fb
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_305

    goto/16 :goto_3eb

    :cond_305
    const/16 v6, 0x12

    goto/16 :goto_3ec

    :sswitch_309
    const-string v6, "V_VP9"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_313

    goto/16 :goto_3eb

    :cond_313
    const/16 v6, 0x11

    goto/16 :goto_3ec

    :sswitch_317
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31f

    goto/16 :goto_3eb

    :cond_31f
    const/16 v6, 0x10

    goto/16 :goto_3ec

    :sswitch_323
    const-string v6, "A_DTS"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32d

    goto/16 :goto_3eb

    :cond_32d
    const/16 v6, 0xf

    goto/16 :goto_3ec

    :sswitch_331
    const-string v6, "A_AC3"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33b

    goto/16 :goto_3eb

    :cond_33b
    const/16 v6, 0xe

    goto/16 :goto_3ec

    :sswitch_33f
    const-string v6, "A_AAC"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_349

    goto/16 :goto_3eb

    :cond_349
    const/16 v6, 0xd

    goto/16 :goto_3ec

    :sswitch_34d
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_357

    goto/16 :goto_3eb

    :cond_357
    const/16 v6, 0xc

    goto/16 :goto_3ec

    :sswitch_35b
    const-string v6, "S_VOBSUB"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_365

    goto/16 :goto_3eb

    :cond_365
    const/16 v6, 0xb

    goto/16 :goto_3ec

    :sswitch_369
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_373

    goto/16 :goto_3eb

    :cond_373
    const/16 v6, 0xa

    goto/16 :goto_3ec

    :sswitch_377
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_381

    goto/16 :goto_3eb

    :cond_381
    const/16 v6, 0x9

    goto/16 :goto_3ec

    :sswitch_385
    const-string v6, "S_DVBSUB"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38f

    goto/16 :goto_3eb

    :cond_38f
    const/16 v6, 0x8

    goto/16 :goto_3ec

    :sswitch_393
    const-string v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39c

    goto :goto_3eb

    :cond_39c
    const/4 v6, 0x7

    goto :goto_3ec

    :sswitch_39e
    const-string v6, "A_MPEG/L3"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a7

    goto :goto_3eb

    :cond_3a7
    const/4 v6, 0x6

    goto :goto_3ec

    :sswitch_3a9
    const-string v6, "A_MPEG/L2"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b2

    goto :goto_3eb

    :cond_3b2
    const/4 v6, 0x5

    goto :goto_3ec

    :sswitch_3b4
    const-string v6, "A_VORBIS"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3bd

    goto :goto_3eb

    :cond_3bd
    const/4 v6, 0x4

    goto :goto_3ec

    :sswitch_3bf
    const-string v6, "A_TRUEHD"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c8

    goto :goto_3eb

    :cond_3c8
    const/4 v6, 0x3

    goto :goto_3ec

    :sswitch_3ca
    const-string v6, "A_MS/ACM"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d3

    goto :goto_3eb

    :cond_3d3
    const/4 v6, 0x2

    goto :goto_3ec

    :sswitch_3d5
    const-string v6, "V_MPEG4/ISO/SP"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3de

    goto :goto_3eb

    :cond_3de
    const/4 v6, 0x1

    goto :goto_3ec

    :sswitch_3e0
    const-string v6, "V_MPEG4/ISO/AP"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e9

    goto :goto_3eb

    :cond_3e9
    const/4 v6, 0x0

    goto :goto_3ec

    :goto_3eb
    const/4 v6, -0x1

    :goto_3ec
    const-string v14, "audio/x-unknown"

    const-string v15, "MatroskaExtractor"

    packed-switch v6, :pswitch_data_aa8

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Unrecognized codec identifier."

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_3fb
    const/16 v2, 0x1680

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    iget-wide v13, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->J:J

    invoke-virtual {v10, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    iget-wide v13, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->K:J

    invoke-virtual {v9, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "audio/opus"

    move-object v14, v6

    const/16 v23, 0x1680

    goto/16 :goto_58b

    :pswitch_442
    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "audio/flac"

    goto/16 :goto_4f8

    :pswitch_44c
    const-string v14, "audio/eac3"

    goto/16 :goto_60d

    :pswitch_450
    const-string v14, "video/mpeg2"

    goto/16 :goto_60d

    :pswitch_454
    const-string v14, "application/x-subrip"

    goto/16 :goto_60d

    :pswitch_458
    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    invoke-direct {v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>([B)V

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/video/c;

    move-result-object v2

    iget-object v6, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/c;->a:Ljava/util/List;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/c;->b:I

    iput v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->P:I

    const-string v2, "video/hevc"

    goto/16 :goto_4dc

    :pswitch_46d
    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->H:I

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(I)I

    move-result v2

    if-nez v2, :cond_495

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported PCM bit depth: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->H:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Setting mimeType to "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60d

    :cond_495
    const-string v6, "audio/raw"

    move-object v9, v6

    const/4 v6, 0x0

    goto/16 :goto_6a4

    :pswitch_49b
    const-string v14, "video/x-unknown"

    goto/16 :goto_60d

    :pswitch_49f
    const-string v14, "application/pgs"

    goto/16 :goto_60d

    :pswitch_4a3
    const-string v14, "video/x-vnd.on2.vp9"

    goto/16 :goto_60d

    :pswitch_4a7
    const-string v14, "video/x-vnd.on2.vp8"

    goto/16 :goto_60d

    :pswitch_4ab
    const-string v14, "audio/vnd.dts"

    goto/16 :goto_60d

    :pswitch_4af
    const-string v14, "audio/ac3"

    goto/16 :goto_60d

    :pswitch_4b3
    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "audio/mp4a-latm"

    goto :goto_4f8

    :pswitch_4bc
    const-string v14, "audio/vnd.dts.hd"

    goto/16 :goto_60d

    :pswitch_4c0
    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "application/vobsub"

    goto :goto_4f8

    :pswitch_4c9
    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    invoke-direct {v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>([B)V

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/a;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/video/a;

    move-result-object v2

    iget-object v6, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/a;->a:Ljava/util/List;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/a;->b:I

    iput v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->P:I

    const-string v2, "video/avc"

    :goto_4dc
    move-object v9, v2

    goto :goto_4fa

    :pswitch_4de
    new-array v2, v10, [B

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    aget-byte v9, v6, v4

    aput-byte v9, v2, v4

    aget-byte v9, v6, v5

    aput-byte v9, v2, v5

    aget-byte v9, v6, v12

    aput-byte v9, v2, v12

    aget-byte v6, v6, v11

    aput-byte v6, v2, v11

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v6, "application/dvbsubs"

    :goto_4f8
    move-object v9, v6

    move-object v6, v2

    :goto_4fa
    const/4 v2, -0x1

    goto/16 :goto_6a4

    :pswitch_4fd
    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    array-length v6, v2

    if-gt v13, v6, :cond_504

    const/4 v6, 0x1

    goto :goto_505

    :cond_504
    const/4 v6, 0x0

    :goto_505
    :try_start_505
    invoke-static {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    const/16 v6, 0x11

    aget-byte v14, v2, v13

    int-to-long v11, v14

    const-wide/16 v17, 0xff

    and-long v11, v11, v17

    const/16 v14, 0x12

    aget-byte v6, v2, v6

    int-to-long v4, v6

    and-long v4, v4, v17

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v4, v11

    const/16 v6, 0x13

    aget-byte v11, v2, v14

    int-to-long v11, v11

    and-long v11, v11, v17

    shl-long/2addr v11, v13

    or-long/2addr v4, v11

    aget-byte v6, v2, v6

    int-to-long v11, v6

    and-long v11, v11, v17

    shl-long/2addr v11, v9

    or-long/2addr v4, v11

    const-wide/32 v11, 0x31435657

    cmp-long v6, v4, v11

    if-eqz v6, :cond_535

    const/4 v2, 0x0

    goto :goto_55d

    :cond_535
    const/16 v4, 0x28

    :goto_537
    array-length v5, v2

    sub-int/2addr v5, v10

    if-ge v4, v5, :cond_56f

    aget-byte v5, v2, v4

    if-nez v5, :cond_56c

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v2, v5

    if-nez v5, :cond_56c

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v2, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_56c

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_56c

    array-length v5, v2

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_55d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_505 .. :try_end_55d} :catch_577

    :goto_55d
    if-eqz v2, :cond_563

    const-string v14, "video/wvc1"

    goto/16 :goto_60e

    :cond_563
    const-string v4, "Unsupported FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "video/x-unknown"

    goto/16 :goto_60e

    :cond_56c
    add-int/lit8 v4, v4, 0x1

    goto :goto_537

    :cond_56f
    :try_start_56f
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Failed to find FourCC VC1 initialization data"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_577
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_56f .. :try_end_577} :catch_577

    :catch_577
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Error parsing FourCC VC1 codec private"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_57f
    const/16 v2, 0x1000

    const-string v9, "audio/mpeg"

    goto :goto_588

    :pswitch_584
    const/16 v2, 0x1000

    const-string v9, "audio/mpeg-L2"

    :goto_588
    const/4 v14, 0x0

    const/16 v23, 0x1000

    :goto_58b
    const/16 v26, -0x1

    goto/16 :goto_6a9

    :pswitch_58f
    const/16 v4, 0x2000

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    const/4 v6, 0x0

    :try_start_594
    aget-byte v9, v5, v6

    const/4 v6, 0x2

    if-ne v9, v6, :cond_5ff

    const/4 v6, 0x0

    const/4 v9, 0x1

    :goto_59b
    aget-byte v10, v5, v9

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5a5

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v9, v9, 0x1

    goto :goto_59b

    :cond_5a5
    add-int/lit8 v10, v9, 0x1

    aget-byte v9, v5, v9

    add-int/2addr v6, v9

    const/4 v9, 0x0

    :goto_5ab
    aget-byte v11, v5, v10

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5b5

    add-int/lit16 v9, v9, 0xff

    add-int/lit8 v10, v10, 0x1

    goto :goto_5ab

    :cond_5b5
    add-int/lit8 v11, v10, 0x1

    aget-byte v10, v5, v10

    add-int/2addr v9, v10

    aget-byte v10, v5, v11

    const/4 v12, 0x1

    if-ne v10, v12, :cond_5f9

    new-array v10, v6, [B

    const/4 v12, 0x0

    invoke-static {v5, v11, v10, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v6

    aget-byte v6, v5, v11

    const/4 v12, 0x3

    if-ne v6, v12, :cond_5f3

    add-int/2addr v11, v9

    aget-byte v6, v5, v11

    const/4 v9, 0x5

    if-ne v6, v9, :cond_5ed

    array-length v6, v5

    sub-int/2addr v6, v11

    new-array v6, v6, [B

    array-length v9, v5

    sub-int/2addr v9, v11

    const/4 v12, 0x0

    invoke-static {v5, v11, v6, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5e7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_594 .. :try_end_5e7} :catch_605

    const-string v9, "audio/vorbis"

    move-object v14, v5

    const/16 v23, 0x2000

    goto :goto_58b

    :cond_5ed
    :try_start_5ed
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f3
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f9
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5ff
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_605
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5ed .. :try_end_605} :catch_605

    :catch_605
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_60b
    const-string v14, "audio/true-hd"

    :goto_60d
    const/4 v2, 0x0

    :goto_60e
    const/4 v4, -0x1

    goto/16 :goto_688

    :pswitch_611
    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    invoke-direct {v2, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>([B)V

    :try_start_618
    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->h()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_620

    goto :goto_642

    :cond_620
    const v5, 0xfffe

    if-ne v4, v5, :cond_644

    invoke-virtual {v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->i()J

    move-result-wide v4

    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->b0:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v9

    cmp-long v11, v4, v9

    if-nez v11, :cond_644

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->i()J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v9
    :try_end_63e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_618 .. :try_end_63e} :catch_68c

    cmp-long v2, v4, v9

    if-nez v2, :cond_644

    :goto_642
    const/4 v2, 0x1

    goto :goto_645

    :cond_644
    const/4 v2, 0x0

    :goto_645
    if-eqz v2, :cond_673

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->H:I

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(I)I

    move-result v2

    if-nez v2, :cond_66e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported PCM bit depth: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->H:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Setting mimeType to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60d

    :cond_66e
    const-string v14, "audio/raw"

    move v4, v2

    const/4 v2, 0x0

    goto :goto_688

    :cond_673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-PCM MS/ACM is unsupported. Setting mimeType to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60d

    :goto_688
    move-object v6, v2

    move v2, v4

    move-object v9, v14

    goto :goto_6a4

    :catch_68c
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Error parsing MS/ACM codec private"

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_694
    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->h:[B

    if-nez v2, :cond_69a

    const/4 v2, 0x0

    goto :goto_69e

    :cond_69a
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_69e
    const-string v4, "video/mp4v-es"

    move-object v6, v2

    move-object v9, v4

    goto/16 :goto_4fa

    :goto_6a4
    move/from16 v26, v2

    move-object v14, v6

    const/16 v23, -0x1

    :goto_6a9
    iget-boolean v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->M:Z

    const/4 v4, 0x0

    or-int/2addr v2, v4

    iget-boolean v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->L:Z

    if-eqz v4, :cond_6b3

    const/4 v4, 0x2

    goto :goto_6b4

    :cond_6b3
    const/4 v4, 0x0

    :goto_6b4
    or-int/2addr v2, v4

    invoke-static {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/h;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->G:I

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->I:I

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    iget-object v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->N:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object/from16 v20, v9

    move/from16 v24, v4

    move/from16 v25, v5

    move-object/from16 v27, v14

    move-object/from16 v28, v6

    move/from16 v29, v2

    move-object/from16 v30, v8

    invoke-static/range {v19 .. v30}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;ILjava/lang/String;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v2

    const/4 v11, 0x1

    goto/16 :goto_867

    :cond_6e0
    invoke-static {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/h;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_812

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->n:I

    if-nez v2, :cond_6fc

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->l:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6f1

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->j:I

    :cond_6f1
    iput v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->l:I

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->m:I

    if-ne v2, v4, :cond_6f9

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->k:I

    :cond_6f9
    iput v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->m:I

    goto :goto_6fd

    :cond_6fc
    const/4 v4, -0x1

    :goto_6fd
    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->l:I

    const/high16 v5, -0x40800000    # -1.0f

    if-eq v2, v4, :cond_715

    iget v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->m:I

    if-eq v6, v4, :cond_715

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->k:I

    mul-int v4, v4, v2

    int-to-float v2, v4

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->j:I

    mul-int v4, v4, v6

    int-to-float v4, v4

    div-float/2addr v2, v4

    move/from16 v29, v2

    goto :goto_717

    :cond_715
    const/high16 v29, -0x40800000    # -1.0f

    :goto_717
    iget-boolean v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->q:Z

    if-eqz v2, :cond_7e6

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->w:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->x:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->y:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->z:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->A:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->B:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->C:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->D:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->E:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_7d7

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->F:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_759

    goto/16 :goto_7d7

    :cond_759
    const/16 v2, 0x19

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->w:F

    const v6, 0x47435000    # 50000.0f

    mul-float v5, v5, v6

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->x:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->y:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->z:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->A:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->B:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->C:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->D:F

    mul-float v5, v5, v6

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->E:F

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->F:F

    add-float/2addr v5, v10

    float-to-int v5, v5

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->u:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->v:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_7d8

    :cond_7d7
    :goto_7d7
    const/4 v2, 0x0

    :goto_7d8
    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/b;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->r:I

    iget v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->t:I

    iget v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->s:I

    invoke-direct {v4, v5, v6, v10, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/video/b;-><init>(III[B)V

    move-object/from16 v32, v4

    goto :goto_7e8

    :cond_7e6
    const/16 v32, 0x0

    :goto_7e8
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    iget v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->j:I

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->k:I

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->o:[B

    iget v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->p:I

    iget-object v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/high16 v26, -0x40800000    # -1.0f

    const/16 v28, -0x1

    move-object/from16 v20, v9

    move/from16 v24, v2

    move/from16 v25, v4

    move-object/from16 v27, v14

    move-object/from16 v30, v5

    move/from16 v31, v6

    move-object/from16 v33, v8

    invoke-static/range {v19 .. v33}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/fyber/inneractive/sdk/player/exoplayer2/video/b;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v2

    const/4 v11, 0x2

    goto :goto_867

    :cond_812
    const-string v4, "application/x-subrip"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_834

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->N:Ljava/lang/String;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object/from16 v20, v9

    move/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    invoke-static/range {v19 .. v25}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v2

    :goto_832
    const/4 v11, 0x3

    goto :goto_867

    :cond_834
    const-string v2, "application/vobsub"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_855

    const-string v2, "application/pgs"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_855

    const-string v2, "application/dvbsubs"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84d

    goto :goto_855

    :cond_84d
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v2, "Unexpected MIME type."

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_855
    :goto_855
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v15, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->N:Ljava/lang/String;

    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    const/4 v12, 0x0

    const/4 v13, -0x1

    move-object v11, v9

    move-object/from16 v16, v2

    invoke-static/range {v10 .. v16}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v2

    goto :goto_832

    :goto_867
    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->b:I

    invoke-interface {v7, v4, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(II)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    move-result-object v4

    iput-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->O:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-interface {v4, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->c:Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;

    iget v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;->b:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_87e

    :cond_87d
    move-object v2, v9

    :goto_87e
    iput-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;

    goto/16 :goto_161

    :cond_882
    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->E:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_889

    goto/16 :goto_161

    :cond_889
    iget-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->X:Z

    if-nez v2, :cond_893

    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->M:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->M:I

    :cond_893
    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->c:Landroid/util/SparseArray;

    iget v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->K:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;

    iget-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->F:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$c;J)V

    const/4 v3, 0x0

    iput v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;->E:I

    goto/16 :goto_161

    :goto_8a7
    return v4

    :cond_8a8
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    if-nez v5, :cond_8fb

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;

    invoke-virtual {v5, v1, v4, v3, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;ZZI)J

    move-result-wide v8

    const-wide/16 v4, -0x2

    cmp-long v11, v8, v4

    if-nez v11, :cond_8ed

    move-object v4, v1

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iput v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    :goto_8bf
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->a:[B

    invoke-virtual {v4, v5, v3, v10, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->a:[B

    aget-byte v5, v5, v3

    invoke-static {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;->a(I)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_8e7

    if-gt v5, v10, :cond_8e7

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->a:[B

    invoke-static {v8, v5, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;->a([BIZ)J

    move-result-wide v8

    long-to-int v3, v8

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    check-cast v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    invoke-virtual {v8, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a(I)Z

    move-result v8

    if-eqz v8, :cond_8e7

    invoke-virtual {v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    int-to-long v8, v3

    goto :goto_8ed

    :cond_8e7
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    const/4 v3, 0x0

    goto :goto_8bf

    :cond_8ed
    :goto_8ed
    const/4 v3, 0x1

    cmp-long v4, v8, v6

    if-nez v4, :cond_8f4

    const/4 v4, 0x0

    return v4

    :cond_8f4
    const/4 v4, 0x0

    long-to-int v5, v8

    iput v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    goto :goto_8fd

    :cond_8fb
    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_8fd
    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    if-ne v5, v3, :cond_90e

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;

    const/16 v6, 0x8

    invoke-virtual {v5, v1, v4, v3, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;ZZI)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    const/4 v3, 0x2

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    :cond_90e
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sparse-switch v4, :sswitch_data_ae4

    const/4 v3, 0x0

    goto :goto_927

    :sswitch_91e
    const/4 v3, 0x5

    goto :goto_927

    :sswitch_920
    const/4 v3, 0x4

    goto :goto_927

    :sswitch_922
    const/4 v3, 0x1

    goto :goto_927

    :sswitch_924
    const/4 v3, 0x3

    goto :goto_927

    :sswitch_926
    const/4 v3, 0x2

    :goto_927
    if-eqz v3, :cond_a24

    const/4 v4, 0x1

    if-eq v3, v4, :cond_a00

    const/4 v2, 0x2

    if-eq v3, v2, :cond_9cd

    const/4 v2, 0x3

    if-eq v3, v2, :cond_999

    if-eq v3, v10, :cond_989

    const/4 v2, 0x5

    if-ne v3, v2, :cond_972

    iget-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_95f

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-nez v6, :cond_946

    goto :goto_95f

    :cond_946
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid float size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_95f
    :goto_95f
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;I)D

    move-result-wide v1

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    invoke-virtual {v4, v5, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a(ID)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    :goto_970
    const/4 v1, 0x1

    return v1

    :cond_972
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid element type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_989
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    iget-wide v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    long-to-int v5, v4

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    invoke-virtual {v2, v3, v5, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a(IILcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    goto :goto_970

    :cond_999
    iget-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-gtz v6, :cond_9b4

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->c(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;I)Ljava/lang/String;

    move-result-object v1

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    invoke-virtual {v4, v5, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    goto :goto_970

    :cond_9b4
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String element size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9cd
    iget-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-gtz v6, :cond_9e7

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;I)J

    move-result-wide v1

    check-cast v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    invoke-virtual {v4, v5, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a(IJ)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    goto :goto_970

    :cond_9e7
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid integer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a00
    check-cast v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iget-wide v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    add-long/2addr v1, v4

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->b:Ljava/util/Stack;

    new-instance v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;

    iget v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    invoke-direct {v6, v7, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a$a;-><init>(IJ)V

    invoke-virtual {v3, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/c;

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->f:I

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    move-object v2, v1

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;

    invoke-virtual/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/d$b;->a(IJJ)V

    const/4 v3, 0x0

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    const/4 v4, 0x1

    return v4

    :cond_a24
    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-wide v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->g:J

    long-to-int v6, v5

    move-object v5, v1

    check-cast v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    invoke-virtual {v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_12

    nop

    :sswitch_data_a36
    .sparse-switch
        -0x7ce7f5de -> :sswitch_3e0
        -0x7ce7f3b0 -> :sswitch_3d5
        -0x76567dc0 -> :sswitch_3ca
        -0x6a615338 -> :sswitch_3bf
        -0x672350af -> :sswitch_3b4
        -0x585f4fce -> :sswitch_3a9
        -0x585f4fcd -> :sswitch_39e
        -0x51dc40b2 -> :sswitch_393
        -0x37a9c464 -> :sswitch_385
        -0x2016c535 -> :sswitch_377
        -0x2016c4e5 -> :sswitch_369
        -0x19552dbd -> :sswitch_35b
        -0x1538b2ba -> :sswitch_34d
        0x3c02325 -> :sswitch_33f
        0x3c02353 -> :sswitch_331
        0x3c030c5 -> :sswitch_323
        0x4e86155 -> :sswitch_317
        0x4e86156 -> :sswitch_309
        0x5e8da3e -> :sswitch_2fb
        0x1a8350d6 -> :sswitch_2ed
        0x2056f406 -> :sswitch_2df
        0x2b453ce4 -> :sswitch_2d1
        0x32fdf009 -> :sswitch_2c3
        0x54c61e47 -> :sswitch_2b5
        0x6bd6c624 -> :sswitch_2a7
        0x7446132a -> :sswitch_299
        0x7446b0a6 -> :sswitch_28b
        0x744ad97d -> :sswitch_27d
    .end sparse-switch

    :pswitch_data_aa8
    .packed-switch 0x0
        :pswitch_694
        :pswitch_694
        :pswitch_611
        :pswitch_60b
        :pswitch_58f
        :pswitch_584
        :pswitch_57f
        :pswitch_4fd
        :pswitch_4de
        :pswitch_694
        :pswitch_4c9
        :pswitch_4c0
        :pswitch_4bc
        :pswitch_4b3
        :pswitch_4af
        :pswitch_4ab
        :pswitch_4a7
        :pswitch_4a3
        :pswitch_49f
        :pswitch_49b
        :pswitch_4ab
        :pswitch_46d
        :pswitch_458
        :pswitch_454
        :pswitch_450
        :pswitch_44c
        :pswitch_442
        :pswitch_3fb
    .end packed-switch

    :sswitch_data_ae4
    .sparse-switch
        0x83 -> :sswitch_926
        0x86 -> :sswitch_924
        0x88 -> :sswitch_926
        0x9b -> :sswitch_926
        0x9f -> :sswitch_926
        0xa0 -> :sswitch_922
        0xa1 -> :sswitch_920
        0xa3 -> :sswitch_920
        0xae -> :sswitch_922
        0xb0 -> :sswitch_926
        0xb3 -> :sswitch_926
        0xb5 -> :sswitch_91e
        0xb7 -> :sswitch_922
        0xba -> :sswitch_926
        0xbb -> :sswitch_922
        0xd7 -> :sswitch_926
        0xe0 -> :sswitch_922
        0xe1 -> :sswitch_922
        0xe7 -> :sswitch_926
        0xf1 -> :sswitch_926
        0xfb -> :sswitch_926
        0x4254 -> :sswitch_926
        0x4255 -> :sswitch_920
        0x4282 -> :sswitch_924
        0x4285 -> :sswitch_926
        0x42f7 -> :sswitch_926
        0x4489 -> :sswitch_91e
        0x47e1 -> :sswitch_926
        0x47e2 -> :sswitch_920
        0x47e7 -> :sswitch_922
        0x47e8 -> :sswitch_926
        0x4dbb -> :sswitch_922
        0x5031 -> :sswitch_926
        0x5032 -> :sswitch_926
        0x5034 -> :sswitch_922
        0x5035 -> :sswitch_922
        0x53ab -> :sswitch_920
        0x53ac -> :sswitch_926
        0x53b8 -> :sswitch_926
        0x54b0 -> :sswitch_926
        0x54b2 -> :sswitch_926
        0x54ba -> :sswitch_926
        0x55aa -> :sswitch_926
        0x55b0 -> :sswitch_922
        0x55b9 -> :sswitch_926
        0x55ba -> :sswitch_926
        0x55bb -> :sswitch_926
        0x55bc -> :sswitch_926
        0x55bd -> :sswitch_926
        0x55d0 -> :sswitch_922
        0x55d1 -> :sswitch_91e
        0x55d2 -> :sswitch_91e
        0x55d3 -> :sswitch_91e
        0x55d4 -> :sswitch_91e
        0x55d5 -> :sswitch_91e
        0x55d6 -> :sswitch_91e
        0x55d7 -> :sswitch_91e
        0x55d8 -> :sswitch_91e
        0x55d9 -> :sswitch_91e
        0x55da -> :sswitch_91e
        0x56aa -> :sswitch_926
        0x56bb -> :sswitch_926
        0x6240 -> :sswitch_922
        0x6264 -> :sswitch_926
        0x63a2 -> :sswitch_920
        0x6d80 -> :sswitch_922
        0x7670 -> :sswitch_922
        0x7672 -> :sswitch_920
        0x22b59c -> :sswitch_924
        0x23e383 -> :sswitch_926
        0x2ad7b1 -> :sswitch_926
        0x114d9b74 -> :sswitch_922
        0x1549a966 -> :sswitch_922
        0x1654ae6b -> :sswitch_922
        0x18538067 -> :sswitch_922
        0x1a45dfa3 -> :sswitch_922
        0x1c53bb6b -> :sswitch_922
        0x1f43b675 -> :sswitch_922
    .end sparse-switch
.end method

.method public final b(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->a:[B

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_a
    if-ge v1, p2, :cond_1a

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mkv/a;->a:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1a
    return-wide v2
.end method

.method public final c(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_5

    const-string p1, ""

    return-object p1

    :cond_5
    new-array v0, p2, [B

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b([BIIZ)Z

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method
