###### Class kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure (kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure)
.class public Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;
.super Ljava/lang/Object;
.source "TypeCheckingProcedure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/checker/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    return-void
.end method

.method private static synthetic a(I)V
    .registers 10

    const/16 v0, 0xa

    const/4 v1, 0x7

    if-eq p0, v1, :cond_a

    if-eq p0, v0, :cond_a

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_c

    :cond_a
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_c
    const/4 v3, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const/4 v4, 0x3

    goto :goto_14

    :cond_13
    const/4 v4, 0x2

    :goto_14
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_a0

    :pswitch_1c
    const-string v7, "subtype"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_21
    const-string v7, "supertypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_26
    const-string v7, "subtypeArgumentProjection"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_2b
    const-string v7, "typeArgument"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_30
    const-string v7, "typeParameter"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_35
    const-string v7, "type2"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_3a
    const-string v7, "type1"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_3f
    aput-object v5, v4, v6

    goto :goto_55

    :pswitch_42
    const-string v7, "argument"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_47
    const-string v7, "parameter"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_4c
    const-string v7, "typeCheckingProcedureCallbacks"

    aput-object v7, v4, v6

    goto :goto_55

    :pswitch_51
    const-string v7, "supertype"

    aput-object v7, v4, v6

    :goto_55
    const-string v6, "getInType"

    const-string v7, "getOutType"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_64

    if-eq p0, v0, :cond_61

    aput-object v5, v4, v8

    goto :goto_66

    :cond_61
    aput-object v6, v4, v8

    goto :goto_66

    :cond_64
    aput-object v7, v4, v8

    :goto_66
    packed-switch p0, :pswitch_data_ce

    const-string v5, "findCorrespondingSupertype"

    aput-object v5, v4, v3

    goto :goto_8c

    :pswitch_6e
    const-string v5, "capture"

    aput-object v5, v4, v3

    goto :goto_8c

    :pswitch_73
    const-string v5, "checkSubtypeForTheSameConstructor"

    aput-object v5, v4, v3

    goto :goto_8c

    :pswitch_78
    const-string v5, "isSubtypeOf"

    aput-object v5, v4, v3

    goto :goto_8c

    :pswitch_7d
    const-string v5, "getEffectiveProjectionKind"

    aput-object v5, v4, v3

    goto :goto_8c

    :pswitch_82
    const-string v5, "equalTypes"

    aput-object v5, v4, v3

    goto :goto_8c

    :pswitch_87
    aput-object v6, v4, v3

    goto :goto_8c

    :pswitch_8a
    aput-object v7, v4, v3

    :goto_8c
    :pswitch_8c
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_9a

    if-eq p0, v0, :cond_9a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_9f

    :cond_9a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_9f
    throw p0

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_1c
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3f
        :pswitch_47
        :pswitch_42
        :pswitch_3f
        :pswitch_3a
        :pswitch_35
        :pswitch_30
        :pswitch_2b
        :pswitch_1c
        :pswitch_51
        :pswitch_1c
        :pswitch_51
        :pswitch_26
        :pswitch_21
        :pswitch_47
    .end packed-switch

    :pswitch_data_ce
    .packed-switch 0x5
        :pswitch_8a
        :pswitch_8a
        :pswitch_8c
        :pswitch_87
        :pswitch_87
        :pswitch_8c
        :pswitch_82
        :pswitch_82
        :pswitch_7d
        :pswitch_7d
        :pswitch_78
        :pswitch_78
        :pswitch_73
        :pswitch_73
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
    .end packed-switch
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/types/g0;Lkotlin/reflect/jvm/internal/impl/types/g0;Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)Z
    .registers 6

    if-nez p1, :cond_7

    const/16 v0, 0x13

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_e
    if-nez p3, :cond_15

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_15
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->j()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1f

    return v1

    :cond_1f
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    if-eq p3, v0, :cond_36

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p3

    if-ne p3, v0, :cond_36

    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/g0;)Z

    move-result p1

    return p1

    :cond_36
    return v1
.end method

