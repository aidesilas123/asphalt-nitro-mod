###### Class kotlin.reflect.jvm.internal.n (kotlin.reflect.jvm.internal.n)
.class public final Lkotlin/reflect/jvm/internal/n;
.super Ljava/lang/Object;
.source "KTypeParameterImpl.kt"

# interfaces
.implements Lkotlin/reflect/e;
.implements Lkotlin/reflect/jvm/internal/e;


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/e0;

    const-class v2, Lkotlin/reflect/jvm/internal/n;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/e0;-><init>(Lkotlin/reflect/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/n;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)V
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/n;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    new-instance p1, Lkotlin/reflect/jvm/internal/n$a;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/n$a;-><init>(Lkotlin/reflect/jvm/internal/n;)V

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/ReflectProperties;->lazySoft(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/n;->b:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/n;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/n;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    check-cast p1, Lkotlin/reflect/jvm/internal/n;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public bridge synthetic getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUpperBounds()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/n;->b:Lkotlin/reflect/jvm/internal/ReflectProperties$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/n;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lkotlin/reflect/jvm/internal/ReflectProperties$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Lkotlin/reflect/KVariance;
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->j()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/m;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    sget-object v0, Lkotlin/reflect/KVariance;->c:Lkotlin/reflect/KVariance;

    goto :goto_27

    :cond_1c
    new-instance v0, Lkotlin/k;

    invoke-direct {v0}, Lkotlin/k;-><init>()V

    throw v0

    :cond_22
    sget-object v0, Lkotlin/reflect/KVariance;->b:Lkotlin/reflect/KVariance;

    goto :goto_27

    :cond_25
    sget-object v0, Lkotlin/reflect/KVariance;->a:Lkotlin/reflect/KVariance;

    :goto_27
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/q;->b:Lkotlin/reflect/jvm/internal/q;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/q;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.n.a (kotlin.reflect.jvm.internal.n$a)
.class final Lkotlin/reflect/jvm/internal/n$a;
.super Lkotlin/jvm/internal/t;
.source "KTypeParameterImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/n;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)V
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
        "Lkotlin/reflect/jvm/internal/KTypeImpl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/n;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/n;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/n$a;->a:Lkotlin/reflect/jvm/internal/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/KTypeImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/n$a;->a:Lkotlin/reflect/jvm/internal/n;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.upperBounds"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/u;

    new-instance v3, Lkotlin/reflect/jvm/internal/KTypeImpl;

    const-string v4, "kotlinType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/reflect/jvm/internal/n$a$a;

    invoke-direct {v4, p0}, Lkotlin/reflect/jvm/internal/n$a$a;-><init>(Lkotlin/reflect/jvm/internal/n$a;)V

    invoke-direct {v3, v2, v4}, Lkotlin/reflect/jvm/internal/KTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/a;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_3d
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n$a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.n.a.C0558a (kotlin.reflect.jvm.internal.n$a$a)
.class final Lkotlin/reflect/jvm/internal/n$a$a;
.super Lkotlin/jvm/internal/t;
.source "KTypeParameterImpl.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/n$a;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/n$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/n$a;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/n$a$a;->a:Lkotlin/reflect/jvm/internal/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/Void;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java type is not yet supported for type parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/n$a$a;->a:Lkotlin/reflect/jvm/internal/n$a;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/n$a;->a:Lkotlin/reflect/jvm/internal/n;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/n;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An operation is not implemented: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lkotlin/l;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/n$a$a;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
