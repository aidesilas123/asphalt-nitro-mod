###### Class kotlin.reflect.jvm.internal.impl.types.TypeUtils (kotlin.reflect.jvm.internal.impl.types.TypeUtils)
.class public Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/y;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/types/y;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/types/y;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/types/y;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "DONT_CARE"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorTypeWithCustomDebugName(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a:Lkotlin/reflect/jvm/internal/impl/types/y;

    const-string v0, "Cannot be inferred"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->b:Lkotlin/reflect/jvm/internal/impl/types/y;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$a;

    const-string v1, "NO_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->c:Lkotlin/reflect/jvm/internal/impl/types/y;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$a;

    const-string v1, "UNIT_EXPECTED_TYPE"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->d:Lkotlin/reflect/jvm/internal/impl/types/y;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(I)V
    .registers 25

    move/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/16 v3, 0x34

    const/16 v4, 0x2f

    const/16 v5, 0x23

    const/16 v6, 0x1a

    const/16 v7, 0x13

    const/16 v8, 0x11

    const/16 v9, 0xf

    const/16 v10, 0xb

    const/16 v11, 0x9

    const/4 v12, 0x4

    if-eq v0, v12, :cond_35

    if-eq v0, v11, :cond_35

    if-eq v0, v10, :cond_35

    if-eq v0, v9, :cond_35

    if-eq v0, v8, :cond_35

    if-eq v0, v7, :cond_35

    if-eq v0, v6, :cond_35

    if-eq v0, v5, :cond_35

    if-eq v0, v4, :cond_35

    if-eq v0, v3, :cond_35

    if-eq v0, v2, :cond_35

    if-eq v0, v1, :cond_35

    packed-switch v0, :pswitch_data_1e6

    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_37

    :cond_35
    :pswitch_35
    const-string v13, "@NotNull method %s.%s must not return null"

    :goto_37
    const/4 v14, 0x2

    if-eq v0, v12, :cond_55

    if-eq v0, v11, :cond_55

    if-eq v0, v10, :cond_55

    if-eq v0, v9, :cond_55

    if-eq v0, v8, :cond_55

    if-eq v0, v7, :cond_55

    if-eq v0, v6, :cond_55

    if-eq v0, v5, :cond_55

    if-eq v0, v4, :cond_55

    if-eq v0, v3, :cond_55

    if-eq v0, v2, :cond_55

    if-eq v0, v1, :cond_55

    packed-switch v0, :pswitch_data_1f2

    const/4 v15, 0x3

    goto :goto_56

    :cond_55
    :pswitch_55
    const/4 v15, 0x2

    :goto_56
    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "kotlin/reflect/jvm/internal/impl/types/TypeUtils"

    const/16 v17, 0x0

    packed-switch v0, :pswitch_data_1fe

    :pswitch_5f
    const-string v18, "type"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_65
    const-string v18, "literalTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_6b
    const-string v18, "expectedType"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_71
    const-string v18, "supertypes"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_77
    const-string v18, "numberValueTypeConstructor"

    aput-object v18, v15, v17

    goto/16 :goto_d9

    :pswitch_7d
    const-string v18, "parameterDescriptor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_82
    const-string v18, "isSpecialType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_87
    const-string v18, "specialType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_8c
    const-string v18, "typeParameterConstructors"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_91
    const-string v18, "typeParameters"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_96
    const-string v18, "b"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_9b
    const-string v18, "a"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_a0
    const-string v18, "projections"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_a5
    const-string v18, "typeArguments"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_aa
    const-string v18, "clazz"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_af
    const-string v18, "result"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_b4
    const-string v18, "substitutor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_b9
    const-string v18, "superType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_be
    const-string v18, "subType"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_c3
    const-string v18, "parameters"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_c8
    const-string v18, "refinedTypeFactory"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_cd
    const-string v18, "unsubstitutedMemberScope"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_d2
    const-string v18, "typeConstructor"

    aput-object v18, v15, v17

    goto :goto_d9

    :pswitch_d7
    aput-object v16, v15, v17

    :goto_d9
    const-string v17, "getAllSupertypes"

    const-string v18, "getImmediateSupertypes"

    const-string v19, "getDefaultTypeProjections"

    const-string v20, "makeUnsubstitutedType"

    const-string v21, "makeNullableIfNeeded"

    const-string v22, "makeNullableAsSpecified"

    const/16 v23, 0x1

    if-eq v0, v12, :cond_123

    if-eq v0, v11, :cond_120

    if-eq v0, v10, :cond_11d

    if-eq v0, v9, :cond_11d

    if-eq v0, v8, :cond_11a

    if-eq v0, v7, :cond_117

    if-eq v0, v6, :cond_114

    if-eq v0, v5, :cond_10f

    if-eq v0, v4, :cond_10a

    if-eq v0, v3, :cond_105

    if-eq v0, v2, :cond_120

    if-eq v0, v1, :cond_120

    packed-switch v0, :pswitch_data_270

    aput-object v16, v15, v23

    goto :goto_125

    :cond_105
    :pswitch_105
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_10a
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_10f
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v23

    goto :goto_125

    :cond_114
    aput-object v17, v15, v23

    goto :goto_125

    :cond_117
    aput-object v18, v15, v23

    goto :goto_125

    :cond_11a
    aput-object v19, v15, v23

    goto :goto_125

    :cond_11d
    aput-object v20, v15, v23

    goto :goto_125

    :cond_120
    aput-object v21, v15, v23

    goto :goto_125

    :cond_123
    aput-object v22, v15, v23

    :goto_125
    packed-switch v0, :pswitch_data_27c

    const-string v16, "noExpectedType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_12e
    const-string v16, "getTypeParameterDescriptorOrNull"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_134
    const-string v16, "isNonReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_13a
    const-string v16, "isReifiedTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_140
    const-string v16, "isTypeParameter"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_146
    const-string v16, "getPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_14c
    const-string v16, "findByFqName"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_152
    const-string v16, "getDefaultPrimitiveNumberType"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_158
    const-string v16, "makeStarProjection"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_15e
    const-string v16, "contains"

    aput-object v16, v15, v14

    goto/16 :goto_1bb

    :pswitch_164
    const-string v16, "dependsOnTypeConstructors"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_169
    const-string v16, "dependsOnTypeParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_16e
    const-string v16, "equalTypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_173
    const-string v16, "substituteProjectionsForParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_178
    const-string v16, "substituteParameters"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_17d
    const-string v16, "getClassDescriptor"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_182
    const-string v16, "hasNullableSuperType"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_187
    const-string v16, "acceptsNullable"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_18c
    const-string v16, "isNullableType"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_191
    aput-object v17, v15, v14

    goto :goto_1bb

    :pswitch_194
    const-string v16, "collectAllSupertypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_199
    const-string v16, "createSubstitutedSupertype"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_19e
    aput-object v18, v15, v14

    goto :goto_1bb

    :pswitch_1a1
    aput-object v19, v15, v14

    goto :goto_1bb

    :pswitch_1a4
    aput-object v20, v15, v14

    goto :goto_1bb

    :pswitch_1a7
    const-string v16, "canHaveSubtypes"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_1ac
    aput-object v21, v15, v14

    goto :goto_1bb

    :pswitch_1af
    aput-object v22, v15, v14

    goto :goto_1bb

    :pswitch_1b2
    const-string v16, "makeNotNullable"

    aput-object v16, v15, v14

    goto :goto_1bb

    :pswitch_1b7
    const-string v16, "makeNullable"

    aput-object v16, v15, v14

    :goto_1bb
    :pswitch_1bb
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    if-eq v0, v12, :cond_1e0

    if-eq v0, v11, :cond_1e0

    if-eq v0, v10, :cond_1e0

    if-eq v0, v9, :cond_1e0

    if-eq v0, v8, :cond_1e0

    if-eq v0, v7, :cond_1e0

    if-eq v0, v6, :cond_1e0

    if-eq v0, v5, :cond_1e0

    if-eq v0, v4, :cond_1e0

    if-eq v0, v3, :cond_1e0

    if-eq v0, v2, :cond_1e0

    if-eq v0, v1, :cond_1e0

    packed-switch v0, :pswitch_data_2fc

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1e5

    :cond_1e0
    :pswitch_1e0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1e5
    throw v0

    :pswitch_data_1e6
    .packed-switch 0x37
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_1f2
    .packed-switch 0x37
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch 0x4
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_d2
        :pswitch_cd
        :pswitch_c8
        :pswitch_d7
        :pswitch_c3
        :pswitch_d7
        :pswitch_5f
        :pswitch_d7
        :pswitch_be
        :pswitch_b9
        :pswitch_b4
        :pswitch_5f
        :pswitch_af
        :pswitch_5f
        :pswitch_d7
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_aa
        :pswitch_a5
        :pswitch_aa
        :pswitch_a0
        :pswitch_d7
        :pswitch_9b
        :pswitch_96
        :pswitch_5f
        :pswitch_91
        :pswitch_5f
        :pswitch_8c
        :pswitch_87
        :pswitch_82
        :pswitch_82
        :pswitch_7d
        :pswitch_77
        :pswitch_d7
        :pswitch_71
        :pswitch_71
        :pswitch_77
        :pswitch_6b
        :pswitch_d7
        :pswitch_65
        :pswitch_6b
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
        :pswitch_d7
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x37
        :pswitch_105
        :pswitch_105
        :pswitch_105
        :pswitch_105
    .end packed-switch

    :pswitch_data_27c
    .packed-switch 0x1
        :pswitch_1b7
        :pswitch_1b2
        :pswitch_1af
        :pswitch_1bb
        :pswitch_1ac
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_1ac
        :pswitch_1bb
        :pswitch_1a7
        :pswitch_1bb
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_1bb
        :pswitch_1a1
        :pswitch_1bb
        :pswitch_19e
        :pswitch_1bb
        :pswitch_199
        :pswitch_199
        :pswitch_199
        :pswitch_194
        :pswitch_194
        :pswitch_191
        :pswitch_1bb
        :pswitch_18c
        :pswitch_187
        :pswitch_182
        :pswitch_17d
        :pswitch_178
        :pswitch_178
        :pswitch_173
        :pswitch_173
        :pswitch_1bb
        :pswitch_16e
        :pswitch_16e
        :pswitch_169
        :pswitch_169
        :pswitch_164
        :pswitch_164
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_158
        :pswitch_152
        :pswitch_1bb
        :pswitch_152
        :pswitch_14c
        :pswitch_146
        :pswitch_146
        :pswitch_1bb
        :pswitch_146
        :pswitch_146
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_1bb
        :pswitch_140
        :pswitch_13a
        :pswitch_134
        :pswitch_12e
    .end packed-switch

    :pswitch_data_2fc
    .packed-switch 0x37
        :pswitch_1e0
        :pswitch_1e0
        :pswitch_1e0
        :pswitch_1e0
    .end packed-switch
.end method

.method public static acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/p;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/p;->Q0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;Ljava/util/HashSet;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/types/m0;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/HashSet<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x2c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    const/4 v0, 0x0

    if-nez p0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_12
    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_27

    return v3

    :cond_27
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/p;

    if-eqz v2, :cond_2f

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/p;

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/p;->P0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;Ljava/util/HashSet;)Z

    move-result v4

    if-nez v4, :cond_46

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/p;->Q0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;Ljava/util/HashSet;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_46
    return v3

    :cond_47
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/j;

    if-eqz v2, :cond_58

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/j;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/j;->T0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_58

    return v3

    :cond_58
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/t;

    if-eqz v2, :cond_7e

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/t;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/t;->h()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_6a

    return v3

    :cond_7d
    return v0

    :cond_7e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->G0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_86
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/g0;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->b()Z

    move-result v2

    if-nez v2, :cond_86

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/g0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v1

    :try_start_9c
    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;Ljava/util/HashSet;)Z

    move-result v1
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_a4

    if-eqz v1, :cond_86

    return v3

    :cond_a3
    return v0

    :catchall_a4
    move-exception p0

    throw p0
