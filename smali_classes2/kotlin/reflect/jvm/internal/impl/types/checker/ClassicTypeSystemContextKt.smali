###### Class kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContextKt (kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContextKt)
.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/ClassicTypeSystemContextKt;
.super Ljava/lang/Object;
.source "ClassicTypeSystemContext.kt"


# direct methods
.method public static final convertVariance(Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .registers 2

    const-string v0, "$this$convertVariance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/b;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    if-ne p0, v0, :cond_19

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->b:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    goto :goto_24

    :cond_19
    new-instance p0, Lkotlin/k;

    invoke-direct {p0}, Lkotlin/k;-><init>()V

    throw p0

    :cond_1f
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->a:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    goto :goto_24

    :cond_22
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->c:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    :goto_24
    return-object p0
.end method
