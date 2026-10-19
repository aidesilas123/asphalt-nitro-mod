###### Class com.google.common.collect.LinkedHashMultimap.c.a (com.google.common.collect.LinkedHashMultimap$c$a)
.class Lcom/google/common/collect/LinkedHashMultimap$c$a;
.super Ljava/lang/Object;
.source "LinkedHashMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedHashMultimap$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/google/common/collect/LinkedHashMultimap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$c;->a(Lcom/google/common/collect/LinkedHashMultimap$c;)Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    invoke-static {p1}, Lcom/google/common/collect/LinkedHashMultimap$c;->c(Lcom/google/common/collect/LinkedHashMultimap$c;)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->c:I

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$c;->c(Lcom/google/common/collect/LinkedHashMultimap$c;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->c:I

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

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$c$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/o1;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$b;->f()Lcom/google/common/collect/LinkedHashMultimap$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->a:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v1

    :cond_17
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b()V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-virtual {v1}, Lcom/google/common/collect/o1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap$c;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->d:Lcom/google/common/collect/LinkedHashMultimap$c;

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultimap$c;->c(Lcom/google/common/collect/LinkedHashMultimap$c;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$c$a;->b:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method
