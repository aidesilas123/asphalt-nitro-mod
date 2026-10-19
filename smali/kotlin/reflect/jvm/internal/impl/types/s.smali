###### Class kotlin.reflect.jvm.internal.impl.types.s (kotlin.reflect.jvm.internal.impl.types.s)
.class public final Lkotlin/reflect/jvm/internal/impl/types/s;
.super Lkotlin/reflect/jvm/internal/impl/types/j0;
.source "TypeSubstitution.kt"


# instance fields
.field private final c:[Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

.field private final d:[Lkotlin/reflect/jvm/internal/impl/types/g0;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/g0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "argumentsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    if-eqz p1, :cond_31

    move-object v3, p1

    check-cast v3, [Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    new-array p1, v0, [Lkotlin/reflect/jvm/internal/impl/types/g0;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2b

    move-object v4, p1

    check-cast v4, [Lkotlin/reflect/jvm/internal/impl/types/g0;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/s;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/i0;[Lkotlin/reflect/jvm/internal/impl/types/g0;ZILkotlin/jvm/internal/n;)V

    return-void

    :cond_2b
    new-instance p1, Lkotlin/s;

    invoke-direct {p1, v1}, Lkotlin/s;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    new-instance p1, Lkotlin/s;

    invoke-direct {p1, v1}, Lkotlin/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Lkotlin/reflect/jvm/internal/impl/descriptors/i0;[Lkotlin/reflect/jvm/internal/impl/types/g0;Z)V
    .registers 5

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/j0;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->c:[Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->d:[Lkotlin/reflect/jvm/internal/impl/types/g0;

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->e:Z

    array-length p1, p1

    array-length p2, p2

    return-void
.end method

.method public synthetic constructor <init>([Lkotlin/reflect/jvm/internal/impl/descriptors/i0;[Lkotlin/reflect/jvm/internal/impl/types/g0;ZILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/s;-><init>([Lkotlin/reflect/jvm/internal/impl/descriptors/i0;[Lkotlin/reflect/jvm/internal/impl/types/g0;Z)V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->e:Z

    return v0
.end method

.method public e(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/g0;
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p1

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    const/4 v1, 0x0

    if-nez v0, :cond_13

    move-object p1, v1

    :cond_13
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    if-eqz p1, :cond_35

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->h()I

    move-result v0

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->c:[Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    array-length v3, v2

    if-ge v0, v3, :cond_35

    aget-object v2, v2, v0

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->d:[Lkotlin/reflect/jvm/internal/impl/types/g0;

    aget-object p1, p1, v0

    return-object p1

    :cond_35
    return-object v1
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->d:[Lkotlin/reflect/jvm/internal/impl/types/g0;

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final h()[Lkotlin/reflect/jvm/internal/impl/types/g0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->d:[Lkotlin/reflect/jvm/internal/impl/types/g0;

    return-object v0
.end method

.method public final i()[Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/s;->c:[Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    return-object v0
.end method
