###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl.c (kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl$c)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
.super Ljava/lang/Object;
.source "FunctionDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/o$a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/o;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lkotlin/reflect/jvm/internal/impl/types/j0;

.field protected b:Lkotlin/reflect/jvm/internal/impl/descriptors/i;

.field protected c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field protected d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field protected e:Lkotlin/reflect/jvm/internal/impl/descriptors/o;

.field protected f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

.field protected i:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

.field protected j:Lkotlin/reflect/jvm/internal/impl/types/u;

.field protected k:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field private p:Z

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

.field private s:Z

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/Boolean;

.field protected v:Z

.field final synthetic w:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;Lkotlin/reflect/jvm/internal/impl/types/j0;Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/b0;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/j0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b0;",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_6
    const/4 v1, 0x1

    if-nez p3, :cond_c

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_c
    if-nez p4, :cond_12

    const/4 v2, 0x2

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_12
    if-nez p5, :cond_18

    const/4 v2, 0x3

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_18
    if-nez p6, :cond_1e

    const/4 v2, 0x4

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_1e
    if-nez p7, :cond_24

    const/4 v2, 0x5

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_24
    if-nez p9, :cond_2a

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_2a
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->b0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;)Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v3

    iput-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->l:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->m:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->n:Z

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->o:Z

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->w0()Z

    move-result v1

    iput-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->p:Z

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->q:Ljava/util/List;

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->r:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->y0()Z

    move-result p1

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->s:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t:Ljava/util/Map;

    iput-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->u:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->v:Z

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->a:Lkotlin/reflect/jvm/internal/impl/types/j0;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    iput-object p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->g:Ljava/util/List;

    iput-object p8, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->j:Lkotlin/reflect/jvm/internal/impl/types/u;

    iput-object p10, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->k:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-void
.end method

.method private static synthetic t(I)V
    .registers 17

    packed-switch p0, :pswitch_data_114

    :pswitch_3
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_158

    :pswitch_c
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e
    const/4 v2, 0x2

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_19c

    :pswitch_17
    const-string v5, "substitution"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_1c
    const-string v5, "userDataKey"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_21
    const-string v5, "additionalAnnotations"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_26
    const-string v5, "type"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_2b
    const-string v5, "parameters"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_30
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_35
    const-string v5, "visibility"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_3a
    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_3f
    aput-object v3, v2, v4

    goto :goto_64

    :pswitch_42
    const-string v5, "owner"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_47
    const-string v5, "newReturnType"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_4c
    const-string v5, "newValueParameterDescriptors"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_51
    const-string v5, "kind"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_56
    const-string v5, "newVisibility"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_5b
    const-string v5, "newModality"

    aput-object v5, v2, v4

    goto :goto_64

    :pswitch_60
    const-string v5, "newOwner"

    aput-object v5, v2, v4

    :goto_64
    const-string v4, "putUserData"

    const-string v5, "setSubstitution"

    const-string v6, "setAdditionalAnnotations"

    const-string v7, "setReturnType"

    const-string v8, "setTypeParameters"

    const-string v9, "setValueParameters"

    const-string v10, "setName"

    const-string v11, "setKind"

    const-string v12, "setVisibility"

    const-string v13, "setModality"

    const-string v14, "setOwner"

    const/4 v15, 0x1

    packed-switch p0, :pswitch_data_1ee

    :pswitch_7e
    aput-object v3, v2, v15

    goto/16 :goto_d9

    :pswitch_82
    const-string v3, "setJustForTypeSubstitution"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_87
    const-string v3, "getSubstitution"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_8c
    aput-object v4, v2, v15

    goto :goto_d9

    :pswitch_8f
    aput-object v5, v2, v15

    goto :goto_d9

    :pswitch_92
    aput-object v6, v2, v15

    goto :goto_d9

    :pswitch_95
    const-string v3, "setHiddenForResolutionEverywhereBesideSupercalls"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_9a
    const-string v3, "setHiddenToOvercomeSignatureClash"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_9f
    const-string v3, "setDropOriginalInContainingParts"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_a4
    const-string v3, "setPreserveSourceElement"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_a9
    const-string v3, "setSignatureChange"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_ae
    const-string v3, "setOriginal"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_b3
    const-string v3, "setDispatchReceiverParameter"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_b8
    const-string v3, "setExtensionReceiverParameter"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_bd
    aput-object v7, v2, v15

    goto :goto_d9

    :pswitch_c0
    aput-object v8, v2, v15

    goto :goto_d9

    :pswitch_c3
    aput-object v9, v2, v15

    goto :goto_d9

    :pswitch_c6
    aput-object v10, v2, v15

    goto :goto_d9

    :pswitch_c9
    const-string v3, "setCopyOverrides"

    aput-object v3, v2, v15

    goto :goto_d9

    :pswitch_ce
    aput-object v11, v2, v15

    goto :goto_d9

    :pswitch_d1
    aput-object v12, v2, v15

    goto :goto_d9

    :pswitch_d4
    aput-object v13, v2, v15

    goto :goto_d9

    :pswitch_d7
    aput-object v14, v2, v15

    :goto_d9
    packed-switch p0, :pswitch_data_232

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_101

    :pswitch_e1
    aput-object v4, v2, v1

    goto :goto_101

    :pswitch_e4
    aput-object v5, v2, v1

    goto :goto_101

    :pswitch_e7
    aput-object v6, v2, v1

    goto :goto_101

    :pswitch_ea
    aput-object v7, v2, v1

    goto :goto_101

    :pswitch_ed
    aput-object v8, v2, v1

    goto :goto_101

    :pswitch_f0
    aput-object v9, v2, v1

    goto :goto_101

    :pswitch_f3
    aput-object v10, v2, v1

    goto :goto_101

    :pswitch_f6
    aput-object v11, v2, v1

    goto :goto_101

    :pswitch_f9
    aput-object v12, v2, v1

    goto :goto_101

    :pswitch_fc
    aput-object v13, v2, v1

    goto :goto_101

    :pswitch_ff
    aput-object v14, v2, v1

    :goto_101
    :pswitch_101
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_278

    :pswitch_108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_113

    :pswitch_10e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_113
    throw v1

    :pswitch_data_114
    .packed-switch 0x8
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_158
    .packed-switch 0x8
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_47
        :pswitch_42
        :pswitch_3f
        :pswitch_3a
        :pswitch_3f
        :pswitch_35
        :pswitch_3f
        :pswitch_51
        :pswitch_3f
        :pswitch_3f
        :pswitch_30
        :pswitch_3f
        :pswitch_2b
        :pswitch_3f
        :pswitch_2b
        :pswitch_3f
        :pswitch_26
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_21
        :pswitch_3f
        :pswitch_17
        :pswitch_3f
        :pswitch_1c
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch

    :pswitch_data_1ee
    .packed-switch 0x8
        :pswitch_d7
        :pswitch_7e
        :pswitch_d4
        :pswitch_7e
        :pswitch_d1
        :pswitch_7e
        :pswitch_ce
        :pswitch_c9
        :pswitch_7e
        :pswitch_c6
        :pswitch_7e
        :pswitch_c3
        :pswitch_7e
        :pswitch_c0
        :pswitch_7e
        :pswitch_bd
        :pswitch_b8
        :pswitch_b3
        :pswitch_ae
        :pswitch_a9
        :pswitch_a4
        :pswitch_9f
        :pswitch_9a
        :pswitch_95
        :pswitch_7e
        :pswitch_92
        :pswitch_7e
        :pswitch_8f
        :pswitch_7e
        :pswitch_8c
        :pswitch_87
        :pswitch_82
    .end packed-switch

    :pswitch_data_232
    .packed-switch 0x7
        :pswitch_ff
        :pswitch_101
        :pswitch_fc
        :pswitch_101
        :pswitch_f9
        :pswitch_101
        :pswitch_f6
        :pswitch_101
        :pswitch_101
        :pswitch_f3
        :pswitch_101
        :pswitch_f0
        :pswitch_101
        :pswitch_ed
        :pswitch_101
        :pswitch_ea
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_101
        :pswitch_e7
        :pswitch_101
        :pswitch_e4
        :pswitch_101
        :pswitch_e1
        :pswitch_101
        :pswitch_101
        :pswitch_101
    .end packed-switch

    :pswitch_data_278
    .packed-switch 0x8
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_108
        :pswitch_10e
        :pswitch_10e
        :pswitch_10e
    .end packed-switch
