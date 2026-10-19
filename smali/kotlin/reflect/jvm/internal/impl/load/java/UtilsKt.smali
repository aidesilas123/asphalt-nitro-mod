###### Class kotlin.reflect.jvm.internal.impl.load.java.UtilsKt (kotlin.reflect.jvm.internal.impl.load.java.UtilsKt)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/UtilsKt;
.super Ljava/lang/Object;
.source "utils.kt"


# direct methods
.method public static final lexicalCastFrom(Lkotlin/reflect/jvm/internal/impl/types/u;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/java/k;
    .registers 6

    const-string v0, "$this$lexicalCastFrom"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne v1, v3, :cond_48

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->O()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    const-string v0, "Name.identifier(value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->b:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;->c(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p1, :cond_47

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne p1, v0, :cond_47

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/d;

    invoke-direct {v2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    :cond_47
    return-object v2

    :cond_48
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/utils/NumbersKt;->extractRadix(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/utils/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;->b()I

    move-result v0

    :try_start_58
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isBoolean(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_bc

    :cond_67
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isChar(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-static {p1}, Lkotlin/text/g;->singleOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object p1

    goto :goto_bc

    :cond_72
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isByte(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-static {v1, v0}, Lkotlin/text/g;->toByteOrNull(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_bc

    :cond_7d
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isShort(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-static {v1, v0}, Lkotlin/text/g;->toShortOrNull(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object p1

    goto :goto_bc

    :cond_88
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isInt(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-static {v1, v0}, Lkotlin/text/g;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_bc

    :cond_93
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isLong(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-static {v1, v0}, Lkotlin/text/g;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p1

    goto :goto_bc

    :cond_9e
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isFloat(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-static {p1}, Lkotlin/text/g;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_bc

    :cond_a9
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isDouble(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-static {p1}, Lkotlin/text/g;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_bc

    :cond_b4
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isString(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0
    :try_end_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_b8} :catch_bb

    if-eqz p0, :cond_bb

    goto :goto_bc

    :catch_bb
    :cond_bb
    move-object p1, v2

    :goto_bc
    if-eqz p1, :cond_c3

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/b;

    invoke-direct {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b;-><init>(Ljava/lang/Object;)V

    :cond_c3
    return-object v2
.end method
