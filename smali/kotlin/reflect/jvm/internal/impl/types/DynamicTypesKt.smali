###### Class kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt (kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt)
.class public final Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;
.super Ljava/lang/Object;
.source "dynamicTypes.kt"


# direct methods
.method public static final isDynamic(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    const-string v0, "$this$isDynamic"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/n;

    return p0
.end method
