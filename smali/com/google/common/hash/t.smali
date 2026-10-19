###### Class com.google.common.hash.t (com.google.common.hash.t)
.class final Lcom/google/common/hash/t;
.super Lcom/google/common/hash/c;
.source "Murmur3_128HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/t$a;
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/hash/l;

.field static final b:Lcom/google/common/hash/l;

.field private static final serialVersionUID:J


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/common/hash/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/hash/t;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/t;->a:Lcom/google/common/hash/l;

    new-instance v0, Lcom/google/common/hash/t;

    sget v1, Lcom/google/common/hash/Hashing;->a:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/t;-><init>(I)V

    sput-object v0, Lcom/google/common/hash/t;->b:Lcom/google/common/hash/l;

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    iput p1, p0, Lcom/google/common/hash/t;->c:I

    return-void
.end method


# virtual methods
.method public c()I
    .registers 2

    const/16 v0, 0x80

    return v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 3

    new-instance v0, Lcom/google/common/hash/t$a;

    iget v1, p0, Lcom/google/common/hash/t;->c:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/t$a;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/common/hash/t;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p1, Lcom/google/common/hash/t;

    iget v0, p0, Lcom/google/common/hash/t;->c:I

    iget p1, p1, Lcom/google/common/hash/t;->c:I

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public hashCode()I
    .registers 3

    const-class v0, Lcom/google/common/hash/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/t;->c:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/common/hash/t;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_128("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.hash.t.a (com.google.common.hash.t$a)
.class final Lcom/google/common/hash/t$a;
.super Lcom/google/common/hash/f;
.source "Murmur3_128HashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private d:J

.field private e:J

.field private f:I


# direct methods
.method constructor <init>(I)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/common/hash/f;-><init>(I)V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/hash/t$a;->f:I

    return-void
.end method

.method private o(JJ)V
    .registers 11

    iget-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    invoke-static {p1, p2}, Lcom/google/common/hash/t$a;->q(J)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->d:J

    const/16 v0, 0x1b

    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->d:J

    iget-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->d:J

    const-wide/16 v2, 0x5

    mul-long p1, p1, v2

    const-wide/32 v4, 0x52dce729

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->d:J

    invoke-static {p3, p4}, Lcom/google/common/hash/t$a;->r(J)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->e:J

    const/16 p3, 0x1f

    invoke-static {p1, p2, p3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->e:J

    iget-wide p3, p0, Lcom/google/common/hash/t$a;->d:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->e:J

    mul-long p1, p1, v2

    const-wide/32 p3, 0x38495ab5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/hash/t$a;->e:J

    return-void
.end method

.method private static p(J)J
    .registers 5

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long p0, p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long p0, p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static q(J)J
    .registers 4

    const-wide v0, -0x783c846eeebdac2bL

    mul-long p0, p0, v0

    const/16 v0, 0x1f

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static r(J)J
    .registers 4

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long p0, p0, v0

    const/16 v0, 0x21

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, -0x783c846eeebdac2bL

    mul-long p0, p0, v0

    return-wide p0
.end method


# virtual methods
.method protected i()Lcom/google/common/hash/HashCode;
    .registers 8

    iget-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    iget v2, p0, Lcom/google/common/hash/t$a;->f:I

    int-to-long v3, v2

    xor-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    iget-wide v3, p0, Lcom/google/common/hash/t$a;->e:J

    int-to-long v5, v2

    xor-long v2, v3, v5

    iput-wide v2, p0, Lcom/google/common/hash/t$a;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/t$a;->e:J

    invoke-static {v0, v1}, Lcom/google/common/hash/t$a;->p(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    iget-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    invoke-static {v0, v1}, Lcom/google/common/hash/t$a;->p(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    iget-wide v2, p0, Lcom/google/common/hash/t$a;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/t$a;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/t$a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/t$a;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->i([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected l(Ljava/nio/ByteBuffer;)V
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/hash/t$a;->o(JJ)V

    iget p1, p0, Lcom/google/common/hash/t$a;->f:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/common/hash/t$a;->f:I

    return-void
.end method

.method protected m(Ljava/nio/ByteBuffer;)V
    .registers 13

    iget v0, p0, Lcom/google/common/hash/t$a;->f:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/t$a;->f:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x28

    const/16 v3, 0x20

    const/16 v4, 0x18

    const/16 v5, 0x10

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    packed-switch v0, :pswitch_data_10a

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Should never get here."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_26
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long v0, v9, v1

    xor-long/2addr v0, v6

    goto :goto_36

    :pswitch_35
    move-wide v0, v6

    :goto_36
    const/16 v9, 0xd

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v2

    xor-long/2addr v0, v9

    goto :goto_45

    :pswitch_44
    move-wide v0, v6

    :goto_45
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v9, v2

    shl-long v2, v9, v3

    xor-long/2addr v0, v2

    goto :goto_55

    :pswitch_54
    move-wide v0, v6

    :goto_55
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_64

    :pswitch_63
    move-wide v0, v6

    :goto_64
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v5

    xor-long/2addr v0, v2

    goto :goto_73

    :pswitch_72
    move-wide v0, v6

    :goto_73
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    xor-long/2addr v0, v2

    goto :goto_82

    :pswitch_81
    move-wide v0, v6

    :goto_82
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    goto :goto_8e

    :pswitch_8d
    move-wide v0, v6

    :goto_8e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    xor-long/2addr v2, v6

    move-wide v6, v0

    goto :goto_f6

    :pswitch_95
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long v0, v9, v1

    xor-long/2addr v0, v6

    goto :goto_a4

    :pswitch_a3
    move-wide v0, v6

    :goto_a4
    const/4 v9, 0x5

    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v2

    xor-long/2addr v0, v9

    goto :goto_b2

    :pswitch_b1
    move-wide v0, v6

    :goto_b2
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v9, v2

    shl-long v2, v9, v3

    xor-long/2addr v0, v2

    goto :goto_c1

    :pswitch_c0
    move-wide v0, v6

    :goto_c1
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_cf

    :pswitch_ce
    move-wide v0, v6

    :goto_cf
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v5

    xor-long/2addr v0, v2

    goto :goto_dd

    :pswitch_dc
    move-wide v0, v6

    :goto_dd
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v8

    xor-long/2addr v0, v2

    goto :goto_eb

    :pswitch_ea
    move-wide v0, v6

    :goto_eb
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p1

    int-to-long v2, p1

    xor-long/2addr v2, v0

    :goto_f6
    iget-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    invoke-static {v2, v3}, Lcom/google/common/hash/t$a;->q(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->d:J

    iget-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    invoke-static {v6, v7}, Lcom/google/common/hash/t$a;->r(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/t$a;->e:J

    return-void

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_ea
        :pswitch_dc
        :pswitch_ce
        :pswitch_c0
        :pswitch_b1
        :pswitch_a3
        :pswitch_95
        :pswitch_8d
        :pswitch_81
        :pswitch_72
        :pswitch_63
        :pswitch_54
        :pswitch_44
        :pswitch_35
        :pswitch_26
    .end packed-switch
.end method
