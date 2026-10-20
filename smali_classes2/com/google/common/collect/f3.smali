###### Class com.google.common.collect.f3 (com.google.common.collect.f3)
.class final Lcom/google/common/collect/f3;
.super Ljava/lang/Object;
.source "SortedMultisets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/f3$b;,
        Lcom/google/common/collect/f3$a;
    }
.end annotation


# direct methods
.method static synthetic a(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/f3;->d(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/common/collect/f3;->c(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object p0

    :goto_8
    return-object p0
.end method

.method private static d(Lcom/google/common/collect/c2$a;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/c2$a<",
            "TE;>;)TE;"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
