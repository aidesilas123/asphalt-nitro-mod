###### Class com.google.common.collect.Interners (com.google.common.collect.Interners)
.class public final Lcom/google/common/collect/Interners;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Interners$c;,
        Lcom/google/common/collect/Interners$d;,
        Lcom/google/common/collect/Interners$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asFunction(Lcom/google/common/collect/w1;)Lcom/google/common/base/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/w1<",
            "TE;>;)",
            "Lcom/google/common/base/f<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Interners$c;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/w1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Interners$c;-><init>(Lcom/google/common/collect/w1;)V

    return-object v0
.end method

.method public static newBuilder()Lcom/google/common/collect/Interners$b;
    .registers 2

    new-instance v0, Lcom/google/common/collect/Interners$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/Interners$b;-><init>(Lcom/google/common/collect/Interners$a;)V

    return-object v0
.end method

.method public static newStrongInterner()Lcom/google/common/collect/w1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/w1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Interners;->newBuilder()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->b()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->a()Lcom/google/common/collect/w1;

    move-result-object v0

    return-object v0
.end method

.method public static newWeakInterner()Lcom/google/common/collect/w1;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/w1<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Interners;->newBuilder()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->c()Lcom/google/common/collect/Interners$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Interners$b;->a()Lcom/google/common/collect/w1;

    move-result-object v0

    return-object v0
.end method
