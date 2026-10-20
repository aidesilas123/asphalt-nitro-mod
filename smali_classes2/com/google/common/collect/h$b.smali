###### Class com.google.common.collect.h.b (com.google.common.collect.h$b)
.class Lcom/google/common/collect/h$b;
.super Lcom/google/common/collect/h$c;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h<",
        "TE;>.c<",
        "Lcom/google/common/collect/c2$a<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/h$b;->e:Lcom/google/common/collect/h;

    invoke-direct {p0, p1}, Lcom/google/common/collect/h$c;-><init>(Lcom/google/common/collect/h;)V

    return-void
.end method


# virtual methods
.method bridge synthetic c(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/h$b;->d(I)Lcom/google/common/collect/c2$a;

    move-result-object p1

    return-object p1
.end method

.method d(I)Lcom/google/common/collect/c2$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h$b;->e:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->g(I)Lcom/google/common/collect/c2$a;

    move-result-object p1

    return-object p1
.end method
