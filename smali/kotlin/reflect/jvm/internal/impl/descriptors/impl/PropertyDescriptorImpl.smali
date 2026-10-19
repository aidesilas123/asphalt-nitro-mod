###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl (kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a0;
.source "PropertyDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    }
.end annotation


# instance fields
.field private final h:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field private j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field private final l:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private s:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

.field private t:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

.field private w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

.field private x:Z

.field private y:Lkotlin/reflect/jvm/internal/impl/descriptors/n;

.field private z:Lkotlin/reflect/jvm/internal/impl/descriptors/n;


# direct methods
.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;ZZZZZZ)V
    .registers 27

    move-object v7, p0

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p8

    if-nez p1, :cond_c

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_12
    if-nez v8, :cond_18

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_18
    if-nez v9, :cond_1e

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_1e
    if-nez p7, :cond_24

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_24
    if-nez v10, :cond_2a

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_2a
    if-nez p9, :cond_30

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_30
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p7

    move/from16 v5, p6

    move-object/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a0;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/u;ZLkotlin/reflect/jvm/internal/impl/descriptors/d0;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->j:Ljava/util/Collection;

    iput-object v8, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iput-object v9, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez p2, :cond_48

    move-object v0, v7

    goto :goto_49

    :cond_48
    move-object v0, p2

    :goto_49
    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    iput-object v10, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move/from16 v0, p10

    iput-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->m:Z

    move/from16 v0, p11

    iput-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->n:Z

    move/from16 v0, p12

    iput-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->o:Z

    move/from16 v0, p13

    iput-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->p:Z

    move/from16 v0, p14

    iput-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->q:Z

    move/from16 v0, p15

    iput-boolean v0, v7, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->r:Z

    return-void
.end method

