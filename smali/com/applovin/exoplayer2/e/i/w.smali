###### Class com.applovin.exoplayer2.e.i.w (com.applovin.exoplayer2.e.i.w)
.class public final Lcom/applovin/exoplayer2/e/i/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/w$a;
    }
.end annotation


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;


# instance fields
.field private BG:Lcom/applovin/exoplayer2/e/j;

.field private final Fa:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/i/w$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Fb:Lcom/applovin/exoplayer2/l/y;

.field private final Fc:Lcom/applovin/exoplayer2/e/i/v;

.field private Fd:Z

.field private Fe:Z

.field private Ff:Z

.field private Fg:J

.field private Fh:Lcom/applovin/exoplayer2/e/i/u;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private vB:Z

.field private final zS:Lcom/applovin/exoplayer2/l/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/e/i/e0;->a:Lcom/applovin/exoplayer2/e/i/e0;

    sput-object v0, Lcom/applovin/exoplayer2/e/i/w;->vq:Lcom/applovin/exoplayer2/e/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/l/ag;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/l/ag;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/w;-><init>(Lcom/applovin/exoplayer2/l/ag;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/l/ag;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->zS:Lcom/applovin/exoplayer2/l/ag;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fa:Landroid/util/SparseArray;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/v;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/i/v;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fc:Lcom/applovin/exoplayer2/e/i/v;

    return-void
.end method

.method private aH(J)V
    .registers 14

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/w;->vB:Z

    if-nez v0, :cond_45

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/w;->vB:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fc:Lcom/applovin/exoplayer2/e/i/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/v;->dd()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_35

    new-instance v0, Lcom/applovin/exoplayer2/e/i/u;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fc:Lcom/applovin/exoplayer2/e/i/v;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/e/i/v;->ju()Lcom/applovin/exoplayer2/l/ag;

    move-result-object v6

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fc:Lcom/applovin/exoplayer2/e/i/v;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/e/i/v;->dd()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/applovin/exoplayer2/e/i/u;-><init>(Lcom/applovin/exoplayer2/l/ag;JJ)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fh:Lcom/applovin/exoplayer2/e/i/u;

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/a;->hS()Lcom/applovin/exoplayer2/e/v;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    goto :goto_45

    :cond_35
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->BG:Lcom/applovin/exoplayer2/e/j;

    new-instance p2, Lcom/applovin/exoplayer2/e/v$b;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fc:Lcom/applovin/exoplayer2/e/i/v;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/v;->dd()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    :cond_45
    :goto_45
    return-void
.end method

.method public static synthetic c()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/i/w;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/w;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/i/w;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->BG:Lcom/applovin/exoplayer2/e/j;

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_2a

    return v2

    :cond_2a
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_34

    return v2

    :cond_34
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3b

    return v2

    :cond_3b
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_41

    return v2

    :cond_41
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_49

    return v2

    :cond_49
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_51

    return v2

    :cond_51
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bI(I)V

    invoke-interface {p1, v1, v2, v5}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_71

    const/4 v2, 0x1

    :cond_71
    return v2
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_25

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/i/w;->Fc:Lcom/applovin/exoplayer2/e/i/v;

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/e/i/v;->jt()Z

    move-result v7

    if-nez v7, :cond_25

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fc:Lcom/applovin/exoplayer2/e/i/v;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/i/v;->j(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1

    :cond_25
    invoke-direct {p0, v0, v1}, Lcom/applovin/exoplayer2/e/i/w;->aH(J)V

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/i/w;->Fh:Lcom/applovin/exoplayer2/e/i/u;

    if-eqz v7, :cond_39

    invoke-virtual {v7}, Lcom/applovin/exoplayer2/e/a;->hT()Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fh:Lcom/applovin/exoplayer2/e/i/u;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/a;->a(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I

    move-result p1

    return p1

    :cond_39
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    if-eqz v6, :cond_44

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->id()J

    move-result-wide v6

    sub-long/2addr v0, v6

    goto :goto_45

    :cond_44
    move-wide v0, v2

    :goto_45
    const/4 p2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_51

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-gez v6, :cond_51

    return p2

    :cond_51
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v5, v1, v4}, Lcom/applovin/exoplayer2/e/i;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5f

    return p2

    :cond_5f
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->px()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_6f

    return p2

    :cond_6f
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_93

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p1, p2, v5, v0}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->po()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    return v5

    :cond_93
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, p2, :cond_b2

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p2

    add-int/2addr p2, v2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    return v5

    :cond_b2
    and-int/lit16 p2, v0, -0x100

    shr-int/lit8 p2, p2, 0x8

    if-eq p2, v4, :cond_bc

    invoke-interface {p1, v4}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    return v5

    :cond_bc
    and-int/lit16 p2, v0, 0xff

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/w;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/i/w$a;

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/w;->Fd:Z

    if-nez v3, :cond_140

    if-nez v0, :cond_120

    const/4 v3, 0x0

    const/16 v6, 0xbd

    if-ne p2, v6, :cond_df

    new-instance v3, Lcom/applovin/exoplayer2/e/i/b;

    invoke-direct {v3}, Lcom/applovin/exoplayer2/e/i/b;-><init>()V

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/w;->Fe:Z

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/applovin/exoplayer2/e/i/w;->Fg:J

    goto :goto_106

    :cond_df
    and-int/lit16 v6, p2, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_f3

    new-instance v3, Lcom/applovin/exoplayer2/e/i/q;

    invoke-direct {v3}, Lcom/applovin/exoplayer2/e/i/q;-><init>()V

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/w;->Fe:Z

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/applovin/exoplayer2/e/i/w;->Fg:J

    goto :goto_106

    :cond_f3
    and-int/lit16 v6, p2, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_106

    new-instance v3, Lcom/applovin/exoplayer2/e/i/k;

    invoke-direct {v3}, Lcom/applovin/exoplayer2/e/i/k;-><init>()V

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/w;->Ff:Z

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/applovin/exoplayer2/e/i/w;->Fg:J

    :cond_106
    :goto_106
    if-eqz v3, :cond_120

    new-instance v0, Lcom/applovin/exoplayer2/e/i/ad$d;

    const/16 v6, 0x100

    invoke-direct {v0, p2, v6}, Lcom/applovin/exoplayer2/e/i/ad$d;-><init>(II)V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/w;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {v3, v6, v0}, Lcom/applovin/exoplayer2/e/i/j;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    new-instance v0, Lcom/applovin/exoplayer2/e/i/w$a;

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/w;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-direct {v0, v3, v6}, Lcom/applovin/exoplayer2/e/i/w$a;-><init>(Lcom/applovin/exoplayer2/e/i/j;Lcom/applovin/exoplayer2/l/ag;)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/w;->Fa:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_120
    iget-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fe:Z

    if-eqz p2, :cond_12e

    iget-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Ff:Z

    if-eqz p2, :cond_12e

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/i/w;->Fg:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_131

    :cond_12e
    const-wide/32 v6, 0x100000

    :goto_131
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_140

    iput-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/w;->Fd:Z

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->BG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {p2}, Lcom/applovin/exoplayer2/e/j;->ig()V

    :cond_140
    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2, v5}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/l/y;->pp()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_15b

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    goto :goto_17c

    :cond_15b
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, p2}, Lcom/applovin/exoplayer2/l/y;->U(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, p2}, Lcom/applovin/exoplayer2/e/i;->a([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/i/w$a;->K(Lcom/applovin/exoplayer2/l/y;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fb:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pl()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    :goto_17c
    return v5
.end method

.method public o(JJ)V
    .registers 10

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/ag;->pU()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-nez p1, :cond_2d

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/ag;->pS()J

    move-result-wide p1

    cmp-long v4, p1, v0

    if-eqz v4, :cond_2b

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-eqz v4, :cond_2b

    cmp-long v0, p1, p3

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    move p1, v2

    :cond_2d
    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->zS:Lcom/applovin/exoplayer2/l/ag;

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/l/ag;->aI(J)V

    :cond_34
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fh:Lcom/applovin/exoplayer2/e/i/u;

    if-eqz p1, :cond_3b

    invoke-virtual {p1, p3, p4}, Lcom/applovin/exoplayer2/e/a;->ag(J)V

    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fa:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_51

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/w;->Fa:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/i/w$a;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/w$a;->jb()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_51
    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method
