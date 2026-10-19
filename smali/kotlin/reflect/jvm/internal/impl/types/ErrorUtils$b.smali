###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.b (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$b)
.class final Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->g(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;)Lkotlin/reflect/jvm/internal/impl/types/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->a:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic e(I)V
    .registers 8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const-string v1, "@NotNull method %s.%s must not return null"

    goto :goto_8

    :cond_6
    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_8
    const/4 v2, 0x2

    if-eq p0, v0, :cond_d

    const/4 v3, 0x2

    goto :goto_e

    :cond_d
    const/4 v3, 0x3

    :goto_e
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2"

    const/4 v5, 0x0

    if-eq p0, v0, :cond_18

    aput-object v4, v3, v5

    goto :goto_1c

    :cond_18
    const-string v6, "kotlinTypeRefiner"

    aput-object v6, v3, v5

    :goto_1c
    const-string v5, "refine"

    const/4 v6, 0x1

    if-eq p0, v6, :cond_38

    if-eq p0, v2, :cond_33

    if-eq p0, v0, :cond_30

    const/4 v4, 0x4

    if-eq p0, v4, :cond_2d

    const-string v4, "getParameters"

    aput-object v4, v3, v6

    goto :goto_3c

    :cond_2d
    aput-object v5, v3, v6

    goto :goto_3c

    :cond_30
    aput-object v4, v3, v6

    goto :goto_3c

    :cond_33
    const-string v4, "getBuiltIns"

    aput-object v4, v3, v6

    goto :goto_3c

    :cond_38
    const-string v4, "getSupertypes"

    aput-object v4, v3, v6

    :goto_3c
    if-eq p0, v0, :cond_3f

    goto :goto_41

    :cond_3f
    aput-object v5, v3, v2

    :goto_41
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_4d

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_52

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_52
    throw p0
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_6
    return-object p0
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->a:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$c;

    return-object v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_a
    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_a
    return-object v0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->getInstance()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->e(I)V

    :cond_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$b;->b:Ljava/lang/String;

    return-object v0
.end method
