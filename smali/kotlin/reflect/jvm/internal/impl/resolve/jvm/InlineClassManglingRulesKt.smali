###### Class kotlin.reflect.jvm.internal.impl.resolve.jvm.InlineClassManglingRulesKt (kotlin.reflect.jvm.internal.impl.resolve.jvm.InlineClassManglingRulesKt)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/jvm/InlineClassManglingRulesKt;
.super Ljava/lang/Object;
.source "inlineClassManglingRules.kt"


# direct methods
.method private static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->h:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final b(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    if-nez v0, :cond_d

    const/4 p0, 0x0

    :cond_d
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    if-eqz p0, :cond_1a

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->getRepresentativeUpperBound(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/InlineClassManglingRulesKt;->c(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static final c(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/InlineClassManglingRulesKt;->isInlineClassThatRequiresMangling(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/InlineClassManglingRulesKt;->b(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static final isInlineClassThatRequiresMangling(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    const-string v0, "$this$isInlineClassThatRequiresMangling"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/InlineClassesUtilsKt;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_15

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/InlineClassManglingRulesKt;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static final isInlineClassThatRequiresMangling(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    const-string v0, "$this$isInlineClassThatRequiresMangling"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_17

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/InlineClassManglingRulesKt;->isInlineClassThatRequiresMangling(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p0

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static final shouldHideConstructorDueToInlineClassTypeValueParameters(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Z
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    :cond_a
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    const/4 v0, 0x0

    if-eqz p0, :cond_6e

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->W()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    const-string v2, "constructorDescriptor.constructedClass"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isInline()Z

    move-result v1

    if-eqz v1, :cond_2a

    return v0

    :cond_2a
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->W()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSealedClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    if-eqz v1, :cond_35

    return v0

    :cond_35
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->g()Ljava/util/List;

    move-result-object p0

    const-string v1, "constructorDescriptor.valueParameters"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_49

    goto :goto_6e

    :cond_49
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/InlineClassManglingRulesKt;->c(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v0, 0x1

    :cond_6e
    :goto_6e
    return v0
.end method
