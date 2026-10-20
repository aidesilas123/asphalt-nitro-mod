###### Class com.google.common.base.Functions (com.google.common.base.Functions)
.class public final Lcom/google/common/base/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Functions$g;,
        Lcom/google/common/base/Functions$b;,
        Lcom/google/common/base/Functions$f;,
        Lcom/google/common/base/Functions$d;,
        Lcom/google/common/base/Functions$c;,
        Lcom/google/common/base/Functions$e;,
        Lcom/google/common/base/Functions$IdentityFunction;,
        Lcom/google/common/base/Functions$ToStringFunction;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lcom/google/common/base/f;Lcom/google/common/base/f;)Lcom/google/common/base/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/f<",
            "TB;TC;>;",
            "Lcom/google/common/base/f<",
            "TA;+TB;>;)",
            "Lcom/google/common/base/f<",
            "TA;TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Functions$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Functions$d;-><init>(Lcom/google/common/base/f;Lcom/google/common/base/f;)V

    return-object v0
.end method

.method public static constant(Ljava/lang/Object;)Lcom/google/common/base/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/base/f<",
            "Ljava/lang/Object;",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Functions$b;

    invoke-direct {v0, p0}, Lcom/google/common/base/Functions$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lcom/google/common/base/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lcom/google/common/base/f<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Functions$e;

    invoke-direct {v0, p0}, Lcom/google/common/base/Functions$e;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;Ljava/lang/Object;)Lcom/google/common/base/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;TV;)",
            "Lcom/google/common/base/f<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Functions$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Functions$c;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static forPredicate(Lcom/google/common/base/k;)Lcom/google/common/base/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/k<",
            "TT;>;)",
            "Lcom/google/common/base/f<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Functions$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Functions$f;-><init>(Lcom/google/common/base/k;Lcom/google/common/base/Functions$a;)V

    return-object v0
.end method

.method public static forSupplier(Lcom/google/common/base/m;)Lcom/google/common/base/f;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/m<",
            "TT;>;)",
            "Lcom/google/common/base/f<",
            "TF;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/Functions$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Functions$g;-><init>(Lcom/google/common/base/m;Lcom/google/common/base/Functions$a;)V

    return-object v0
.end method

.method public static identity()Lcom/google/common/base/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/f<",
            "TE;TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Functions$IdentityFunction;->a:Lcom/google/common/base/Functions$IdentityFunction;

    return-object v0
.end method

.method public static toStringFunction()Lcom/google/common/base/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/f<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/base/Functions$ToStringFunction;->a:Lcom/google/common/base/Functions$ToStringFunction;

    return-object v0
.end method
