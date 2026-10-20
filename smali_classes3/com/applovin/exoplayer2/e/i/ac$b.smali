###### Class com.applovin.exoplayer2.e.i.ac.b (com.applovin.exoplayer2.e.i.ac$b)
.class Lcom/applovin/exoplayer2/e/i/ac$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic FL:Lcom/applovin/exoplayer2/e/i/ac;

.field private final FM:Lcom/applovin/exoplayer2/l/x;

.field private final FN:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/i/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final FO:Landroid/util/SparseIntArray;

.field private final FP:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/ac;I)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/applovin/exoplayer2/l/x;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$b;->FN:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ac$b;->FO:Landroid/util/SparseIntArray;

    iput p2, p0, Lcom/applovin/exoplayer2/e/i/ac$b;->FP:I

    return-void
.end method

.method private s(Lcom/applovin/exoplayer2/l/y;I)Lcom/applovin/exoplayer2/e/i/ad$b;
    .registers 16

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    add-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v2, v1

    const/4 v3, -0x1

    :goto_9
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v4

    if-ge v4, p2, :cond_c0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v5

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v6

    add-int/2addr v6, v5

    if-le v6, p2, :cond_20

    goto/16 :goto_c0

    :cond_20
    const/4 v5, 0x5

    const/16 v7, 0x59

    const/16 v8, 0xac

    const/16 v9, 0x87

    const/16 v10, 0x81

    if-ne v4, v5, :cond_54

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pv()J

    move-result-wide v4

    const-wide/32 v11, 0x41432d33

    cmp-long v7, v4, v11

    if-nez v7, :cond_37

    goto :goto_58

    :cond_37
    const-wide/32 v10, 0x45414333

    cmp-long v7, v4, v10

    if-nez v7, :cond_3f

    goto :goto_5f

    :cond_3f
    const-wide/32 v9, 0x41432d34

    cmp-long v7, v4, v9

    if-nez v7, :cond_4a

    :goto_46
    const/16 v3, 0xac

    goto/16 :goto_b6

    :cond_4a
    const-wide/32 v7, 0x48455643

    cmp-long v9, v4, v7

    if-nez v9, :cond_b6

    const/16 v3, 0x24

    goto :goto_b6

    :cond_54
    const/16 v5, 0x6a

    if-ne v4, v5, :cond_5b

    :goto_58
    const/16 v3, 0x81

    goto :goto_b6

    :cond_5b
    const/16 v5, 0x7a

    if-ne v4, v5, :cond_62

    :goto_5f
    const/16 v3, 0x87

    goto :goto_b6

    :cond_62
    const/16 v5, 0x7f

    if-ne v4, v5, :cond_6f

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_b6

    goto :goto_46

    :cond_6f
    const/16 v5, 0x7b

    if-ne v4, v5, :cond_76

    const/16 v3, 0x8a

    goto :goto_b6

    :cond_76
    const/16 v5, 0xa

    const/4 v8, 0x3

    if-ne v4, v5, :cond_84

    invoke-virtual {p1, v8}, Lcom/applovin/exoplayer2/l/y;->fB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_b6

    :cond_84
    if-ne v4, v7, :cond_b0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_8b
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v3

    if-ge v3, v6, :cond_ad

    invoke-virtual {p1, v8}, Lcom/applovin/exoplayer2/l/y;->fB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v4

    const/4 v5, 0x4

    new-array v9, v5, [B

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10, v5}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    new-instance v5, Lcom/applovin/exoplayer2/e/i/ad$a;

    invoke-direct {v5, v3, v4, v9}, Lcom/applovin/exoplayer2/e/i/ad$a;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_ad
    const/16 v3, 0x59

    goto :goto_b6

    :cond_b0
    const/16 v5, 0x6f

    if-ne v4, v5, :cond_b6

    const/16 v3, 0x101

    :cond_b6
    :goto_b6
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-virtual {p1, v6}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    goto/16 :goto_9

    :cond_c0
    :goto_c0
    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    new-instance v4, Lcom/applovin/exoplayer2/e/i/ad$b;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p1

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v4, v3, v1, v2, p1}, Lcom/applovin/exoplayer2/e/i/ad$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    return-object v4
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    return-void

    :cond_c
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_46

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v2

    if-eq v2, v3, :cond_46

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/i/ac;->d(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v2

    if-ne v2, v5, :cond_27

    goto :goto_46

    :cond_27
    new-instance v2, Lcom/applovin/exoplayer2/l/ag;

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v6}, Lcom/applovin/exoplayer2/e/i/ac;->e(Lcom/applovin/exoplayer2/e/i/ac;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {v6}, Lcom/applovin/exoplayer2/l/ag;->pS()J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/applovin/exoplayer2/l/ag;-><init>(J)V

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v6}, Lcom/applovin/exoplayer2/e/i/ac;->e(Lcom/applovin/exoplayer2/e/i/ac;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_46
    :goto_46
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/i/ac;->e(Lcom/applovin/exoplayer2/e/i/ac;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/exoplayer2/l/ag;

    :goto_52
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5b

    return-void

    :cond_5b
    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v1, v8, v3}, Lcom/applovin/exoplayer2/l/y;->f(Lcom/applovin/exoplayer2/l/x;I)V

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v8, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;I)I

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v1, v8, v3}, Lcom/applovin/exoplayer2/l/y;->f(Lcom/applovin/exoplayer2/l/x;I)V

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    const/16 v11, 0xc

    invoke-virtual {v8, v11}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v8}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v8

    const/16 v12, 0x2000

    const/16 v13, 0x15

    if-ne v8, v3, :cond_d8

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v8}, Lcom/applovin/exoplayer2/e/i/ac;->f(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad;

    move-result-object v8

    if-nez v8, :cond_d8

    new-instance v8, Lcom/applovin/exoplayer2/e/i/ad$b;

    sget-object v14, Lcom/applovin/exoplayer2/l/ai;->ada:[B

    const/4 v15, 0x0

    invoke-direct {v8, v13, v15, v15, v14}, Lcom/applovin/exoplayer2/e/i/ad$b;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    iget-object v14, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v14}, Lcom/applovin/exoplayer2/e/i/ac;->g(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad$c;

    move-result-object v15

    invoke-interface {v15, v13, v8}, Lcom/applovin/exoplayer2/e/i/ad$c;->a(ILcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/ad;

    move-result-object v8

    invoke-static {v14, v8}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;Lcom/applovin/exoplayer2/e/i/ad;)Lcom/applovin/exoplayer2/e/i/ad;

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v8}, Lcom/applovin/exoplayer2/e/i/ac;->f(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad;

    move-result-object v8

    if-eqz v8, :cond_d8

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v8}, Lcom/applovin/exoplayer2/e/i/ac;->f(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad;

    move-result-object v8

    iget-object v14, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v14}, Lcom/applovin/exoplayer2/e/i/ac;->h(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/j;

    move-result-object v14

    new-instance v15, Lcom/applovin/exoplayer2/e/i/ad$d;

    invoke-direct {v15, v6, v13, v12}, Lcom/applovin/exoplayer2/e/i/ad$d;-><init>(III)V

    invoke-interface {v8, v2, v14, v15}, Lcom/applovin/exoplayer2/e/i/ad;->a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    :cond_d8
    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FN:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FO:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v8

    :goto_e6
    if-lez v8, :cond_16e

    iget-object v14, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    const/4 v15, 0x5

    invoke-virtual {v1, v14, v15}, Lcom/applovin/exoplayer2/l/y;->f(Lcom/applovin/exoplayer2/l/x;I)V

    iget-object v14, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget-object v14, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v14, v7}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v14, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v14, v10}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v14

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v7, v9}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FM:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v7, v11}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v7

    invoke-direct {v0, v1, v7}, Lcom/applovin/exoplayer2/e/i/ac$b;->s(Lcom/applovin/exoplayer2/l/y;I)Lcom/applovin/exoplayer2/e/i/ad$b;

    move-result-object v9

    const/4 v10, 0x6

    if-eq v4, v10, :cond_115

    if-ne v4, v15, :cond_117

    :cond_115
    iget v4, v9, Lcom/applovin/exoplayer2/e/i/ad$b;->ir:I

    :cond_117
    add-int/lit8 v7, v7, 0x5

    sub-int/2addr v8, v7

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v7}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v7

    if-ne v7, v3, :cond_124

    move v7, v4

    goto :goto_125

    :cond_124
    move v7, v14

    :goto_125
    iget-object v10, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v10}, Lcom/applovin/exoplayer2/e/i/ac;->i(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_132

    goto :goto_167

    :cond_132
    iget-object v10, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v10}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v10

    if-ne v10, v3, :cond_143

    if-ne v4, v13, :cond_143

    iget-object v4, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v4}, Lcom/applovin/exoplayer2/e/i/ac;->f(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad;

    move-result-object v4

    goto :goto_14d

    :cond_143
    iget-object v10, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v10}, Lcom/applovin/exoplayer2/e/i/ac;->g(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad$c;

    move-result-object v10

    invoke-interface {v10, v4, v9}, Lcom/applovin/exoplayer2/e/i/ad$c;->a(ILcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/ad;

    move-result-object v4

    :goto_14d
    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v9}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v9

    if-ne v9, v3, :cond_15d

    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FO:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-ge v14, v9, :cond_167

    :cond_15d
    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FO:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v14}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FN:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_167
    :goto_167
    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x4

    const/16 v10, 0xd

    goto/16 :goto_e6

    :cond_16e
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FO:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_175
    if-ge v4, v1, :cond_1c1

    iget-object v7, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FO:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FO:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v9}, Lcom/applovin/exoplayer2/e/i/ac;->i(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v9}, Lcom/applovin/exoplayer2/e/i/ac;->j(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseBooleanArray;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v9, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FN:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/applovin/exoplayer2/e/i/ad;

    if-eqz v9, :cond_1be

    iget-object v10, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v10}, Lcom/applovin/exoplayer2/e/i/ac;->f(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/i/ad;

    move-result-object v10

    if-eq v9, v10, :cond_1b5

    iget-object v10, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v10}, Lcom/applovin/exoplayer2/e/i/ac;->h(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/j;

    move-result-object v10

    new-instance v11, Lcom/applovin/exoplayer2/e/i/ad$d;

    invoke-direct {v11, v6, v7, v12}, Lcom/applovin/exoplayer2/e/i/ad$d;-><init>(III)V

    invoke-interface {v9, v2, v10, v11}, Lcom/applovin/exoplayer2/e/i/ad;->a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    :cond_1b5
    iget-object v7, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v7}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1be
    add-int/lit8 v4, v4, 0x1

    goto :goto_175

    :cond_1c1
    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v1

    if-ne v1, v3, :cond_1e6

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/i/ac;->k(Lcom/applovin/exoplayer2/e/i/ac;)Z

    move-result v1

    if-nez v1, :cond_21d

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/i/ac;->h(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/e/i/ac;->b(Lcom/applovin/exoplayer2/e/i/ac;I)I

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1, v5}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;Z)Z

    goto :goto_21d

    :cond_1e6
    const/4 v2, 0x0

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;)Landroid/util/SparseArray;

    move-result-object v1

    iget v3, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FP:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/i/ac;->c(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v3

    if-ne v3, v5, :cond_1fc

    const/4 v4, 0x0

    goto :goto_204

    :cond_1fc
    iget-object v2, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v2}, Lcom/applovin/exoplayer2/e/i/ac;->d(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :goto_204
    invoke-static {v1, v4}, Lcom/applovin/exoplayer2/e/i/ac;->b(Lcom/applovin/exoplayer2/e/i/ac;I)I

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/i/ac;->d(Lcom/applovin/exoplayer2/e/i/ac;)I

    move-result v1

    if-nez v1, :cond_21d

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1}, Lcom/applovin/exoplayer2/e/i/ac;->h(Lcom/applovin/exoplayer2/e/i/ac;)Lcom/applovin/exoplayer2/e/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/i/ac$b;->FL:Lcom/applovin/exoplayer2/e/i/ac;

    invoke-static {v1, v5}, Lcom/applovin/exoplayer2/e/i/ac;->a(Lcom/applovin/exoplayer2/e/i/ac;Z)Z

    :cond_21d
    :goto_21d
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 4

    return-void
.end method