.method private H0(ZLkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/impl/descriptors/d0;
    .registers 3

    if-eqz p1, :cond_e

    if-eqz p2, :cond_5

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/l;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    move-result-object p1

    goto :goto_10

    :cond_e
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    :goto_10
    if-nez p1, :cond_17

    const/16 p2, 0x17

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_17
    return-object p1
.end method

.method private static I0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;
    .registers 3

    if-nez p0, :cond_7

    const/16 v0, 0x19

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_7
    if-nez p1, :cond_e

    const/16 v0, 0x1a

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_e
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->n0()Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->n0()Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return-object p0
.end method

.method private static N0(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object p1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->isPrivate(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    :cond_10
    return-object p0
.end method

.method public static create(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;ZZZZZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .registers 31

    if-nez p0, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_6
    if-nez p1, :cond_d

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_d
    if-nez p2, :cond_14

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_14
    if-nez p3, :cond_1b

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_1b
    if-nez p5, :cond_22

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_22
    if-nez p6, :cond_29

    const/16 v0, 0xc

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_29
    if-nez p7, :cond_30

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_30
    new-instance v16, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-direct/range {v0 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;ZZZZZZ)V

    return-object v16
.end method

.method static synthetic k0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->s:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    return-object p0
.end method

.method private static synthetic u(I)V
    .registers 12

    const/16 v0, 0x25

    const/16 v1, 0x24

    const/16 v2, 0x22

    const/16 v3, 0x21

    const/16 v4, 0x17

    if-eq p0, v4, :cond_1a

    if-eq p0, v3, :cond_1a

    if-eq p0, v2, :cond_1a

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_1a

    packed-switch p0, :pswitch_data_120

    const-string v5, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_1c

    :cond_1a
    :pswitch_1a
    const-string v5, "@NotNull method %s.%s must not return null"

    :goto_1c
    const/4 v6, 0x2

    if-eq p0, v4, :cond_2c

    if-eq p0, v3, :cond_2c

    if-eq p0, v2, :cond_2c

    if-eq p0, v1, :cond_2c

    if-eq p0, v0, :cond_2c

    packed-switch p0, :pswitch_data_12e

    const/4 v7, 0x3

    goto :goto_2d

    :cond_2c
    :pswitch_2c
    const/4 v7, 0x2

    :goto_2d
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl"

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_13c

    :pswitch_35
    const-string v10, "containingDeclaration"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_3a
    const-string v10, "overriddenDescriptors"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_3f
    const-string v10, "newName"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_44
    const-string v10, "newVisibility"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_49
    const-string v10, "newModality"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_4e
    const-string v10, "newOwner"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_53
    const-string v10, "accessorDescriptor"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_58
    const-string v10, "substitutor"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_5d
    const-string v10, "copyConfiguration"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_62
    const-string v10, "originalSubstitutor"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_67
    aput-object v8, v7, v9

    goto :goto_91

    :pswitch_6a
    const-string v10, "typeParameters"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_6f
    const-string v10, "outType"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_74
    const-string v10, "source"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_79
    const-string v10, "kind"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_7e
    const-string v10, "name"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_83
    const-string v10, "visibility"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_88
    const-string v10, "modality"

    aput-object v10, v7, v9

    goto :goto_91

    :pswitch_8d
    const-string v10, "annotations"

    aput-object v10, v7, v9

    :goto_91
    const/4 v9, 0x1

    if-eq p0, v4, :cond_cf

    if-eq p0, v3, :cond_ca

    if-eq p0, v2, :cond_c5

    if-eq p0, v1, :cond_c0

    if-eq p0, v0, :cond_bb

    packed-switch p0, :pswitch_data_18a

    aput-object v8, v7, v9

    goto :goto_d3

    :pswitch_a2
    const-string v8, "getAccessors"

    aput-object v8, v7, v9

    goto :goto_d3

    :pswitch_a7
    const-string v8, "getVisibility"

    aput-object v8, v7, v9

    goto :goto_d3

    :pswitch_ac
    const-string v8, "getModality"

    aput-object v8, v7, v9

    goto :goto_d3

    :pswitch_b1
    const-string v8, "getReturnType"

    aput-object v8, v7, v9

    goto :goto_d3

    :pswitch_b6
    const-string v8, "getTypeParameters"

    aput-object v8, v7, v9

    goto :goto_d3

    :cond_bb
    const-string v8, "copy"

    aput-object v8, v7, v9

    goto :goto_d3

    :cond_c0
    const-string v8, "getOverriddenDescriptors"

    aput-object v8, v7, v9

    goto :goto_d3

    :cond_c5
    const-string v8, "getKind"

    aput-object v8, v7, v9

    goto :goto_d3

    :cond_ca
    const-string v8, "getOriginal"

    aput-object v8, v7, v9

    goto :goto_d3

    :cond_cf
    const-string v8, "getSourceToUseForCopy"

    aput-object v8, v7, v9

    :goto_d3
    packed-switch p0, :pswitch_data_198

    const-string v8, "<init>"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_db
    const-string v8, "setOverriddenDescriptors"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_e0
    const-string v8, "createSubstitutedCopy"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_e5
    const-string v8, "getSubstitutedInitialSignatureDescriptor"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_ea
    const-string v8, "doSubstitute"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_ef
    const-string v8, "substitute"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_f4
    const-string v8, "setVisibility"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_f9
    const-string v8, "setType"

    aput-object v8, v7, v6

    goto :goto_102

    :pswitch_fe
    const-string v8, "create"

    aput-object v8, v7, v6

    :goto_102
    :pswitch_102
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_119

    if-eq p0, v3, :cond_119

    if-eq p0, v2, :cond_119

    if-eq p0, v1, :cond_119

    if-eq p0, v0, :cond_119

    packed-switch p0, :pswitch_data_1da

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_11e

    :cond_119
    :pswitch_119
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_11e
    throw p0

    nop

    :pswitch_data_120
    .packed-switch 0x11
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x11
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
    .end packed-switch

    :pswitch_data_13c
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_35
        :pswitch_8d
        :pswitch_88
        :pswitch_83
        :pswitch_7e
        :pswitch_79
        :pswitch_74
        :pswitch_6f
        :pswitch_6a
        :pswitch_83
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_62
        :pswitch_67
        :pswitch_5d
        :pswitch_58
        :pswitch_53
        :pswitch_4e
        :pswitch_49
        :pswitch_44
        :pswitch_79
        :pswitch_3f
        :pswitch_74
        :pswitch_67
        :pswitch_67
        :pswitch_3a
        :pswitch_67
        :pswitch_67
    .end packed-switch

    :pswitch_data_18a
    .packed-switch 0x11
        :pswitch_b6
        :pswitch_b1
        :pswitch_ac
        :pswitch_a7
        :pswitch_a2
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x7
        :pswitch_fe
        :pswitch_fe
        :pswitch_fe
        :pswitch_fe
        :pswitch_fe
        :pswitch_fe
        :pswitch_fe
        :pswitch_f9
        :pswitch_f9
        :pswitch_f4
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_ef
        :pswitch_102
        :pswitch_ea
        :pswitch_e5
        :pswitch_e5
        :pswitch_e0
        :pswitch_e0
        :pswitch_e0
        :pswitch_e0
        :pswitch_e0
        :pswitch_e0
        :pswitch_102
        :pswitch_102
        :pswitch_db
        :pswitch_102
        :pswitch_102
    .end packed-switch

    :pswitch_data_1da
    .packed-switch 0x11
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
        :pswitch_119
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic A0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->z0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    return-object p1
.end method

.method protected B0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .registers 25

    if-nez p1, :cond_7

    const/16 v0, 0x1b

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0x1c

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_e
    if-nez p3, :cond_15

    const/16 v0, 0x1d

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_15
    if-nez p5, :cond_1c

    const/16 v0, 0x1e

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_1c
    if-nez p6, :cond_23

    const/16 v0, 0x1f

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_23
    if-nez p7, :cond_2a

    const/16 v0, 0x20

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_2a
    new-instance v16, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/b;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a0;->J()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->s0()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isConst()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->c0()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->R()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isExternal()Z

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->y()Z

    move-result v15

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;ZLkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;ZZZZZZ)V

    return-object v16
.end method

.method protected F0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 22

    move-object/from16 v8, p0

    if-nez p1, :cond_9

    const/16 v0, 0x18

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Z

    move-result v0

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v7

    invoke-direct {v8, v0, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->H0(ZLkotlin/reflect/jvm/internal/impl/descriptors/y;)Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->B0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    goto :goto_42

    :cond_3e
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Ljava/util/List;

    move-result-object v1

    :goto_42
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/types/j0;

    move-result-object v3

    invoke-static {v1, v3, v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor;->substituteTypeParameters(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/j0;Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->c:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->i(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_61

    return-object v5

    :cond_61
    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v6

    if-eqz v6, :cond_6e

    invoke-interface {v6, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v6

    if-nez v6, :cond_6f

    return-object v5

    :cond_6e
    move-object v6, v5

    :cond_6f
    iget-object v7, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->t:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    if-eqz v7, :cond_97

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v7

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/Variance;->b:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v1, v7, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->i(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v7

    if-nez v7, :cond_80

    return-object v5

    :cond_80
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/b;

    iget-object v11, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->t:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;->getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    move-result-object v11

    invoke-direct {v10, v0, v7, v11}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;)V

    iget-object v7, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->t:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v7

    invoke-direct {v9, v0, v10, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/w;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    goto :goto_98

    :cond_97
    move-object v9, v5

    :goto_98
    invoke-virtual {v0, v3, v2, v6, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->P0(Lkotlin/reflect/jvm/internal/impl/types/u;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)V

    iget-object v2, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    if-nez v2, :cond_a1

    move-object v2, v5

    goto :goto_dc

    :cond_a1
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/b;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v12

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v6

    invoke-static {v3, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->N0(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v13

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->C()Z

    move-result v14

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->isExternal()Z

    move-result v15

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->isInline()Z

    move-result v16

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->n()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v18

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    move-object v9, v2

    move-object v10, v0

    invoke-direct/range {v9 .. v19}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/z;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)V

    :goto_dc
    if-eqz v2, :cond_f8

    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v3

    iget-object v6, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    invoke-static {v1, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->I0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v6

    invoke-virtual {v2, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->B0(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)V

    if-eqz v3, :cond_f4

    invoke-virtual {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->i(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v3

    goto :goto_f5

    :cond_f4
    move-object v3, v5

    :goto_f5
    invoke-virtual {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->H0(Lkotlin/reflect/jvm/internal/impl/types/u;)V

    :cond_f8
    iget-object v3, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    if-nez v3, :cond_fe

    move-object v3, v5

    goto :goto_139

    :cond_fe
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v12

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->N0(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v13

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->C()Z

    move-result v14

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->isExternal()Z

    move-result v15

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/o;->isInline()Z

    move-result v16

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->o()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    move-result-object v18

    sget-object v19, Lkotlin/reflect/jvm/internal/impl/descriptors/d0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d0;

    move-object v9, v3

    move-object v10, v0

    invoke-direct/range {v9 .. v19}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)V

    :goto_139
    if-eqz v3, :cond_194

    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->g()Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v3

    move-object v11, v1

    invoke-static/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->getSubstitutedValueParameters(Lkotlin/reflect/jvm/internal/impl/descriptors/o;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;ZZ[Z)Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_175

    invoke-virtual {v0, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->O0(Z)V

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v4

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->H()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v4

    iget-object v9, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->g()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v9

    invoke-static {v3, v4, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->createSetterParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/a0;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ValueParameterDescriptorImpl;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    :cond_175
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v7, :cond_18e

    iget-object v7, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    invoke-static {v1, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->I0(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/descriptors/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v7

    invoke-virtual {v3, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->B0(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)V

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl;->H0(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;)V

    goto :goto_194

    :cond_18e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_194
    :goto_194
    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->y:Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    if-nez v4, :cond_19a

    move-object v6, v5

    goto :goto_1a3

    :cond_19a
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v6, v4, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    :goto_1a3
    iget-object v4, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->z:Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    if-nez v4, :cond_1a8

    goto :goto_1b1

    :cond_1a8
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {v5, v4, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    :goto_1b1
    invoke-virtual {v0, v2, v3, v6, v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->K0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;Lkotlin/reflect/jvm/internal/impl/descriptors/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/n;Lkotlin/reflect/jvm/internal/impl/descriptors/n;)V

    invoke-static/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->create()Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1da

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    invoke-interface {v4, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c6

    :cond_1da
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->x0(Ljava/util/Collection;)V

    :cond_1dd
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->isConst()Z

    move-result v1

    if-eqz v1, :cond_1ea

    iget-object v1, v8, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a0;->g:Lkotlin/reflect/jvm/internal/impl/storage/f;

    if-eqz v1, :cond_1ea

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/a0;->e0(Lkotlin/reflect/jvm/internal/impl/storage/f;)V

    :cond_1ea
    return-object v0
.end method

.method public G0()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    return-object v0
.end method

.method public H()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->s:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    return-object v0
.end method

.method public J0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;Lkotlin/reflect/jvm/internal/impl/descriptors/a0;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->K0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;Lkotlin/reflect/jvm/internal/impl/descriptors/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/n;Lkotlin/reflect/jvm/internal/impl/descriptors/n;)V

    return-void
.end method

.method public K()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->t:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    return-object v0
.end method

.method public K0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;Lkotlin/reflect/jvm/internal/impl/descriptors/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/n;Lkotlin/reflect/jvm/internal/impl/descriptors/n;)V
    .registers 5

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->y:Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->z:Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    return-void
.end method

.method public L()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->z:Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    return-object v0
.end method

.method public L0()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->x:Z

    return v0
.end method

.method public M0()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V

    return-object v0
.end method

.method public O0(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->x:Z

    return-void
.end method

.method public P0(Lkotlin/reflect/jvm/internal/impl/types/u;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b0;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0xe

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_7
    if-nez p2, :cond_e

    const/16 v0, 0xf

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_e
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->b0(Lkotlin/reflect/jvm/internal/impl/types/u;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u:Ljava/util/List;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->t:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->s:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    return-void
.end method

.method public Q0(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)V
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    return-void
.end method

.method public R()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->p:Z

    return v0
.end method

.method public bridge synthetic Z()Lkotlin/reflect/jvm/internal/impl/descriptors/l;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne v0, p0, :cond_6

    move-object v0, p0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_11

    const/16 v1, 0x21

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_11
    return-object v0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/j;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_7
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p0

    :cond_e
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->M0()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->e()Lkotlin/reflect/jvm/internal/impl/types/j0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->u(Lkotlin/reflect/jvm/internal/impl/types/j0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->s(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->m()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    return-object p1
.end method

.method public c0()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->o:Z

    return v0
.end method

.method public d()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->j:Ljava/util/Collection;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_10

    const/16 v1, 0x24

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_10
    return-object v0
.end method

.method public bridge synthetic getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->G0()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-nez v0, :cond_9

    const/16 v1, 0x22

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_9
    return-object v0
.end method

.method public getReturnType()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/z;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0x12

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_b
    return-object v0
.end method

.method public getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u:Ljava/util/List;

    if-nez v0, :cond_9

    const/16 v1, 0x11

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_9
    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez v0, :cond_9

    const/16 v1, 0x14

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_9
    return-object v0
.end method

.method public isConst()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->n:Z

    return v0
.end method

.method public isExternal()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->q:Z

    return v0
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez v0, :cond_9

    const/16 v1, 0x13

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_9
    return-object v0
.end method

.method public r0()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->y:Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->v:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;

    if-eqz v1, :cond_d

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    if-eqz v1, :cond_14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-object v0
.end method

.method public s0()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->m:Z

    return v0
.end method

.method public w(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x0(Ljava/util/Collection;)V
    .registers 3
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

    const/16 v0, 0x23

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->j:Ljava/util/Collection;

    return-void
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->r:Z

    return v0
.end method

.method public z0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 7

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->M0()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->s(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->v(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->q(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    invoke-virtual {p1, p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->p(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->m()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    if-nez p1, :cond_28

    const/16 p2, 0x25

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->u(I)V

    :cond_28
    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl.a (kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl$a)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
.super Ljava/lang/Object;
.source "PropertyDescriptorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lkotlin/reflect/jvm/internal/impl/descriptors/i;

.field private b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field private d:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field private e:Z

.field private f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field private g:Lkotlin/reflect/jvm/internal/impl/types/j0;

.field private h:Z

.field private i:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field final synthetic l:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->p()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->e:Z

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/j0;->a:Lkotlin/reflect/jvm/internal/impl/types/j0;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->g:Lkotlin/reflect/jvm/internal/impl/types/j0;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h:Z

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->k0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v1

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->j:Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->k:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method

.method private static synthetic a(I)V
    .registers 23

    move/from16 v0, p0

    const/16 v1, 0xf

    const/16 v2, 0xe

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0x11

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v0, v11, :cond_2c

    if-eq v0, v10, :cond_2c

    if-eq v0, v9, :cond_2c

    if-eq v0, v8, :cond_2c

    if-eq v0, v7, :cond_2c

    if-eq v0, v6, :cond_2c

    if-eq v0, v5, :cond_2c

    if-eq v0, v4, :cond_2c

    if-eq v0, v3, :cond_2c

    if-eq v0, v2, :cond_2c

    if-eq v0, v1, :cond_2c

    const-string v12, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_2e

    :cond_2c
    const-string v12, "@NotNull method %s.%s must not return null"

    :goto_2e
    if-eq v0, v11, :cond_46

    if-eq v0, v10, :cond_46

    if-eq v0, v9, :cond_46

    if-eq v0, v8, :cond_46

    if-eq v0, v7, :cond_46

    if-eq v0, v6, :cond_46

    if-eq v0, v5, :cond_46

    if-eq v0, v4, :cond_46

    if-eq v0, v3, :cond_46

    if-eq v0, v2, :cond_46

    if-eq v0, v1, :cond_46

    const/4 v13, 0x3

    goto :goto_47

    :cond_46
    const/4 v13, 0x2

    :goto_47
    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration"

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_100

    const-string v16, "owner"

    aput-object v16, v13, v15

    goto :goto_74

    :pswitch_54
    const-string v16, "name"

    aput-object v16, v13, v15

    goto :goto_74

    :pswitch_59
    const-string v16, "substitution"

    aput-object v16, v13, v15

    goto :goto_74

    :pswitch_5e
    const-string v16, "typeParameters"

    aput-object v16, v13, v15

    goto :goto_74

    :pswitch_63
    const-string v16, "kind"

    aput-object v16, v13, v15

    goto :goto_74

    :pswitch_68
    const-string v16, "visibility"

    aput-object v16, v13, v15

    goto :goto_74

    :pswitch_6d
    const-string v16, "modality"

    aput-object v16, v13, v15

    goto :goto_74

    :pswitch_72
    aput-object v14, v13, v15

    :goto_74
    const-string v15, "setName"

    const-string v16, "setSubstitution"

    const-string v17, "setTypeParameters"

    const-string v18, "setKind"

    const-string v19, "setVisibility"

    const-string v20, "setModality"

    const-string v21, "setOwner"

    if-eq v0, v11, :cond_c1

    if-eq v0, v10, :cond_bc

    if-eq v0, v9, :cond_b7

    if-eq v0, v8, :cond_b4

    if-eq v0, v7, :cond_b1

    if-eq v0, v6, :cond_ae

    if-eq v0, v5, :cond_ab

    if-eq v0, v4, :cond_a8

    if-eq v0, v3, :cond_a3

    if-eq v0, v2, :cond_a0

    if-eq v0, v1, :cond_9b

    aput-object v14, v13, v11

    goto :goto_c3

    :cond_9b
    const-string v14, "setCopyOverrides"

    aput-object v14, v13, v11

    goto :goto_c3

    :cond_a0
    aput-object v16, v13, v11

    goto :goto_c3

    :cond_a3
    const-string v14, "setDispatchReceiverParameter"

    aput-object v14, v13, v11

    goto :goto_c3

    :cond_a8
    aput-object v17, v13, v11

    goto :goto_c3

    :cond_ab
    aput-object v15, v13, v11

    goto :goto_c3

    :cond_ae
    aput-object v18, v13, v11

    goto :goto_c3

    :cond_b1
    aput-object v19, v13, v11

    goto :goto_c3

    :cond_b4
    aput-object v20, v13, v11

    goto :goto_c3

    :cond_b7
    const-string v14, "setPreserveSourceElement"

    aput-object v14, v13, v11

    goto :goto_c3

    :cond_bc
    const-string v14, "setOriginal"

    aput-object v14, v13, v11

    goto :goto_c3

    :cond_c1
    aput-object v21, v13, v11

    :goto_c3
    packed-switch v0, :pswitch_data_126

    aput-object v21, v13, v10

    goto :goto_da

    :pswitch_c9
    aput-object v15, v13, v10

    goto :goto_da

    :pswitch_cc
    aput-object v16, v13, v10

    goto :goto_da

    :pswitch_cf
    aput-object v17, v13, v10

    goto :goto_da

    :pswitch_d2
    aput-object v18, v13, v10

    goto :goto_da

    :pswitch_d5
    aput-object v19, v13, v10

    goto :goto_da

    :pswitch_d8
    aput-object v20, v13, v10

    :goto_da
    :pswitch_da
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    if-eq v0, v11, :cond_fa

    if-eq v0, v10, :cond_fa

    if-eq v0, v9, :cond_fa

    if-eq v0, v8, :cond_fa

    if-eq v0, v7, :cond_fa

    if-eq v0, v6, :cond_fa

    if-eq v0, v5, :cond_fa

    if-eq v0, v4, :cond_fa

    if-eq v0, v3, :cond_fa

    if-eq v0, v2, :cond_fa

    if-eq v0, v1, :cond_fa

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ff

    :cond_fa
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_ff
    throw v0

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_72
        :pswitch_72
        :pswitch_72
        :pswitch_6d
        :pswitch_72
        :pswitch_68
        :pswitch_72
        :pswitch_63
        :pswitch_72
        :pswitch_5e
        :pswitch_72
        :pswitch_72
        :pswitch_59
        :pswitch_72
        :pswitch_72
        :pswitch_54
        :pswitch_72
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_da
        :pswitch_da
        :pswitch_da
        :pswitch_d8
        :pswitch_da
        :pswitch_d5
        :pswitch_da
        :pswitch_d2
        :pswitch_da
        :pswitch_cf
        :pswitch_da
        :pswitch_da
        :pswitch_cc
        :pswitch_da
        :pswitch_da
        :pswitch_c9
        :pswitch_da
    .end packed-switch
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    return-object p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    return-object p0
.end method

.method static synthetic d(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Z
    .registers 1

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h:Z

    return p0
.end method

.method static synthetic e(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method static synthetic f(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    return-object p0
.end method

.method static synthetic g(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0
.end method

.method static synthetic h(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

.method static synthetic i(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/name/Name;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->k:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object p0
.end method

.method static synthetic j(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Z
    .registers 1

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->e:Z

    return p0
.end method

.method static synthetic k(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/types/j0;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->g:Lkotlin/reflect/jvm/internal/impl/types/j0;

    return-object p0
.end method


# virtual methods
.method public m()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->F0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    return-object v0
.end method

.method n()Lkotlin/reflect/jvm/internal/impl/descriptors/z;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    return-object v0
.end method

.method o()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    move-result-object v0

    return-object v0
.end method

.method public p(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 2

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->h:Z

    return-object p0
.end method

.method public q(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

.method public r(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a(I)V

    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method public s(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0
.end method

.method public t(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a(I)V

    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    return-object p0
.end method

.method public u(Lkotlin/reflect/jvm/internal/impl/types/j0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->g:Lkotlin/reflect/jvm/internal/impl/types/j0;

    return-object p0
.end method

.method public v(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->a(I)V

    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    return-object p0
.end method
