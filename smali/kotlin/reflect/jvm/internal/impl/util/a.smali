###### Class kotlin.reflect.jvm.internal.impl.util.a (kotlin.reflect.jvm.internal.impl.util.a)
.class public abstract Lkotlin/reflect/jvm/internal/impl/util/a;
.super Ljava/lang/Object;
.source "modifierChecks.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Lkotlin/reflect/jvm/internal/impl/util/b;
    .registers 5

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/util/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/util/c;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/util/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_d

    :cond_20
    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/util/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Lkotlin/reflect/jvm/internal/impl/util/b;

    move-result-object p1

    return-object p1

    :cond_25
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/util/b$a;->b:Lkotlin/reflect/jvm/internal/impl/util/b$a;

    return-object p1
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/util/c;",
            ">;"
        }
    .end annotation
.end method
