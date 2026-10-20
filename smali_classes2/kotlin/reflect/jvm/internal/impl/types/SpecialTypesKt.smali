###### Class kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt (kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt)
.class public final Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;
.super Ljava/lang/Object;
.source "SpecialTypes.kt"


# direct methods
.method private static final a(Lkotlin/reflect/jvm/internal/impl/types/t;)Lkotlin/reflect/jvm/internal/impl/types/t;
    .registers 5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/t;->h()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/4 v1, 0x1

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object v2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/m0;)Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object v2

    :cond_2f
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_33
    if-nez v1, :cond_37

    const/4 p0, 0x0

    goto :goto_3c

    :cond_37
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/t;

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/t;-><init>(Ljava/util/Collection;)V

    :goto_3c
    return-object p0
.end method

.method private static final b(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/t;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    move-object p0, v1

    :cond_a
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/t;

    if-eqz p0, :cond_19

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->a(Lkotlin/reflect/jvm/internal/impl/types/t;)Lkotlin/reflect/jvm/internal/impl/types/t;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/t;->f()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    return-object p0

    :cond_19
    return-object v1
.end method

.method public static final getAbbreviatedType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/a;
    .registers 2

    const-string v0, "$this$getAbbreviatedType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/a;

    if-nez v0, :cond_e

    const/4 p0, 0x0

    :cond_e
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/a;

    return-object p0
.end method

.method public static final getAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 2

    const-string v0, "$this$getAbbreviation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->getAbbreviatedType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/a;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a;->T0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    const-string v0, "$this$isDefinitelyNotNullType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/j;

    return p0
.end method

.method public static final makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/m0;)Lkotlin/reflect/jvm/internal/impl/types/m0;
    .registers 2

    const-string v0, "$this$makeDefinitelyNotNullOrNotNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->b:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->a(Lkotlin/reflect/jvm/internal/impl/types/m0;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->b(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/m0;->L0(Z)Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public static final makeSimpleTypeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/y;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 2

    const-string v0, "$this$makeSimpleTypeDefinitelyNotNullOrNotNull"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/j;->b:Lkotlin/reflect/jvm/internal/impl/types/j$a;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/j$a;->a(Lkotlin/reflect/jvm/internal/impl/types/m0;)Lkotlin/reflect/jvm/internal/impl/types/j;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->b(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/y;->O0(Z)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    :goto_1a
    return-object v0
.end method

.method public static final withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/y;Lkotlin/reflect/jvm/internal/impl/types/y;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 3

    const-string v0, "$this$withAbbreviation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/a;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/y;Lkotlin/reflect/jvm/internal/impl/types/y;)V

    return-object v0
.end method
