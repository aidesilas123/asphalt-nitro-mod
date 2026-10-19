###### Class com.google.common.hash.HashCode.b (com.google.common.hash.HashCode$b)
.class final Lcom/google/common/hash/HashCode$b;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final b:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    iput p1, p0, Lcom/google/common/hash/HashCode$b;->b:I

    return-void
.end method


# virtual methods
.method public c()[B
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lcom/google/common/hash/HashCode$b;->b:I

    int-to-byte v2, v1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v0, v3

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/google/common/hash/HashCode$b;->b:I

    return v0
.end method

.method public e()J
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()I
    .registers 2

    const/16 v0, 0x20

    return v0
.end method

.method h(Lcom/google/common/hash/HashCode;)Z
    .registers 3

    iget v0, p0, Lcom/google/common/hash/HashCode$b;->b:I

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->d()I

    move-result p1

    if-ne v0, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public k()J
    .registers 3

    iget v0, p0, Lcom/google/common/hash/HashCode$b;->b:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method n([BII)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_10

    add-int v1, p2, v0

    iget v2, p0, Lcom/google/common/hash/HashCode$b;->b:I

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method
