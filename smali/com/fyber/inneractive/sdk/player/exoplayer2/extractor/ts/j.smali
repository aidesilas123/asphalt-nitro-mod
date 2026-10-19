###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public final e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public final f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

.field public k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

.field public l:Z

.field public m:J

.field public final n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->b:Z

    iput-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->h:[Z

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;-><init>(II)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->h:[Z

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->k:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->o:Z

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->b:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->g:J

    return-void
.end method

.method public a(JZ)V
    .registers 4

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->m:J

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;)V
    .registers 7

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->a()V

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->i:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;->a(II)Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->b:Z

    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;ZZ)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

    invoke-virtual {v0, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/h;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/v$d;)V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->b:I

    iget v3, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->c:I

    iget-object v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a:[B

    iget-wide v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->g:J

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->g:J

    iget-object v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-virtual/range {p1 .. p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;I)V

    :goto_1d
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->h:[Z

    invoke-static {v4, v2, v3, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([BII[Z)I

    move-result v1

    if-ne v1, v3, :cond_29

    invoke-virtual {v0, v4, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->a([BII)V

    return-void

    :cond_29
    add-int/lit8 v5, v1, 0x3

    aget-byte v6, v4, v5

    and-int/lit8 v6, v6, 0x1f

    sub-int v7, v1, v2

    if-lez v7, :cond_36

    invoke-virtual {v0, v4, v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->a([BII)V

    :cond_36
    sub-int v1, v3, v1

    iget-wide v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->g:J

    int-to-long v10, v1

    sub-long/2addr v8, v10

    if-gez v7, :cond_40

    neg-int v7, v7

    goto :goto_41

    :cond_40
    const/4 v7, 0x0

    :goto_41
    iget-wide v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->m:J

    iget-boolean v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->l:Z

    if-eqz v12, :cond_56

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-boolean v12, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->c:Z

    if-eqz v12, :cond_4e

    goto :goto_56

    :cond_4e
    move/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    goto/16 :goto_130

    :cond_56
    :goto_56
    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v12, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v12, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    iget-boolean v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->l:Z

    const/4 v14, 0x3

    if-nez v12, :cond_f1

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-boolean v12, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->c:Z

    if-eqz v12, :cond_4e

    iget-object v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-boolean v12, v12, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->c:Z

    if-eqz v12, :cond_4e

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v2, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v15, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v15, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v15, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v15, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v15, v14, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->b([BII)Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    move-result-object v2

    iget-object v15, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v13, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v15, v15, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v13, v14, v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([BII)Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;

    move-result-object v13

    iget-object v14, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-object v15, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->i:Ljava/lang/String;

    move/from16 v27, v3

    iget v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->b:I

    move-object/from16 v28, v4

    iget v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->c:I

    move/from16 v29, v5

    iget v5, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->d:F

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/high16 v22, -0x40800000    # -1.0f

    const/16 v24, -0x1

    const/16 v26, 0x0

    const-string v16, "video/avc"

    move/from16 v20, v3

    move/from16 v21, v4

    move-object/from16 v23, v12

    move/from16 v25, v5

    invoke-static/range {v15 .. v26}, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/fyber/inneractive/sdk/player/exoplayer2/drm/a;)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v3

    invoke-interface {v14, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->l:Z

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->d:Landroid/util/SparseArray;

    iget v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->e:Landroid/util/SparseArray;

    iget v3, v13, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;->a:I

    invoke-virtual {v2, v3, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    goto :goto_130

    :cond_f1
    move/from16 v27, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->c:Z

    if-eqz v3, :cond_114

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v3, v14, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->b([BII)Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    move-result-object v2

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->d:Landroid/util/SparseArray;

    iget v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    goto :goto_130

    :cond_114
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->c:Z

    if-eqz v3, :cond_130

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v3, v14, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([BII)Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;

    move-result-object v2

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->e:Landroid/util/SparseArray;

    iget v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a()V

    :cond_130
    :goto_130
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v2, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a(I)Z

    move-result v2

    if-eqz v2, :cond_15a

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->e:I

    invoke-static {v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i;->a([BI)I

    move-result v2

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->d:[B

    invoke-virtual {v3, v4, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->a([BI)V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;->e(I)V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/k;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/s;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    invoke-static {v10, v11, v3, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/text/cea/a;->a(JLcom/fyber/inneractive/sdk/player/exoplayer2/util/k;[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;)V

    :cond_15a
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->i:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_173

    iget-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->c:Z

    if-eqz v3, :cond_171

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iget-object v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;)Z

    move-result v3

    if-eqz v3, :cond_171

    goto :goto_173

    :cond_171
    const/4 v1, 0x1

    goto :goto_19b

    :cond_173
    :goto_173
    iget-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->o:Z

    if-eqz v3, :cond_18d

    iget-wide v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->j:J

    sub-long v10, v8, v3

    long-to-int v5, v10

    add-int v15, v1, v5

    iget-boolean v13, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->r:Z

    iget-wide v10, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->p:J

    sub-long/2addr v3, v10

    long-to-int v14, v3

    iget-object v10, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iget-wide v11, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->q:J

    const/16 v16, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;->a(JIII[B)V

    :cond_18d
    iget-wide v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->j:J

    iput-wide v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->p:J

    iget-wide v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->l:J

    iput-wide v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->q:J

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->r:Z

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->o:Z

    :goto_19b
    iget-boolean v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->r:Z

    iget v4, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->i:I

    const/4 v5, 0x2

    const/4 v7, 0x5

    if-eq v4, v7, :cond_1be

    iget-boolean v10, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->b:Z

    if-eqz v10, :cond_1bc

    if-ne v4, v1, :cond_1bc

    iget-object v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iget-boolean v4, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->b:Z

    if-eqz v4, :cond_1b8

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->e:I

    const/4 v4, 0x7

    if-eq v1, v4, :cond_1b6

    if-ne v1, v5, :cond_1b8

    :cond_1b6
    const/4 v1, 0x1

    goto :goto_1b9

    :cond_1b8
    const/4 v1, 0x0

    :goto_1b9
    if-eqz v1, :cond_1bc

    goto :goto_1be

    :cond_1bc
    const/4 v1, 0x0

    goto :goto_1bf

    :cond_1be
    :goto_1be
    const/4 v1, 0x1

    :goto_1bf
    or-int/2addr v1, v3

    iput-boolean v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->r:Z

    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->m:J

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->l:Z

    if-eqz v3, :cond_1ce

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-boolean v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->c:Z

    if-eqz v3, :cond_1d8

    :cond_1ce
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v3, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v3, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    :cond_1d8
    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v3, v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->b(I)V

    iget-object v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iput v6, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->i:I

    iput-wide v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->l:J

    iput-wide v8, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->j:J

    iget-boolean v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->b:Z

    if-eqz v1, :cond_1ed

    const/4 v1, 0x1

    if-eq v6, v1, :cond_1f8

    goto :goto_1ee

    :cond_1ed
    const/4 v1, 0x1

    :goto_1ee
    iget-boolean v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->c:Z

    if-eqz v2, :cond_20a

    if-eq v6, v7, :cond_1f8

    if-eq v6, v1, :cond_1f8

    if-ne v6, v5, :cond_20a

    :cond_1f8
    iget-object v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iget-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iput-object v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iput-object v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->b:Z

    iput-boolean v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->a:Z

    iput v2, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->h:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->k:Z

    :cond_20a
    move/from16 v3, v27

    move-object/from16 v4, v28

    move/from16 v2, v29

    goto/16 :goto_1d
.end method

.method public final a([BII)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->l:Z

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-boolean v4, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->c:Z

    if-eqz v4, :cond_1c

    :cond_12
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v4, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v4, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    :cond_1c
    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;

    invoke-virtual {v4, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/n;->a([BII)V

    iget-object v4, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;->k:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;

    iget-boolean v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->k:Z

    if-nez v5, :cond_29

    goto/16 :goto_1cc

    :cond_29
    sub-int/2addr v3, v2

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->g:[B

    array-length v6, v5

    iget v7, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->h:I

    add-int/2addr v7, v3

    const/4 v8, 0x2

    if-ge v6, v7, :cond_3b

    mul-int/lit8 v7, v7, 0x2

    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->g:[B

    :cond_3b
    iget-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->g:[B

    iget v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->h:I

    invoke-static {v1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->h:I

    add-int/2addr v1, v3

    iput v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->h:I

    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    iget-object v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->g:[B

    iput-object v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a:[B

    const/4 v3, 0x0

    iput v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c:I

    iput v1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b:I

    iput v3, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d:I

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a()V

    iget-object v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a(I)Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_1cc

    :cond_63
    iget-object v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->f()V

    iget-object v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v1, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v1

    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b()Z

    move-result v2

    if-nez v2, :cond_7e

    goto/16 :goto_1cc

    :cond_7e
    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b()Z

    move-result v2

    if-nez v2, :cond_8d

    goto/16 :goto_1cc

    :cond_8d
    iget-object v2, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v2

    iget-boolean v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->c:Z

    const/4 v7, 0x1

    if-nez v6, :cond_a2

    iput-boolean v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->k:Z

    iget-object v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iput v2, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->e:I

    iput-boolean v7, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->b:Z

    goto/16 :goto_1cc

    :cond_a2
    iget-object v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b()Z

    move-result v6

    if-nez v6, :cond_ac

    goto/16 :goto_1cc

    :cond_ac
    iget-object v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v6

    iget-object v9, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_be

    iput-boolean v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->k:Z

    goto/16 :goto_1cc

    :cond_be
    iget-object v9, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;

    iget-object v10, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->d:Landroid/util/SparseArray;

    iget v11, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;->b:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    iget-boolean v11, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->e:Z

    if-eqz v11, :cond_e3

    iget-object v11, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v11, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a(I)Z

    move-result v11

    if-nez v11, :cond_de

    goto/16 :goto_1cc

    :cond_de
    iget-object v11, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v11, v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d(I)V

    :cond_e3
    iget-object v8, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    iget v11, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->g:I

    invoke-virtual {v8, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a(I)Z

    move-result v8

    if-nez v8, :cond_ef

    goto/16 :goto_1cc

    :cond_ef
    iget-object v8, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    iget v11, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->g:I

    invoke-virtual {v8, v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v8

    iget-boolean v11, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->f:Z

    if-nez v11, :cond_11f

    iget-object v11, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v11, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a(I)Z

    move-result v11

    if-nez v11, :cond_105

    goto/16 :goto_1cc

    :cond_105
    iget-object v11, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v11

    if-eqz v11, :cond_120

    iget-object v12, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v12, v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a(I)Z

    move-result v12

    if-nez v12, :cond_117

    goto/16 :goto_1cc

    :cond_117
    iget-object v12, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v12}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->c()Z

    move-result v12

    const/4 v13, 0x1

    goto :goto_122

    :cond_11f
    const/4 v11, 0x0

    :cond_120
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_122
    iget v14, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->i:I

    if-ne v14, v5, :cond_128

    const/4 v5, 0x1

    goto :goto_129

    :cond_128
    const/4 v5, 0x0

    :goto_129
    if-eqz v5, :cond_13c

    iget-object v14, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b()Z

    move-result v14

    if-nez v14, :cond_135

    goto/16 :goto_1cc

    :cond_135
    iget-object v14, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v14}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->d()I

    move-result v14

    goto :goto_13d

    :cond_13c
    const/4 v14, 0x0

    :goto_13d
    iget v15, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->h:I

    if-nez v15, :cond_16f

    iget-object v15, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    iget v3, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->i:I

    invoke-virtual {v15, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->a(I)Z

    move-result v3

    if-nez v3, :cond_14d

    goto/16 :goto_1cc

    :cond_14d
    iget-object v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    iget v15, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->i:I

    invoke-virtual {v3, v15}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b(I)I

    move-result v3

    iget-boolean v9, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;->c:Z

    if-eqz v9, :cond_1a3

    if-nez v11, :cond_1a3

    iget-object v9, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b()Z

    move-result v9

    if-nez v9, :cond_165

    goto/16 :goto_1cc

    :cond_165
    iget-object v9, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    move-result v9

    move v15, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_1a6

    :cond_16f
    if-ne v15, v7, :cond_1a2

    iget-boolean v3, v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->j:Z

    if-nez v3, :cond_1a2

    iget-object v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b()Z

    move-result v3

    if-nez v3, :cond_17e

    goto :goto_1cc

    :cond_17e
    iget-object v3, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    move-result v3

    iget-boolean v9, v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;->c:Z

    if-eqz v9, :cond_19e

    if-nez v11, :cond_19e

    iget-object v9, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->b()Z

    move-result v9

    if-nez v9, :cond_193

    goto :goto_1cc

    :cond_193
    iget-object v9, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;->e()I

    move-result v9

    move v7, v9

    const/4 v15, 0x0

    move v9, v3

    const/4 v3, 0x0

    goto :goto_1a6

    :cond_19e
    move v9, v3

    const/4 v3, 0x0

    const/4 v7, 0x0

    goto :goto_1a5

    :cond_1a2
    const/4 v3, 0x0

    :cond_1a3
    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1a5
    const/4 v15, 0x0

    :goto_1a6
    iget-object v0, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iput-object v10, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->d:I

    iput v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->e:I

    iput v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->f:I

    iput v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->g:I

    iput-boolean v11, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->h:Z

    iput-boolean v13, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->i:Z

    iput-boolean v12, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->j:Z

    iput-boolean v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->k:Z

    iput v14, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->l:I

    iput v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->m:I

    iput v15, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->n:I

    iput v9, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->o:I

    iput v7, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->p:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->a:Z

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->k:Z

    :goto_1cc
    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j$a)
.class public synthetic Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j.b (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

.field public n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/n;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->b:Z

    iput-boolean p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->e:Landroid/util/SparseArray;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$a;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->m:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$a;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->g:[B

    new-instance p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;-><init>([BII)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/l;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->k:Z

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->o:Z

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;->n:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;

    iput-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->b:Z

    iput-boolean v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->a:Z

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j.b.a (com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.j$b$a)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;-><init>()V

    return-void
.end method

.method public static a(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;)Z
    .registers 6

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_70

    iget-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->a:Z

    if-eqz v0, :cond_71

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->f:I

    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->f:I

    if-ne v0, v2, :cond_71

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->g:I

    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->g:I

    if-ne v0, v2, :cond_71

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->h:Z

    iget-boolean v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->h:Z

    if-ne v0, v2, :cond_71

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->i:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->i:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->j:Z

    iget-boolean v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->j:Z

    if-ne v0, v2, :cond_71

    :cond_29
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->d:I

    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->d:I

    if-eq v0, v2, :cond_33

    if-eqz v0, :cond_71

    if-eqz v2, :cond_71

    :cond_33
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->h:I

    if-nez v0, :cond_4b

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    iget v2, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->h:I

    if-nez v2, :cond_4b

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->m:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->m:I

    if-ne v2, v3, :cond_71

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->n:I

    iget v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->n:I

    if-ne v2, v3, :cond_71

    :cond_4b
    if-ne v0, v1, :cond_5f

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/i$b;->h:I

    if-ne v0, v1, :cond_5f

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->o:I

    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->o:I

    if-ne v0, v2, :cond_71

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->p:I

    iget v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->p:I

    if-ne v0, v2, :cond_71

    :cond_5f
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->k:Z

    iget-boolean v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->k:Z

    if-ne v0, v2, :cond_71

    if-eqz v0, :cond_70

    if-eqz v2, :cond_70

    iget p0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->l:I

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/ts/j$b$a;->l:I

    if-eq p0, p1, :cond_70

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    :cond_71
    :goto_71
    return v1
.end method
