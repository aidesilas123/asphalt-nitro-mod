###### Class com.google.common.hash.a (com.google.common.hash.a)
.class abstract Lcom/google/common/hash/a;
.super Lcom/google/common/hash/d;
.source "AbstractByteHasher.java"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private i(I)Lcom/google/common/hash/m;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/common/hash/a;->l([BII)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_10

    iget-object p1, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/common/hash/o;->a(Ljava/nio/Buffer;)V

    return-object p0

    :catchall_10
    move-exception p1

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/o;->a(Ljava/nio/Buffer;)V

    throw p1
.end method


# virtual methods
.method public a([B)Lcom/google/common/hash/m;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->k([B)V

    return-object p0
.end method

.method public bridge synthetic a([B)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->a([B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public b(B)Lcom/google/common/hash/m;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->j(B)V

    return-object p0
.end method

.method public bridge synthetic b(B)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->b(B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public d([BII)Lcom/google/common/hash/m;
    .registers 6

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/a;->l([BII)V

    return-object p0
.end method

.method public bridge synthetic d([BII)Lcom/google/common/hash/v;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/a;->d([BII)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public h(C)Lcom/google/common/hash/m;
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/common/hash/a;->i(I)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method protected abstract j(B)V
.end method

.method protected k([B)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/a;->l([BII)V

    return-void
.end method

.method protected abstract l([BII)V
.end method

.method public putInt(I)Lcom/google/common/hash/m;
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/common/hash/a;->i(I)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/a;->putInt(I)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lcom/google/common/hash/m;
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/common/hash/a;->i(I)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/v;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/a;->putLong(J)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method
