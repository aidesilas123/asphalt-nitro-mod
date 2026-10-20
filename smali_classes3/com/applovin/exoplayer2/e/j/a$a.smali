###### Class com.applovin.exoplayer2.e.j.a.C0036a (com.applovin.exoplayer2.e.j.a$a)
.class final Lcom/applovin/exoplayer2/e/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/j/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final Ga:[I

.field private static final Gb:[I


# instance fields
.field private final Gc:Lcom/applovin/exoplayer2/e/j/b;

.field private final Gd:I

.field private final Ge:[B

.field private final Gf:Lcom/applovin/exoplayer2/l/y;

.field private final Gg:I

.field private Gh:I

.field private Gi:J

.field private Gj:I

.field private Gk:J

.field private final dU:Lcom/applovin/exoplayer2/v;

.field private final vG:Lcom/applovin/exoplayer2/e/j;

.field private final vH:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/applovin/exoplayer2/e/j/a$a;->Ga:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/applovin/exoplayer2/e/j/a$a;->Gb:[I

    return-void

    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_38
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/x;Lcom/applovin/exoplayer2/e/j/b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->vG:Lcom/applovin/exoplayer2/e/j;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->vH:Lcom/applovin/exoplayer2/e/x;

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget p1, p3, Lcom/applovin/exoplayer2/e/j/b;->Go:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gg:I

    new-instance v0, Lcom/applovin/exoplayer2/l/y;

    iget-object v1, p3, Lcom/applovin/exoplayer2/e/j/b;->Gr:[B

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/l/y;-><init>([B)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pq()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/y;->pq()I

    move-result v0

    iput v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gd:I

    iget v1, p3, Lcom/applovin/exoplayer2/e/j/b;->Gn:I

    iget v2, p3, Lcom/applovin/exoplayer2/e/j/b;->Gq:I

    mul-int/lit8 v3, v1, 0x4

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x8

    iget v3, p3, Lcom/applovin/exoplayer2/e/j/b;->uG:I

    mul-int v3, v3, v1

    div-int/2addr v2, v3

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_8a

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result p2

    iget v2, p3, Lcom/applovin/exoplayer2/e/j/b;->Gq:I

    mul-int v2, v2, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Ge:[B

    new-instance v2, Lcom/applovin/exoplayer2/l/y;

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/e/j/a$a;->C(II)I

    move-result v3

    mul-int p2, p2, v3

    invoke-direct {v2, p2}, Lcom/applovin/exoplayer2/l/y;-><init>(I)V

    iput-object v2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gf:Lcom/applovin/exoplayer2/l/y;

    iget p2, p3, Lcom/applovin/exoplayer2/e/j/b;->Go:I

    iget v2, p3, Lcom/applovin/exoplayer2/e/j/b;->Gq:I

    mul-int p2, p2, v2

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v0

    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    const-string v2, "audio/raw"

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/v$a;->G(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/v$a;->H(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-static {p1, v1}, Lcom/applovin/exoplayer2/e/j/a$a;->C(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/v$a;->I(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget p2, p3, Lcom/applovin/exoplayer2/e/j/b;->Gn:I

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/v$a;->N(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget p2, p3, Lcom/applovin/exoplayer2/e/j/b;->Go:I

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/v$a;->O(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/v$a;->P(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->dU:Lcom/applovin/exoplayer2/v;

    return-void

    :cond_8a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected frames per block: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; got: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/ai;->c(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/exoplayer2/ai;

    move-result-object p1

    throw p1
.end method

.method private static C(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x2

    mul-int p0, p0, p1

    return p0
.end method

.method private a([BII[B)V
    .registers 14

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget v1, v0, Lcom/applovin/exoplayer2/e/j/b;->Gq:I

    iget v0, v0, Lcom/applovin/exoplayer2/e/j/b;->Gn:I

    mul-int v2, p2, v1

    mul-int/lit8 v3, p3, 0x4

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x58

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget-object v5, Lcom/applovin/exoplayer2/e/j/a$a;->Gb:[I

    aget v5, v5, v2

    iget v6, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gd:I

    mul-int p2, p2, v6

    mul-int p2, p2, v0

    add-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    and-int/lit16 p3, v4, 0xff

    int-to-byte p3, p3

    aput-byte p3, p4, p2

    add-int/lit8 p3, p2, 0x1

    shr-int/lit8 v6, v4, 0x8

    int-to-byte v6, v6

    aput-byte v6, p4, p3

    const/4 p3, 0x0

    const/4 v6, 0x0

    :goto_46
    mul-int/lit8 v7, v1, 0x2

    if-ge v6, v7, :cond_9d

    div-int/lit8 v7, v6, 0x8

    div-int/lit8 v8, v6, 0x2

    rem-int/lit8 v8, v8, 0x4

    mul-int v7, v7, v0

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v7, v3

    add-int/2addr v7, v8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    rem-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_61

    and-int/lit8 v7, v7, 0xf

    goto :goto_63

    :cond_61
    shr-int/lit8 v7, v7, 0x4

    :goto_63
    and-int/lit8 v8, v7, 0x7

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int v8, v8, v5

    shr-int/lit8 v5, v8, 0x3

    and-int/lit8 v8, v7, 0x8

    if-eqz v8, :cond_72

    neg-int v5, v5

    :cond_72
    add-int/2addr v4, v5

    const/16 v5, -0x8000

    const/16 v8, 0x7fff

    invoke-static {v4, v5, v8}, Lcom/applovin/exoplayer2/l/ai;->k(III)I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr p2, v5

    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, p4, p2

    add-int/lit8 v5, p2, 0x1

    shr-int/lit8 v8, v4, 0x8

    int-to-byte v8, v8

    aput-byte v8, p4, v5

    sget-object v5, Lcom/applovin/exoplayer2/e/j/a$a;->Ga:[I

    aget v5, v5, v7

    add-int/2addr v2, v5

    sget-object v5, Lcom/applovin/exoplayer2/e/j/a$a;->Gb:[I

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    invoke-static {v2, p3, v7}, Lcom/applovin/exoplayer2/l/ai;->k(III)I

    move-result v2

    aget v5, v5, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_9d
    return-void
.end method

.method private a([BILcom/applovin/exoplayer2/l/y;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_18

    const/4 v2, 0x0

    :goto_5
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget v3, v3, Lcom/applovin/exoplayer2/e/j/b;->Gn:I

    if-ge v2, v3, :cond_15

    invoke-virtual {p3}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/applovin/exoplayer2/e/j/a$a;->a([BII[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    iget p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gd:I

    mul-int p1, p1, p2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/j/a$a;->cG(I)I

    move-result p1

    invoke-virtual {p3, v0}, Lcom/applovin/exoplayer2/l/y;->fx(I)V

    invoke-virtual {p3, p1}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    return-void
.end method

.method private cE(I)V
    .registers 13

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gi:J

    iget-wide v2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gk:J

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget v4, v4, Lcom/applovin/exoplayer2/e/j/b;->Go:I

    int-to-long v6, v4

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/applovin/exoplayer2/l/ai;->e(JJJ)J

    move-result-wide v2

    add-long v5, v0, v2

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/j/a$a;->cG(I)I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    sub-int v9, v1, v0

    iget-object v4, p0, Lcom/applovin/exoplayer2/e/j/a$a;->vH:Lcom/applovin/exoplayer2/e/x;

    const/4 v7, 0x1

    const/4 v10, 0x0

    move v8, v0

    invoke-interface/range {v4 .. v10}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gk:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gk:J

    iget p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    return-void
.end method

.method private cF(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget v0, v0, Lcom/applovin/exoplayer2/e/j/b;->Gn:I

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p1, v0

    return p1
.end method

.method private cG(I)I
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget v0, v0, Lcom/applovin/exoplayer2/e/j/b;->Gn:I

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/e/j/a$a;->C(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public aI(J)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gi:J

    iput v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gk:J

    return-void
.end method

.method public d(Lcom/applovin/exoplayer2/e/i;J)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gg:I

    iget v1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    invoke-direct {p0, v1}, Lcom/applovin/exoplayer2/e/j/a$a;->cF(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gd:I

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/ai;->N(II)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget v1, v1, Lcom/applovin/exoplayer2/e/j/b;->Gq:I

    mul-int v0, v0, v1

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-nez v4, :cond_1e

    :goto_1c
    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    if-nez v2, :cond_3f

    iget v3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    if-ge v3, v0, :cond_3f

    sub-int v3, v0, v3

    int-to-long v3, v3

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Ge:[B

    iget v5, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    invoke-interface {p1, v3, v5, v4}, Lcom/applovin/exoplayer2/e/i;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_39

    goto :goto_1c

    :cond_39
    iget v4, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    goto :goto_1f

    :cond_3f
    iget p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget p2, p2, Lcom/applovin/exoplayer2/e/j/b;->Gq:I

    div-int/2addr p1, p2

    if-lez p1, :cond_77

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Ge:[B

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gf:Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p0, p2, p1, p3}, Lcom/applovin/exoplayer2/e/j/a$a;->a([BILcom/applovin/exoplayer2/l/y;)V

    iget p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget p3, p3, Lcom/applovin/exoplayer2/e/j/b;->Gq:I

    mul-int p1, p1, p3

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gh:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gf:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result p1

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->vH:Lcom/applovin/exoplayer2/e/x;

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gf:Lcom/applovin/exoplayer2/l/y;

    invoke-interface {p2, p3, p1}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    iget p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/e/j/a$a;->cF(I)I

    move-result p1

    iget p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gg:I

    if-lt p1, p2, :cond_77

    invoke-direct {p0, p2}, Lcom/applovin/exoplayer2/e/j/a$a;->cE(I)V

    :cond_77
    if-eqz v2, :cond_84

    iget p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gj:I

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/j/a$a;->cF(I)I

    move-result p1

    if-lez p1, :cond_84

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/e/j/a$a;->cE(I)V

    :cond_84
    return v2
.end method

.method public h(IJ)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/j/a$a;->vG:Lcom/applovin/exoplayer2/e/j;

    new-instance v8, Lcom/applovin/exoplayer2/e/j/d;

    iget-object v2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gc:Lcom/applovin/exoplayer2/e/j/b;

    iget v3, p0, Lcom/applovin/exoplayer2/e/j/a$a;->Gd:I

    int-to-long v4, p1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/applovin/exoplayer2/e/j/d;-><init>(Lcom/applovin/exoplayer2/e/j/b;IJJ)V

    invoke-interface {v0, v8}, Lcom/applovin/exoplayer2/e/j;->a(Lcom/applovin/exoplayer2/e/v;)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/j/a$a;->vH:Lcom/applovin/exoplayer2/e/x;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/j/a$a;->dU:Lcom/applovin/exoplayer2/v;

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    return-void
.end method
