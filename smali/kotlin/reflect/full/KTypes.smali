###### Class kotlin.reflect.full.KTypes (kotlin.reflect.full.KTypes)
.class public final Lkotlin/reflect/full/KTypes;
.super Ljava/lang/Object;
.source "KTypes.kt"


# direct methods
.method public static final isSubtypeOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Z
    .registers 3

    const-string v0, "$this$isSubtypeOf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->j()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    check-cast p1, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/KTypeImpl;->j()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    return p0
.end method

.method public static final isSupertypeOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Z
    .registers 3

    const-string v0, "$this$isSupertypeOf"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/reflect/full/KTypes;->isSubtypeOf(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Z

    move-result p0

    return p0
.end method

.method public static final withNullability(Lkotlin/reflect/KType;Z)Lkotlin/reflect/KType;
    .registers 4

    const-string v0, "$this$withNullability"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/reflect/KType;->n()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_e

    goto :goto_29

    :cond_e
    new-instance p1, Lkotlin/reflect/jvm/internal/KTypeImpl;

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->j()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    const-string v1, "TypeUtils.makeNotNullabl\u2026(this as KTypeImpl).type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/full/KTypes$a;

    invoke-direct {v1, p0}, Lkotlin/reflect/full/KTypes$a;-><init>(Lkotlin/reflect/KType;)V

    invoke-direct {p1, v0, v1}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/a;)V

    move-object p0, p1

    :goto_29
    return-object p0

    :cond_2a
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->j()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/u;Z)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    const-string v0, "TypeUtils.makeNullableAs\u2026ied(kotlinType, nullable)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/full/KTypes$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/full/KTypes$b;-><init>(Lkotlin/reflect/KType;)V

    invoke-direct {v1, p1, v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/a;)V

    return-object v1

    :cond_4b
    if-nez p1, :cond_4e

    goto :goto_62

    :cond_4e
    new-instance p1, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    const-string v1, "TypeUtils.makeNullable(kotlinType)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/reflect/full/KTypes$c;

    invoke-direct {v1, p0}, Lkotlin/reflect/full/KTypes$c;-><init>(Lkotlin/reflect/KType;)V

    invoke-direct {p1, v0, v1}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/a;)V

    move-object p0, p1

    :goto_62
    return-object p0
.end method

###### Class kotlin.reflect.full.KTypes.a (kotlin.reflect.full.KTypes$a)
.class final Lkotlin/reflect/full/KTypes$a;
.super Lkotlin/jvm/internal/t;
.source "KTypes.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/full/KTypes;->withNullability(Lkotlin/reflect/KType;Z)Lkotlin/reflect/KType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/KType;


# direct methods
.method constructor <init>(Lkotlin/reflect/KType;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/full/KTypes$a;->a:Lkotlin/reflect/KType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/full/KTypes$a;->a:Lkotlin/reflect/KType;

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->g()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/full/KTypes$a;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.full.KTypes.b (kotlin.reflect.full.KTypes$b)
.class final Lkotlin/reflect/full/KTypes$b;
.super Lkotlin/jvm/internal/t;
.source "KTypes.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/full/KTypes;->withNullability(Lkotlin/reflect/KType;Z)Lkotlin/reflect/KType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/KType;


# direct methods
.method constructor <init>(Lkotlin/reflect/KType;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/full/KTypes$b;->a:Lkotlin/reflect/KType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/full/KTypes$b;->a:Lkotlin/reflect/KType;

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->g()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/full/KTypes$b;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.full.KTypes.c (kotlin.reflect.full.KTypes$c)
.class final Lkotlin/reflect/full/KTypes$c;
.super Lkotlin/jvm/internal/t;
.source "KTypes.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/full/KTypes;->withNullability(Lkotlin/reflect/KType;Z)Lkotlin/reflect/KType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/KType;


# direct methods
.method constructor <init>(Lkotlin/reflect/KType;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/full/KTypes$c;->a:Lkotlin/reflect/KType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/full/KTypes$c;->a:Lkotlin/reflect/KType;

    check-cast v0, Lkotlin/reflect/jvm/internal/KTypeImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KTypeImpl;->g()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/full/KTypes$c;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
