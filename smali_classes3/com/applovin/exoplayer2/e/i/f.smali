###### Class com.applovin.exoplayer2.e.i.f (com.applovin.exoplayer2.e.i.f)
.class public final Lcom/applovin/exoplayer2/e/i/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# static fields
.field private static final CH:[B


# instance fields
.field private Ai:I

.field private final CI:Z

.field private final CJ:Lcom/applovin/exoplayer2/l/x;

.field private final CK:Lcom/applovin/exoplayer2/l/y;

.field private CL:Lcom/applovin/exoplayer2/e/x;

.field private CM:I

.field private CN:Z

.field private CO:Z

.field private CP:I

.field private CQ:I

.field private CS:I

.field private CT:Lcom/applovin/exoplayer2/e/x;

.field private CU:J

.field private Ct:Ljava/lang/String;

.field private Cu:I

.field private Cw:J

.field private Z:I

.field private final dq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private rJ:J

.field private vJ:Z

.field private wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/exoplayer2/e/i/f;->CH:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/e/i/f;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    sget-object v1, Lcom/applovin/exoplayer2/e/i/f;->CH:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CK:Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jg()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CP:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CQ:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Cw:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/f;->rJ:J

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/f;->CI:Z

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/i/f;->dq:Ljava/lang/String;

    return-void
.end method

.method private M(Lcom/applovin/exoplayer2/l/y;)V
    .registers 9

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v2

    :goto_c
    if-ge v1, v2, :cond_7c

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CM:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_4b

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-direct {p0, v6, v4}, Lcom/applovin/exoplayer2/e/i/f;->a(BB)Z

    move-result v4

    if-eqz v4, :cond_4b

    iget-boolean v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CO:Z

    if-nez v4, :cond_2e

    add-int/lit8 v4, v3, -0x2

    invoke-direct {p0, p1, v4}, Lcom/applovin/exoplayer2/e/i/f;->n(Lcom/applovin/exoplayer2/l/y;I)Z

    move-result v4

    if-eqz v4, :cond_4b

    :cond_2e
    and-int/lit8 v0, v1, 0x8

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CS:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CN:Z

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CO:Z

    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jj()V

    goto :goto_47

    :cond_44
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->ji()V

    :goto_47
    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return-void

    :cond_4b
    iget v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CM:I

    or-int/2addr v1, v4

    const/16 v6, 0x149

    if-eq v1, v6, :cond_76

    const/16 v6, 0x1ff

    if-eq v1, v6, :cond_73

    const/16 v5, 0x344

    if-eq v1, v5, :cond_6e

    const/16 v5, 0x433

    if-eq v1, v5, :cond_67

    const/16 v1, 0x100

    if-eq v4, v1, :cond_7a

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CM:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_7a

    :cond_67
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jh()V

    invoke-virtual {p1, v3}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return-void

    :cond_6e
    const/16 v1, 0x400

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CM:I

    goto :goto_7a

    :cond_73
    iput v5, p0, Lcom/applovin/exoplayer2/e/i/f;->CM:I

    goto :goto_7a

    :cond_76
    const/16 v1, 0x300

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CM:I

    :cond_7a
    :goto_7a
    move v1, v3

    goto :goto_c

    :cond_7c
    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return-void
.end method

.method private N(Lcom/applovin/exoplayer2/l/y;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    iget-object v0, v0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result p1

    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CQ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    if-eq p1, v0, :cond_30

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jf()V

    return-void

    :cond_30
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CO:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CO:Z

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CS:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CP:I

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/f;->CQ:I

    :cond_3d
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->ji()V

    return-void
.end method

.method private O(Lcom/applovin/exoplayer2/l/y;)V
    .registers 9

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/f;->Ai:I

    iget v2, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CT:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v1, p1, v0}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/f;->Ai:I

    if-ne p1, v4, :cond_38

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/i/f;->rJ:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CT:Lcom/applovin/exoplayer2/e/x;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/f;->rJ:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/i/f;->CU:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/f;->rJ:J

    :cond_35
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jg()V

    :cond_38
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/e/x;JII)V
    .registers 7

    const/4 v0, 0x4

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Z:I

    iput p4, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/f;->CT:Lcom/applovin/exoplayer2/e/x;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/i/f;->CU:J

    iput p5, p0, Lcom/applovin/exoplayer2/e/i/f;->Ai:I

    return-void
