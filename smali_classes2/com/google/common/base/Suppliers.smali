###### Class com.google.common.base.Suppliers (com.google.common.base.Suppliers)
.class public final Lcom/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Suppliers$SupplierFunctionImpl;,
        Lcom/google/common/base/Suppliers$f;,
        Lcom/google/common/base/Suppliers$e;,
        Lcom/google/common/base/Suppliers$a;,
        Lcom/google/common/base/Suppliers$c;,
        Lcom/google/common/base/Suppliers$b;,
        Lcom/google/common/base/Suppliers$d;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lcom/google/common/base/f;Lcom/google/common/base/m;)Lcom/google/common/base/m;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/f<",
            "-TF;TT;>;",
            "Lcom/google/common/base/m<",
            "TF;>;)",
            "Lcom/google/common/base/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Suppliers$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Suppliers$d;-><init>(Lcom/google/common/base/f;Lcom/google/common/base/m;)V

    return-object v0
.end method

.method public static memoize(Lcom/google/common/base/m;)Lcom/google/common/base/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/m<",
            "TT;>;)",
            "Lcom/google/common/base/m<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/base/Suppliers$c;

    if-nez v0, :cond_19

    instance-of v0, p0, Lcom/google/common/base/Suppliers$b;

    if-eqz v0, :cond_9

    goto :goto_19

    :cond_9
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/google/common/base/Suppliers$b;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$b;-><init>(Lcom/google/common/base/m;)V

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/google/common/base/Suppliers$c;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$c;-><init>(Lcom/google/common/base/m;)V

    :goto_18
    return-object v0

    :cond_19
    :goto_19
    return-object p0
.end method

.method public static memoizeWithExpiration(Lcom/google/common/base/m;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/m;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/m<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/base/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Suppliers$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/base/Suppliers$a;-><init>(Lcom/google/common/base/m;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lcom/google/common/base/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/common/base/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Suppliers$e;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static supplierFunction()Lcom/google/common/base/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/f<",
            "Lcom/google/common/base/m<",
            "TT;>;TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->a:Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    return-object v0
.end method

.method public static synchronizedSupplier(Lcom/google/common/base/m;)Lcom/google/common/base/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/m<",
            "TT;>;)",
            "Lcom/google/common/base/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Suppliers$f;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$f;-><init>(Lcom/google/common/base/m;)V

    return-object v0
.end method
