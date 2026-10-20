###### Class kotlin.reflect.jvm.internal.impl.descriptors.ConstUtilKt (kotlin.reflect.jvm.internal.impl.descriptors.ConstUtilKt)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ConstUtilKt;
.super Ljava/lang/Object;
.source "ConstUtil.kt"


# direct methods
.method public static final canBeUsedForConstVal(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    const-string v0, "$this$canBeUsedForConstVal"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e;->e:Lkotlin/reflect/jvm/internal/impl/builtins/e;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/e;->d(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_13
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_19
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isString(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    :goto_23
    return p0
.end method
