###### Class kotlin.reflect.jvm.internal.impl.types.TypeCapabilitiesKt (kotlin.reflect.jvm.internal.impl.types.TypeCapabilitiesKt)
.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeCapabilitiesKt;
.super Ljava/lang/Object;
.source "TypeCapabilities.kt"


# direct methods
.method public static final getCustomTypeVariable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/i;
    .registers 3

    const-string v0, "$this$getCustomTypeVariable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/i;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    move-object p0, v1

    :cond_f
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/i;

    if-eqz p0, :cond_1a

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/i;->u()Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v1, p0

    :cond_1a
    return-object v1
.end method

.method public static final getSubtypeRepresentative(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    const-string v0, "$this$getSubtypeRepresentative"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/c0;

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/c0;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/c0;->B0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    if-eqz v0, :cond_19

    move-object p0, v0

    :cond_19
    return-object p0
.end method

.method public static final getSupertypeRepresentative(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    const-string v0, "$this$getSupertypeRepresentative"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/c0;

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/c0;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/c0;->e0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    if-eqz v0, :cond_19

    move-object p0, v0

    :cond_19
    return-object p0
.end method

.method public static final isCustomTypeVariable(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    const-string v0, "$this$isCustomTypeVariable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/i;

    if-nez v0, :cond_e

    const/4 p0, 0x0

    :cond_e
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/i;

    if-eqz p0, :cond_17

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/i;->u()Z

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static final sameTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 5

    const-string v0, "first"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/c0;

    const/4 v2, 0x0

    if-nez v1, :cond_14

    move-object v0, v2

    :cond_14
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/c0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/c0;->k0(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_37

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p1

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/c0;

    if-nez v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move-object v2, p1

    :goto_2b
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/c0;

    if-eqz v2, :cond_34

    invoke-interface {v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/c0;->k0(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    if-eqz p0, :cond_38

    :cond_37
    const/4 v1, 0x1

    :cond_38
    return v1
.end method
