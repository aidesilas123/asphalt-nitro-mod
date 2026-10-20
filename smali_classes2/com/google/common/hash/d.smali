###### Class com.google.common.hash.d (com.google.common.hash.d)
.class abstract Lcom/google/common/hash/d;
.super Ljava/lang/Object;
.source "AbstractHasher.java"

# interfaces
.implements Lcom/google/common/hash/m;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/google/common/hash/m;
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/d;->d([BII)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a([B)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a([B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/google/common/hash/m;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/hash/d;->h(C)Lcom/google/common/hash/m;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/CharSequence;)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->c(Ljava/lang/CharSequence;)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public abstract d([BII)Lcom/google/common/hash/m;
.end method

.method public e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/m;
    .registers 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->a([B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/v;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/d;->e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;Lcom/google/common/hash/k;)Lcom/google/common/hash/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/k<",
            "-TT;>;)",
            "Lcom/google/common/hash/m;"
        }
    .end annotation

    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/k;->o(Ljava/lang/Object;Lcom/google/common/hash/v;)V

    return-object p0
.end method

.method public h(C)Lcom/google/common/hash/m;
    .registers 3

    int-to-byte v0, p1

    invoke-interface {p0, v0}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    return-object p0
.end method

.method public putInt(I)Lcom/google/common/hash/m;
    .registers 3

    int-to-byte v0, p1

    invoke-interface {p0, v0}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    invoke-interface {p0, v0}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    invoke-interface {p0, p1}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/d;->putInt(I)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lcom/google/common/hash/m;
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x40

    if-ge v0, v1, :cond_f

    ushr-long v1, p1, v0

    long-to-int v2, v1

    int-to-byte v1, v2

    invoke-interface {p0, v1}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_f
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/v;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/d;->putLong(J)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method
