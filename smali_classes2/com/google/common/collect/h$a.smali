###### Class com.google.common.collect.h.a (com.google.common.collect.h$a)
.class Lcom/google/common/collect/h$a;
.super Lcom/google/common/collect/h$c;
.source "AbstractMapBasedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/h;->h()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/h<",
        "TE;>.c<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/collect/h$a;->e:Lcom/google/common/collect/h;

    invoke-direct {p0, p1}, Lcom/google/common/collect/h$c;-><init>(Lcom/google/common/collect/h;)V

    return-void
.end method


# virtual methods
.method c(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h$a;->e:Lcom/google/common/collect/h;

    iget-object v0, v0, Lcom/google/common/collect/h;->c:Lcom/google/common/collect/f2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/f2;->i(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
