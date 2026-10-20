###### Class kotlin.j (kotlin.j)
.class public final Lkotlin/j;
.super Lkotlin/LazyKt__LazyKt;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/LazyKt__LazyJVMKt",
        "kotlin/LazyKt__LazyKt"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x31
.end annotation


# direct methods
.method public static bridge synthetic lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/LazyThreadSafetyMode;",
            "Lkotlin/jvm/b/a<",
            "+TT;>;)",
            "Lkotlin/i<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic lazy(Lkotlin/jvm/b/a;)Lkotlin/i;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "+TT;>;)",
            "Lkotlin/i<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic lazyOf(Ljava/lang/Object;)Lkotlin/i;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/i<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/LazyKt__LazyKt;->lazyOf(Ljava/lang/Object;)Lkotlin/i;

    move-result-object p0

    return-object p0
.end method
