###### Class kotlin.reflect.jvm.internal.impl.types.ErrorUtils.f (kotlin.reflect.jvm.internal.impl.types.ErrorUtils$f)
.class public Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/f0;


# direct methods
.method private static synthetic e(I)V
    .registers 11

    const/4 v0, 0x6

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_12

    if-eq p0, v3, :cond_12

    if-eq p0, v2, :cond_12

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_14

    :cond_12
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_14
    if-eq p0, v4, :cond_20

    if-eq p0, v3, :cond_20

    if-eq p0, v2, :cond_20

    if-eq p0, v1, :cond_20

    if-eq p0, v0, :cond_20

    const/4 v6, 0x3

    goto :goto_21

    :cond_20
    const/4 v6, 0x2

    :goto_21
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_7e

    const-string v9, "descriptor"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_2e
    const-string v9, "kotlinTypeRefiner"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_33
    aput-object v7, v6, v8

    :goto_35
    const-string v8, "refine"

    if-eq p0, v4, :cond_56

    if-eq p0, v3, :cond_51

    if-eq p0, v2, :cond_4c

    if-eq p0, v1, :cond_47

    if-eq p0, v0, :cond_44

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_44
    aput-object v8, v6, v4

    goto :goto_5a

    :cond_47
    const-string v7, "getBuiltIns"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_4c
    const-string v7, "getSupertypes"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_51
    const-string v7, "getParameters"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_56
    const-string v7, "getTypeParameterDescriptor"

    aput-object v7, v6, v4

    :goto_5a
    packed-switch p0, :pswitch_data_8e

    const-string v7, "<init>"

    aput-object v7, v6, v3

    goto :goto_64

    :pswitch_62
    aput-object v8, v6, v3

    :goto_64
    :pswitch_64
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_78

    if-eq p0, v3, :cond_78

    if-eq p0, v2, :cond_78

    if-eq p0, v1, :cond_78

    if-eq p0, v0, :cond_78

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7d

    :cond_78
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_7d
    throw p0

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2e
        :pswitch_33
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_62
        :pswitch_64
    .end packed-switch
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_6
    return-object p0
.end method

.method public c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->d()Z

    move-result v0

    return v0
.end method

.method public f()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    if-nez v0, :cond_8

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_8
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->getParameters()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_c
    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->h()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_c
    return-object v0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$f;->e(I)V

    :cond_c
    return-object v0
.end method
