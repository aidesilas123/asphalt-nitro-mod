###### Class com.google.common.hash.b.a (com.google.common.hash.b$a)
.class Lcom/google/common/hash/b$a;
.super Ljava/lang/Object;
.source "AbstractCompositeHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/b;->b([Lcom/google/common/hash/m;)Lcom/google/common/hash/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/google/common/hash/m;

.field final synthetic b:Lcom/google/common/hash/b;


# direct methods
.method constructor <init>(Lcom/google/common/hash/b;[Lcom/google/common/hash/m;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/hash/b$a;->b:Lcom/google/common/hash/b;

    iput-object p2, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/google/common/hash/m;
    .registers 6

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/common/hash/m;->a([B)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public bridge synthetic a([B)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->a([B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public b(B)Lcom/google/common/hash/m;
    .registers 6

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/common/hash/m;->b(B)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public bridge synthetic b(B)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->b(B)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/google/common/hash/m;
    .registers 6

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/common/hash/m;->c(Ljava/lang/CharSequence;)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/CharSequence;)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->c(Ljava/lang/CharSequence;)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public d([BII)Lcom/google/common/hash/m;
    .registers 8

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2, p3}, Lcom/google/common/hash/m;->d([BII)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public bridge synthetic d([BII)Lcom/google/common/hash/v;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/b$a;->d([BII)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/m;
    .registers 7

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/m;->e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public bridge synthetic e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/v;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/b$a;->e(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;Lcom/google/common/hash/k;)Lcom/google/common/hash/m;
    .registers 7
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

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/m;->f(Ljava/lang/Object;Lcom/google/common/hash/k;)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public g()Lcom/google/common/hash/HashCode;
    .registers 3

    iget-object v0, p0, Lcom/google/common/hash/b$a;->b:Lcom/google/common/hash/b;

    iget-object v1, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    invoke-virtual {v0, v1}, Lcom/google/common/hash/b;->i([Lcom/google/common/hash/m;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/m;
    .registers 6

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/google/common/hash/m;->putInt(I)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/v;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/hash/b$a;->putInt(I)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public putLong(J)Lcom/google/common/hash/m;
    .registers 7

    iget-object v0, p0, Lcom/google/common/hash/b$a;->a:[Lcom/google/common/hash/m;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/m;->putLong(J)Lcom/google/common/hash/m;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/v;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/b$a;->putLong(J)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method
