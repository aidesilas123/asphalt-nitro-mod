###### Class kotlin.reflect.full.a (kotlin.reflect.full.a)
.class public final Lkotlin/reflect/full/a;
.super Ljava/lang/Exception;
.source "exceptions.kt"


# direct methods
.method public constructor <init>(Ljava/lang/IllegalAccessException;)V
    .registers 3

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
