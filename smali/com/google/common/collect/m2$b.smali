###### Class com.google.common.collect.m2.b (com.google.common.collect.m2$b)
.class Lcom/google/common/collect/m2$b;
.super Lcom/google/common/collect/n;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/m2;->D()Lcom/google/common/collect/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/m2;


# direct methods
.method constructor <init>(Lcom/google/common/collect/m2;Ljava/lang/Comparable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/m2$b;->c:Lcom/google/common/collect/m2;

    invoke-direct {p0, p2}, Lcom/google/common/collect/n;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/common/collect/m2;->i0()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/m2$b;->b:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/m2$b;->b(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/m2$b;->b:Ljava/lang/Comparable;

    invoke-static {p1, v0}, Lcom/google/common/collect/m2;->g0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    goto :goto_12

    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/m2$b;->c:Lcom/google/common/collect/m2;

    iget-object v0, v0, Lcom/google/common/collect/ContiguousSet;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/DiscreteDomain;->g(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    :goto_12
    return-object p1
.end method
