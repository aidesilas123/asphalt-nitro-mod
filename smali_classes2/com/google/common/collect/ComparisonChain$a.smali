###### Class com.google.common.collect.ComparisonChain.a (com.google.common.collect.ComparisonChain$a)
.class Lcom/google/common/collect/ComparisonChain$a;
.super Lcom/google/common/collect/ComparisonChain;
.source "ComparisonChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ComparisonChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ComparisonChain;-><init>(Lcom/google/common/collect/ComparisonChain$a;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcom/google/common/collect/ComparisonChain;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ComparisonChain$a;->f(I)Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    return-object p1
.end method

.method public e()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method f(I)Lcom/google/common/collect/ComparisonChain;
    .registers 2

    if-gez p1, :cond_7

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->a()Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    goto :goto_12

    :cond_7
    if-lez p1, :cond_e

    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->b()Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->c()Lcom/google/common/collect/ComparisonChain;

    move-result-object p1

    :goto_12
    return-object p1
.end method
