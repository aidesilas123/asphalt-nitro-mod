###### Class com.google.common.collect.Lists.i.a (com.google.common.collect.Lists$i$a)
.class Lcom/google/common/collect/Lists$i$a;
.super Lcom/google/common/collect/n3;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$i;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n3<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/Lists$i;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$i;Ljava/util/ListIterator;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/Lists$i$a;->b:Lcom/google/common/collect/Lists$i;

    invoke-direct {p0, p2}, Lcom/google/common/collect/n3;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Lists$i$a;->b:Lcom/google/common/collect/Lists$i;

    iget-object v0, v0, Lcom/google/common/collect/Lists$i;->b:Lcom/google/common/base/f;

    invoke-interface {v0, p1}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