.method private c(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 12

    if-nez p1, :cond_7

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_e
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->G0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->G0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_26

    return v3

    :cond_26
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->getParameters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_be

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/g0;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/g0;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->b()Z

    move-result v7

    if-eqz v7, :cond_4c

    goto/16 :goto_ba

    :cond_4c
    invoke-direct {p0, v6, v5, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->b(Lkotlin/reflect/jvm/internal/impl/types/g0;Lkotlin/reflect/jvm/internal/impl/types/g0;Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)Z

    move-result v7

    if-eqz v7, :cond_53

    goto :goto_ba

    :cond_53
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v7

    if-nez v7, :cond_69

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v7

    if-eqz v7, :cond_68

    goto :goto_69

    :cond_68
    const/4 v4, 0x0

    :cond_69
    :goto_69
    if-nez v4, :cond_90

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->j()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v4, v7, :cond_90

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    if-ne v4, v7, :cond_90

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v4

    if-ne v4, v7, :cond_90

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v4

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v5

    invoke-interface {v2, v4, v5, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->e(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;)Z

    move-result v2

    if-nez v2, :cond_ba

    return v3

    :cond_90
    invoke-static {v2, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v4

    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v7

    iget-object v8, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-interface {v8, v7, v4, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->a(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;)Z

    move-result v4

    if-nez v4, :cond_a1

    return v3

    :cond_a1
    invoke-static {v2, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v4

    invoke-static {v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v2

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/Variance;->c:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v5, v6, :cond_ba

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-interface {v5, v4, v2, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->a(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;)Z

    move-result v2

    if-nez v2, :cond_ba

    return v3

    :cond_ba
    :goto_ba
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    :cond_be
    return v4
.end method

.method private static e(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_e
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->c:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v0, v1, :cond_1f

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->j()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    if-ne v0, v1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    if-eqz v0, :cond_2b

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->H()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    goto :goto_2f

    :cond_2b
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    :goto_2f
    if-nez p0, :cond_36

    const/16 p1, 0xa

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_36
    return-object p0
.end method

.method private static f(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_c
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->b:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq v0, v1, :cond_1d

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->j()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    if-ne v0, v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    if-eqz v0, :cond_29

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->I()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    goto :goto_2d

    :cond_29
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    :goto_2d
    if-nez p0, :cond_33

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_33
    return-object p0
.end method

.method public static findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/m;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/m;-><init>()V

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/n;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    return-object p0
.end method

.method public static findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/n;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_6
    if-nez p1, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_c
    if-nez p2, :cond_12

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_12
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/UtilsKt;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/n;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    return-object p0
.end method

.method public static getEffectiveProjectionKind(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    .registers 5

    if-nez p0, :cond_7

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_e
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;->j()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v0, :cond_1d

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :cond_1d
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->b:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v0, :cond_28

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->c:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v1, :cond_28

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-object p0

    :cond_28
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->c:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p0, v1, :cond_31

    if-ne p1, v0, :cond_31

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-object p0

    :cond_31
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->fromVariance(Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    move-result-object p0

    return-object p0
.end method

.method private i(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_44

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_44

    :cond_e
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    :cond_1c
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isNothingOrNullableNothing(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    :cond_23
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-static {p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->findCorrespondingSupertype(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/n;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->d(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1

    :cond_32
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result p1

    if-nez p1, :cond_3f

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result p1

    if-eqz p1, :cond_3f

    return v2

    :cond_3f
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->c(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1

    :cond_44
    :goto_44
    return v1
.end method


# virtual methods
.method public d(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 13

    if-nez p1, :cond_7

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_e
    const/4 v0, 0x1

    if-ne p1, p2, :cond_12

    return v0

    :cond_12
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->h(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->h(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    return v0

    :cond_3a
    invoke-virtual {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->g(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1

    :cond_3f
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->g(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1

    :cond_4a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v3

    if-eq v1, v3, :cond_55

    return v2

    :cond_55
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p2

    invoke-interface {v0, p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->e(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;)Z

    move-result p1

    return p1

    :cond_6a
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v3

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-interface {v4, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->c(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Z

    move-result v4

    if-nez v4, :cond_7b

    return v2

    :cond_7b
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->G0()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->G0()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_8e

    return v2

    :cond_8e
    const/4 v4, 0x0

    :goto_8f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e8

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/g0;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/g0;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->b()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/g0;->b()Z

    move-result v7

    if-eqz v7, :cond_ae

    goto :goto_e5

    :cond_ae
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->getParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/f0;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    invoke-direct {p0, v5, v6, v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->b(Lkotlin/reflect/jvm/internal/impl/types/g0;Lkotlin/reflect/jvm/internal/impl/types/g0;Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)Z

    move-result v9

    if-eqz v9, :cond_c9

    goto :goto_e5

    :cond_c9
    invoke-static {v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->getEffectiveProjectionKind(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    move-result-object v7

    invoke-static {v8, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->getEffectiveProjectionKind(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/g0;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    move-result-object v8

    if-eq v7, v8, :cond_d4

    return v2

    :cond_d4
    iget-object v7, p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/n;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v5

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v6

    invoke-interface {v7, v5, v6, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/n;->e(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;)Z

    move-result v5

    if-nez v5, :cond_e5

    return v2

    :cond_e5
    :goto_e5
    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_e8
    return v0
.end method

.method protected g(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/p;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/p;->P0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->h(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/p;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/p;->Q0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->h(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method public h(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 5

    if-nez p1, :cond_7

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->a(I)V

    :cond_e
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCapabilitiesKt;->sameTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    :cond_25
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCapabilitiesKt;->getSubtypeRepresentative(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCapabilitiesKt;->getSupertypeRepresentative(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v1

    if-ne v0, p1, :cond_37

    if-eq v1, p2, :cond_32

    goto :goto_37

    :cond_32
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->i(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1

    :cond_37
    :goto_37
    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;->h(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    return p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure.EnrichedProjectionKind (kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure$EnrichedProjectionKind)
.class public final enum Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
.super Ljava/lang/Enum;
.source "TypeCheckingProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnrichedProjectionKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field public static final enum b:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field public static final enum c:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field public static final enum d:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

.field private static final synthetic e:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v3, "OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v5, "INV"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const-string v7, "STAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->d:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    const/4 v7, 0x4

    new-array v7, v7, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->e:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a(I)V
    .registers 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    if-eq p0, v1, :cond_c

    if-eq p0, v0, :cond_c

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_e

    :cond_c
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_e
    if-eq p0, v2, :cond_16

    if-eq p0, v1, :cond_16

    if-eq p0, v0, :cond_16

    const/4 v4, 0x3

    goto :goto_17

    :cond_16
    const/4 v4, 0x2

    :goto_17
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind"

    const/4 v6, 0x0

    if-eq p0, v2, :cond_27

    if-eq p0, v1, :cond_27

    if-eq p0, v0, :cond_27

    const-string v7, "variance"

    aput-object v7, v4, v6

    goto :goto_29

    :cond_27
    aput-object v5, v4, v6

    :goto_29
    const-string v6, "fromVariance"

    if-eq p0, v2, :cond_34

    if-eq p0, v1, :cond_34

    if-eq p0, v0, :cond_34

    aput-object v5, v4, v2

    goto :goto_36

    :cond_34
    aput-object v6, v4, v2

    :goto_36
    if-eq p0, v2, :cond_3e

    if-eq p0, v1, :cond_3e

    if-eq p0, v0, :cond_3e

    aput-object v6, v4, v1

    :cond_3e
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_4e

    if-eq p0, v1, :cond_4e

    if-eq p0, v0, :cond_4e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_53

    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_53
    throw p0
.end method

.method public static fromVariance(Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->a(I)V

    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1f

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->b:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    if-nez p0, :cond_1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->a(I)V

    :cond_1e
    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown variance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    if-nez p0, :cond_2e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->a(I)V

    :cond_2e
    return-object p0

    :cond_2f
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->c:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    if-nez p0, :cond_36

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->a(I)V

    :cond_36
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    .registers 2

    const-class v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->e:[Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    invoke-virtual {v0}, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure.a (kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure$a)
.class synthetic Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$a;
.super Ljava/lang/Object;
.source "TypeCheckingProcedure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->values()[Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$a;->a:[I

    :try_start_9
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$a;->a:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->b:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$a;->a:[I

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->c:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
