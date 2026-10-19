###### Class com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b (com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b)
.class public abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;
    }
.end annotation


# static fields
.field public static final U:[B


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:[Ljava/nio/ByteBuffer;

.field public F:[Ljava/nio/ByteBuffer;

.field public G:J

.field public H:I

.field public I:I

.field public J:Z

.field public K:Z

.field public L:I

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;

.field public final i:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

.field public final j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/d;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z

.field public final l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

.field public final m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

.field public final n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Landroid/media/MediaCodec$BufferInfo;

.field public q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

.field public r:Landroid/media/MediaCodec;

.field public s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/d;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/d;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 v0, 0x26

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_2a

    mul-int/lit8 v3, v2, 0x2

    const-string v4, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2a
    sput-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->U:[B

    return-void
.end method

.method public constructor <init>(ILcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/d;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;-><init>(I)V

    sget p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    iput-boolean p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->k:Z

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-direct {p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;-><init>(I)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b()Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/j;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->o:Ljava/util/List;

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b;
        }
    .end annotation
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b;
        }
    .end annotation

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;->a(Ljava/lang/String;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->Q:Z

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->w()V

    return-void

    :cond_a
    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-nez v0, :cond_3a

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->a()V

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    iget-object v3, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v12, v0, v3, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/j;Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;Z)I

    move-result v0

    if-ne v0, v2, :cond_29

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-virtual {v12, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    goto :goto_3a

    :cond_29
    if-ne v0, v1, :cond_39

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b(I)Z

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iput-boolean v14, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->P:Z

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u()V

    :cond_39
    return-void

    :cond_3a
    :goto_3a
    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t()V

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    const/4 v15, 0x0

    if-eqz v0, :cond_194

    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a(Ljava/lang/String;)V

    :goto_47
    iget v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    const/4 v11, -0x1

    if-gez v0, :cond_12a

    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->A:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6e

    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->O:Z

    if-eqz v0, :cond_6e

    :try_start_56
    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_78

    :catch_61
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u()V

    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->Q:Z

    if-eqz v0, :cond_183

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v()V

    goto/16 :goto_183

    :cond_6e
    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    :goto_78
    iget v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    if-ltz v0, :cond_d9

    iget-boolean v1, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->D:Z

    if-eqz v1, :cond_8b

    iput-boolean v15, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->D:Z

    iget-object v1, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v11, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    goto/16 :goto_184

    :cond_8b
    iget-object v1, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v2, v13

    if-eqz v2, :cond_99

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u()V

    iput v11, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    goto/16 :goto_183

    :cond_99
    iget-object v2, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->F:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_ae

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_ae
    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_b9
    if-ge v3, v2, :cond_d5

    iget-object v4, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_d2

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->o:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_d6

    :cond_d2
    add-int/lit8 v3, v3, 0x1

    goto :goto_b9

    :cond_d5
    const/4 v0, 0x0

    :goto_d6
    iput-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->J:Z

    goto :goto_12a

    :cond_d9
    const/4 v1, -0x2

    if-ne v0, v1, :cond_10c

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->x:Z

    if-eqz v1, :cond_fc

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_fc

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_fc

    iput-boolean v14, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->D:Z

    goto/16 :goto_184

    :cond_fc
    iget-boolean v1, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->B:Z

    if-eqz v1, :cond_105

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_105
    iget-object v1, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v12, v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto/16 :goto_184

    :cond_10c
    const/4 v1, -0x3

    if-ne v0, v1, :cond_119

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->F:[Ljava/nio/ByteBuffer;

    goto/16 :goto_184

    :cond_119
    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->y:Z

    if-eqz v0, :cond_183

    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->P:Z

    if-nez v0, :cond_126

    iget v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_183

    :cond_126
    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u()V

    goto :goto_183

    :cond_12a
    :goto_12a
    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->A:Z

    if-eqz v0, :cond_15e

    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->O:Z

    if-eqz v0, :cond_15e

    :try_start_132
    iget-object v5, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->F:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v3, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->J:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v16, v3

    move-wide/from16 v3, p3

    const/4 v14, -0x1

    move/from16 v11, v16

    invoke-virtual/range {v0 .. v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_151
    .catch Ljava/lang/IllegalStateException; {:try_start_132 .. :try_end_151} :catch_152

    goto :goto_179

    :catch_152
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u()V

    iget-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->Q:Z

    if-eqz v0, :cond_183

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v()V

    goto :goto_183

    :cond_15e
    const/4 v14, -0x1

    iget-object v5, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->F:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->J:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_179
    if-eqz v0, :cond_183

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->p:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v14, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    const/4 v14, 0x1

    goto :goto_184

    :cond_183
    :goto_183
    const/4 v14, 0x0

    :goto_184
    if-eqz v14, :cond_189

    const/4 v14, 0x1

    goto/16 :goto_47

    :cond_189
    :goto_189
    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s()Z

    move-result v0

    if-eqz v0, :cond_190

    goto :goto_189

    :cond_190
    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a()V

    goto :goto_1c5

    :cond_194
    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    iget-wide v3, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->f:J

    sub-long v3, p1, v3

    invoke-interface {v0, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;->a(J)V

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->a()V

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    iget-object v3, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v12, v0, v3, v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/j;Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;Z)I

    move-result v0

    if-ne v0, v2, :cond_1b4

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-virtual {v12, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    goto :goto_1c5

    :cond_1b4
    if-ne v0, v1, :cond_1c5

    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b(I)Z

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->P:Z

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u()V

    :cond_1c5
    :goto_1c5
    iget-object v0, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->T:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    return-void
.end method

.method public a(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->P:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->Q:Z

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    if-eqz p2, :cond_55

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->G:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->S:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->R:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->J:Z

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->o:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->C:Z

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->D:Z

    iget-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->w:Z

    if-nez p3, :cond_45

    iget-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->z:Z

    if-eqz p3, :cond_32

    iget-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->O:Z

    if-eqz p3, :cond_32

    goto :goto_45

    :cond_32
    iget p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    if-eqz p3, :cond_3d

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t()V

    goto :goto_4b

    :cond_3d
    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->flush()V

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->N:Z

    goto :goto_4b

    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t()V

    :goto_4b
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->K:Z

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    if-eqz p1, :cond_55

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    :cond_55
    return-void
.end method

.method public abstract a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move-object v2, v1

    goto :goto_d

    :cond_b
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    :goto_d
    invoke-static {p1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    if-eqz p1, :cond_37

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    invoke-interface {p1, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Landroid/os/Looper;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-ne p1, v1, :cond_47

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v1, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V

    goto :goto_47

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object p1

    throw p1

    :cond_45
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-ne p1, v1, :cond_76

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    if-eqz p1, :cond_76

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u:Z

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Landroid/media/MediaCodec;ZLcom/fyber/inneractive/sdk/player/exoplayer2/i;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)Z

    move-result p1

    if-eqz p1, :cond_76

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->K:Z

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->x:Z

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    if-ne v1, v3, :cond_72

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    if-ne p1, v0, :cond_72

    goto :goto_73

    :cond_72
    const/4 v2, 0x0

    :goto_73
    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->C:Z

    goto :goto_83

    :cond_76
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->N:Z

    if-eqz p1, :cond_7d

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    goto :goto_83

    :cond_7d
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t()V

    :goto_83
    return-void
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;Landroid/media/MediaCodec;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;JJ)V
.end method

.method public abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation
.end method

.method public a(Landroid/media/MediaCodec;ZLcom/fyber/inneractive/sdk/player/exoplayer2/i;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->Q:Z

    return v0
.end method

.method public isReady()Z
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->R:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->g:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->h:Z

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/o;->isReady()Z

    move-result v0

    :goto_15
    if-nez v0, :cond_30

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    if-gez v0, :cond_30

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->G:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_32

    :cond_30
    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    return v0
.end method

.method public p()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    :try_start_3
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_40

    :try_start_6
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_27

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v1, :cond_1c

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v1, v2, :cond_1c

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    :cond_1c
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    return-void

    :catchall_21
    move-exception v1

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v1

    :catchall_27
    move-exception v1

    :try_start_28
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v2, :cond_35

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v2, v3, :cond_35

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_3a

    :cond_35
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v1

    :catchall_3a
    move-exception v1

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v1

    :catchall_40
    move-exception v1

    :try_start_41
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    invoke-interface {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_64

    :cond_4c
    :try_start_4c
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v2, :cond_59

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v2, v3, :cond_59

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_5e

    :cond_59
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v1

    :catchall_5e
    move-exception v1

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v1

    :catchall_64
    move-exception v1

    :try_start_65
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v2, :cond_72

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v2, v3, :cond_72

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_77

    :cond_72
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v1

    :catchall_77
    move-exception v1

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v1
.end method

.method public final s()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_208

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_208

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->P:Z

    if-eqz v2, :cond_10

    goto/16 :goto_208

    :cond_10
    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    if-gez v2, :cond_2a

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    if-gez v0, :cond_1f

    return v1

    :cond_1f
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->E:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->a()V

    :cond_2a
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_48

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->y:Z

    if-eqz v0, :cond_35

    goto :goto_45

    :cond_35
    iput-boolean v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->O:Z

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    :goto_45
    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    return v1

    :cond_48
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->C:Z

    if-eqz v0, :cond_68

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->C:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->U:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    array-length v8, v1

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    iput-boolean v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->N:Z

    return v4

    :cond_68
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->R:Z

    if-eqz v0, :cond_6f

    const/4 v0, -0x4

    const/4 v5, 0x0

    goto :goto_a7

    :cond_6f
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    if-ne v0, v4, :cond_94

    const/4 v0, 0x0

    :goto_74
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_92

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->h:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_92
    iput v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    :cond_94
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {p0, v5, v6, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/j;Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;Z)I

    move-result v5

    move v14, v5

    move v5, v0

    move v0, v14

    :goto_a7
    const/4 v6, -0x3

    if-ne v0, v6, :cond_ab

    return v1

    :cond_ab
    const/4 v6, -0x5

    if-ne v0, v6, :cond_c1

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    if-ne v0, v3, :cond_b9

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->a()V

    iput v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    :cond_b9
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/j;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    return v4

    :cond_c1
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    if-ne v0, v3, :cond_d5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->a()V

    iput v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    :cond_d5
    iput-boolean v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->P:Z

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->N:Z

    if-nez v0, :cond_df

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u()V

    return v1

    :cond_df
    :try_start_df
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->y:Z

    if-eqz v0, :cond_e4

    goto :goto_f4

    :cond_e4
    iput-boolean v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->O:Z

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I
    :try_end_f4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_df .. :try_end_f4} :catch_f5

    :goto_f4
    return v1

    :catch_f5
    move-exception v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :cond_fd
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->S:Z

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_115

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->a()V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    if-ne v0, v3, :cond_114

    iput v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    :cond_114
    return v4

    :cond_115
    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->S:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b(I)Z

    move-result v0

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-nez v3, :cond_124

    goto :goto_134

    :cond_124
    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;->a()I

    move-result v3

    if-eqz v3, :cond_1fb

    if-eq v3, v6, :cond_134

    if-nez v0, :cond_132

    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->k:Z

    if-nez v3, :cond_134

    :cond_132
    const/4 v3, 0x1

    goto :goto_135

    :cond_134
    :goto_134
    const/4 v3, 0x0

    :goto_135
    iput-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->R:Z

    if-eqz v3, :cond_13a

    return v1

    :cond_13a
    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v:Z

    if-eqz v3, :cond_18f

    if-nez v0, :cond_18f

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a:[B

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_14c
    add-int/lit8 v9, v7, 0x1

    if-ge v9, v6, :cond_17f

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x3

    if-ne v8, v11, :cond_176

    if-ne v10, v4, :cond_17a

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/lit8 v12, v12, 0x1f

    const/4 v13, 0x7

    if-ne v12, v13, :cond_17a

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    sub-int/2addr v7, v11

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_182

    :cond_176
    if-nez v10, :cond_17a

    add-int/lit8 v8, v8, 0x1

    :cond_17a
    if-eqz v10, :cond_17d

    const/4 v8, 0x0

    :cond_17d
    move v7, v9

    goto :goto_14c

    :cond_17f
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_182
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_18d

    return v4

    :cond_18d
    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v:Z

    :cond_18f
    :try_start_18f
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-wide v10, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->d:J

    const/high16 v6, -0x80000000

    invoke-virtual {v3, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1a4

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->o:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a4
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;)V

    if-eqz v0, :cond_1d4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/a;

    iget-object v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/a;->g:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v5, :cond_1bb

    goto :goto_1ca

    :cond_1bb
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1c3

    new-array v0, v4, [I

    iput-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1c3
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v3, v0, v1

    add-int/2addr v3, v5

    aput v3, v0, v1

    :goto_1ca
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_1e5

    :cond_1d4
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_1e5
    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    iput-boolean v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->N:Z

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->T:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I
    :try_end_1f2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_18f .. :try_end_1f2} :catch_1f3

    return v4

    :catch_1f3
    move-exception v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :cond_1fb
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;->c()Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b$a;

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :cond_208
    :goto_208
    return v1
.end method

.method public final t()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->x()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;->a()I

    move-result v0

    if-eqz v0, :cond_31

    const/4 v4, 0x3

    if-eq v0, v4, :cond_21

    const/4 v4, 0x4

    if-ne v0, v4, :cond_20

    goto :goto_21

    :cond_20
    return-void

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;->b()Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3e

    :cond_31
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;->c()Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b$a;

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    :try_start_3e
    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-virtual {p0, v4, v5, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;

    move-result-object v4

    if-nez v4, :cond_79

    if-eqz v0, :cond_79

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-virtual {p0, v4, v5, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/c;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;

    move-result-object v4

    if-eqz v4, :cond_79

    const-string v5, "MediaCodecRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Drm session requires secure decoder for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/d$b; {:try_start_3e .. :try_end_79} :catch_217

    :cond_79
    if-eqz v4, :cond_206

    iget-object v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;->a:Ljava/lang/String;

    iget-boolean v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;->b:Z

    iput-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u:Z

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 v7, 0x15

    const/4 v11, 0x1

    if-ge v6, v7, :cond_9c

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9c

    const-string v5, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    const/4 v5, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v5, 0x0

    :goto_9d
    iput-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v:Z

    const/16 v5, 0x13

    const/16 v8, 0x12

    if-lt v6, v8, :cond_d6

    if-ne v6, v8, :cond_b7

    const-string v9, "OMX.SEC.avc.dec"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d6

    const-string v9, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d6

    :cond_b7
    if-ne v6, v5, :cond_d4

    sget-object v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->d:Ljava/lang/String;

    const-string v10, "SM-G800"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d4

    const-string v9, "OMX.Exynos.avc.dec"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d6

    const-string v9, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    goto :goto_d6

    :cond_d4
    const/4 v9, 0x0

    goto :goto_d7

    :cond_d6
    :goto_d6
    const/4 v9, 0x1

    :goto_d7
    iput-boolean v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->w:Z

    const/16 v9, 0x18

    if-ge v6, v9, :cond_111

    const-string v9, "OMX.Nvidia.h264.decode"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ed

    const-string v9, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_111

    :cond_ed
    sget-object v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b:Ljava/lang/String;

    const-string v10, "flounder"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10f

    const-string v10, "flounder_lte"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10f

    const-string v10, "grouper"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10f

    const-string v10, "tilapia"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_111

    :cond_10f
    const/4 v9, 0x1

    goto :goto_112

    :cond_111
    const/4 v9, 0x0

    :goto_112
    iput-boolean v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->x:Z

    const/16 v9, 0x11

    if-gt v6, v9, :cond_12a

    const-string v9, "OMX.rk.video_decoder.avc"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_128

    const-string v9, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12a

    :cond_128
    const/4 v9, 0x1

    goto :goto_12b

    :cond_12a
    const/4 v9, 0x0

    :goto_12b
    iput-boolean v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->y:Z

    const/16 v9, 0x17

    if-gt v6, v9, :cond_139

    const-string v9, "OMX.google.vorbis.decoder"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_155

    :cond_139
    if-gt v6, v5, :cond_157

    sget-object v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b:Ljava/lang/String;

    const-string v9, "hb2000"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    const-string v5, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_155

    const-string v5, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    :cond_155
    const/4 v5, 0x1

    goto :goto_158

    :cond_157
    const/4 v5, 0x0

    :goto_158
    iput-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->z:Z

    if-ne v6, v7, :cond_166

    const-string v5, "OMX.google.aac.decoder"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_166

    const/4 v5, 0x1

    goto :goto_167

    :cond_166
    const/4 v5, 0x0

    :goto_167
    iput-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->A:Z

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    if-gt v6, v8, :cond_17a

    iget v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->r:I

    if-ne v5, v11, :cond_17a

    const-string v5, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17a

    const/4 v3, 0x1

    :cond_17a
    iput-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->B:Z

    :try_start_17c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createCodec:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a()V

    const-string v3, "configureCodec"

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-virtual {p0, v4, v3, v7, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/a;Landroid/media/MediaCodec;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a()V

    const-string v2, "startCodec"

    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v7, v5

    move-object v5, p0

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->a(Ljava/lang/String;JJ)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->E:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->F:[Ljava/nio/ByteBuffer;
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1d4} :catch_1f7

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_1e6

    :cond_1e1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1e6
    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->G:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    iput-boolean v11, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->S:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->T:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    return-void

    :catch_1f7
    move-exception v2

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/Throwable;ZLjava/lang/String;)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v3, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :cond_206
    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    const v4, -0xc34f

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/Throwable;ZI)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0

    :catch_217
    move-exception v1

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    const v4, -0xc34e

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/Throwable;ZI)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/a;->c:I

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/d;->a(Ljava/lang/Exception;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/d;

    move-result-object v0

    throw v0
.end method

.method public final u()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v()V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t()V

    goto :goto_12

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->Q:Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->w()V

    :goto_12
    return-void
.end method

.method public v()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    if-eqz v0, :cond_b4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->G:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->H:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->I:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->R:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->J:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->E:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->F:[Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->K:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->N:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->u:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->v:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->w:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->x:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->y:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->z:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->B:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->C:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->D:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->O:Z

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->L:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->M:I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->T:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/b;->c:Ljava/nio/ByteBuffer;

    :try_start_47
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_7f

    :try_start_4c
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_67

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v0, :cond_b4

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v2, v0, :cond_b4

    :try_start_5b
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_63

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    goto :goto_b4

    :catchall_63
    move-exception v0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v0

    :catchall_67
    move-exception v0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v2, :cond_7e

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v3, v2, :cond_7e

    :try_start_72
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_7a

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    goto :goto_7e

    :catchall_7a
    move-exception v0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v0

    :cond_7e
    :goto_7e
    throw v0

    :catchall_7f
    move-exception v0

    :try_start_80
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_9c

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v2, :cond_9b

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v3, v2, :cond_9b

    :try_start_8f
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_97

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    goto :goto_9b

    :catchall_97
    move-exception v0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v0

    :cond_9b
    :goto_9b
    throw v0

    :catchall_9c
    move-exception v0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eqz v2, :cond_b3

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    if-eq v3, v2, :cond_b3

    :try_start_a7
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;

    invoke-interface {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/c;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;)V
    :try_end_ac
    .catchall {:try_start_a7 .. :try_end_ac} :catchall_af

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    goto :goto_b3

    :catchall_af
    move-exception v0

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/b;

    throw v0

    :cond_b3
    :goto_b3
    throw v0

    :cond_b4
    :goto_b4
    return-void
.end method

.method public w()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/d;
        }
    .end annotation

    return-void
.end method

.method public x()Z
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->r:Landroid/media/MediaCodec;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b.a (com.fyber.inneractive.sdk.player.exoplayer2.mediacodec.b$a)
.class public Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/Throwable;ZI)V
    .registers 6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Decoder init failed: ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    invoke-static {p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;->a(I)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;Ljava/lang/Throwable;ZLjava/lang/String;)V
    .registers 6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Decoder init failed: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    sget p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_27

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/mediacodec/b$a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_27
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4

    if-gez p0, :cond_5

    const-string v0, "neg_"

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.android.exoplayer.MediaCodecTrackRenderer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
