###### Class com.applovin.exoplayer2.e.h.a (com.applovin.exoplayer2.e.h.a)
.class final Lcom/applovin/exoplayer2/e/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/h/a$a;
    }
.end annotation


# instance fields
.field private BA:J

.field private BB:J

.field private final Br:Lcom/applovin/exoplayer2/e/h/e;

.field private final Bs:J

.field private final Bt:J

.field private final Bu:Lcom/applovin/exoplayer2/e/h/h;

.field private Bv:J

.field private Bw:J

.field private Bx:J

.field private By:J

.field private Bz:J

.field private Z:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/h/h;JJJJZ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_10

    cmp-long v1, p4, p2

    if-lez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/h/a;->Bs:J

    iput-wide p4, p0, Lcom/applovin/exoplayer2/e/h/a;->Bt:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_25

    if-eqz p10, :cond_22

    goto :goto_25

    :cond_22
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    goto :goto_2a

    :cond_25
    :goto_25
    iput-wide p8, p0, Lcom/applovin/exoplayer2/e/h/a;->Bv:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    :goto_2a
    new-instance p1, Lcom/applovin/exoplayer2/e/h/e;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/h/e;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    return-void
.end method

.method private O(Lcom/applovin/exoplayer2/e/i;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/applovin/exoplayer2/e/h/a;->By:J

    iget-wide v4, v0, Lcom/applovin/exoplayer2/e/h/a;->Bz:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v4

    if-nez v8, :cond_f

    return-wide v6

    :cond_f
    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    iget-object v4, v0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget-wide v8, v0, Lcom/applovin/exoplayer2/e/h/a;->Bz:J

    invoke-virtual {v4, v1, v8, v9}, Lcom/applovin/exoplayer2/e/h/e;->c(Lcom/applovin/exoplayer2/e/i;J)Z

    move-result v4

    if-nez v4, :cond_2c

    iget-wide v4, v0, Lcom/applovin/exoplayer2/e/h/a;->By:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_24

    return-wide v4

    :cond_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    iget-object v4, v0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/applovin/exoplayer2/e/h/e;->f(Lcom/applovin/exoplayer2/e/i;Z)Z

    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    iget-wide v4, v0, Lcom/applovin/exoplayer2/e/h/a;->Bx:J

    iget-object v8, v0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget-wide v9, v8, Lcom/applovin/exoplayer2/e/h/e;->BN:J

    sub-long/2addr v4, v9

    iget v11, v8, Lcom/applovin/exoplayer2/e/h/e;->BT:I

    iget v8, v8, Lcom/applovin/exoplayer2/e/h/e;->BU:I

    add-int/2addr v11, v8

    const-wide/16 v12, 0x0

    cmp-long v8, v12, v4

    if-gtz v8, :cond_4f

    const-wide/32 v14, 0x11940

    cmp-long v8, v4, v14

    if-gez v8, :cond_4f

    return-wide v6

    :cond_4f
    cmp-long v6, v4, v12

    if-gez v6, :cond_58

    iput-wide v2, v0, Lcom/applovin/exoplayer2/e/h/a;->Bz:J

    iput-wide v9, v0, Lcom/applovin/exoplayer2/e/h/a;->BB:J

    goto :goto_66

    :cond_58
    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    int-to-long v7, v11

    add-long/2addr v2, v7

    iput-wide v2, v0, Lcom/applovin/exoplayer2/e/h/a;->By:J

    iget-object v2, v0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget-wide v2, v2, Lcom/applovin/exoplayer2/e/h/e;->BN:J

    iput-wide v2, v0, Lcom/applovin/exoplayer2/e/h/a;->BA:J

    :goto_66
    iget-wide v2, v0, Lcom/applovin/exoplayer2/e/h/a;->Bz:J

    iget-wide v7, v0, Lcom/applovin/exoplayer2/e/h/a;->By:J

    sub-long/2addr v2, v7

    const-wide/32 v9, 0x186a0

    cmp-long v12, v2, v9

    if-gez v12, :cond_75

    iput-wide v7, v0, Lcom/applovin/exoplayer2/e/h/a;->Bz:J

    return-wide v7

    :cond_75
    int-to-long v2, v11

    if-gtz v6, :cond_7b

    const-wide/16 v9, 0x2

    goto :goto_7d

    :cond_7b
    const-wide/16 v9, 0x1

    :goto_7d
    mul-long v2, v2, v9

    invoke-interface/range {p1 .. p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v9

    sub-long/2addr v9, v2

    iget-wide v1, v0, Lcom/applovin/exoplayer2/e/h/a;->Bz:J

    iget-wide v13, v0, Lcom/applovin/exoplayer2/e/h/a;->By:J

    sub-long v11, v1, v13

    mul-long v4, v4, v11

    iget-wide v11, v0, Lcom/applovin/exoplayer2/e/h/a;->BB:J

    iget-wide v7, v0, Lcom/applovin/exoplayer2/e/h/a;->BA:J

    sub-long/2addr v11, v7

    div-long/2addr v4, v11

    add-long v11, v9, v4

    const-wide/16 v3, 0x1

    sub-long v15, v1, v3

    invoke-static/range {v11 .. v16}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide v1

    return-wide v1
.end method

.method private P(Lcom/applovin/exoplayer2/e/i;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/h/e;->T(Lcom/applovin/exoplayer2/e/i;)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/applovin/exoplayer2/e/h/e;->f(Lcom/applovin/exoplayer2/e/i;Z)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget-wide v1, v0, Lcom/applovin/exoplayer2/e/h/e;->BN:J

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/h/a;->Bx:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_19

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    return-void

    :cond_19
    iget v1, v0, Lcom/applovin/exoplayer2/e/h/e;->BT:I

    iget v0, v0, Lcom/applovin/exoplayer2/e/h/e;->BU:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->By:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/e/h/e;->BN:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->BA:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/e/h/a;)Lcom/applovin/exoplayer2/e/h/h;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bu:Lcom/applovin/exoplayer2/e/h/h;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/e/h/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bs:J

    return-wide v0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/e/h/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bt:J

    return-wide v0
.end method

.method static synthetic d(Lcom/applovin/exoplayer2/e/h/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bv:J

    return-wide v0
.end method


# virtual methods
.method public N(Lcom/applovin/exoplayer2/e/i;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eqz v0, :cond_30

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    const-wide/16 v3, -0x1

    const/4 v5, 0x3

    if-eq v0, v1, :cond_19

    if-eq v0, v5, :cond_24

    if-ne v0, v2, :cond_13

    return-wide v3

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_19
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/h/a;->O(Lcom/applovin/exoplayer2/e/i;)J

    move-result-wide v0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_22

    return-wide v0

    :cond_22
    iput v5, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    :cond_24
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/h/a;->P(Lcom/applovin/exoplayer2/e/i;)V

    iput v2, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->BA:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0

    :cond_30
    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/h/a;->Bw:J

    iput v1, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bt:J

    const-wide/32 v5, 0xff1b

    sub-long/2addr v0, v5

    cmp-long v5, v0, v3

    if-lez v5, :cond_43

    return-wide v0

    :cond_43
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/e/h/a;->Q(Lcom/applovin/exoplayer2/e/i;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bv:J

    iput v2, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bw:J

    return-wide v0
.end method

.method Q(Lcom/applovin/exoplayer2/e/i;)J
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/h/e;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/e/h/e;->T(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/applovin/exoplayer2/e/h/e;->f(Lcom/applovin/exoplayer2/e/i;Z)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget v1, v0, Lcom/applovin/exoplayer2/e/h/e;->BT:I

    iget v0, v0, Lcom/applovin/exoplayer2/e/h/e;->BU:I

    add-int/2addr v1, v0

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/e/h/e;->BN:J

    :goto_21
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget v3, v2, Lcom/applovin/exoplayer2/e/h/e;->bs:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_55

    invoke-virtual {v2, p1}, Lcom/applovin/exoplayer2/e/h/e;->T(Lcom/applovin/exoplayer2/e/i;)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/h/a;->Bt:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_55

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/applovin/exoplayer2/e/h/e;->f(Lcom/applovin/exoplayer2/e/i;Z)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget v3, v2, Lcom/applovin/exoplayer2/e/h/e;->BT:I

    iget v2, v2, Lcom/applovin/exoplayer2/e/h/e;->BU:I

    add-int/2addr v3, v2

    invoke-static {p1, v3}, Lcom/applovin/exoplayer2/e/k;->a(Lcom/applovin/exoplayer2/e/i;I)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_55

    :cond_50
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Br:Lcom/applovin/exoplayer2/e/h/e;

    iget-wide v0, v0, Lcom/applovin/exoplayer2/e/h/e;->BN:J

    goto :goto_21

    :cond_55
    :goto_55
    return-wide v0

    :cond_56
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method public aC(J)V
    .registers 13

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bv:J

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    const-wide/16 v6, 0x0

    move-wide v4, p1

    invoke-static/range {v4 .. v9}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Bx:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Z:I

    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Bs:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->By:J

    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Bt:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Bz:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->BA:J

    iget-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->Bv:J

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/h/a;->BB:J

    return-void
.end method

.method public iW()Lcom/applovin/exoplayer2/e/h/a$a;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/h/a;->Bv:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_f

    new-instance v0, Lcom/applovin/exoplayer2/e/h/a$a;

    invoke-direct {v0, p0, v2}, Lcom/applovin/exoplayer2/e/h/a$a;-><init>(Lcom/applovin/exoplayer2/e/h/a;Lcom/applovin/exoplayer2/e/h/a$1;)V

    move-object v2, v0

    :cond_f
    return-object v2
.end method

.method public synthetic iX()Lcom/applovin/exoplayer2/e/v;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/h/a;->iW()Lcom/applovin/exoplayer2/e/h/a$a;

    move-result-object v0

    return-object v0
.end method
