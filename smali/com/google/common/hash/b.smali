###### Class com.google.common.hash.b (com.google.common.hash.b)
.class abstract Lcom/google/common/hash/b;
.super Lcom/google/common/hash/c;
.source "AbstractCompositeHashFunction.java"


# instance fields
.field final a:[Lcom/google/common/hash/l;


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/l;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/hash/c;-><init>()V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iput-object p1, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    return-void
.end method

.method private b([Lcom/google/common/hash/m;)Lcom/google/common/hash/m;
    .registers 3

    new-instance v0, Lcom/google/common/hash/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/b$a;-><init>(Lcom/google/common/hash/b;[Lcom/google/common/hash/m;)V

    return-object v0
.end method


# virtual methods
.method public d(I)Lcom/google/common/hash/m;
    .registers 6

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    array-length v1, v1

    new-array v2, v1, [Lcom/google/common/hash/m;

    :goto_e
    if-ge v0, v1, :cond_1d

    iget-object v3, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/google/common/hash/l;->d(I)Lcom/google/common/hash/m;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1d
    invoke-direct {p0, v2}, Lcom/google/common/hash/b;->b([Lcom/google/common/hash/m;)Lcom/google/common/hash/m;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/google/common/hash/m;
    .registers 5

    iget-object v0, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/common/hash/m;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_15

    iget-object v3, p0, Lcom/google/common/hash/b;->a:[Lcom/google/common/hash/l;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/common/hash/l;->e()Lcom/google/common/hash/m;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    invoke-direct {p0, v1}, Lcom/google/common/hash/b;->b([Lcom/google/common/hash/m;)Lcom/google/common/hash/m;

    move-result-object v0

    return-object v0
.end method

.method abstract i([Lcom/google/common/hash/m;)Lcom/google/common/hash/HashCode;
.end method

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
