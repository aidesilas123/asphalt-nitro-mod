###### Class com.google.common.hash.c (com.google.common.hash.c)
.class abstract Lcom/google/common/hash/c;
.super Ljava/lang/Object;
.source "AbstractHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/l;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/google/common/hash/HashCode;
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/c;->h([BII)Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lcom/google/common/hash/m;
    .registers 4

    if-ltz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "expectedInputSize must be >= 0 but was %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    invoke-interface {p0}, Lcom/google/common/hash/l;->e()Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;Lcom/google/common/hash/k;)Lcom/google/common/hash/HashCode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/k<",
            "-TT;>;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/hash/l;->e()Lcom/google/common/hash/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/m;->f(Ljava/lang/Object;Lcom/google/common/hash/k;)Lcom/google/common/hash/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/m;->g()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public g(J)Lcom/google/common/hash/HashCode;
    .registers 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/common/hash/c;->d(I)Lcom/google/common/hash/m;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/m;->putLong(J)Lcom/google/common/hash/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/m;->g()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method

.method public h([BII)Lcom/google/common/hash/HashCode;
    .registers 6

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    invoke-virtual {p0, p3}, Lcom/google/common/hash/c;->d(I)Lcom/google/common/hash/m;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/hash/m;->d([BII)Lcom/google/common/hash/m;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/hash/m;->g()Lcom/google/common/hash/HashCode;

    move-result-object p1

    return-object p1
.end method
