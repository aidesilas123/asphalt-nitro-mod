###### Class com.applovin.exoplayer2.e.a.a (com.applovin.exoplayer2.e.a.a)
.class public final Lcom/applovin/exoplayer2/e/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/h;


# static fields
.field public static final vq:Lcom/applovin/exoplayer2/e/l;

.field private static final vr:[I

.field private static final vs:[I

.field private static final vt:[B

.field private static final vu:[B

.field private static final vv:I


# instance fields
.field private final jF:I

.field private vA:I

.field private vB:Z

.field private vC:J

.field private vD:I

.field private vE:I

.field private vF:J

.field private vG:Lcom/applovin/exoplayer2/e/j;

.field private vH:Lcom/applovin/exoplayer2/e/x;

.field private vI:Lcom/applovin/exoplayer2/e/v;

.field private vJ:Z

.field private final vw:[B

.field private vx:Z

.field private vy:J

.field private vz:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/e/a/b;->a:Lcom/applovin/exoplayer2/e/a/b;

    sput-object v0, Lcom/applovin/exoplayer2/e/a/a;->vq:Lcom/applovin/exoplayer2/e/l;

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/applovin/exoplayer2/e/a/a;->vr:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Lcom/applovin/exoplayer2/e/a/a;->vs:[I

    const-string v1, "#!AMR\n"

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->bk(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/applovin/exoplayer2/e/a/a;->vt:[B

    const-string v1, "#!AMR-WB\n"

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->bk(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/applovin/exoplayer2/e/a/a;->vu:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Lcom/applovin/exoplayer2/e/a/a;->vv:I

    return-void

    nop

    :array_2c
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/a/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x1

    :cond_9
    iput p1, p0, Lcom/applovin/exoplayer2/e/a/a;->jF:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/a/a;->vw:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/applovin/exoplayer2/e/a/a;->vD:I

    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/e/i;[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/applovin/exoplayer2/e/i;->ic()V

    array-length v0, p1

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private b(JZ)Lcom/applovin/exoplayer2/e/v;
    .registers 15

    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vD:I

    const-wide/16 v1, 0x4e20

    invoke-static {v0, v1, v2}, Lcom/applovin/exoplayer2/e/a/a;->d(IJ)I

    move-result v8

    new-instance v0, Lcom/applovin/exoplayer2/e/d;

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/a/a;->vC:J

    iget v9, p0, Lcom/applovin/exoplayer2/e/a/a;->vD:I

    move-object v3, v0

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/applovin/exoplayer2/e/d;-><init>(JJIIZ)V

    return-object v0
.end method

.method private bT(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->bU(I)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal AMR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/a/a;->vx:Z

    if-eqz v1, :cond_17

    const-string v1, "WB"

    goto :goto_19

    :cond_17
    const-string v1, "NB"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " frame type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_2e
    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vx:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/applovin/exoplayer2/e/a/a;->vs:[I

    aget p1, v0, p1

    goto :goto_3b

    :cond_37
    sget-object v0, Lcom/applovin/exoplayer2/e/a/a;->vr:[I

    aget p1, v0, p1

    :goto_3b
    return p1
.end method

.method private bU(I)Z
    .registers 3

    if-ltz p1, :cond_14

    const/16 v0, 0xf

    if-gt p1, v0, :cond_14

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->bV(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->bW(I)Z

    move-result p1

    if-eqz p1, :cond_14

    :cond_12
    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private bV(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vx:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    if-lt p1, v0, :cond_c

    const/16 v0, 0xd

    if-le p1, v0, :cond_e

    :cond_c
    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private bW(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vx:Z

    if-nez v0, :cond_e

    const/16 v0, 0xc

    if-lt p1, v0, :cond_c

    const/16 v0, 0xe

    if-le p1, v0, :cond_e

    :cond_c
    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public static synthetic c()[Lcom/applovin/exoplayer2/e/h;
    .registers 1

    invoke-static {}, Lcom/applovin/exoplayer2/e/a/a;->ih()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method

.method private static d(IJ)I
    .registers 7

    mul-int/lit8 p0, p0, 0x8

    int-to-long v0, p0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private d(JI)V
    .registers 9

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vB:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->jF:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_39

    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_39

    iget v1, p0, Lcom/applovin/exoplayer2/e/a/a;->vD:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1c

    iget v4, p0, Lcom/applovin/exoplayer2/e/a/a;->vz:I

    if-eq v1, v4, :cond_1c

    goto :goto_39

    :cond_1c
    iget v1, p0, Lcom/applovin/exoplayer2/e/a/a;->vE:I

    const/16 v4, 0x14

    if-ge v1, v4, :cond_24

    if-ne p3, v3, :cond_4c

    :cond_24
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_2a

    const/4 p3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p3, 0x0

    :goto_2b
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/a/a;->b(JZ)Lcom/applovin/exoplayer2/e/v;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/a/a;->vI:Lcom/applovin/exoplayer2/e/v;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/a/a;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/a/a;->vB:Z

    goto :goto_4c

    :cond_39
    :goto_39
    new-instance p1, Lcom/applovin/exoplayer2/e/v$b;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Lcom/applovin/exoplayer2/e/v$b;-><init>(J)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/a/a;->vI:Lcom/applovin/exoplayer2/e/v;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/a/a;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-interface {p2, p1}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/a/a;->vB:Z

    :cond_4c
    :goto_4c
    return-void
.end method

.method private f(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/e/a/a;->vt:[B

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/e/a/a;->a(Lcom/applovin/exoplayer2/e/i;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/a/a;->vx:Z

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    return v3

    :cond_11
    sget-object v0, Lcom/applovin/exoplayer2/e/a/a;->vu:[B

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/e/a/a;->a(Lcom/applovin/exoplayer2/e/i;[B)Z

    move-result v1

    if-eqz v1, :cond_20

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/e/a/a;->vx:Z

    array-length v0, v0

    invoke-interface {p1, v0}, Lcom/applovin/exoplayer2/e/i;->bH(I)V

    return v3

    :cond_20
    return v2
.end method

.method private g(Lcom/applovin/exoplayer2/e/i;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vA:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_29

    :try_start_6
    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->h(Lcom/applovin/exoplayer2/e/i;)I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vz:I
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_c} :catch_28

    iput v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vA:I

    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vD:I

    if-ne v0, v2, :cond_1c

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/a/a;->vC:J

    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vz:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vD:I

    :cond_1c
    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vD:I

    iget v3, p0, Lcom/applovin/exoplayer2/e/a/a;->vz:I

    if-ne v0, v3, :cond_29

    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vE:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vE:I

    goto :goto_29

    :catch_28
    return v2

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vH:Lcom/applovin/exoplayer2/e/x;

    iget v3, p0, Lcom/applovin/exoplayer2/e/a/a;->vA:I

    invoke-interface {v0, p1, v3, v1}, Lcom/applovin/exoplayer2/e/x;->a(Lcom/applovin/exoplayer2/k/g;IZ)I

    move-result p1

    if-ne p1, v2, :cond_34

    return v2

    :cond_34
    iget v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vA:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vA:I

    const/4 p1, 0x0

    if-lez v0, :cond_3d

    return p1

    :cond_3d
    iget-object v1, p0, Lcom/applovin/exoplayer2/e/a/a;->vH:Lcom/applovin/exoplayer2/e/x;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/a/a;->vF:J

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/a/a;->vy:J

    add-long/2addr v2, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/applovin/exoplayer2/e/a/a;->vz:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vy:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vy:J

    return p1
.end method

.method private h(Lcom/applovin/exoplayer2/e/i;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ic()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vw:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i;->c([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/a/a;->vw:[B

    aget-byte p1, p1, v1

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_1b

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->bT(I)I

    move-result p1

    return p1

    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid padding bits for frame header "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private static synthetic ih()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/applovin/exoplayer2/e/h;

    new-instance v1, Lcom/applovin/exoplayer2/e/a/a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/e/a/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private in()V
    .registers 6

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vJ:Z

    if-nez v0, :cond_37

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vJ:Z

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/a/a;->vx:Z

    if-eqz v1, :cond_e

    const-string v2, "audio/amr-wb"

    goto :goto_10

    :cond_e
    const-string v2, "audio/3gpp"

    :goto_10
    if-eqz v1, :cond_15

    const/16 v1, 0x3e80

    goto :goto_17

    :cond_15
    const/16 v1, 0x1f40

    :goto_17
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/a/a;->vH:Lcom/applovin/exoplayer2/e/x;

    new-instance v4, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v4}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {v4, v2}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    sget v4, Lcom/applovin/exoplayer2/e/a/a;->vv:I

    invoke-virtual {v2, v4}, Lcom/applovin/exoplayer2/v$a;->I(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/v$a;->N(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/v$a;->O(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    :cond_37
    return-void
.end method

.method private io()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vH:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vG:Lcom/applovin/exoplayer2/e/j;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/e/j;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/a/a;->vG:Lcom/applovin/exoplayer2/e/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vH:Lcom/applovin/exoplayer2/e/x;

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/j;->ig()V

    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/i;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->f(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/applovin/exoplayer2/e/i;Lcom/applovin/exoplayer2/e/u;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a/a;->io()V

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->ie()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1c

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->f(Lcom/applovin/exoplayer2/e/i;)Z

    move-result p2

    if-eqz p2, :cond_14

    goto :goto_1c

    :cond_14
    const/4 p1, 0x0

    const-string p2, "Could not find AMR header."

    invoke-static {p2, p1}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1

    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/a/a;->in()V

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/a/a;->g(Lcom/applovin/exoplayer2/e/i;)I

    move-result p2

    invoke-interface {p1}, Lcom/applovin/exoplayer2/e/i;->if()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/applovin/exoplayer2/e/a/a;->d(JI)V

    return p2
.end method

.method public o(JJ)V
    .registers 7

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/a/a;->vy:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vz:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vA:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/a/a;->vI:Lcom/applovin/exoplayer2/e/v;

    instance-of v1, v0, Lcom/applovin/exoplayer2/e/d;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/applovin/exoplayer2/e/d;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/d;->al(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/a/a;->vF:J

    goto :goto_1e

    :cond_1c
    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/a/a;->vF:J

    :goto_1e
    return-void
.end method

.method public release()V
    .registers 1

    return-void
.end method

###### Class com.applovin.exoplayer2.e.a.b (com.applovin.exoplayer2.e.a.b)
.class public final synthetic Lcom/applovin/exoplayer2/e/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/e/l;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/e/a/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/e/a/b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/e/a/b;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/e/a/b;->a:Lcom/applovin/exoplayer2/e/a/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/applovin/exoplayer2/e/c0;->a(Lcom/applovin/exoplayer2/e/l;Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;

    move-result-object p1

    return-object p1
.end method

.method public final createExtractors()[Lcom/applovin/exoplayer2/e/h;
    .registers 2

    invoke-static {}, Lcom/applovin/exoplayer2/e/a/a;->c()[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0

    return-object v0
.end method
