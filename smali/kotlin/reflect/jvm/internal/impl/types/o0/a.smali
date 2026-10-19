###### Class kotlin.reflect.jvm.internal.impl.types.o0.a (kotlin.reflect.jvm.internal.impl.types.o0.a)
.class public Lkotlin/reflect/jvm/internal/impl/types/o0/a;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;
.source "ErrorSimpleFunctionDescriptorImpl.java"


# instance fields
.field private final D:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;)V
    .registers 11

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->u(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->u(I)V

    :cond_c
    const/4 v3, 0x0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    const-string v0, "<ERROR FUNCTION>"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/c0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->D:Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$d;

    return-void
.end method

.method private static synthetic u(I)V
    .registers 9

    const/4 v0, 0x7

    const/4 v1, 0x6

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

    const-string v5, "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_74

    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_40

    :pswitch_20
    const-string v7, "overriddenDescriptors"

    aput-object v7, v4, v6

    goto :goto_40

    :pswitch_25
    aput-object v5, v4, v6

    goto :goto_40

    :pswitch_28
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_40

    :pswitch_2d
    const-string v7, "annotations"

    aput-object v7, v4, v6

    goto :goto_40

    :pswitch_32
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_40

    :pswitch_37
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_40

    :pswitch_3c
    const-string v7, "ownerScope"

    aput-object v7, v4, v6

    :goto_40
    const-string v6, "createSubstitutedCopy"

    const/4 v7, 0x1

    if-eq p0, v1, :cond_4f

    if-eq p0, v0, :cond_4a

    aput-object v5, v4, v7

    goto :goto_51

    :cond_4a
    const-string v5, "copy"

    aput-object v5, v4, v7

    goto :goto_51

    :cond_4f
    aput-object v6, v4, v7

    :goto_51
    packed-switch p0, :pswitch_data_88

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_60

    :pswitch_59
    const-string v5, "setOverriddenDescriptors"

    aput-object v5, v4, v3

    goto :goto_60

    :pswitch_5e
    aput-object v6, v4, v3

    :goto_60
    :pswitch_60
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_6e

    if-eq p0, v0, :cond_6e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_73

    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_73
    throw p0

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_25
        :pswitch_25
        :pswitch_20
    .end packed-switch

    :pswitch_data_88
    .packed-switch 0x2
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_5e
        :pswitch_60
        :pswitch_60
        :pswitch_59
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic A0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->Y0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    move-result-object p1

    return-object p1
.end method

.method public Y0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c0;
    .registers 6

    return-object p0
.end method

.method public bridge synthetic e0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/o;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->Y0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    move-result-object p1

    return-object p1
.end method

.method public isSuspend()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected k0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .registers 7

    if-nez p1, :cond_6

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->u(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->u(I)V

    :cond_c
    if-nez p5, :cond_12

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->u(I)V

    :cond_12
    if-nez p6, :cond_18

    const/4 p1, 0x5

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->u(I)V

    :cond_18
    return-object p0
.end method

.method public p0(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "TV;>;)TV;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public r()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/o0/a;)V

    return-object v0
.end method

.method public x0(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x8

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a;->u(I)V

    :cond_7
    return-void
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.o0.a.C0553a (kotlin.reflect.jvm.internal.impl.types.o0.a$a)
.class Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;
.super Ljava/lang/Object;
.source "ErrorSimpleFunctionDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/types/o0/a;->r()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/types/o0/a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/o0/a;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->a:Lkotlin/reflect/jvm/internal/impl/types/o0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic t(I)V
    .registers 25

    move/from16 v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/16 v3, 0x1e

    const/16 v4, 0x12

    const/16 v5, 0x10

    const/16 v6, 0xe

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x1

    if-eq v0, v11, :cond_30

    if-eq v0, v10, :cond_30

    if-eq v0, v9, :cond_30

    if-eq v0, v8, :cond_30

    if-eq v0, v7, :cond_30

    if-eq v0, v6, :cond_30

    if-eq v0, v5, :cond_30

    if-eq v0, v4, :cond_30

    if-eq v0, v3, :cond_30

    if-eq v0, v2, :cond_30

    if-eq v0, v1, :cond_30

    packed-switch v0, :pswitch_data_15e

    const-string v12, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_32

    :cond_30
    :pswitch_30
    const-string v12, "@NotNull method %s.%s must not return null"

    :goto_32
    const/4 v13, 0x2

    if-eq v0, v11, :cond_4e

    if-eq v0, v10, :cond_4e

    if-eq v0, v9, :cond_4e

    if-eq v0, v8, :cond_4e

    if-eq v0, v7, :cond_4e

    if-eq v0, v6, :cond_4e

    if-eq v0, v5, :cond_4e

    if-eq v0, v4, :cond_4e

    if-eq v0, v3, :cond_4e

    if-eq v0, v2, :cond_4e

    if-eq v0, v1, :cond_4e

    packed-switch v0, :pswitch_data_174

    const/4 v14, 0x3

    goto :goto_4f

    :cond_4e
    :pswitch_4e
    const/4 v14, 0x2

    :goto_4f
    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl$1"

    const/16 v16, 0x0

    packed-switch v0, :pswitch_data_18a

    const-string v17, "owner"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_5d
    const-string v17, "additionalAnnotations"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_62
    const-string v17, "type"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_67
    const-string v17, "userDataKey"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_6c
    const-string v17, "substitution"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_71
    const-string v17, "parameters"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_76
    const-string v17, "name"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_7b
    const-string v17, "kind"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_80
    const-string v17, "visibility"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_85
    const-string v17, "modality"

    aput-object v17, v14, v16

    goto :goto_8c

    :pswitch_8a
    aput-object v15, v14, v16

    :goto_8c
    const-string v16, "putUserData"

    const-string v17, "setSubstitution"

    const-string v18, "setValueParameters"

    const-string v19, "setName"

    const-string v20, "setKind"

    const-string v21, "setVisibility"

    const-string v22, "setModality"

    const-string v23, "setOwner"

    if-eq v0, v11, :cond_109

    if-eq v0, v10, :cond_106

    if-eq v0, v9, :cond_103

    if-eq v0, v8, :cond_100

    if-eq v0, v7, :cond_fd

    if-eq v0, v6, :cond_fa

    if-eq v0, v5, :cond_f7

    if-eq v0, v4, :cond_f2

    if-eq v0, v3, :cond_ed

    if-eq v0, v2, :cond_ea

    if-eq v0, v1, :cond_e5

    packed-switch v0, :pswitch_data_1ca

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_b8
    const-string v15, "setHiddenForResolutionEverywhereBesideSupercalls"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_bd
    const-string v15, "setHiddenToOvercomeSignatureClash"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_c2
    const-string v15, "setDropOriginalInContainingParts"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_c7
    const-string v15, "setPreserveSourceElement"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_cc
    const-string v15, "setSignatureChange"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_d1
    const-string v15, "setOriginal"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_d6
    const-string v15, "setDispatchReceiverParameter"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_db
    const-string v15, "setExtensionReceiverParameter"

    aput-object v15, v14, v11

    goto :goto_10b

    :pswitch_e0
    const-string v15, "setReturnType"

    aput-object v15, v14, v11

    goto :goto_10b

    :cond_e5
    const-string v15, "setCopyOverrides"

    aput-object v15, v14, v11

    goto :goto_10b

    :cond_ea
    aput-object v20, v14, v11

    goto :goto_10b

    :cond_ed
    const-string v15, "setAdditionalAnnotations"

    aput-object v15, v14, v11

    goto :goto_10b

    :cond_f2
    const-string v15, "setTypeParameters"

    aput-object v15, v14, v11

    goto :goto_10b

    :cond_f7
    aput-object v16, v14, v11

    goto :goto_10b

    :cond_fa
    aput-object v17, v14, v11

    goto :goto_10b

    :cond_fd
    aput-object v18, v14, v11

    goto :goto_10b

    :cond_100
    aput-object v19, v14, v11

    goto :goto_10b

    :cond_103
    aput-object v21, v14, v11

    goto :goto_10b

    :cond_106
    aput-object v22, v14, v11

    goto :goto_10b

    :cond_109
    aput-object v23, v14, v11

    :goto_10b
    packed-switch v0, :pswitch_data_1e0

    aput-object v23, v14, v13

    goto :goto_134

    :pswitch_111
    const-string v15, "setAdditionalAnnotations"

    aput-object v15, v14, v13

    goto :goto_134

    :pswitch_116
    const-string v15, "setReturnType"

    aput-object v15, v14, v13

    goto :goto_134

    :pswitch_11b
    const-string v15, "setTypeParameters"

    aput-object v15, v14, v13

    goto :goto_134

    :pswitch_120
    aput-object v16, v14, v13

    goto :goto_134

    :pswitch_123
    aput-object v17, v14, v13

    goto :goto_134

    :pswitch_126
    aput-object v18, v14, v13

    goto :goto_134

    :pswitch_129
    aput-object v19, v14, v13

    goto :goto_134

    :pswitch_12c
    aput-object v20, v14, v13

    goto :goto_134

    :pswitch_12f
    aput-object v21, v14, v13

    goto :goto_134

    :pswitch_132
    aput-object v22, v14, v13

    :goto_134
    :pswitch_134
    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eq v0, v11, :cond_157

    if-eq v0, v10, :cond_157

    if-eq v0, v9, :cond_157

    if-eq v0, v8, :cond_157

    if-eq v0, v7, :cond_157

    if-eq v0, v6, :cond_157

    if-eq v0, v5, :cond_157

    if-eq v0, v4, :cond_157

    if-eq v0, v3, :cond_157

    if-eq v0, v2, :cond_157

    if-eq v0, v1, :cond_157

    packed-switch v0, :pswitch_data_220

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_15c

    :cond_157
    :pswitch_157
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_15c
    throw v0

    nop

    :pswitch_data_15e
    .packed-switch 0x14
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
    .end packed-switch

    :pswitch_data_174
    .packed-switch 0x14
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
        :pswitch_4e
    .end packed-switch

    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_85
        :pswitch_8a
        :pswitch_80
        :pswitch_8a
        :pswitch_7b
        :pswitch_8a
        :pswitch_8a
        :pswitch_76
        :pswitch_8a
        :pswitch_71
        :pswitch_8a
        :pswitch_6c
        :pswitch_8a
        :pswitch_67
        :pswitch_8a
        :pswitch_71
        :pswitch_8a
        :pswitch_62
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_5d
        :pswitch_8a
    .end packed-switch

    :pswitch_data_1ca
    .packed-switch 0x14
        :pswitch_e0
        :pswitch_db
        :pswitch_d6
        :pswitch_d1
        :pswitch_cc
        :pswitch_c7
        :pswitch_c2
        :pswitch_bd
        :pswitch_b8
    .end packed-switch

    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_134
        :pswitch_132
        :pswitch_134
        :pswitch_12f
        :pswitch_134
        :pswitch_12c
        :pswitch_134
        :pswitch_134
        :pswitch_129
        :pswitch_134
        :pswitch_126
        :pswitch_134
        :pswitch_123
        :pswitch_134
        :pswitch_120
        :pswitch_134
        :pswitch_11b
        :pswitch_134
        :pswitch_116
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_134
        :pswitch_111
        :pswitch_134
    .end packed-switch

    :pswitch_data_220
    .packed-switch 0x14
        :pswitch_157
        :pswitch_157
        :pswitch_157
        :pswitch_157
        :pswitch_157
        :pswitch_157
        :pswitch_157
        :pswitch_157
        :pswitch_157
    .end packed-switch
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public b(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0xb

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_7
    return-object p0
.end method

.method public bridge synthetic build()Lkotlin/reflect/jvm/internal/impl/descriptors/o;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->u()Lkotlin/reflect/jvm/internal/impl/descriptors/c0;

    move-result-object v0

    return-object v0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x4

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_6
    return-object p0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b0;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public e()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public f(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b0;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public g(Lkotlin/reflect/jvm/internal/impl/types/j0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/j0;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0xd

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_7
    return-object p0
.end method

.method public h()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public i(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x9

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_7
    return-object p0
.end method

.method public j(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_6
    return-object p0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public l(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x13

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_7
    return-object p0
.end method

.method public m(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public n(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public o(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x11

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_7
    return-object p0
.end method

.method public p(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_6
    return-object p0
.end method

.method public q(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_6
    return-object p0
.end method

.method public r(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0x1d

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->t(I)V

    :cond_7
    return-object p0
.end method

.method public s()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c0;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public u()Lkotlin/reflect/jvm/internal/impl/descriptors/c0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/o0/a$a;->a:Lkotlin/reflect/jvm/internal/impl/types/o0/a;

    return-object v0
.end method