.end method

.method public static contains(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/types/m0;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x2b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/jvm/b/l;Ljava/util/HashSet;)Z

    move-result p0

    return p0
.end method

.method public static createSubstitutedSupertype(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_e
    if-nez p2, :cond_15

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_15
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->a:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->i(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result p0

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/u;Z)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    return-object p0

    :cond_26
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getClassDescriptor(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_16

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDefaultTypeProjections(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/g0;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/i0;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->n()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v1

    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/i0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2d
    invoke-static {v0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_38

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_38
    return-object p0
.end method

.method public static getImmediateSupertypes(Lkotlin/reflect/jvm/internal/impl/types/u;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->h()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {p0, v3, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->createSubstitutedSupertype(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_36
    return-object v2
.end method

.method public static getTypeParameterDescriptorOrNull(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x3e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasNullableSuperType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getImmediateSupertypes(Lkotlin/reflect/jvm/internal/impl/types/u;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_31
    return v1
.end method

.method public static isDontCarePlaceholder(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a:Lkotlin/reflect/jvm/internal/impl/types/y;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isNullableType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->isFlexible(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/p;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/p;->Q0()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    :cond_24
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->hasNullableSuperType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    return p0

    :cond_2f
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/t;

    if-eqz v0, :cond_52

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->h()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_3f

    return v1

    :cond_52
    const/4 p0, 0x0

    return p0
.end method

.method public static isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x3b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getTypeParameterDescriptorOrNull(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public static makeNotNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/u;Z)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    return-object p0
.end method

.method public static makeNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    const/4 v0, 0x1

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_6
    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/u;Z)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    return-object p0
.end method

.method public static makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/u;Z)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->K0()Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/m0;->L0(Z)Lkotlin/reflect/jvm/internal/impl/types/m0;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_14
    return-object p0
.end method

.method public static makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/u;Z)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    if-eqz p1, :cond_e

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p0

    return-object p0

    :cond_e
    if-nez p0, :cond_15

    const/16 p1, 0x9

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_15
    return-object p0
.end method

.method public static makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/y;Z)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 3

    if-nez p0, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_6
    if-eqz p1, :cond_14

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/y;->O0(Z)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p1, 0x6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_13
    return-object p0

    :cond_14
    if-nez p0, :cond_1a

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_1a
    return-object p0
.end method

.method public static makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)Lkotlin/reflect/jvm/internal/impl/types/g0;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x2d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;)V

    return-object v0
.end method

.method public static makeUnsubstitutedType(Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/f;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/d;",
            "Lkotlin/reflect/jvm/internal/impl/types/y;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/y;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsubstituted type for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    if-nez p0, :cond_22

    const/16 p1, 0xb

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_22
    return-object p0

    :cond_23
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeUnsubstitutedType(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    return-object p0
.end method

.method public static makeUnsubstitutedType(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/d;",
            "Lkotlin/reflect/jvm/internal/impl/types/y;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/y;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_e
    if-nez p2, :cond_15

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_15
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->getDefaultTypeProjections(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/f0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    if-nez p0, :cond_32

    const/16 p1, 0xf

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_32
    return-object p0
.end method

.method public static noExpectedType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->a(I)V

    :cond_6
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->c:Lkotlin/reflect/jvm/internal/impl/types/y;

    if-eq p0, v1, :cond_e

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->d:Lkotlin/reflect/jvm/internal/impl/types/y;

    if-ne p0, v1, :cond_f

    :cond_e
    const/4 v0, 0x1

    :cond_f
    return v0
.end method
