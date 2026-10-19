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
