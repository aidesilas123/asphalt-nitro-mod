###### Class com.applovin.exoplayer2.m.a (com.applovin.exoplayer2.m.a)
.class public final Lcom/applovin/exoplayer2/m/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final acy:F

.field public final dB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final dE:I

.field public final dw:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final height:I

.field public final wo:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .registers 7
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/m/a;->dB:Ljava/util/List;

    iput p2, p0, Lcom/applovin/exoplayer2/m/a;->wo:I

    iput p3, p0, Lcom/applovin/exoplayer2/m/a;->dE:I

    iput p4, p0, Lcom/applovin/exoplayer2/m/a;->height:I

    iput p5, p0, Lcom/applovin/exoplayer2/m/a;->acy:F

    iput-object p6, p0, Lcom/applovin/exoplayer2/m/a;->dw:Ljava/lang/String;

    return-void
.end method

.method public static as(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/m/a;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_6f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_27

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/a;->at(Lcom/applovin/exoplayer2/l/y;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_27
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v2, :cond_38

    invoke-static {p0}, Lcom/applovin/exoplayer2/m/a;->at(Lcom/applovin/exoplayer2/l/y;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_38
    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v5, -0x1

    if-lez v0, :cond_64

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    invoke-static {v0, v4, p0}, Lcom/applovin/exoplayer2/l/v;->n([BII)Lcom/applovin/exoplayer2/l/v$b;

    move-result-object p0

    iget v0, p0, Lcom/applovin/exoplayer2/l/v$b;->dE:I

    iget v1, p0, Lcom/applovin/exoplayer2/l/v$b;->height:I

    iget v2, p0, Lcom/applovin/exoplayer2/l/v$b;->acy:F

    iget v5, p0, Lcom/applovin/exoplayer2/l/v$b;->acv:I

    iget v6, p0, Lcom/applovin/exoplayer2/l/v$b;->acw:I

    iget p0, p0, Lcom/applovin/exoplayer2/l/v$b;->acx:I

    invoke-static {v5, v6, p0}, Lcom/applovin/exoplayer2/l/e;->i(III)Ljava/lang/String;

    move-result-object p0

    move-object v8, p0

    move v5, v0

    move v6, v1

    move v7, v2

    goto :goto_68

    :cond_64
    move-object v8, v2

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_68
    new-instance p0, Lcom/applovin/exoplayer2/m/a;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/applovin/exoplayer2/m/a;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V

    return-object p0

    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_75
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_75} :catch_75

    :catch_75
    move-exception p0

    const-string v0, "Error parsing AVC config"

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p0

    throw p0
.end method

.method private static at(Lcom/applovin/exoplayer2/l/y;)[B
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/applovin/exoplayer2/l/e;->m([BII)[B

    move-result-object p0

    return-object p0
.end method
