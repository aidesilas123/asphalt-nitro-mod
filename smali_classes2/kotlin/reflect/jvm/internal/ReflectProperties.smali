###### Class kotlin.reflect.jvm.internal.ReflectProperties (kotlin.reflect.jvm.internal.ReflectProperties)
.class public Lkotlin/reflect/jvm/internal/ReflectProperties;
.super Ljava/lang/Object;
.source "ReflectProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/ReflectProperties$a;,
        Lkotlin/reflect/jvm/internal/ReflectProperties$b;,
        Lkotlin/reflect/jvm/internal/ReflectProperties$c;
    }
.end annotation


# direct methods
.method private static synthetic a(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "initializer"

    aput-object v2, v0, v1

    const-string v1, "kotlin/reflect/jvm/internal/ReflectProperties"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    if-eq p0, v2, :cond_17

    if-eq p0, v1, :cond_17

    const-string p0, "lazy"

    aput-object p0, v0, v1

    goto :goto_1b

    :cond_17
    const-string p0, "lazySoft"

    aput-object p0, v0, v1

    :goto_1b
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lazy(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "TT;>;)",
            "Lkotlin/reflect/jvm/internal/ReflectProperties$b<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->a(I)V

    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/ReflectProperties$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/ReflectProperties$b;-><init>(Lkotlin/jvm/b/a;)V

    return-object v0
.end method

.method public static lazySoft(Ljava/lang/Object;Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/b/a<",
            "TT;>;)",
            "Lkotlin/reflect/jvm/internal/ReflectProperties$a<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->a(I)V

    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/ReflectProperties$a;-><init>(Ljava/lang/Object;Lkotlin/jvm/b/a;)V

    return-object v0
.end method

.method public static lazySoft(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "TT;>;)",
            "Lkotlin/reflect/jvm/internal/ReflectProperties$a<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->a(I)V

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Ljava/lang/Object;Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    move-result-object p0

    return-object p0
.end method
