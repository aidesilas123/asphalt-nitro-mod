###### Class kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt (kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt)
.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;
.super Ljava/lang/Object;
.source "TypeWithEnhancement.kt"


# direct methods
.method public static final getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    const-string v0, "$this$getEnhancement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/k0;

    if-eqz v0, :cond_10

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/k0;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/k0;->Z()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/m0;Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/m0;
    .registers 3

    const-string v0, "$this$inheritEnhancement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/m0;Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    return-object p0
.end method

.method public static final unwrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    const-string v0, "$this$unwrapEnhancement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->getEnhancement(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    if-eqz v0, :cond_c

    move-object p0, v0

    :cond_c
    return-object p0
.end method

.method public static final wrapEnhancement(Lkotlin/reflect/jvm/internal/impl/types/m0;Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/m0;
    .registers 3

    const-string v0, "$this$wrapEnhancement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-object p0

    :cond_8
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/y;

    if-eqz v0, :cond_14

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/a0;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/y;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/y;Lkotlin/reflect/jvm/internal/impl/types/u;)V

    goto :goto_1f

    :cond_14
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/p;

    if-eqz v0, :cond_20

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/r;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/p;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/r;-><init>(Lkotlin/reflect/jvm/internal/impl/types/p;Lkotlin/reflect/jvm/internal/impl/types/u;)V

    :goto_1f
    return-object v0

    :cond_20
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0
.end method
