###### Class kotlin.reflect.jvm.internal.impl.utils.NumbersKt (kotlin.reflect.jvm.internal.impl.utils.NumbersKt)
.class public final Lkotlin/reflect/jvm/internal/impl/utils/NumbersKt;
.super Ljava/lang/Object;
.source "numbers.kt"


# direct methods
.method public static final extractRadix(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/utils/b;
    .registers 6

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0x"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    if-nez v0, :cond_41

    const-string v0, "0X"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_41

    :cond_1b
    const-string v0, "0b"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "0B"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_34

    :cond_2c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/b;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/b;-><init>(Ljava/lang/String;I)V

    goto :goto_50

    :cond_34
    :goto_34
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/b;

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/jvm/internal/impl/utils/b;-><init>(Ljava/lang/String;I)V

    goto :goto_50

    :cond_41
    :goto_41
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/utils/b;

    invoke-direct {v1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/utils/b;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    :goto_50
    return-object v0
.end method
