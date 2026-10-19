###### Class com.applovin.exoplayer2.m.f (com.applovin.exoplayer2.m.f)
.class public final Lcom/applovin/exoplayer2/m/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dB:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final dw:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final wo:I


# direct methods
.method private constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .registers 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/f;->dB:Ljava/util/List;

    iput p2, p0, Lcom/applovin/exoplayer2/m/f;->wo:I

    iput-object p3, p0, Lcom/applovin/exoplayer2/m/f;->dw:Ljava/lang/String;

    return-void
.end method

.method public static av(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/m/f;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_18
    const/4 v7, 0x1

    if-ge v5, v2, :cond_35

    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v7

    const/4 v8, 0x0

    :goto_23
    if-ge v8, v7, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_35
    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    new-array v3, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3d
    if-ge v8, v2, :cond_7f

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v11

    and-int/lit8 v11, v11, 0x7f

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v12

    const/4 v13, 0x0

    :goto_4a
    if-ge v13, v12, :cond_7c

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v14

    sget-object v15, Lcom/applovin/exoplayer2/l/v;->abK:[B

    array-length v5, v15

    invoke-static {v15, v4, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v15

    add-int/2addr v10, v5

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v15

    invoke-static {v5, v15, v3, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x21

    if-ne v11, v5, :cond_75

    if-nez v13, :cond_75

    new-instance v5, Lcom/applovin/exoplayer2/l/z;

    add-int v9, v10, v14

    invoke-direct {v5, v3, v10, v9}, Lcom/applovin/exoplayer2/l/z;-><init>([BII)V

    invoke-static {v5}, Lcom/applovin/exoplayer2/l/e;->c(Lcom/applovin/exoplayer2/l/z;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :cond_75
    add-int/2addr v10, v14

    invoke-virtual {v0, v14}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4a

    :cond_7c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    :cond_7f
    if-nez v6, :cond_83

    const/4 v5, 0x0

    goto :goto_87

    :cond_83
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_87
    new-instance v0, Lcom/applovin/exoplayer2/m/f;

    add-int/2addr v1, v7

    invoke-direct {v0, v5, v1, v9}, Lcom/applovin/exoplayer2/m/f;-><init>(Ljava/util/List;ILjava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_8d} :catch_8e

    return-object v0

    :catch_8e
    move-exception v0

    const-string v1, "Error parsing HEVC config"

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object v0

    throw v0
.end method
