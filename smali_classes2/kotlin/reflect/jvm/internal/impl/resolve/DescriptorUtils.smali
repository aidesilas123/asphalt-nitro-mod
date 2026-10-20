###### Class kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils (kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils)
.class public Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;
.super Ljava/lang/Object;
.source "DescriptorUtils.java"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final d:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final e:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final f:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final g:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final h:Lkotlin/reflect/jvm/internal/impl/name/FqName;

.field public static final i:Lkotlin/reflect/jvm/internal/impl/name/FqName;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "values"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a:Lkotlin/reflect/jvm/internal/impl/name/Name;

    const-string v0, "valueOf"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->b:Lkotlin/reflect/jvm/internal/impl/name/Name;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "kotlin.coroutines"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->c:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "experimental"

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->c(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->d:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "intrinsics"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->c(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v2, "Continuation"

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->c(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->f:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/name/Name;->identifier(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->c(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->g:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "kotlin.Result"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->h:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "kotlin.jvm.JvmName"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/name/FqName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->i:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(I)V
    .registers 23

    sparse-switch p0, :sswitch_data_216

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :sswitch_6
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    sparse-switch p0, :sswitch_data_270

    const/4 v2, 0x3

    goto :goto_f

    :sswitch_e
    const/4 v2, 0x2

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_2ca

    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_1d
    const-string v5, "name"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_23
    const-string v5, "scope"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_29
    const-string v5, "annotated"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_2f
    const-string v5, "memberDescriptor"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_35
    const-string v5, "result"

    aput-object v5, v2, v4

    goto/16 :goto_97

    :pswitch_3b
    const-string v5, "current"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_40
    const-string v5, "f"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_45
    const-string v5, "variable"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_4a
    const-string v5, "location"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_4f
    const-string v5, "innerClassName"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_54
    const-string v5, "typeConstructor"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_59
    const-string v5, "classDescriptor"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_5e
    const-string v5, "classKind"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_63
    const-string v5, "other"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_68
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_6d
    const-string v5, "superClass"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_72
    const-string v5, "subClass"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_77
    const-string v5, "declarationDescriptor"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_7c
    const-string v5, "kotlinType"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_81
    const-string v5, "aClass"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_86
    const-string v5, "second"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_8b
    const-string v5, "first"

    aput-object v5, v2, v4

    goto :goto_97

    :pswitch_90
    aput-object v3, v2, v4

    goto :goto_97

    :pswitch_93
    const-string v5, "descriptor"

    aput-object v5, v2, v4

    :goto_97
    const-string v4, "getDirectMember"

    const-string v5, "getPropertyByName"

    const-string v6, "getFunctionByName"

    const-string v7, "getAllDescriptors"

    const-string v8, "getContainingSourceFile"

    const-string v9, "getAllOverriddenDeclarations"

    const-string v10, "getAllOverriddenDescriptors"

    const-string v11, "unwrapFakeOverrideToAnyDeclaration"

    const-string v12, "unwrapFakeOverride"

    const-string v13, "getDefaultConstructorVisibility"

    const-string v14, "getClassDescriptorForTypeConstructor"

    const-string v15, "getSuperClassType"

    const-string v16, "getSuperclassDescriptors"

    const-string v17, "getContainingModule"

    const-string v18, "getFqNameFromTopLevelClass"

    const-string v19, "getFqNameUnsafe"

    const-string v20, "getFqNameSafe"

    const/16 v21, 0x1

    sparse-switch p0, :sswitch_data_380

    aput-object v3, v2, v21

    goto :goto_f3

    :sswitch_c1
    aput-object v4, v2, v21

    goto :goto_f3

    :sswitch_c4
    aput-object v5, v2, v21

    goto :goto_f3

    :sswitch_c7
    aput-object v6, v2, v21

    goto :goto_f3

    :sswitch_ca
    aput-object v7, v2, v21

    goto :goto_f3

    :sswitch_cd
    aput-object v8, v2, v21

    goto :goto_f3

    :sswitch_d0
    aput-object v9, v2, v21

    goto :goto_f3

    :sswitch_d3
    aput-object v10, v2, v21

    goto :goto_f3

    :sswitch_d6
    aput-object v11, v2, v21

    goto :goto_f3

    :sswitch_d9
    aput-object v12, v2, v21

    goto :goto_f3

    :sswitch_dc
    aput-object v13, v2, v21

    goto :goto_f3

    :sswitch_df
    aput-object v14, v2, v21

    goto :goto_f3

    :sswitch_e2
    aput-object v15, v2, v21

    goto :goto_f3

    :sswitch_e5
    aput-object v16, v2, v21

    goto :goto_f3

    :sswitch_e8
    aput-object v17, v2, v21

    goto :goto_f3

    :sswitch_eb
    aput-object v18, v2, v21

    goto :goto_f3

    :sswitch_ee
    aput-object v19, v2, v21

    goto :goto_f3

    :sswitch_f1
    aput-object v20, v2, v21

    :goto_f3
    packed-switch p0, :pswitch_data_3da

    const-string v3, "getDispatchReceiverParameterIfNeeded"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_fc
    const-string v3, "isMethodOfAny"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_102
    aput-object v4, v2, v1

    goto/16 :goto_203

    :pswitch_106
    aput-object v5, v2, v1

    goto/16 :goto_203

    :pswitch_10a
    const-string v3, "getFunctionByNameOrNull"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_110
    aput-object v6, v2, v1

    goto/16 :goto_203

    :pswitch_114
    aput-object v7, v2, v1

    goto/16 :goto_203

    :pswitch_118
    aput-object v8, v2, v1

    goto/16 :goto_203

    :pswitch_11c
    const-string v3, "findJvmNameAnnotation"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_122
    const-string v3, "getJvmName"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_128
    const-string v3, "canHaveDeclaredConstructors"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_12e
    const-string v3, "isSingletonOrAnonymousObject"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_134
    aput-object v9, v2, v1

    goto/16 :goto_203

    :pswitch_138
    const-string v3, "collectAllOverriddenDescriptors"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_13e
    aput-object v10, v2, v1

    goto/16 :goto_203

    :pswitch_142
    const-string v3, "classCanHaveOpenMembers"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_148
    const-string v3, "classCanHaveAbstractDeclaration"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_14e
    const-string v3, "classCanHaveAbstractFakeOverride"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_154
    const-string v3, "shouldRecordInitializerForProperty"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_15a
    aput-object v11, v2, v1

    goto/16 :goto_203

    :pswitch_15e
    aput-object v12, v2, v1

    goto/16 :goto_203

    :pswitch_162
    const-string v3, "isTopLevelOrInnerClass"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_168
    const-string v3, "isStaticNestedClass"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_16e
    const-string v3, "getInnerClassByName"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_174
    aput-object v13, v2, v1

    goto/16 :goto_203

    :pswitch_178
    aput-object v14, v2, v1

    goto/16 :goto_203

    :pswitch_17c
    const-string v3, "getClassDescriptorForType"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_182
    const-string v3, "getSuperClassDescriptor"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_188
    aput-object v15, v2, v1

    goto/16 :goto_203

    :pswitch_18c
    aput-object v16, v2, v1

    goto/16 :goto_203

    :pswitch_190
    const-string v3, "hasAbstractMembers"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_196
    const-string v3, "isKindOf"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_19c
    const-string v3, "isEnumEntry"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_1a2
    const-string v3, "isAnonymousFunction"

    aput-object v3, v2, v1

    goto/16 :goto_203

    :pswitch_1a8
    const-string v3, "isAnonymousObject"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1ad
    const-string v3, "isSubtypeOfClass"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1b2
    const-string v3, "isSameClass"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1b7
    const-string v3, "isSubclass"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1bc
    const-string v3, "isDirectSubclass"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1c1
    const-string v3, "isAncestor"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1c6
    const-string v3, "getContainingClass"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1cb
    aput-object v17, v2, v1

    goto :goto_203

    :pswitch_1ce
    const-string v3, "getContainingModuleOrNull"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1d3
    const-string v3, "getParentOfType"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1d8
    const-string v3, "areInSameModule"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1dd
    const-string v3, "isStaticDeclaration"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1e2
    const-string v3, "isOverride"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1e7
    const-string v3, "isExtension"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1ec
    aput-object v18, v2, v1

    goto :goto_203

    :pswitch_1ef
    aput-object v19, v2, v1

    goto :goto_203

    :pswitch_1f2
    const-string v3, "getFqNameSafeIfPossible"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1f7
    aput-object v20, v2, v1

    goto :goto_203

    :pswitch_1fa
    const-string v3, "getFqName"

    aput-object v3, v2, v1

    goto :goto_203

    :pswitch_1ff
    const-string v3, "isLocal"

    aput-object v3, v2, v1

    :goto_203
    :pswitch_203
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_490

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_215

    :sswitch_210
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_215
    throw v1

    :sswitch_data_216
    .sparse-switch
        0x4 -> :sswitch_6
        0x7 -> :sswitch_6
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0x14 -> :sswitch_6
        0x26 -> :sswitch_6
        0x28 -> :sswitch_6
        0x29 -> :sswitch_6
        0x2d -> :sswitch_6
        0x2f -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x38 -> :sswitch_6
        0x3a -> :sswitch_6
        0x41 -> :sswitch_6
        0x45 -> :sswitch_6
        0x4b -> :sswitch_6
        0x4c -> :sswitch_6
        0x4e -> :sswitch_6
        0x51 -> :sswitch_6
        0x56 -> :sswitch_6
        0x58 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_270
    .sparse-switch
        0x4 -> :sswitch_e
        0x7 -> :sswitch_e
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0x14 -> :sswitch_e
        0x26 -> :sswitch_e
        0x28 -> :sswitch_e
        0x29 -> :sswitch_e
        0x2d -> :sswitch_e
        0x2f -> :sswitch_e
        0x30 -> :sswitch_e
        0x31 -> :sswitch_e
        0x38 -> :sswitch_e
        0x3a -> :sswitch_e
        0x41 -> :sswitch_e
        0x45 -> :sswitch_e
        0x4b -> :sswitch_e
        0x4c -> :sswitch_e
        0x4e -> :sswitch_e
        0x51 -> :sswitch_e
        0x56 -> :sswitch_e
        0x58 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2ca
    .packed-switch 0x1
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_90
        :pswitch_93
        :pswitch_93
        :pswitch_90
        :pswitch_93
        :pswitch_90
        :pswitch_90
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_8b
        :pswitch_86
        :pswitch_81
        :pswitch_81
        :pswitch_7c
        :pswitch_93
        :pswitch_90
        :pswitch_93
        :pswitch_93
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_68
        :pswitch_6d
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_5e
        :pswitch_59
        :pswitch_59
        :pswitch_90
        :pswitch_59
        :pswitch_90
        :pswitch_90
        :pswitch_59
        :pswitch_68
        :pswitch_54
        :pswitch_90
        :pswitch_59
        :pswitch_90
        :pswitch_90
        :pswitch_90
        :pswitch_59
        :pswitch_4f
        :pswitch_4a
        :pswitch_93
        :pswitch_93
        :pswitch_93
        :pswitch_90
        :pswitch_93
        :pswitch_90
        :pswitch_45
        :pswitch_68
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_40
        :pswitch_90
        :pswitch_3b
        :pswitch_35
        :pswitch_2f
        :pswitch_90
        :pswitch_59
        :pswitch_59
        :pswitch_29
        :pswitch_29
        :pswitch_93
        :pswitch_90
        :pswitch_90
        :pswitch_23
        :pswitch_90
        :pswitch_23
        :pswitch_1d
        :pswitch_90
        :pswitch_23
        :pswitch_1d
        :pswitch_23
        :pswitch_1d
        :pswitch_90
        :pswitch_93
        :pswitch_90
        :pswitch_93
    .end packed-switch

    :sswitch_data_380
    .sparse-switch
        0x4 -> :sswitch_f1
        0x7 -> :sswitch_ee
        0x9 -> :sswitch_eb
        0xa -> :sswitch_eb
        0x14 -> :sswitch_e8
        0x26 -> :sswitch_e5
        0x28 -> :sswitch_e2
        0x29 -> :sswitch_e2
        0x2d -> :sswitch_df
        0x2f -> :sswitch_dc
        0x30 -> :sswitch_dc
        0x31 -> :sswitch_dc
        0x38 -> :sswitch_d9
        0x3a -> :sswitch_d6
        0x41 -> :sswitch_d3
        0x45 -> :sswitch_d0
        0x4b -> :sswitch_cd
        0x4c -> :sswitch_cd
        0x4e -> :sswitch_ca
        0x51 -> :sswitch_c7
        0x56 -> :sswitch_c4
        0x58 -> :sswitch_c1
    .end sparse-switch

    :pswitch_data_3da
    .packed-switch 0x1
        :pswitch_1ff
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_203
        :pswitch_1f2
        :pswitch_1ef
        :pswitch_203
        :pswitch_1ec
        :pswitch_203
        :pswitch_203
        :pswitch_1e7
        :pswitch_1e2
        :pswitch_1dd
        :pswitch_1d8
        :pswitch_1d8
        :pswitch_1d3
        :pswitch_1d3
        :pswitch_1ce
        :pswitch_1cb
        :pswitch_203
        :pswitch_1ce
        :pswitch_1c6
        :pswitch_1c1
        :pswitch_1bc
        :pswitch_1bc
        :pswitch_1b7
        :pswitch_1b7
        :pswitch_1b2
        :pswitch_1b2
        :pswitch_1ad
        :pswitch_1ad
        :pswitch_1a8
        :pswitch_1a2
        :pswitch_19c
        :pswitch_196
        :pswitch_190
        :pswitch_18c
        :pswitch_203
        :pswitch_188
        :pswitch_203
        :pswitch_203
        :pswitch_182
        :pswitch_17c
        :pswitch_178
        :pswitch_203
        :pswitch_174
        :pswitch_203
        :pswitch_203
        :pswitch_203
        :pswitch_16e
        :pswitch_16e
        :pswitch_16e
        :pswitch_168
        :pswitch_162
        :pswitch_15e
        :pswitch_203
        :pswitch_15a
        :pswitch_203
        :pswitch_154
        :pswitch_154
        :pswitch_14e
        :pswitch_148
        :pswitch_142
        :pswitch_13e
        :pswitch_203
        :pswitch_138
        :pswitch_138
        :pswitch_134
        :pswitch_203
        :pswitch_12e
        :pswitch_128
        :pswitch_122
        :pswitch_11c
        :pswitch_118
        :pswitch_203
        :pswitch_203
        :pswitch_114
        :pswitch_203
        :pswitch_110
        :pswitch_110
        :pswitch_203
        :pswitch_10a
        :pswitch_10a
        :pswitch_106
        :pswitch_106
        :pswitch_203
        :pswitch_102
        :pswitch_203
        :pswitch_fc
    .end packed-switch

    :sswitch_data_490
    .sparse-switch
        0x4 -> :sswitch_210
        0x7 -> :sswitch_210
        0x9 -> :sswitch_210
        0xa -> :sswitch_210
        0x14 -> :sswitch_210
        0x26 -> :sswitch_210
        0x28 -> :sswitch_210
        0x29 -> :sswitch_210
        0x2d -> :sswitch_210
        0x2f -> :sswitch_210
        0x30 -> :sswitch_210
        0x31 -> :sswitch_210
        0x38 -> :sswitch_210
        0x3a -> :sswitch_210
        0x41 -> :sswitch_210
        0x45 -> :sswitch_210
        0x4b -> :sswitch_210
        0x4c -> :sswitch_210
        0x4e -> :sswitch_210
        0x51 -> :sswitch_210
        0x56 -> :sswitch_210
        0x58 -> :sswitch_210
    .end sparse-switch
.end method

.method public static areInSameModule(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_e
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingModule(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingModule(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">(TD;",
            "Ljava/util/Set<",
            "TD;>;)V"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x42

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x43

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_e
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->d()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Set;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_38
    return-void
.end method

.method private static c(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_6
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    if-nez v0, :cond_29

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_29

    :cond_11
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    if-eqz v0, :cond_1c

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->e()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0

    :cond_1c
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-eqz v0, :cond_27

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->e()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0

    :cond_29
    :goto_29
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/name/FqName;->a:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    return-object p0
.end method

.method private static d(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_6
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object v0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->c(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    if-nez p0, :cond_1c

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_1c
    return-object p0
.end method

.method private static e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x23

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_15

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object p0

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method private static f(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x1d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    if-eqz p0, :cond_38

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    if-eqz v0, :cond_38

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    if-eqz v0, :cond_38

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public static getAllOverriddenDescriptors(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            ">(TD;)",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x40

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/util/Set;)V

    return-object v0
.end method

.method public static getClassDescriptorForType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x2b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getClassDescriptorForTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    return-object p0
.end method

.method public static getClassDescriptorForTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x2c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez p0, :cond_14

    const/16 v0, 0x2d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_14
    return-object p0
.end method

.method public static getContainingModule(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x13

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingModuleOrNull(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    if-nez p0, :cond_12

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_12
    return-object p0
.end method

.method public static getContainingModuleOrNull(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x15

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    :goto_7
    if-eqz p0, :cond_20

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    if-eqz v0, :cond_10

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    return-object p0

    :cond_10
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    if-eqz v0, :cond_1b

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->v0()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    goto :goto_7

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getContainingModuleOrNull(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getContainingModuleOrNull(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getContainingSourceFile(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/e0;
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x4a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    if-eqz v0, :cond_11

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->P()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p0

    :cond_11
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/l;

    if-eqz v0, :cond_27

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/l;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/l;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/e0;

    move-result-object p0

    if-nez p0, :cond_26

    const/16 v0, 0x4b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_26
    return-object p0

    :cond_27
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/e0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/e0;

    if-nez p0, :cond_30

    const/16 v0, 0x4c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_30
    return-object p0
.end method

.method public static getDefaultConstructorVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x2e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-eq v0, v1, :cond_36

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->e()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSealedClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_36

    :cond_1c
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isAnonymousObject(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p0

    if-eqz p0, :cond_2c

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez p0, :cond_2b

    const/16 v0, 0x30

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_2b
    return-object p0

    :cond_2c
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez p0, :cond_35

    const/16 v0, 0x31

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_35
    return-object p0

    :cond_36
    :goto_36
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez p0, :cond_3f

    const/16 v0, 0x2f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_3f
    return-object p0
.end method

.method public static getDispatchReceiverParameterIfNeeded(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_6
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_11

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->E0()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFqName(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_6
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->j()Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    goto :goto_15

    :cond_11
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public static getFqNameSafe(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqName;
    .registers 2

    if-nez p0, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_6
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_15

    :cond_d
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/FqNameUnsafe;->l()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    :goto_15
    if-nez v0, :cond_1b

    const/4 p0, 0x4

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_1b
    return-object v0
.end method

.method public static getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            "Ljava/lang/Class<",
            "TD;>;)TD;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    return-object p0
.end method

.method public static getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            "Ljava/lang/Class<",
            "TD;>;Z)TD;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x11

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    const/4 v0, 0x0

    if-nez p0, :cond_b

    return-object v0

    :cond_b
    if-eqz p2, :cond_11

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    :cond_11
    :goto_11
    if-eqz p0, :cond_1f

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    return-object p0

    :cond_1a
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    goto :goto_11

    :cond_1f
    return-object v0
.end method

.method public static getSuperClassDescriptor(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x2a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->h()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getClassDescriptorForType(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-eq v1, v2, :cond_13

    return-object v0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAnnotationClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result p0

    return p0
.end method

.method public static isAnonymousObject(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x20

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/name/SpecialNames;->a:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static isClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result p0

    return p0
.end method

.method public static isClassOrEnumClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isEnumClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result v0

    if-eqz v0, :cond_12

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->U()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static isDescriptorWithLocalVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    if-eqz v0, :cond_10

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static isDirectSubclass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x18

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x19

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_e
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->h()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->f(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public static isEnumClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result p0

    return p0
.end method

.method public static isEnumEntry(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    if-nez p0, :cond_7

    const/16 v0, 0x22

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result p0

    return p0
.end method

.method public static isInterface(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result p0

    return p0
.end method

.method public static isLocal(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_6
    :goto_6
    if-eqz p0, :cond_1b

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isAnonymousObject(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isDescriptorWithLocalVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_1a

    :cond_15
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    goto :goto_6

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public static isSealedClass(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;)Z

    move-result v0

    if-eqz v0, :cond_14

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->p()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-ne p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static isSubclass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_e
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->n()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubtypeOfClass(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p0

    return p0
.end method

.method public static isSubtypeOfClass(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 4

    if-nez p0, :cond_7

    const/16 v0, 0x1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x1f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_e
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->f(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    return v1

    :cond_16
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->h()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubtypeOfClass(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public static isTopLevelDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 1

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static shouldRecordInitializerForProperty(Lkotlin/reflect/jvm/internal/impl/descriptors/k0;Lkotlin/reflect/jvm/internal/impl/types/u;)Z
    .registers 6

    if-nez p0, :cond_7

    const/16 v0, 0x3b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x3c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_e
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k0;->J()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5b

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_5b

    :cond_1c
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    return v2

    :cond_24
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object p0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->T()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->K()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v3

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->n()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->j()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->b(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    if-nez p0, :cond_5a

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/builtins/e;->e:Lkotlin/reflect/jvm/internal/impl/builtins/e;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/e;->d(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p0

    if-eqz p0, :cond_5b

    :cond_5a
    const/4 v1, 0x1

    :cond_5b
    :goto_5b
    return v1
.end method

.method public static unwrapFakeOverride(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">(TD;)TD;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x37

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    :goto_7
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne v0, v1, :cond_3b

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    goto :goto_7

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fake override should have at least one overridden descriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    return-object p0
.end method

.method public static unwrapFakeOverrideToAnyDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/m;)Lkotlin/reflect/jvm/internal/impl/descriptors/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m;",
            ">(TD;)TD;"
        }
    .end annotation

    if-nez p0, :cond_7

    const/16 v0, 0x39

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_7
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    if-eqz v0, :cond_12

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->unwrapFakeOverride(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    return-object p0

    :cond_12
    if-nez p0, :cond_19

    const/16 v0, 0x3a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->a(I)V

    :cond_19
    return-object p0
.end method
