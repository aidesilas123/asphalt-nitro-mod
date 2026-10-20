###### Class kotlin.reflect.jvm.internal.impl.types.LazyWrappedType.a (kotlin.reflect.jvm.internal.impl.types.LazyWrappedType$a)
.class final Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;
.super Lkotlin/jvm/internal/t;
.source "SpecialTypes.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->N0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/types/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/types/checker/d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;Lkotlin/reflect/jvm/internal/impl/types/checker/d;)V
    .registers 3

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->a:Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/d;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->a:Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;->access$getComputation$p(Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;)Lkotlin/jvm/b/a;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/d;->g(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType$a;->c()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    return-object v0
.end method
