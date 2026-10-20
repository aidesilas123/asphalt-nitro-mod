###### Class com.google.common.hash.f (com.google.common.hash.f)
.class abstract Lcom/google/common/hash/f;
.super Lcom/google/common/hash/d;
.source "AbstractStreamingHasher.java"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private final b:I

.field private final c:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1, p1}, Lcom/google/common/hash/f;-><init>(II)V

    return-void
.end method

.method protected constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/hash/d;-><init>()V

    rem-int v0, p2, p1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v0, p2, 0x7

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    iput p2, p0, Lcom/google/common/hash/f;->b:I

    iput p1, p0, Lcom/google/common/hash/f;->c:I

    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/o;->b(Ljava/nio/Buffer;)V

    :goto_5
    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/f;->c:I

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/f;->l(Ljava/nio/ByteBuffer;)V

    goto :goto_5

    :cond_15
    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void
.end method

.method private k()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_d

    invoke-direct {p0}, Lcom/google/common/hash/f;->j()V

    :cond_d
    return-void
.end method

.method private n(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/m;
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/f;->k()V

    return-object p0

    :cond_15
    iget v0, p0, Lcom/google/common/hash/f;->b:I

    iget-object v1, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_2d

    iget-object v2, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2d
    invoke-direct {p0}, Lcom/google/common/hash/f;->j()V

    :goto_30
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/f;->c:I

    if-lt v0, v1, :cond_3c

    invoke-virtual {p0, p1}, Lcom/google/common/hash/f;->l(Ljava/nio/ByteBuffer;)V

    goto :goto_30

    :cond_3c
    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public final b(B)Lcom/google/common/hash/m;
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/f;->k()V

    return-object p0
.end method

.method public bridge synthetic b(B)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/f;->b(B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public final d([BII)Lcom/google/common/hash/m;
    .registers 4

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/hash/f;->n(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d([BII)Lcom/google/common/hash/v;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/f;->d([BII)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public final g()Lcom/google/common/hash/HashCode;
    .registers 3

    invoke-direct {p0}, Lcom/google/common/hash/f;->j()V

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/hash/o;->b(Ljava/nio/Buffer;)V

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Lcom/google/common/hash/f;->m(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/hash/o;->c(Ljava/nio/Buffer;I)V

    :cond_1e
    invoke-virtual {p0}, Lcom/google/common/hash/f;->i()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final h(C)Lcom/google/common/hash/m;
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/f;->k()V

    return-object p0
.end method

.method protected abstract i()Lcom/google/common/hash/HashCode;
.end method

.method protected abstract l(Ljava/nio/ByteBuffer;)V
.end method

.method protected abstract m(Ljava/nio/ByteBuffer;)V
.end method

.method public final putInt(I)Lcom/google/common/hash/m;
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/f;->k()V

    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/f;->putInt(I)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public final putLong(J)Lcom/google/common/hash/m;
    .registers 4

    iget-object v0, p0, Lcom/google/common/hash/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/common/hash/f;->k()V

    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/v;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/f;->putLong(J)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method
