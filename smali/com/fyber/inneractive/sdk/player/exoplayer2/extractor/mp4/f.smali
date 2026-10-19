###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.f (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.f)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;
    }
.end annotation


# static fields
.field public static final p:I


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

.field public final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:I

.field public g:J

.field public h:I

.field public i:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

.field public j:I

.field public k:I

.field public l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

.field public m:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

.field public n:J

.field public o:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->p:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a:[B

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>([B)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_6
    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->e:I

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v3, :cond_192

    const-wide/32 v8, 0x40000

    const/4 v10, 0x2

    if-eq v3, v6, :cond_112

    if-ne v3, v10, :cond_10c

    const-wide v12, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_1d
    iget-object v14, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->m:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

    array-length v15, v14

    if-ge v3, v15, :cond_3a

    aget-object v14, v14, v3

    iget v15, v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->d:I

    iget-object v14, v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    iget v11, v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->a:I

    if-ne v15, v11, :cond_2d

    goto :goto_37

    :cond_2d
    iget-object v11, v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->b:[J

    aget-wide v14, v11, v15

    cmp-long v11, v14, v12

    if-gez v11, :cond_37

    move v5, v3

    move-wide v12, v14

    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_3a
    if-ne v5, v4, :cond_3e

    goto/16 :goto_10b

    :cond_3e
    aget-object v3, v14, v5

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->d:I

    iget-object v11, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    iget-object v12, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->b:[J

    aget-wide v13, v12, v5

    iget-object v11, v11, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->c:[I

    aget v11, v11, v5

    iget-object v12, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;

    iget v12, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->g:I

    if-ne v12, v6, :cond_5a

    const-wide/16 v16, 0x8

    add-long v13, v13, v16

    add-int/lit8 v11, v11, -0x8

    :cond_5a
    move-object v12, v1

    check-cast v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    move/from16 v16, v11

    iget-wide v10, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    sub-long v10, v13, v10

    iget v15, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    int-to-long v6, v15

    add-long/2addr v10, v6

    const-wide/16 v6, 0x0

    cmp-long v15, v10, v6

    if-ltz v15, :cond_108

    cmp-long v6, v10, v8

    if-ltz v6, :cond_73

    goto/16 :goto_108

    :cond_73
    long-to-int v2, v10

    invoke-virtual {v12, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->k:I

    if-eqz v2, :cond_cc

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v7, 0x0

    aput-byte v7, v6, v7

    const/4 v8, 0x1

    aput-byte v7, v6, v8

    const/4 v8, 0x2

    aput-byte v7, v6, v8

    rsub-int/lit8 v6, v2, 0x4

    move/from16 v11, v16

    :goto_8e
    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    if-ge v8, v11, :cond_e6

    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    if-nez v8, :cond_bc

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v8, v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    invoke-virtual {v12, v8, v6, v2, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b([BIIZ)Z

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v8, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v8

    iput v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v8, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/4 v9, 0x4

    invoke-interface {v4, v8, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;I)V

    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    add-int/2addr v8, v9

    iput v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    add-int/2addr v11, v6

    goto :goto_8e

    :cond_bc
    invoke-interface {v4, v1, v8, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;IZ)I

    move-result v8

    iget v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    add-int/2addr v7, v8

    iput v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    iget v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    sub-int/2addr v7, v8

    iput v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    const/4 v7, 0x0

    goto :goto_8e

    :cond_cc
    :goto_cc
    iget v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    move/from16 v11, v16

    if-ge v2, v11, :cond_e6

    sub-int v2, v11, v2

    const/4 v6, 0x0

    invoke-interface {v4, v1, v2, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;IZ)I

    move-result v2

    iget v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    iget v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    sub-int/2addr v6, v2

    iput v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    move/from16 v16, v11

    goto :goto_cc

    :cond_e6
    move/from16 v20, v11

    iget-object v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->e:[J

    aget-wide v17, v2, v5

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->f:[I

    aget v19, v1, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v16 .. v22}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(JIII[B)V

    iget v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->d:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    const/4 v4, 0x0

    goto :goto_10b

    :cond_108
    :goto_108
    iput-wide v13, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;->a:J

    const/4 v4, 0x1

    :goto_10b
    return v4

    :cond_10c
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_112
    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    iget v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    int-to-long v10, v6

    sub-long/2addr v3, v10

    move-object v7, v1

    check-cast v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iget-wide v10, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    add-long/2addr v10, v3

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    if-eqz v12, :cond_174

    iget-object v8, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-virtual {v7, v8, v6, v4, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b([BIIZ)Z

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->f:I

    sget v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->b:I

    if-ne v3, v4, :cond_155

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v4

    sget v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->p:I

    if-ne v4, v5, :cond_13d

    goto :goto_14f

    :cond_13d
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    :cond_141
    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v4

    if-lez v4, :cond_151

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v4

    sget v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->p:I

    if-ne v4, v5, :cond_141

    :goto_14f
    const/4 v3, 0x1

    goto :goto_152

    :cond_151
    const/4 v3, 0x0

    :goto_152
    iput-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->o:Z

    goto :goto_17c

    :cond_155
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17c

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->f:I

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-direct {v4, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;-><init>(ILcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)V

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->Q0:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17c

    :cond_174
    cmp-long v5, v3, v8

    if-gez v5, :cond_17e

    long-to-int v4, v3

    invoke-virtual {v7, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c(I)V

    :cond_17c
    :goto_17c
    const/4 v3, 0x0

    goto :goto_181

    :cond_17e
    iput-wide v10, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/l;->a:J

    const/4 v3, 0x1

    :goto_181
    invoke-virtual {v0, v10, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c(J)V

    if-eqz v3, :cond_18d

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->e:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18d

    const/4 v7, 0x1

    goto :goto_18e

    :cond_18d
    const/4 v7, 0x0

    :goto_18e
    if-eqz v7, :cond_6

    const/4 v3, 0x1

    return v3

    :cond_192
    const/4 v3, 0x1

    iget v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    if-nez v6, :cond_1bf

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    move-object v7, v1

    check-cast v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v5, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b([BIIZ)Z

    move-result v6

    if-nez v6, :cond_1a8

    const/4 v6, 0x0

    goto/16 :goto_2a8

    :cond_1a8
    iput v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->m()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v3

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->f:I

    :cond_1bf
    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    const-wide/16 v8, 0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_1df

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    move-object v6, v1

    check-cast v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v5, v5, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->b([BIIZ)Z

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->p()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    :cond_1df
    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->f:I

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->C:I

    if-eq v3, v6, :cond_1fc

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->E:I

    if-eq v3, v6, :cond_1fc

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->F:I

    if-eq v3, v6, :cond_1fc

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->G:I

    if-eq v3, v6, :cond_1fc

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->H:I

    if-eq v3, v6, :cond_1fc

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->Q:I

    if-ne v3, v6, :cond_1fa

    goto :goto_1fc

    :cond_1fa
    const/4 v7, 0x0

    goto :goto_1fd

    :cond_1fc
    :goto_1fc
    const/4 v7, 0x1

    :goto_1fd
    if-eqz v7, :cond_22a

    move-object v3, v1

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;

    iget-wide v5, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/b;->c:J

    iget-wide v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    add-long/2addr v5, v7

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    iget v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->f:I

    invoke-direct {v7, v8, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;-><init>(IJ)V

    invoke-virtual {v3, v7}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    int-to-long v9, v3

    cmp-long v3, v7, v9

    if-nez v3, :cond_224

    invoke-virtual {v0, v5, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c(J)V

    goto :goto_227

    :cond_224
    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d()V

    :goto_227
    const/4 v3, 0x1

    goto/16 :goto_2a7

    :cond_22a
    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->S:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->D:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->T:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->U:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->m0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->n0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->o0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->R:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->p0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->q0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->r0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->s0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->t0:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->P:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->b:I

    if-eq v3, v6, :cond_26d

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->A0:I

    if-ne v3, v6, :cond_26b

    goto :goto_26d

    :cond_26b
    const/4 v7, 0x0

    goto :goto_26e

    :cond_26d
    :goto_26d
    const/4 v7, 0x1

    :goto_26e
    if-eqz v7, :cond_2a1

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    if-ne v3, v5, :cond_276

    const/4 v7, 0x1

    goto :goto_277

    :cond_276
    const/4 v7, 0x0

    :goto_277
    invoke-static {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_285

    const/4 v7, 0x1

    goto :goto_286

    :cond_285
    const/4 v7, 0x0

    :goto_286
    invoke-static {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->g:J

    long-to-int v7, v6

    invoke-direct {v3, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>(I)V

    iput-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    const/4 v7, 0x0

    invoke-static {v6, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->e:I

    goto :goto_2a7

    :cond_2a1
    const/4 v3, 0x1

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->e:I

    :goto_2a7
    const/4 v6, 0x1

    :goto_2a8
    if-nez v6, :cond_6

    return v4
.end method

.method public a(J)J
    .registers 11

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->m:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v1, :cond_26

    aget-object v5, v0, v4

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    invoke-virtual {v5, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->a(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1a

    invoke-virtual {v5, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->b(J)I

    move-result v6

    :cond_1a
    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->b:[J

    aget-wide v6, v5, v6

    cmp-long v5, v6, v2

    if-gez v5, :cond_23

    move-wide v2, v6

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_26
    return-wide v2
.end method

.method public a(JJ)V
    .registers 10

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->j:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->k:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_16

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d()V

    goto :goto_31

    :cond_16
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->m:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

    if-eqz p1, :cond_31

    array-length p2, p1

    :goto_1b
    if-ge v0, p2, :cond_31

    aget-object v1, p1, v0

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    invoke-virtual {v2, p3, p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->a(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2c

    invoke-virtual {v2, p3, p4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->b(J)I

    move-result v3

    :cond_2c
    iput v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    :goto_31
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/g;Z)Z

    move-result p1

    return p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->n:J

    return-wide v0
.end method

.method public final c(J)V
    .registers 90
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/player/exoplayer2/l;
        }
    .end annotation

    move-object/from16 v1, p0

    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3c

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->P0:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_a3c

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->a:I

    sget v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->C:I

    if-ne v3, v4, :cond_a21

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;

    invoke-direct {v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;-><init>()V

    sget v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->A0:I

    invoke-virtual {v0, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v9

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v13, 0x0

    if-eqz v9, :cond_255

    iget-boolean v14, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->o:Z

    sget v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b;->a:I

    if-eqz v14, :cond_44

    goto/16 :goto_24e

    :cond_44
    iget-object v9, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;->P0:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    :goto_4b
    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v15

    if-lt v15, v14, :cond_24e

    iget v15, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v16

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v3

    sget v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->B0:I

    if-ne v3, v4, :cond_245

    invoke-virtual {v9, v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    add-int v15, v15, v16

    invoke-virtual {v9, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    :goto_67
    iget v3, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    if-ge v3, v15, :cond_24e

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v4

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v6

    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->C0:I

    if-ne v6, v7, :cond_23c

    invoke-virtual {v9, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    add-int/2addr v3, v4

    invoke-virtual {v9, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_83
    iget v6, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    if-ge v6, v3, :cond_22f

    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a:I

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v14

    add-int/2addr v6, v14

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v14

    shr-int/lit8 v15, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    const/16 v2, 0xa9

    const-string v10, "TCON"

    const-string v12, "MetadataUtil"

    if-eq v15, v2, :cond_184

    const v2, 0xfffd

    if-ne v15, v2, :cond_a5

    goto/16 :goto_184

    :cond_a5
    :try_start_a5
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->m:I

    if-ne v14, v2, :cond_cb

    invoke-static {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)I

    move-result v2

    if-lez v2, :cond_b9

    sget-object v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->D:[Ljava/lang/String;

    array-length v14, v7

    if-gt v2, v14, :cond_b9

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v7, v2

    goto :goto_ba

    :cond_b9
    move-object v2, v11

    :goto_ba
    if-eqz v2, :cond_c3

    new-instance v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    invoke-direct {v7, v10, v11, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21d

    :cond_c3
    const-string v2, "Failed to parse standard genre code"

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v11

    goto/16 :goto_21e

    :cond_cb
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->o:I

    if-ne v14, v2, :cond_d7

    const-string v2, "TPOS"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto/16 :goto_190

    :cond_d7
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->p:I

    if-ne v14, v2, :cond_e3

    const-string v2, "TRCK"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto/16 :goto_190

    :cond_e3
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->q:I

    if-ne v14, v2, :cond_f0

    const-string v2, "TBPM"

    const/4 v7, 0x1

    invoke-static {v14, v2, v9, v7, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;ZZ)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    move-result-object v2

    goto/16 :goto_190

    :cond_f0
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->r:I

    if-ne v14, v2, :cond_fd

    const-string v2, "TCMP"

    const/4 v7, 0x1

    invoke-static {v14, v2, v9, v7, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;ZZ)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    move-result-object v2

    goto/16 :goto_190

    :cond_fd
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->l:I

    if-ne v14, v2, :cond_10a

    invoke-static {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/a;

    move-result-object v2
    :try_end_105
    .catchall {:try_start_a5 .. :try_end_105} :catchall_22a

    invoke-virtual {v9, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    goto/16 :goto_221

    :cond_10a
    :try_start_10a
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->s:I

    if-ne v14, v2, :cond_116

    const-string v2, "TPE2"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto/16 :goto_190

    :cond_116
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->t:I

    if-ne v14, v2, :cond_122

    const-string v2, "TSOT"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto/16 :goto_190

    :cond_122
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->u:I

    if-ne v14, v2, :cond_12d

    const-string v2, "TSO2"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_12d
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->v:I

    if-ne v14, v2, :cond_138

    const-string v2, "TSOA"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_138
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->w:I

    if-ne v14, v2, :cond_143

    const-string v2, "TSOP"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_143
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->x:I

    if-ne v14, v2, :cond_14e

    const-string v2, "TSOC"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_14e
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->y:I

    if-ne v14, v2, :cond_159

    const-string v2, "ITUNESADVISORY"

    invoke-static {v14, v2, v9, v13, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;ZZ)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    move-result-object v2

    goto :goto_190

    :cond_159
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->z:I

    if-ne v14, v2, :cond_165

    const-string v2, "ITUNESGAPLESS"

    const/4 v7, 0x1

    invoke-static {v14, v2, v9, v13, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;ZZ)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    move-result-object v2

    goto :goto_190

    :cond_165
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->A:I

    if-ne v14, v2, :cond_170

    const-string v2, "TVSHOWSORT"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_170
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->B:I

    if-ne v14, v2, :cond_17b

    const-string v2, "TVSHOW"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_17b
    sget v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->C:I

    if-ne v14, v2, :cond_1f0

    invoke-static {v9, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;I)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/h;

    move-result-object v2

    goto :goto_190

    :cond_184
    :goto_184
    const v2, 0xffffff

    and-int/2addr v2, v14

    sget v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->c:I

    if-ne v2, v15, :cond_193

    invoke-static {v14, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/e;

    move-result-object v2

    :goto_190
    move-object v7, v2

    goto/16 :goto_21d

    :cond_193
    if-eq v2, v7, :cond_215

    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b:I

    if-ne v2, v7, :cond_19b

    goto/16 :goto_215

    :cond_19b
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->h:I

    if-eq v2, v7, :cond_20d

    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->i:I

    if-ne v2, v7, :cond_1a5

    goto/16 :goto_20d

    :cond_1a5
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->d:I

    if-ne v2, v7, :cond_1b0

    const-string v2, "TDRC"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_1b0
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->e:I

    if-ne v2, v7, :cond_1bb

    const-string v2, "TPE1"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_1bb
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->f:I

    if-ne v2, v7, :cond_1c6

    const-string v2, "TSSE"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_1c6
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->g:I

    if-ne v2, v7, :cond_1d1

    const-string v2, "TALB"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_1d1
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->j:I

    if-ne v2, v7, :cond_1dc

    const-string v2, "USLT"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_1dc
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->k:I

    if-ne v2, v7, :cond_1e5

    invoke-static {v14, v10, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_1e5
    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->n:I

    if-ne v2, v7, :cond_1f0

    const-string v2, "TIT1"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto :goto_190

    :cond_1f0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipped unknown metadata entry: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_208
    .catchall {:try_start_10a .. :try_end_208} :catchall_22a

    invoke-virtual {v9, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    move-object v2, v11

    goto :goto_221

    :cond_20d
    :goto_20d
    :try_start_20d
    const-string v2, "TCOM"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2

    goto/16 :goto_190

    :cond_215
    :goto_215
    const-string v2, "TIT2"

    invoke-static {v14, v2, v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/e;->b(ILjava/lang/String;Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/id3/j;

    move-result-object v2
    :try_end_21b
    .catchall {:try_start_20d .. :try_end_21b} :catchall_22a

    goto/16 :goto_190

    :goto_21d
    move-object v2, v7

    :goto_21e
    invoke-virtual {v9, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    :goto_221
    if-eqz v2, :cond_226

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_226
    const/16 v10, 0xc

    goto/16 :goto_83

    :catchall_22a
    move-exception v0

    invoke-virtual {v9, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    throw v0

    :cond_22f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_236

    goto :goto_24e

    :cond_236
    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    invoke-direct {v2, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;-><init>(Ljava/util/List;)V

    goto :goto_24f

    :cond_23c
    add-int/lit8 v4, v4, -0x8

    invoke-virtual {v9, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    const/16 v10, 0xc

    goto/16 :goto_67

    :cond_245
    add-int/lit8 v2, v16, -0x8

    invoke-virtual {v9, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    const/16 v10, 0xc

    goto/16 :goto_4b

    :cond_24e
    :goto_24e
    move-object v2, v11

    :goto_24f
    if-eqz v2, :cond_256

    invoke-virtual {v8, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;)Z

    goto :goto_256

    :cond_255
    move-object v2, v11

    :cond_256
    :goto_256
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, 0x7fffffffffffffffL

    const/4 v9, 0x0

    :goto_261
    iget-object v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->R0:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_9fd

    iget-object v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->R0:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    iget v12, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->a:I

    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->E:I

    if-eq v12, v14, :cond_287

    :goto_277
    move-object/from16 v17, v0

    move-object/from16 v54, v2

    move-wide/from16 v52, v3

    move-object/from16 v51, v5

    move-wide/from16 v19, v6

    move-object/from16 v39, v8

    move/from16 v55, v9

    goto/16 :goto_84f

    :cond_287
    sget v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->D:I

    invoke-virtual {v0, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v15

    iget-boolean v12, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->o:Z

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    move-object v14, v10

    move/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;JLcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;

    move-result-object v12

    if-nez v12, :cond_2a0

    goto :goto_277

    :cond_2a0
    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->F:I

    invoke-virtual {v10, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->c(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    move-result-object v10

    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->G:I

    invoke-virtual {v10, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->c(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    move-result-object v10

    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->H:I

    invoke-virtual {v10, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->c(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    move-result-object v10

    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->q0:I

    invoke-virtual {v10, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v14

    if-eqz v14, :cond_2c0

    new-instance v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$c;

    invoke-direct {v15, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;)V

    goto :goto_2cd

    :cond_2c0
    sget v14, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->r0:I

    invoke-virtual {v10, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v14

    if-eqz v14, :cond_9f5

    new-instance v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$d;

    invoke-direct {v15, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$d;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;)V

    :goto_2cd
    invoke-interface {v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$a;->a()I

    move-result v14

    if-nez v14, :cond_2fd

    new-instance v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    new-array v14, v13, [J

    new-array v15, v13, [I

    new-array v11, v13, [J

    move-object/from16 v17, v0

    new-array v0, v13, [I

    const/16 v26, 0x0

    move-object/from16 v23, v10

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v27, v11

    move-object/from16 v28, v0

    invoke-direct/range {v23 .. v28}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;-><init>([J[II[J[I)V

    move-object/from16 v54, v2

    move-wide/from16 v52, v3

    move-object/from16 v51, v5

    move-wide/from16 v19, v6

    move-object/from16 v39, v8

    move/from16 v55, v9

    move-object v5, v12

    goto/16 :goto_84b

    :cond_2fd
    move-object/from16 v17, v0

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->s0:I

    invoke-virtual {v10, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v0

    if-nez v0, :cond_30f

    sget v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->t0:I

    invoke-virtual {v10, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v0

    const/4 v11, 0x1

    goto :goto_310

    :cond_30f
    const/4 v11, 0x0

    :goto_310
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;->P0:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    sget v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->p0:I

    invoke-virtual {v10, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v13

    iget-object v13, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;->P0:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    move-wide/from16 v19, v6

    sget v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->m0:I

    invoke-virtual {v10, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v6

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;->P0:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    sget v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->n0:I

    invoke-virtual {v10, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v7

    if-eqz v7, :cond_331

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;->P0:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    move-object/from16 v51, v5

    goto :goto_334

    :cond_331
    move-object/from16 v51, v5

    const/4 v7, 0x0

    :goto_334
    sget v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a;->o0:I

    invoke-virtual {v10, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->d(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;

    move-result-object v5

    if-eqz v5, :cond_33f

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$b;->P0:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    goto :goto_340

    :cond_33f
    const/4 v5, 0x0

    :goto_340
    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    move-wide/from16 v52, v3

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v3

    invoke-virtual {v13, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v4

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v10

    move/from16 v23, v4

    const/4 v4, 0x1

    if-ne v10, v4, :cond_35d

    const/4 v10, 0x1

    goto :goto_35e

    :cond_35d
    const/4 v10, 0x0

    :goto_35e
    const-string v4, "first_chunk must be 1"

    invoke-static {v10, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    const/16 v4, 0xc

    invoke-virtual {v6, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v10

    const/16 v21, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v21

    move-object/from16 v54, v2

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v2

    if-eqz v5, :cond_384

    invoke-virtual {v5, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v24

    goto :goto_386

    :cond_384
    const/16 v24, 0x0

    :goto_386
    const/16 v25, -0x1

    if-eqz v7, :cond_39e

    invoke-virtual {v7, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v26

    if-lez v26, :cond_39c

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v27

    const/16 v22, 0x1

    add-int/lit8 v27, v27, -0x1

    goto :goto_3a2

    :cond_39c
    const/4 v7, 0x0

    goto :goto_3a0

    :cond_39e
    const/16 v26, 0x0

    :goto_3a0
    const/16 v27, -0x1

    :goto_3a2
    invoke-interface {v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$a;->c()Z

    move-result v28

    if-eqz v28, :cond_3be

    iget-object v4, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    move/from16 v55, v9

    const-string v9, "audio/raw"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c0

    if-nez v10, :cond_3c0

    if-nez v24, :cond_3c0

    if-nez v26, :cond_3c0

    const/4 v4, 0x1

    goto :goto_3c1

    :cond_3be
    move/from16 v55, v9

    :cond_3c0
    const/4 v4, 0x0

    :goto_3c1
    const-wide/16 v28, 0x0

    if-nez v4, :cond_54b

    new-array v4, v14, [J

    new-array v9, v14, [I

    move/from16 v31, v10

    new-array v10, v14, [J

    new-array v1, v14, [I

    move/from16 v36, v2

    move-object/from16 v56, v12

    move/from16 v35, v21

    move/from16 v34, v24

    move/from16 v2, v27

    move-wide/from16 v37, v28

    move-wide/from16 v39, v37

    move-wide/from16 v41, v39

    move/from16 v33, v31

    const/4 v12, 0x0

    const/16 v24, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v43, -0x1

    const/16 v57, 0x0

    move-object/from16 v27, v6

    move-object/from16 v21, v8

    move/from16 v8, v26

    const/4 v6, 0x0

    const/16 v26, 0x0

    :goto_3f5
    if-ge v12, v14, :cond_4cd

    move/from16 v86, v32

    move/from16 v32, v14

    move/from16 v14, v86

    :goto_3fd
    if-nez v57, :cond_445

    move/from16 v44, v8

    add-int/lit8 v8, v43, 0x1

    if-ne v8, v3, :cond_40c

    move/from16 v57, v31

    move/from16 v31, v23

    const/16 v23, 0x0

    goto :goto_437

    :cond_40c
    if-eqz v11, :cond_413

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->p()J

    move-result-wide v39

    goto :goto_417

    :cond_413
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->m()J

    move-result-wide v39

    :goto_417
    if-ne v8, v14, :cond_42f

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v31

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    add-int/lit8 v23, v23, -0x1

    if-lez v23, :cond_42e

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v14

    const/16 v22, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_42f

    :cond_42e
    const/4 v14, -0x1

    :cond_42f
    :goto_42f
    move/from16 v57, v31

    move-wide/from16 v41, v39

    move/from16 v31, v23

    const/16 v23, 0x1

    :goto_437
    invoke-static/range {v23 .. v23}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    move/from16 v43, v8

    move/from16 v23, v31

    move-wide/from16 v39, v41

    move/from16 v8, v44

    move/from16 v31, v57

    goto :goto_3fd

    :cond_445
    move/from16 v44, v8

    if-eqz v5, :cond_45a

    :goto_449
    if-nez v24, :cond_458

    if-lez v34, :cond_458

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v24

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    move-result v26

    add-int/lit8 v34, v34, -0x1

    goto :goto_449

    :cond_458
    add-int/lit8 v24, v24, -0x1

    :cond_45a
    move/from16 v8, v26

    aput-wide v39, v4, v12

    invoke-interface {v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$a;->b()I

    move-result v26

    aput v26, v9, v12

    move-object/from16 v26, v4

    aget v4, v9, v12

    if-le v4, v6, :cond_46d

    aget v4, v9, v12

    move v6, v4

    :cond_46d
    move/from16 v45, v14

    move-object v4, v15

    int-to-long v14, v8

    add-long v14, v37, v14

    aput-wide v14, v10, v12

    if-nez v7, :cond_479

    const/4 v14, 0x1

    goto :goto_47a

    :cond_479
    const/4 v14, 0x0

    :goto_47a
    aput v14, v1, v12

    if-ne v12, v2, :cond_491

    const/4 v14, 0x1

    aput v14, v1, v12

    add-int/lit8 v15, v44, -0x1

    if-lez v15, :cond_48a

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v2

    sub-int/2addr v2, v14

    :cond_48a
    move/from16 v44, v2

    move/from16 v14, v36

    move-object/from16 v36, v1

    goto :goto_499

    :cond_491
    move/from16 v14, v36

    move/from16 v15, v44

    move-object/from16 v36, v1

    move/from16 v44, v2

    :goto_499
    int-to-long v1, v14

    add-long v37, v37, v1

    add-int/lit8 v35, v35, -0x1

    if-nez v35, :cond_4af

    if-lez v33, :cond_4af

    invoke-virtual/range {v27 .. v27}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v1

    invoke-virtual/range {v27 .. v27}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v2

    add-int/lit8 v33, v33, -0x1

    move/from16 v35, v1

    move v14, v2

    :cond_4af
    aget v1, v9, v12

    int-to-long v1, v1

    add-long v39, v39, v1

    add-int/lit8 v57, v57, -0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v36

    move/from16 v2, v44

    move/from16 v36, v14

    move/from16 v14, v32

    move/from16 v32, v45

    move/from16 v86, v15

    move-object v15, v4

    move-object/from16 v4, v26

    move/from16 v26, v8

    move/from16 v8, v86

    goto/16 :goto_3f5

    :cond_4cd
    move-object/from16 v36, v1

    move-object/from16 v26, v4

    move/from16 v44, v8

    move/from16 v32, v14

    if-nez v24, :cond_4d9

    const/4 v0, 0x1

    goto :goto_4da

    :cond_4d9
    const/4 v0, 0x0

    :goto_4da
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    :goto_4dd
    if-lez v34, :cond_4f1

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v0

    if-nez v0, :cond_4e7

    const/4 v0, 0x1

    goto :goto_4e8

    :cond_4e7
    const/4 v0, 0x0

    :goto_4e8
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c()I

    add-int/lit8 v34, v34, -0x1

    goto :goto_4dd

    :cond_4f1
    if-nez v44, :cond_4ff

    if-nez v35, :cond_4ff

    move/from16 v0, v57

    if-nez v0, :cond_501

    if-eqz v33, :cond_4fc

    goto :goto_501

    :cond_4fc
    move-object/from16 v5, v56

    goto :goto_541

    :cond_4ff
    move/from16 v0, v57

    :cond_501
    :goto_501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v56

    iget v2, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": remainingSynchronizationSamples "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v44

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AtomParsers"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_541
    move-object v11, v10

    move-object/from16 v4, v26

    move-object v10, v9

    move-object/from16 v9, v36

    move/from16 v36, v6

    goto/16 :goto_5fa

    :cond_54b
    move-object/from16 v21, v8

    move-object v5, v12

    move/from16 v32, v14

    move-object v4, v15

    new-array v1, v3, [J

    new-array v6, v3, [I

    move-wide/from16 v14, v28

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_55a
    const/4 v10, 0x1

    add-int/2addr v9, v10

    if-ne v9, v3, :cond_561

    const/4 v10, 0x4

    const/4 v12, 0x0

    goto :goto_585

    :cond_561
    if-eqz v11, :cond_568

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->p()J

    move-result-wide v14

    goto :goto_56c

    :cond_568
    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->m()J

    move-result-wide v14

    :goto_56c
    if-ne v9, v7, :cond_583

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v8

    const/4 v10, 0x4

    invoke-virtual {v13, v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->f(I)V

    add-int/lit8 v23, v23, -0x1

    if-lez v23, :cond_581

    invoke-virtual {v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->o()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    goto :goto_584

    :cond_581
    const/4 v7, -0x1

    goto :goto_584

    :cond_583
    const/4 v10, 0x4

    :goto_584
    const/4 v12, 0x1

    :goto_585
    if-eqz v12, :cond_58c

    aput-wide v14, v1, v9

    aput v8, v6, v9

    goto :goto_55a

    :cond_58c
    invoke-interface {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/b$a;->b()I

    move-result v0

    int-to-long v7, v2

    const/16 v2, 0x2000

    div-int/2addr v2, v0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_596
    if-ge v4, v3, :cond_5a2

    aget v10, v6, v4

    invoke-static {v10, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_596

    :cond_5a2
    new-array v4, v9, [J

    new-array v10, v9, [I

    new-array v11, v9, [J

    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5ae
    if-ge v12, v3, :cond_5f6

    aget v23, v6, v12

    aget-wide v24, v1, v12

    move/from16 v86, v23

    move-object/from16 v23, v1

    move/from16 v1, v86

    :goto_5ba
    if-lez v1, :cond_5ea

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v26

    aput-wide v24, v4, v15

    mul-int v27, v0, v26

    aput v27, v10, v15

    move/from16 v27, v0

    aget v0, v10, v15

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v30, v2

    move v0, v3

    int-to-long v2, v14

    mul-long v2, v2, v7

    aput-wide v2, v11, v15

    const/4 v2, 0x1

    aput v2, v9, v15

    aget v2, v10, v15

    int-to-long v2, v2

    add-long v24, v24, v2

    add-int v14, v14, v26

    sub-int v1, v1, v26

    add-int/lit8 v15, v15, 0x1

    move v3, v0

    move/from16 v0, v27

    move/from16 v2, v30

    goto :goto_5ba

    :cond_5ea
    move/from16 v27, v0

    move/from16 v30, v2

    move v0, v3

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v23

    move/from16 v0, v27

    goto :goto_5ae

    :cond_5f6
    move/from16 v36, v13

    move-wide/from16 v37, v28

    :goto_5fa
    iget-object v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->i:[J

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_833

    invoke-virtual/range {v21 .. v21}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a()Z

    move-result v0

    if-eqz v0, :cond_609

    goto/16 :goto_833

    :cond_609
    iget-object v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->i:[J

    array-length v3, v0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_699

    iget v3, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->b:I

    if-ne v3, v6, :cond_699

    array-length v3, v11

    const/4 v6, 0x2

    if-lt v3, v6, :cond_699

    iget-object v3, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->j:[J

    const/4 v6, 0x0

    aget-wide v7, v3, v6

    aget-wide v39, v0, v6

    iget-wide v12, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    iget-wide v14, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->d:J

    move-wide/from16 v41, v12

    move-wide/from16 v43, v14

    invoke-static/range {v39 .. v44}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v12

    add-long/2addr v12, v7

    aget-wide v14, v11, v6

    cmp-long v0, v14, v7

    if-gtz v0, :cond_699

    const/4 v0, 0x1

    aget-wide v14, v11, v0

    cmp-long v3, v7, v14

    if-gez v3, :cond_699

    array-length v3, v11

    sub-int/2addr v3, v0

    aget-wide v14, v11, v3

    cmp-long v0, v14, v12

    if-gez v0, :cond_699

    cmp-long v0, v12, v37

    if-gtz v0, :cond_699

    sub-long v39, v37, v12

    const/4 v0, 0x0

    aget-wide v12, v11, v0

    sub-long v41, v7, v12

    iget-object v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->s:I

    int-to-long v6, v0

    iget-wide v12, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    move-wide/from16 v43, v6

    move-wide/from16 v45, v12

    invoke-static/range {v41 .. v46}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v6

    iget-object v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->s:I

    int-to-long v12, v0

    iget-wide v14, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    move-wide/from16 v41, v12

    move-wide/from16 v43, v14

    invoke-static/range {v39 .. v44}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v12

    cmp-long v0, v6, v28

    if-nez v0, :cond_671

    cmp-long v0, v12, v28

    if-eqz v0, :cond_699

    :cond_671
    const-wide/32 v14, 0x7fffffff

    cmp-long v0, v6, v14

    if-gtz v0, :cond_699

    cmp-long v0, v12, v14

    if-gtz v0, :cond_699

    long-to-int v0, v6

    move-object/from16 v3, v21

    iput v0, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a:I

    long-to-int v0, v12

    iput v0, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->b:I

    iget-wide v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    invoke-static {v11, v1, v2, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a([JJJ)V

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    move-object/from16 v33, v0

    move-object/from16 v34, v4

    move-object/from16 v35, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v9

    invoke-direct/range {v33 .. v38}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;-><init>([J[II[J[I)V

    goto :goto_6d6

    :cond_699
    move-object/from16 v3, v21

    iget-object v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->i:[J

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6db

    const/16 v18, 0x0

    aget-wide v1, v0, v18

    cmp-long v0, v1, v28

    if-nez v0, :cond_6db

    const/4 v0, 0x0

    :goto_6aa
    array-length v1, v11

    if-ge v0, v1, :cond_6c7

    aget-wide v1, v11, v0

    iget-object v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->j:[J

    aget-wide v7, v6, v18

    sub-long v23, v1, v7

    iget-wide v1, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    const-wide/32 v25, 0xf4240

    move-wide/from16 v27, v1

    invoke-static/range {v23 .. v28}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v1

    aput-wide v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v18, 0x0

    goto :goto_6aa

    :cond_6c7
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    move-object/from16 v33, v0

    move-object/from16 v34, v4

    move-object/from16 v35, v10

    move-object/from16 v37, v11

    move-object/from16 v38, v9

    invoke-direct/range {v33 .. v38}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;-><init>([J[II[J[I)V

    :goto_6d6
    move-object v10, v0

    move-object/from16 v39, v3

    goto/16 :goto_84b

    :cond_6db
    iget v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6e2

    const/4 v0, 0x1

    goto :goto_6e3

    :cond_6e2
    const/4 v0, 0x0

    :goto_6e3
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6e7
    iget-object v8, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->i:[J

    array-length v12, v8

    const-wide/16 v13, -0x1

    if-ge v1, v12, :cond_726

    iget-object v12, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->j:[J

    move-object v15, v9

    move-object/from16 v21, v10

    aget-wide v9, v12, v1

    cmp-long v12, v9, v13

    if-eqz v12, :cond_71f

    aget-wide v37, v8, v1

    iget-wide v12, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    move-object v8, v15

    iget-wide v14, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->d:J

    move-wide/from16 v39, v12

    move-wide/from16 v41, v14

    invoke-static/range {v37 .. v42}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-static {v11, v9, v10, v14, v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a([JJZZ)I

    move-result v15

    add-long/2addr v9, v12

    const/4 v12, 0x0

    invoke-static {v11, v9, v10, v0, v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a([JJZZ)I

    move-result v9

    sub-int v10, v9, v15

    add-int/2addr v2, v10

    if-eq v6, v15, :cond_71a

    const/4 v6, 0x1

    goto :goto_71b

    :cond_71a
    const/4 v6, 0x0

    :goto_71b
    or-int/2addr v6, v7

    move v7, v6

    move v6, v9

    goto :goto_720

    :cond_71f
    move-object v8, v15

    :goto_720
    add-int/lit8 v1, v1, 0x1

    move-object v9, v8

    move-object/from16 v10, v21

    goto :goto_6e7

    :cond_726
    move-object v8, v9

    move-object/from16 v21, v10

    move/from16 v1, v32

    if-eq v2, v1, :cond_72f

    const/4 v1, 0x1

    goto :goto_730

    :cond_72f
    const/4 v1, 0x0

    :goto_730
    or-int/2addr v1, v7

    if-eqz v1, :cond_736

    new-array v6, v2, [J

    goto :goto_737

    :cond_736
    move-object v6, v4

    :goto_737
    if-eqz v1, :cond_73c

    new-array v7, v2, [I

    goto :goto_73e

    :cond_73c
    move-object/from16 v7, v21

    :goto_73e
    if-eqz v1, :cond_742

    const/16 v36, 0x0

    :cond_742
    if-eqz v1, :cond_747

    new-array v9, v2, [I

    goto :goto_748

    :cond_747
    move-object v9, v8

    :goto_748
    new-array v2, v2, [J

    move-wide/from16 v29, v28

    move/from16 v33, v36

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_750
    iget-object v15, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->i:[J

    array-length v13, v15

    if-ge v10, v13, :cond_802

    iget-object v13, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->j:[J

    move-object/from16 v34, v2

    move-object v14, v3

    aget-wide v2, v13, v10

    aget-wide v35, v15, v10

    const-wide/16 v31, -0x1

    cmp-long v13, v2, v31

    if-eqz v13, :cond_7e8

    move-object v15, v14

    iget-wide v13, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    move-object/from16 v37, v8

    move-object/from16 v38, v9

    iget-wide v8, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->d:J

    move-wide/from16 v23, v35

    move-wide/from16 v25, v13

    move-wide/from16 v27, v8

    invoke-static/range {v23 .. v28}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v2

    const/4 v13, 0x1

    invoke-static {v11, v2, v3, v13, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a([JJZZ)I

    move-result v14

    const/4 v13, 0x0

    invoke-static {v11, v8, v9, v0, v13}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a([JJZZ)I

    move-result v8

    if-eqz v1, :cond_79a

    sub-int v9, v8, v14

    invoke-static {v4, v14, v6, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v13, v21

    invoke-static {v13, v14, v7, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v21, v0

    move-object/from16 v39, v15

    move-object/from16 v0, v37

    move-object/from16 v15, v38

    invoke-static {v0, v14, v15, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7a4

    :cond_79a
    move-object/from16 v39, v15

    move-object/from16 v13, v21

    move-object/from16 v15, v38

    move/from16 v21, v0

    move-object/from16 v0, v37

    :goto_7a4
    move/from16 v9, v33

    :goto_7a6
    if-ge v14, v8, :cond_7e4

    move/from16 v37, v8

    move/from16 v33, v9

    iget-wide v8, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->d:J

    const-wide/32 v25, 0xf4240

    move-wide/from16 v23, v29

    move-wide/from16 v27, v8

    invoke-static/range {v23 .. v28}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v8

    aget-wide v23, v11, v14

    sub-long v40, v23, v2

    move-wide/from16 v23, v2

    iget-wide v2, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    const-wide/32 v42, 0xf4240

    move-wide/from16 v44, v2

    invoke-static/range {v40 .. v45}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(JJJ)J

    move-result-wide v2

    add-long/2addr v8, v2

    aput-wide v8, v34, v12

    if-eqz v1, :cond_7d8

    aget v2, v7, v12

    move/from16 v3, v33

    if-le v2, v3, :cond_7da

    aget v9, v13, v14

    goto :goto_7db

    :cond_7d8
    move/from16 v3, v33

    :cond_7da
    move v9, v3

    :goto_7db
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, v23

    move/from16 v8, v37

    goto :goto_7a6

    :cond_7e4
    move v3, v9

    move/from16 v33, v3

    goto :goto_7f0

    :cond_7e8
    move-object v15, v9

    move-object/from16 v39, v14

    move-object/from16 v13, v21

    move/from16 v21, v0

    move-object v0, v8

    :goto_7f0
    add-long v29, v29, v35

    add-int/lit8 v10, v10, 0x1

    move-object v8, v0

    move-object v9, v15

    move/from16 v0, v21

    move-object/from16 v2, v34

    move-object/from16 v3, v39

    move-object/from16 v21, v13

    move-wide/from16 v13, v31

    goto/16 :goto_750

    :cond_802
    move-object/from16 v34, v2

    move-object/from16 v39, v3

    move-object v15, v9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_809
    array-length v2, v15

    if-ge v0, v2, :cond_81b

    if-nez v1, :cond_81b

    aget v2, v15, v0

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_816

    const/4 v2, 0x1

    goto :goto_817

    :cond_816
    const/4 v2, 0x0

    :goto_817
    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_809

    :cond_81b
    if-eqz v1, :cond_82b

    new-instance v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    move-object/from16 v30, v10

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v35, v15

    invoke-direct/range {v30 .. v35}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;-><init>([J[II[J[I)V

    goto :goto_84b

    :cond_82b
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_833
    :goto_833
    move-object v0, v9

    move-object v13, v10

    move-object/from16 v39, v21

    iget-wide v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->c:J

    invoke-static {v11, v1, v2, v6, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a([JJJ)V

    new-instance v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    move-object/from16 v33, v10

    move-object/from16 v34, v4

    move-object/from16 v35, v13

    move-object/from16 v37, v11

    move-object/from16 v38, v0

    invoke-direct/range {v33 .. v38}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;-><init>([J[II[J[I)V

    :goto_84b
    iget v0, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->a:I

    if-nez v0, :cond_85c

    :goto_84f
    move-wide/from16 v6, v19

    move-object/from16 v0, v39

    move-object/from16 v5, v51

    move-wide/from16 v1, v52

    move/from16 v21, v55

    const/4 v4, 0x0

    goto/16 :goto_9e7

    :cond_85c
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    iget v3, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->b:I

    move/from16 v13, v55

    invoke-interface {v2, v13, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(II)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    move-result-object v2

    invoke-direct {v0, v5, v10, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V

    iget v3, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->d:I

    add-int/lit8 v3, v3, 0x1e

    move/from16 v61, v3

    iget-object v4, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    new-instance v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-object/from16 v55, v6

    iget-object v7, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a:Ljava/lang/String;

    move-object/from16 v56, v7

    iget-object v8, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->e:Ljava/lang/String;

    move-object/from16 v57, v8

    iget-object v9, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    move-object/from16 v58, v9

    iget-object v11, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->c:Ljava/lang/String;

    move-object/from16 v59, v11

    iget v12, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    move/from16 v60, v12

    iget v14, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    move/from16 v62, v14

    iget v15, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    move/from16 v63, v15

    iget v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->l:F

    move/from16 v64, v1

    move/from16 v21, v13

    iget v13, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->m:I

    move/from16 v65, v13

    move-object/from16 v83, v10

    iget v10, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->n:F

    move/from16 v66, v10

    move-object/from16 v84, v0

    iget-object v0, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->p:[B

    move-object/from16 v67, v0

    move-object/from16 v85, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->o:I

    move/from16 v68, v2

    move/from16 v23, v2

    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/b;

    move-object/from16 v69, v2

    move-object/from16 v24, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->r:I

    move/from16 v70, v2

    move/from16 v25, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->s:I

    move/from16 v71, v2

    move/from16 v26, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->t:I

    move/from16 v72, v2

    move/from16 v27, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->u:I

    move/from16 v73, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->v:I

    move/from16 v74, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->x:I

    move/from16 v75, v2

    move/from16 v28, v2

    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->y:Ljava/lang/String;

    move-object/from16 v76, v2

    move-object/from16 v29, v2

    iget v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->z:I

    move/from16 v77, v2

    move-object/from16 v31, v0

    move/from16 v30, v1

    iget-wide v0, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->w:J

    move-wide/from16 v78, v0

    move-wide/from16 v32, v0

    iget-object v0, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->h:Ljava/util/List;

    move-object/from16 v80, v0

    iget-object v0, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    move-object/from16 v81, v0

    iget-object v0, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    move-object/from16 v82, v0

    invoke-direct/range {v55 .. v82}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/fyber/inneractive/sdk/player/exoplayer2/video/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;)V

    iget v0, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9c3

    invoke-virtual/range {v39 .. v39}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a()Z

    move-result v0

    if-eqz v0, :cond_950

    move-object/from16 v0, v39

    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->a:I

    move/from16 v73, v4

    iget v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/j;->b:I

    move/from16 v74, v4

    new-instance v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-object/from16 v55, v4

    iget-object v1, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->h:Ljava/util/List;

    move-object/from16 v80, v1

    iget-object v1, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    move-object/from16 v81, v1

    iget-object v1, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;

    move-object/from16 v82, v1

    move-object/from16 v56, v7

    move-object/from16 v57, v8

    move-object/from16 v58, v9

    move-object/from16 v59, v11

    move/from16 v60, v12

    move/from16 v61, v3

    move/from16 v62, v14

    move/from16 v63, v15

    move/from16 v64, v30

    move/from16 v65, v13

    move/from16 v66, v10

    move-object/from16 v67, v31

    move/from16 v68, v23

    move-object/from16 v69, v24

    move/from16 v70, v25

    move/from16 v71, v26

    move/from16 v72, v27

    move/from16 v75, v28

    move-object/from16 v76, v29

    move/from16 v77, v2

    move-wide/from16 v78, v32

    invoke-direct/range {v55 .. v82}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/fyber/inneractive/sdk/player/exoplayer2/video/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;)V

    move-object v6, v4

    goto :goto_952

    :cond_950
    move-object/from16 v0, v39

    :goto_952
    if-eqz v54, :cond_9c5

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-object/from16 v23, v1

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->e:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->f:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->c:Ljava/lang/String;

    move-object/from16 v27, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    move/from16 v28, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->g:I

    move/from16 v29, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    move/from16 v30, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    move/from16 v31, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->l:F

    move/from16 v32, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->m:I

    move/from16 v33, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->n:F

    move/from16 v34, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->p:[B

    move-object/from16 v35, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->o:I

    move/from16 v36, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/video/b;

    move-object/from16 v37, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->r:I

    move/from16 v38, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->s:I

    move/from16 v39, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->t:I

    move/from16 v40, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->u:I

    move/from16 v41, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->v:I

    move/from16 v42, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->x:I

    move/from16 v43, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->y:Ljava/lang/String;

    move-object/from16 v44, v2

    iget v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->z:I

    move/from16 v45, v2

    iget-wide v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->w:J

    move-wide/from16 v46, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->h:Ljava/util/List;

    move-object/from16 v48, v2

    iget-object v2, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;

    move-object/from16 v49, v2

    move-object/from16 v50, v54

    invoke-direct/range {v23 .. v50}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFIF[BILcom/fyber/inneractive/sdk/player/exoplayer2/video/b;IIIIIILjava/lang/String;IJLjava/util/List;Lcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;Lcom/fyber/inneractive/sdk/player/exoplayer2/metadata/a;)V

    move-object v6, v1

    goto :goto_9c5

    :cond_9c3
    move-object/from16 v0, v39

    :cond_9c5
    :goto_9c5
    move-object/from16 v1, v85

    invoke-interface {v1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    iget-wide v1, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;->e:J

    move-wide/from16 v3, v52

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-object/from16 v5, v51

    move-object/from16 v3, v84

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v83

    iget-object v3, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;->b:[J

    const/4 v4, 0x0

    aget-wide v6, v3, v4

    cmp-long v3, v6, v19

    if-gez v3, :cond_9e5

    goto :goto_9e7

    :cond_9e5
    move-wide/from16 v6, v19

    :goto_9e7
    add-int/lit8 v9, v21, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    move-wide v3, v1

    move-object/from16 v0, v17

    move-object/from16 v2, v54

    move-object/from16 v1, p0

    goto/16 :goto_261

    :cond_9f5
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9fd
    iput-wide v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->n:J

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

    iput-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->m:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->c()V

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/m;)V

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x2

    iput v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->e:I

    goto/16 :goto_2

    :cond_a21
    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/a$a;->R0:Ljava/util/List;

    move-object/from16 v2, v17

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a3c
    iget v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->e:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a44

    invoke-virtual/range {p0 .. p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->d()V

    :cond_a44
    return-void
.end method

.method public final d()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->e:I

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;->h:I

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.f.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.mp4.f$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/h;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/k;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/mp4/f$a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    return-void
.end method
