###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt (kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/KotlinClassFinderKt;
.super Ljava/lang/Object;
.source "KotlinClassFinder.kt"


# direct methods
.method public static final findKotlinClass(Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
    .registers 3

    const-string v0, "$this$findKotlinClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static final findKotlinClass(Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;
    .registers 3

    const-string v0, "$this$findKotlinClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j;->c(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/j$a;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/k;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method
