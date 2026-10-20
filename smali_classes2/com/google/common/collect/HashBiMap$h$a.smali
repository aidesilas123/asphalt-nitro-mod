###### Class com.google.common.collect.HashBiMap.h.a (com.google.common.collect.HashBiMap$h$a)
.class Lcom/google/common/collect/HashBiMap$h$a;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field final synthetic e:Lcom/google/common/collect/HashBiMap$h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v0, p1, Lcom/google/common/collect/HashBiMap;->d:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->c:I

    iget p1, p1, Lcom/google/common/collect/HashBiMap;->c:I

    iput p1, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v0, v0, Lcom/google/common/collect/HashBiMap;->d:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->c:I

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$h$a;->b()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBiMap$h;->c(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    iput v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->b(Lcom/google/common/collect/HashBiMap;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->d:I

    return-object v0

    :cond_27
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 5

    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$h$a;->b()V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/common/collect/z;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v2, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/HashBiMap;->B(I)V

    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$h$a;->e:Lcom/google/common/collect/HashBiMap$h;

    iget-object v2, v2, Lcom/google/common/collect/HashBiMap$h;->a:Lcom/google/common/collect/HashBiMap;

    iget v3, v2, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v0, v3, :cond_25

    iget v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->a:I

    :cond_25
    iput v1, p0, Lcom/google/common/collect/HashBiMap$h$a;->b:I

    iget v0, v2, Lcom/google/common/collect/HashBiMap;->d:I

    iput v0, p0, Lcom/google/common/collect/HashBiMap$h$a;->c:I

    return-void
.end method
