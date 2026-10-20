###### Class com.google.gson.internal.d.AbstractC0275d (com.google.gson.internal.d$d)
.class abstract Lcom/google/gson/internal/d$d;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/gson/internal/d$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/google/gson/internal/d;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    iget-object v0, v0, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    iget p1, p1, Lcom/google/gson/internal/d;->f:I

    iput p1, p0, Lcom/google/gson/internal/d$d;->c:I

    return-void
.end method


# virtual methods
.method final b()Lcom/google/gson/internal/d$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    iget-object v1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    iget-object v2, v1, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    if-eq v0, v2, :cond_1b

    iget v1, v1, Lcom/google/gson/internal/d;->f:I

    iget v2, p0, Lcom/google/gson/internal/d$d;->c:I

    if-ne v1, v2, :cond_15

    iget-object v1, v0, Lcom/google/gson/internal/d$e;->d:Lcom/google/gson/internal/d$e;

    iput-object v1, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    return-object v0

    :cond_15
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->a:Lcom/google/gson/internal/d$e;

    iget-object v1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    iget-object v1, v1, Lcom/google/gson/internal/d;->g:Lcom/google/gson/internal/d$e;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/internal/d;->f(Lcom/google/gson/internal/d$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/d$d;->b:Lcom/google/gson/internal/d$e;

    iget-object v0, p0, Lcom/google/gson/internal/d$d;->d:Lcom/google/gson/internal/d;

    iget v0, v0, Lcom/google/gson/internal/d;->f:I

    iput v0, p0, Lcom/google/gson/internal/d$d;->c:I

    return-void

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
