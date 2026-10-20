###### Class com.google.common.hash.u (com.google.common.hash.u)
.class final Lcom/google/common/hash/u;
.super Lcom/google/common/hash/c;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/u$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/l;

.field static final b:Lcom/google/common/hash/l;

.field static final c:Lcom/google/common/hash/l;

.field private static final serialVersionUID:J


# instance fields
.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/hash/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/common/hash/u;-><init>(IZ)V

    sput-object v0, Lcom/google/common/hash/u;->a:Lcom/google/common/hash/l;

    new-instance v0, Lcom/google/common/hash/u;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/u;-><init>(IZ)V

    sput-object v0, Lcom/google/common/hash/u;->b:Lcom/google/common/hash/l;

    new-instance v0, Lcom/google/common/hash/u;

    sget v1, Lcom/google/common/hash/Hashing;->a:I

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/u;-><init>(IZ)V

    sput-object v0, Lcom/google/common/hash/u;->c:Lcom/google/common/hash/l;

    return-void
.end method

.method constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    iput p1, p0, Lcom/google/common/hash/u;->d:I

    iput-boolean p2, p0, Lcom/google/common/hash/u;->e:Z

    return-void
.end method

.method static synthetic b(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/common/hash/u;->w(I)I

    move-result p0

    return p0
.end method

.method static synthetic i(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/hash/u;->v(II)I

    move-result p0

    return p0
.end method

.method static synthetic j([BI)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/hash/u;->u([BI)I

    move-result p0

    return p0
.end method

.method static synthetic k(C)J
    .registers 3

    invoke-static {p0}, Lcom/google/common/hash/u;->r(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic m(C)J
    .registers 3

    invoke-static {p0}, Lcom/google/common/hash/u;->q(C)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic n(I)J
    .registers 3

    invoke-static {p0}, Lcom/google/common/hash/u;->s(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic p(II)Lcom/google/common/hash/HashCode;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/common/hash/u;->t(II)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method private static q(C)J
    .registers 5

    ushr-int/lit8 v0, p0, 0xc

    int-to-long v0, v0

    const-wide/16 v2, 0xe0

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x10

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static r(C)J
    .registers 5

    ushr-int/lit8 v0, p0, 0x6

    int-to-long v0, v0

    const-wide/16 v2, 0xc0

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    or-int/lit16 p0, p0, 0x80

    shl-int/lit8 p0, p0, 0x8

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static s(I)J
    .registers 8

    ushr-int/lit8 v0, p0, 0x12

    int-to-long v0, v0

    const-wide/16 v2, 0xf0

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    const/16 v6, 0x8

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    int-to-long v2, v2

    or-long/2addr v2, v4

    const/16 v6, 0x10

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    and-int/lit8 p0, p0, 0x3f

    int-to-long v2, p0

    or-long/2addr v2, v4

    const/16 p0, 0x18

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static t(II)Lcom/google/common/hash/HashCode;
    .registers 2

    xor-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    const p1, -0x7a143595

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0xd

    xor-int/2addr p0, p1

    const p1, -0x3d4d51cb

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method private static u([BI)I
    .registers 5

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte p0, p0, p1

    invoke-static {v0, v1, v2, p0}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result p0

    return p0
.end method

.method private static v(II)I
    .registers 2

    xor-int/2addr p0, p1

    const/16 p1, 0xd

    invoke-static {p0, p1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const p1, -0x19ab949c

    add-int/2addr p0, p1

    return p0
.end method

.method private static w(I)I
    .registers 2

    const v0, -0x3361d2af    # -8.293031E7f

    mul-int p0, p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int p0, p0, v0

    return p0
.end method


# virtual methods
.method public c()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 3

    new-instance v0, Lcom/google/common/hash/u$a;

    iget v1, p0, Lcom/google/common/hash/u;->d:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/u$a;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/common/hash/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/common/hash/u;

    iget v0, p0, Lcom/google/common/hash/u;->d:I

    iget v2, p1, Lcom/google/common/hash/u;->d:I

    if-ne v0, v2, :cond_14

    iget-boolean v0, p0, Lcom/google/common/hash/u;->e:Z

    iget-boolean p1, p1, Lcom/google/common/hash/u;->e:Z

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public g(J)Lcom/google/common/hash/HashCode;
    .registers 5

    long-to-int v0, p1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p2, p1

    invoke-static {v0}, Lcom/google/common/hash/u;->w(I)I

    move-result p1

    iget v0, p0, Lcom/google/common/hash/u;->d:I

    invoke-static {v0, p1}, Lcom/google/common/hash/u;->v(II)I

    move-result p1

    invoke-static {p2}, Lcom/google/common/hash/u;->w(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/common/hash/u;->v(II)I

    move-result p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/google/common/hash/u;->t(II)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public h([BII)Lcom/google/common/hash/HashCode;
    .registers 9

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    iget v0, p0, Lcom/google/common/hash/u;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    add-int/lit8 v3, v2, 0x4

    if-gt v3, p3, :cond_1d

    add-int/2addr v2, p2

    invoke-static {p1, v2}, Lcom/google/common/hash/u;->u([BI)I

    move-result v2

    invoke-static {v2}, Lcom/google/common/hash/u;->w(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/common/hash/u;->v(II)I

    move-result v0

    move v2, v3

    goto :goto_a

    :cond_1d
    move v3, v2

    const/4 v2, 0x0

    :goto_1f
    if-ge v3, p3, :cond_30

    add-int v4, p2, v3

    aget-byte v4, p1, v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    shl-int/2addr v4, v2

    xor-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x8

    goto :goto_1f

    :cond_30
    invoke-static {v1}, Lcom/google/common/hash/u;->w(I)I

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1, p3}, Lcom/google/common/hash/u;->t(II)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/hash/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/u;->d:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/common/hash/u;->d:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_32("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
