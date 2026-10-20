###### Class kotlin.reflect.jvm.internal.impl.types.i0 (kotlin.reflect.jvm.internal.impl.types.i0)
.class public Lkotlin/reflect/jvm/internal/impl/types/i0;
.super Lkotlin/reflect/jvm/internal/impl/types/h0;
.source "TypeProjectionImpl.java"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/u;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/u;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->d(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->d(I)V

    :cond_c
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/h0;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/i0;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/i0;->b:Lkotlin/reflect/jvm/internal/impl/types/u;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/u;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->d(I)V

    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/i0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/u;)V

    return-void
.end method

.method private static synthetic d(I)V
    .registers 11

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x2

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const/4 v4, 0x3

    goto :goto_13

    :cond_12
    const/4 v4, 0x2

    :goto_13
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl"

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq p0, v8, :cond_31

    if-eq p0, v3, :cond_31

    if-eq p0, v1, :cond_2e

    if-eq p0, v0, :cond_2e

    if-eq p0, v6, :cond_29

    const-string v9, "projection"

    aput-object v9, v4, v7

    goto :goto_35

    :cond_29
    const-string v9, "kotlinTypeRefiner"

    aput-object v9, v4, v7

    goto :goto_35

    :cond_2e
    aput-object v5, v4, v7

    goto :goto_35

    :cond_31
    const-string v9, "type"

    aput-object v9, v4, v7

    :goto_35
    if-eq p0, v1, :cond_41

    if-eq p0, v0, :cond_3c

    aput-object v5, v4, v8

    goto :goto_45

    :cond_3c
    const-string v5, "getType"

    aput-object v5, v4, v8

    goto :goto_45

    :cond_41
    const-string v5, "getProjectionKind"

    aput-object v5, v4, v8

    :goto_45
    if-eq p0, v1, :cond_54

    if-eq p0, v0, :cond_54

    if-eq p0, v6, :cond_50

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_54

    :cond_50
    const-string v5, "refine"

    aput-object v5, v4, v3

    :cond_54
    :goto_54
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_62

    if-eq p0, v0, :cond_62

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_67

    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_67
    throw p0
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/g0;
    .registers 5

    if-nez p1, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->d(I)V

    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/i0;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/i0;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/i0;->b:Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/d;->g(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/i0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/u;)V

    return-object v0
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/i0;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-nez v0, :cond_8

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/i0;->d(I)V

    :cond_8
    return-object v0
.end method

.method public getType()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/i0;->b:Lkotlin/reflect/jvm/internal/impl/types/u;

    if-nez v0, :cond_8

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/i0;->d(I)V

    :cond_8
    return-object v0
.end method