.end method

.method private a(BB)Z
    .registers 3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/i/f;->cu(I)Z

    move-result p1

    return p1
.end method

.method private a(Lcom/applovin/exoplayer2/l/y;[BI)Z
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    if-ne p1, p3, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private b(Lcom/applovin/exoplayer2/l/y;[BI)Z
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p3, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1, p2, v1, p3}, Lcom/applovin/exoplayer2/l/y;->r([BII)V

    const/4 p1, 0x1

    return p1
.end method

.method public static cu(I)Z
    .registers 2

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private jf()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CO:Z

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jg()V

    return-void
.end method

.method private jg()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Z:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    const/16 v0, 0x100

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CM:I

    return-void
.end method

.method private jh()V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Z:I

    sget-object v0, Lcom/applovin/exoplayer2/e/i/f;->CH:[B

    array-length v0, v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Ai:I

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CK:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    return-void
.end method

.method private ji()V
    .registers 2

    const/4 v0, 0x3

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Z:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    return-void
.end method

.method private jj()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Z:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Cu:I

    return-void
.end method

.method private jk()V
    .registers 10

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CL:Lcom/applovin/exoplayer2/e/x;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CK:Lcom/applovin/exoplayer2/l/y;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CK:Lcom/applovin/exoplayer2/l/y;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CL:Lcom/applovin/exoplayer2/e/x;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CK:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pC()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/applovin/exoplayer2/e/i/f;->a(Lcom/applovin/exoplayer2/e/x;JII)V

    return-void
.end method

.method private jl()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->vJ:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected audio object type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :cond_32
    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget v5, p0, Lcom/applovin/exoplayer2/e/i/f;->CQ:I

    invoke-static {v0, v5, v4}, Lcom/applovin/exoplayer2/b/a;->b(III)[B

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/b/a;->b([B)Lcom/applovin/exoplayer2/b/a$a;

    move-result-object v4

    new-instance v5, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v5}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/f;->Ct:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    const-string v6, "audio/mp4a-latm"

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    iget-object v6, v4, Lcom/applovin/exoplayer2/b/a$a;->dw:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->k(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    iget v6, v4, Lcom/applovin/exoplayer2/b/a$a;->dL:I

    invoke-virtual {v5, v6}, Lcom/applovin/exoplayer2/v$a;->N(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v5

    iget v4, v4, Lcom/applovin/exoplayer2/b/a$a;->js:I

    invoke-virtual {v5, v4}, Lcom/applovin/exoplayer2/v$a;->O(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v4

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->dq:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/v$a;->j(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    iget v6, v0, Lcom/applovin/exoplayer2/v;->dM:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/applovin/exoplayer2/e/i/f;->Cw:J

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {v4, v0}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/f;->vJ:Z

    goto :goto_95

    :cond_8e
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :goto_95
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CN:Z

    if-eqz v1, :cond_ab

    add-int/lit8 v0, v0, -0x2

    :cond_ab
    move v6, v0

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/i/f;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/i/f;->Cw:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/e/i/f;->a(Lcom/applovin/exoplayer2/e/x;JII)V

    return-void
.end method

.method private jm()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CT:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CL:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private n(Lcom/applovin/exoplayer2/l/y;I)Z
    .registers 11

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    iget-object v0, v0, Lcom/applovin/exoplayer2/l/x;->tf:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/f;->b(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v0

    iget v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CP:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_26

    if-eq v0, v4, :cond_26

    return v2

    :cond_26
    iget v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CQ:I

    const/4 v6, 0x2

    if-eq v4, v5, :cond_4b

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    iget-object v4, v4, Lcom/applovin/exoplayer2/l/x;->tf:[B

    invoke-direct {p0, p1, v4, v1}, Lcom/applovin/exoplayer2/e/i/f;->b(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v4

    if-nez v4, :cond_36

    return v1

    :cond_36
    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v6}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    invoke-virtual {v4, v3}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v4

    iget v7, p0, Lcom/applovin/exoplayer2/e/i/f;->CQ:I

    if-eq v4, v7, :cond_46

    return v2

    :cond_46
    add-int/lit8 v4, p2, 0x2

    invoke-virtual {p1, v4}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    :cond_4b
    iget-object v4, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    iget-object v4, v4, Lcom/applovin/exoplayer2/l/x;->tf:[B

    invoke-direct {p0, p1, v4, v3}, Lcom/applovin/exoplayer2/e/i/f;->b(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v3

    if-nez v3, :cond_56

    return v1

    :cond_56
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/l/x;->fx(I)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_69

    return v2

    :cond_69
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result p1

    add-int/2addr p2, v3

    if-lt p2, p1, :cond_75

    return v1

    :cond_75
    aget-byte v3, v4, p2

    if-ne v3, v5, :cond_90

    add-int/2addr p2, v1

    if-ne p2, p1, :cond_7d

    return v1

    :cond_7d
    aget-byte p1, v4, p2

    invoke-direct {p0, v5, p1}, Lcom/applovin/exoplayer2/e/i/f;->a(BB)Z

    move-result p1

    if-eqz p1, :cond_8e

    aget-byte p1, v4, p2

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_8e

    goto :goto_8f

    :cond_8e
    const/4 v1, 0x0

    :goto_8f
    return v1

    :cond_90
    aget-byte v0, v4, p2

    const/16 v3, 0x49

    if-eq v0, v3, :cond_97

    return v2

    :cond_97
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_9c

    return v1

    :cond_9c
    aget-byte v0, v4, v0

    const/16 v3, 0x44

    if-eq v0, v3, :cond_a3

    return v2

    :cond_a3
    add-int/2addr p2, v6

    if-ne p2, p1, :cond_a7

    return v1

    :cond_a7
    aget-byte p1, v4, p2

    const/16 p2, 0x33

    if-ne p1, p2, :cond_ae

    goto :goto_af

    :cond_ae
    const/4 v1, 0x0

    :goto_af
    return v1
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jm()V

    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_52

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Z:I

    if-eqz v0, :cond_4e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_23

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/f;->O(Lcom/applovin/exoplayer2/l/y;)V

    goto :goto_3

    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_23
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CN:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x7

    goto :goto_2a

    :cond_29
    const/4 v0, 0x5

    :goto_2a
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/f;->CJ:Lcom/applovin/exoplayer2/l/x;

    iget-object v1, v1, Lcom/applovin/exoplayer2/l/x;->tf:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/applovin/exoplayer2/e/i/f;->a(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jl()V

    goto :goto_3

    :cond_38
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CK:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/f;->a(Lcom/applovin/exoplayer2/l/y;[BI)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jk()V

    goto :goto_3

    :cond_4a
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/f;->N(Lcom/applovin/exoplayer2/l/y;)V

    goto :goto_3

    :cond_4e
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/i/f;->M(Lcom/applovin/exoplayer2/l/y;)V

    goto :goto_3

    :cond_52
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 5

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Ct:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->wl:Lcom/applovin/exoplayer2/e/x;

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CT:Lcom/applovin/exoplayer2/e/x;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/f;->CI:Z

    if-eqz v0, :cond_43

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/f;->CL:Lcom/applovin/exoplayer2/e/x;

    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    const-string v0, "application/id3"

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    goto :goto_4a

    :cond_43
    new-instance p1, Lcom/applovin/exoplayer2/e/g;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/g;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/f;->CL:Lcom/applovin/exoplayer2/e/x;

    :goto_4a
    return-void
.end method

.method public e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/f;->rJ:J

    :cond_b
    return-void
.end method

.method public jb()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/f;->rJ:J

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/f;->jf()V

    return-void
.end method

.method public jc()V
    .registers 1

    return-void
.end method

.method public je()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/i/f;->Cw:J

    return-wide v0
.end method
