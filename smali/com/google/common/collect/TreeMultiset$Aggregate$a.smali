###### Class com.google.common.collect.TreeMultiset.Aggregate.a (com.google.common.collect.TreeMultiset$Aggregate$a)
.class final enum Lcom/google/common/collect/TreeMultiset$Aggregate$a;
.super Lcom/google/common/collect/TreeMultiset$Aggregate;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset$Aggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$a;)V

    return-void
.end method


# virtual methods
.method f(Lcom/google/common/collect/TreeMultiset$e;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$e;->d(Lcom/google/common/collect/TreeMultiset$e;)I

    move-result p1

    return p1
.end method

.method g(Lcom/google/common/collect/TreeMultiset$e;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$e<",
            "*>;)J"
        }
    .end annotation

    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset$e;->f(Lcom/google/common/collect/TreeMultiset$e;)J

    move-result-wide v0

    :goto_9
    return-wide v0
.end method
