###### Class com.tapjoy.internal.j6 (com.tapjoy.internal.j6)
.class public final Lcom/tapjoy/internal/j6;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/util/List;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/j6;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/j6;->a:Ljava/util/List;

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/j6;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/j6;->a:Ljava/util/List;

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/j6;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/tapjoy/internal/j6;->a:Ljava/util/List;

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tapjoy/internal/j6;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/j6;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
