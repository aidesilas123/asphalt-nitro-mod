###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f (com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.f)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/d;
.source "SourceFile"


# static fields
.field public static final G:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public D:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;

.field public volatile E:Z

.field public volatile F:Z

.field public final j:I

.field public final k:I

.field public final l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;

.field public final m:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public final n:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

.field public final o:Z

.field public final p:Z

.field public final q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

.field public final r:Ljava/lang/String;

.field public final s:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

.field public final t:Z

.field public final u:Z

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/i;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Z

.field public final x:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;

.field public final y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

.field public z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;Ljava/util/List;ILjava/lang/Object;JJIIZLcom/fyber/inneractive/sdk/player/exoplayer2/util/r;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;[B[B)V
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;",
            "Ljava/util/List<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/i;",
            ">;I",
            "Ljava/lang/Object;",
            "JJIIZ",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;",
            "[B[B)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    move/from16 v14, p13

    move-object/from16 v15, p16

    move-object/from16 v0, p17

    move-object/from16 v1, p18

    invoke-static {v12, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;[B[B)Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    move-result-object v1

    iget-object v3, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move/from16 v10, p12

    invoke-direct/range {v0 .. v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/d;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;Lcom/fyber/inneractive/sdk/player/exoplayer2/i;ILjava/lang/Object;JJI)V

    iput v14, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->k:I

    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iput-object v13, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;

    move-object/from16 v0, p5

    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->v:Ljava/util/List;

    move/from16 v0, p14

    iput-boolean v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->p:Z

    move-object/from16 v0, p15

    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    iget-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    instance-of v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/a;

    iput-boolean v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->o:Z

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_6e

    const-string v1, ".ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, ".ec3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_6e

    :cond_6c
    const/4 v0, 0x0

    goto :goto_6f

    :cond_6e
    :goto_6e
    const/4 v0, 0x1

    :goto_6f
    iput-boolean v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->w:Z

    if-eqz v15, :cond_92

    iget-object v0, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->x:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;

    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->x:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;

    iget-object v0, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v0, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    iget-object v0, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;

    if-eq v0, v13, :cond_85

    const/4 v0, 0x1

    goto :goto_86

    :cond_85
    const/4 v0, 0x0

    :goto_86
    iput-boolean v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->t:Z

    iget v1, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->k:I

    if-ne v1, v14, :cond_8e

    if-eqz v0, :cond_8f

    :cond_8e
    const/4 v2, 0x1

    :cond_8f
    iput-boolean v2, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->u:Z

    goto :goto_b1

    :cond_92
    const/4 v1, 0x0

    if-eqz v0, :cond_9b

    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;

    invoke-direct {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;-><init>()V

    goto :goto_9c

    :cond_9b
    move-object v4, v1

    :goto_9c
    iput-object v4, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->x:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;

    if-eqz v0, :cond_a8

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    goto :goto_a9

    :cond_a8
    move-object v0, v1

    :goto_a9
    iput-object v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iput-object v1, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    iput-boolean v2, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->t:Z

    iput-boolean v3, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->u:Z

    :goto_b1
    iput-object v12, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->G:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->j:I

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;[B[B)Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;
    .registers 4

    if-eqz p1, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;[B[B)V

    return-object v0

    :cond_b
    :goto_b
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v0, 0x0

    iput v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->e:I

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_18

    return-wide v4

    :cond_18
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c(I)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->n()I

    move-result v1

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;->b:I

    if-eq v1, v6, :cond_28

    return-wide v4

    :cond_28
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->k()I

    move-result v1

    add-int/lit8 v6, v1, 0xa

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b()I

    move-result v7

    if-le v6, v7, :cond_4c

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v8, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    invoke-virtual {v7, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c(I)V

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    invoke-static {v8, v0, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4c
    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    invoke-virtual {p1, v6, v2, v1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->a([BIIZ)Z

    move-result p1

    if-nez p1, :cond_57

    return-wide v4

    :cond_57
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->x:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    invoke-virtual {p1, v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/g;->a([BI)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    move-result-object p1

    if-nez p1, :cond_64

    return-wide v4

    :cond_64
    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a$b;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_68
    if-ge v2, v1, :cond_98

    iget-object v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a$b;

    aget-object v3, v3, v2

    instance-of v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/i;

    if-eqz v6, :cond_95

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/i;

    iget-object v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/i;->b:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    iget-object p1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/i;->c:[B

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/16 v2, 0x8

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c(I)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->y:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->i()J

    move-result-wide v0

    return-wide v0

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_98
    return-wide v4
.end method

.method public final a(J)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v1, ".aac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;

    invoke-direct {v0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/c;-><init>(J)V

    goto :goto_54

    :cond_10
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v1, ".ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v1, ".ec3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_4f

    :cond_25
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp3/b;-><init>(IJ)V

    goto :goto_54

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unkown extension for audio file: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    :goto_4f
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/a;

    invoke-direct {v0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/a;-><init>(J)V

    :goto_54
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->E:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->E:Z

    return-void
.end method

.method public c()J
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->B:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public load()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_eb

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->w:Z

    if-nez v0, :cond_eb

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    const-string v4, "text/vtt"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v4, ".webvtt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v4, ".vtt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto/16 :goto_d6

    :cond_2f
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->u:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    const/4 v4, 0x0

    goto/16 :goto_e2

    :cond_38
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    const-string v4, ".mp4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ce

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    const-string v5, ".m4"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_54

    goto/16 :goto_ce

    :cond_54
    const/16 v0, 0x10

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->v:Ljava/util/List;

    if-eqz v4, :cond_5d

    const/16 v0, 0x30

    goto :goto_61

    :cond_5d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    :goto_61
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->c:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_bf

    const-string v6, "audio/mp4a-latm"

    if-nez v5, :cond_70

    goto :goto_8c

    :cond_70
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_78
    if-ge v9, v8, :cond_8c

    aget-object v10, v7, v9

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_89

    invoke-static {v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/h;->d(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_89

    goto :goto_8d

    :cond_89
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    :cond_8c
    :goto_8c
    move-object v10, v1

    :goto_8d
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    or-int/lit8 v0, v0, 0x2

    :cond_95
    const-string v6, "video/avc"

    if-nez v5, :cond_9a

    goto :goto_b6

    :cond_9a
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_a2
    if-ge v8, v7, :cond_b6

    aget-object v9, v5, v8

    invoke-static {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b3

    invoke-static {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/h;->e(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b3

    goto :goto_b7

    :cond_b3
    add-int/lit8 v8, v8, 0x1

    goto :goto_a2

    :cond_b6
    :goto_b6
    move-object v9, v1

    :goto_b7
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    or-int/lit8 v0, v0, 0x4

    :cond_bf
    new-instance v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/u;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/e;

    invoke-direct {v7, v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/e;-><init>(ILjava/util/List;)V

    const/4 v0, 0x2

    invoke-direct {v5, v0, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/u;-><init>(ILcom/fyber/inneractive/sdk/player/exoplayer2/util/r;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$c;)V

    move-object v0, v5

    goto :goto_e1

    :cond_ce
    :goto_ce
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    invoke-direct {v0, v3, v4, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/d;-><init>(ILcom/fyber/inneractive/sdk/player/exoplayer2/util/r;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;)V

    goto :goto_e1

    :cond_d6
    :goto_d6
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/l;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->y:Ljava/lang/String;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    invoke-direct {v0, v4, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/l;-><init>(Ljava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;)V

    :goto_e1
    const/4 v4, 0x1

    :goto_e2
    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->D:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;

    invoke-interface {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;)V

    :cond_e9
    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    :cond_eb
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    if-eq v0, v4, :cond_141

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->C:Z

    if-nez v0, :cond_141

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    if-nez v0, :cond_fa

    goto :goto_141

    :cond_fa
    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->A:I

    invoke-static {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    move-result-object v0

    :try_start_100
    new-instance v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->c:J

    invoke-interface {v5, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J

    move-result-wide v8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;JJ)V
    :try_end_10e
    .catchall {:try_start_100 .. :try_end_10e} :catchall_13a

    const/4 v0, 0x0

    :goto_10f
    if-nez v0, :cond_128

    :try_start_111
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->E:Z

    if-nez v0, :cond_128

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    invoke-interface {v0, v10, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;)I

    move-result v0
    :try_end_11b
    .catchall {:try_start_111 .. :try_end_11b} :catchall_11c

    goto :goto_10f

    :catchall_11c
    move-exception v0

    :try_start_11d
    iget-wide v1, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-wide v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->c:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->A:I

    throw v0

    :cond_128
    iget-wide v4, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->c:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->A:I
    :try_end_132
    .catchall {:try_start_11d .. :try_end_132} :catchall_13a

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;)V

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->C:Z

    goto :goto_141

    :catchall_13a
    move-exception v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;)V

    throw v0

    :cond_141
    :goto_141
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->E:Z

    if-nez v0, :cond_1fa

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->o:Z

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->B:I

    if-eqz v4, :cond_159

    const/4 v4, 0x1

    goto :goto_15a

    :cond_151
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->B:I

    invoke-static {v0, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    move-result-object v0

    :cond_159
    const/4 v4, 0x0

    :goto_15a
    iget-boolean v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->p:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v5, :cond_175

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    monitor-enter v5

    :goto_166
    :try_start_166
    iget-wide v8, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    cmp-long v10, v8, v6

    if-nez v10, :cond_170

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_16f
    .catchall {:try_start_166 .. :try_end_16f} :catchall_172

    goto :goto_166

    :cond_170
    monitor-exit v5

    goto :goto_198

    :catchall_172
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_175
    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    iget-wide v8, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v12, v8, v10

    if-nez v12, :cond_198

    iget-wide v8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->f:J

    monitor-enter v5

    :try_start_185
    iget-wide v10, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->c:J

    cmp-long v12, v10, v6

    if-nez v12, :cond_18d

    const/4 v10, 0x1

    goto :goto_18e

    :cond_18d
    const/4 v10, 0x0

    :goto_18e
    invoke-static {v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iput-wide v8, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->a:J
    :try_end_193
    .catchall {:try_start_185 .. :try_end_193} :catchall_195

    monitor-exit v5

    goto :goto_198

    :catchall_195
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_198
    :goto_198
    :try_start_198
    new-instance v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iget-object v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-wide v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->c:J

    invoke-interface {v9, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J

    move-result-wide v12

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;JJ)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    if-nez v0, :cond_1c1

    invoke-virtual {p0, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_1b9

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;

    invoke-virtual {v0, v8, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/r;->b(J)J

    move-result-wide v6

    goto :goto_1bb

    :cond_1b9
    iget-wide v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->f:J

    :goto_1bb
    invoke-virtual {p0, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->a(J)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    :cond_1c1
    if-eqz v4, :cond_1c8

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->B:I

    invoke-virtual {v5, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V
    :try_end_1c8
    .catchall {:try_start_198 .. :try_end_1c8} :catchall_1f3

    :cond_1c8
    :goto_1c8
    if-nez v3, :cond_1e1

    :try_start_1ca
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->E:Z

    if-nez v0, :cond_1e1

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->z:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    invoke-interface {v0, v5, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;)I

    move-result v3
    :try_end_1d4
    .catchall {:try_start_1ca .. :try_end_1d4} :catchall_1d5

    goto :goto_1c8

    :catchall_1d5
    move-exception v0

    :try_start_1d6
    iget-wide v1, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-wide v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->c:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->B:I

    throw v0

    :cond_1e1
    iget-wide v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-wide v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->c:J

    sub-long/2addr v0, v3

    long-to-int v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->B:I
    :try_end_1eb
    .catchall {:try_start_1d6 .. :try_end_1eb} :catchall_1f3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;)V

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/f;->F:Z

    goto :goto_1fa

    :catchall_1f3
    move-exception v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;)V

    throw v0

    :cond_1fa
    :goto_1fa
    return-void
.end method
