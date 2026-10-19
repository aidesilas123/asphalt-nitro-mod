###### Class com.google.common.collect.Iterators.e (com.google.common.collect.Iterators$e)
.class Lcom/google/common/collect/Iterators$e;
.super Lcom/google/common/collect/o3;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->e([Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/o3<",
        "TI;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:[Ljava/util/Iterator;


# direct methods
.method constructor <init>([Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/Iterators$e;->b:[Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/o3;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/Iterators$e;->a:I

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/common/collect/Iterators$e;->b:[Ljava/util/Iterator;

    iget v1, p0, Lcom/google/common/collect/Iterators$e;->a:I

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, p0, Lcom/google/common/collect/Iterators$e;->b:[Ljava/util/Iterator;

    iget v2, p0, Lcom/google/common/collect/Iterators$e;->a:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/Iterators$e;->a:I

    return-object v0

    :cond_1d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/common/collect/Iterators$e;->a:I

    iget-object v1, p0, Lcom/google/common/collect/Iterators$e;->b:[Ljava/util/Iterator;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$e;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
