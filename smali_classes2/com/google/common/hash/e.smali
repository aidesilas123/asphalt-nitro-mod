###### Class com.google.common.hash.e (com.google.common.hash.e)
.class abstract Lcom/google/common/hash/e;
.super Lcom/google/common/hash/c;
.source "AbstractNonStreamingHashFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/e$b;,
        Lcom/google/common/hash/e$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    return-void
.end method


# virtual methods
.method public d(I)Lcom/google/common/hash/m;
    .registers 3

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    new-instance v0, Lcom/google/common/hash/e$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/e$a;-><init>(Lcom/google/common/hash/e;I)V

    return-object v0
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/common/hash/e;->d(I)Lcom/google/common/hash/m;

    move-result-object v0

    return-object v0
.end method

.method public g(J)Lcom/google/common/hash/HashCode;
    .registers 5

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/c;->a([B)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method
