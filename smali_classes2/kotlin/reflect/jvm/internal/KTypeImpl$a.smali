###### Class kotlin.reflect.jvm.internal.KTypeImpl.a (kotlin.reflect.jvm.internal.KTypeImpl$a)
.class final Lkotlin/reflect/jvm/internal/KTypeImpl$a;
.super Lkotlin/jvm/internal/t;
.source "KTypeImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/List<",
        "+",
        "Lkotlin/reflect/KTypeProjection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/KTypeImpl;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KTypeImpl;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$a;->a:Lkotlin/reflect/jvm/internal/KTypeImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KTypeImpl$a;->a:Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->j()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->G0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_15
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lkotlin/reflect/jvm/internal/KTypeImpl$a$b;

    invoke-direct {v2, p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$a$b;-><init>(Lkotlin/reflect/jvm/internal/KTypeImpl$a;)V

    invoke-static {v1, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_42

    invoke-static {}, Lkotlin/collections/p;->throwIndexOverflow()V

    :cond_42
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/g0;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->b()Z

    move-result v7

    if-eqz v7, :cond_51

    sget-object v4, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v4}, Lkotlin/reflect/KTypeProjection$Companion;->c()Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    goto :goto_93

    :cond_51
    new-instance v7, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v8

    const-string v9, "typeProjection.type"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lkotlin/reflect/jvm/internal/KTypeImpl$a$a;

    invoke-direct {v9, v4, p0, v1, v2}, Lkotlin/reflect/jvm/internal/KTypeImpl$a$a;-><init>(ILkotlin/reflect/jvm/internal/KTypeImpl$a;Lkotlin/i;Lkotlin/reflect/KProperty;)V

    invoke-direct {v7, v8, v9}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/a;)V

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/l;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_8d

    const/4 v5, 0x2

    if-eq v4, v5, :cond_86

    const/4 v5, 0x3

    if-ne v4, v5, :cond_80

    sget-object v4, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v4, v7}, Lkotlin/reflect/KTypeProjection$Companion;->b(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    goto :goto_93

    :cond_80
    new-instance v0, Lkotlin/k;

    invoke-direct {v0}, Lkotlin/k;-><init>()V

    throw v0

    :cond_86
    sget-object v4, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v4, v7}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    goto :goto_93

    :cond_8d
    sget-object v4, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v4, v7}, Lkotlin/reflect/KTypeProjection$Companion;->d(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    :goto_93
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_31

    :cond_98
    return-object v3
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl$a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