.end method

.method static synthetic u(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->r:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    return-object p0
.end method

.method static synthetic v(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->q:Ljava/util/List;

    return-object p0
.end method

.method static synthetic w(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;)Z
    .registers 1

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->p:Z

    return p0
.end method

.method static synthetic x(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;)Z
    .registers 1

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->s:Z

    return p0
.end method

.method static synthetic y(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->u:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic z(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public A(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x20

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->r:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    return-object p0
.end method

.method public B(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->l:Z

    return-object p0
.end method

.method public C(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    return-object p0
.end method

.method public D()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->o:Z

    return-object p0
.end method

.method public E(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    return-object p0
.end method

.method public F(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->u:Ljava/lang/Boolean;

    return-object p0
.end method

.method public G()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->s:Z

    return-object p0
.end method

.method public H()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->p:Z

    return-object p0
.end method

.method public I(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->v:Z

    return-object p0
.end method

.method public J(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0xd

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-object p0
.end method

.method public K(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    return-object p0
.end method

.method public L(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->k:Lkotlin/reflect/jvm/internal/impl/name/Name;

    return-object p0
.end method

.method public M(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    return-object p0
.end method

.method public N(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    return-object p0
.end method

.method public O()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->n:Z

    return-object p0
.end method

.method public P(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x16

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->j:Lkotlin/reflect/jvm/internal/impl/types/u;

    return-object p0
.end method

.method public Q()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->m:Z

    return-object p0
.end method

.method public R(Lkotlin/reflect/jvm/internal/impl/types/j0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0x22

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->a:Lkotlin/reflect/jvm/internal/impl/types/j0;

    return-object p0
.end method

.method public S(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/i0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x14

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->q:Ljava/util/List;

    return-object p0
.end method

.method public T(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 v0, 0x12

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->g:Ljava/util/List;

    return-object p0
.end method

.method public U(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;
    .registers 3

    if-nez p1, :cond_7

    const/16 v0, 0xb

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->t(I)V

    :cond_7
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    return-object p0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->D()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->T(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public build()Lkotlin/reflect/jvm/internal/impl/descriptors/o;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->w:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;->z0(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->U(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->C(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->G()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->E(Lkotlin/reflect/jvm/internal/impl/descriptors/b0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Lkotlin/reflect/jvm/internal/impl/types/j0;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->R(Lkotlin/reflect/jvm/internal/impl/types/j0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->L(Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->K(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->O()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->P(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->M(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->B(Z)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->S(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->N(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->J(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->A(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s()Lkotlin/reflect/jvm/internal/impl/descriptors/o$a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;->Q()Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$c;

    move-result-object v0

    return-object v0
.end method
