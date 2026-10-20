###### Class kotlin.reflect.full.KProperties (kotlin.reflect.full.KProperties)
.class public final Lkotlin/reflect/full/KProperties;
.super Ljava/lang/Object;
.source "KProperties.kt"


# direct methods
.method public static final getExtensionDelegate(Lkotlin/reflect/KProperty1;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty1<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "$this$getExtensionDelegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->f:Lkotlin/reflect/jvm/internal/KPropertyImpl$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/reflect/KProperty1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getExtensionDelegate(Lkotlin/reflect/KProperty2;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KProperty2<",
            "TD;**>;TD;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "$this$getExtensionDelegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/KPropertyImpl;->f:Lkotlin/reflect/jvm/internal/KPropertyImpl$b;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KPropertyImpl$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/KProperty2;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
