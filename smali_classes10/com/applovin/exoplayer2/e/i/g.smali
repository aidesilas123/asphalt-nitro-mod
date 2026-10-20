###### Class com.applovin.exoplayer2.e.i.g (com.applovin.exoplayer2.e.i.g)
.class public final Lcom/applovin/exoplayer2/e/i/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/ad$c;


# instance fields
.field private final jF:I

.field private final zN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-static {}, Lcom/applovin/exoplayer2/common/a/s;->ga()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/e/i/g;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/g;->jF:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/i/g;->zN:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/z;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/e/i/z;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/g;->c(Lcom/applovin/exoplayer2/e/i/ad$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/e/i/z;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private b(Lcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/af;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/e/i/af;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/g;->c(Lcom/applovin/exoplayer2/e/i/ad$b;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/e/i/af;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private c(Lcom/applovin/exoplayer2/e/i/ad$b;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/e/i/ad$b;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/v;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/g;->zN:Ljava/util/List;

    return-object p1

    :cond_b
    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/i/ad$b;->FT:[B

    invoke-direct {v0, p1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/g;->zN:Ljava/util/List;

    :goto_14
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v1

    if-lez v1, :cond_8d

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v2

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_89

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v1, :cond_89

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/y;->fB(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_4a

    const/4 v7, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v7, 0x0

    :goto_4b
    if-eqz v7, :cond_52

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_55

    :cond_52
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    :goto_55
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    const/4 v11, 0x0

    if-eqz v7, :cond_6a

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_65

    goto :goto_66

    :cond_65
    const/4 v8, 0x0

    :goto_66
    invoke-static {v8}, Lcom/applovin/exoplayer2/l/e;->as(Z)Ljava/util/List;

    move-result-object v11

    :cond_6a
    new-instance v7, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v7}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {v7, v9}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/applovin/exoplayer2/v$a;->j(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->S(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_89
    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    goto :goto_14

    :cond_8d
    return-object p1
.end method

.method private cv(I)Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/g;->jF:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method


# virtual methods
.method public a(ILcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/ad;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_10d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_102

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_e1

    const/16 v1, 0x24

    if-eq p1, v1, :cond_d2

    const/16 v1, 0x59

    if-eq p1, v1, :cond_c5

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_b8

    const/16 v1, 0xac

    if-eq p1, v1, :cond_ab

    const/16 v1, 0x101

    if-eq p1, v1, :cond_9e

    const/16 v1, 0x81

    if-eq p1, v1, :cond_91

    const/16 v1, 0x82

    if-eq p1, v1, :cond_88

    const/16 v1, 0x86

    if-eq p1, v1, :cond_72

    const/16 v1, 0x87

    if-eq p1, v1, :cond_91

    packed-switch p1, :pswitch_data_12a

    return-object v3

    :pswitch_3a
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_4d

    :cond_41
    new-instance v3, Lcom/applovin/exoplayer2/e/i/t;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/p;

    iget-object p2, p2, Lcom/applovin/exoplayer2/e/i/ad$b;->dq:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/i/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    :goto_4d
    return-object v3

    :pswitch_4e
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/l;

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/e/i/g;->b(Lcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/af;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/l;-><init>(Lcom/applovin/exoplayer2/e/i/af;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :pswitch_5d
    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result p1

    if-eqz p1, :cond_64

    goto :goto_71

    :cond_64
    new-instance v3, Lcom/applovin/exoplayer2/e/i/t;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/f;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/applovin/exoplayer2/e/i/ad$b;->dq:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/applovin/exoplayer2/e/i/f;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    :goto_71
    return-object v3

    :cond_72
    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result p1

    if-eqz p1, :cond_7b

    goto :goto_87

    :cond_7b
    new-instance v3, Lcom/applovin/exoplayer2/e/i/y;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/s;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/i/s;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/applovin/exoplayer2/e/i/y;-><init>(Lcom/applovin/exoplayer2/e/i/x;)V

    :goto_87
    return-object v3

    :cond_88
    const/16 p1, 0x40

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result p1

    if-nez p1, :cond_b8

    return-object v3

    :cond_91
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/b;

    iget-object p2, p2, Lcom/applovin/exoplayer2/e/i/ad$b;->dq:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :cond_9e
    new-instance p1, Lcom/applovin/exoplayer2/e/i/y;

    new-instance p2, Lcom/applovin/exoplayer2/e/i/s;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/applovin/exoplayer2/e/i/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/i/y;-><init>(Lcom/applovin/exoplayer2/e/i/x;)V

    return-object p1

    :cond_ab
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/d;

    iget-object p2, p2, Lcom/applovin/exoplayer2/e/i/ad$b;->dq:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/d;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :cond_b8
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/h;

    iget-object p2, p2, Lcom/applovin/exoplayer2/e/i/ad$b;->dq:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/h;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :cond_c5
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/i;

    iget-object p2, p2, Lcom/applovin/exoplayer2/e/i/ad$b;->FR:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/i;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :cond_d2
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/n;

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/e/i/g;->a(Lcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/z;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/n;-><init>(Lcom/applovin/exoplayer2/e/i/z;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :cond_e1
    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result p1

    if-eqz p1, :cond_e8

    goto :goto_101

    :cond_e8
    new-instance v3, Lcom/applovin/exoplayer2/e/i/t;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/m;

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/e/i/g;->a(Lcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/z;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/e/i/g;->cv(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/i/m;-><init>(Lcom/applovin/exoplayer2/e/i/z;ZZ)V

    invoke-direct {v3, p1}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    :goto_101
    return-object v3

    :cond_102
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance p2, Lcom/applovin/exoplayer2/e/i/o;

    invoke-direct {p2}, Lcom/applovin/exoplayer2/e/i/o;-><init>()V

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :cond_10d
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/q;

    iget-object p2, p2, Lcom/applovin/exoplayer2/e/i/ad$b;->dq:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    :cond_11a
    new-instance p1, Lcom/applovin/exoplayer2/e/i/t;

    new-instance v0, Lcom/applovin/exoplayer2/e/i/k;

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/e/i/g;->b(Lcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/af;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/applovin/exoplayer2/e/i/k;-><init>(Lcom/applovin/exoplayer2/e/i/af;)V

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/t;-><init>(Lcom/applovin/exoplayer2/e/i/j;)V

    return-object p1

    nop

    :pswitch_data_12a
    .packed-switch 0xf
        :pswitch_5d
        :pswitch_4e
        :pswitch_3a
    .end packed-switch
.end method

.method public jn()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/i/ad;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method
