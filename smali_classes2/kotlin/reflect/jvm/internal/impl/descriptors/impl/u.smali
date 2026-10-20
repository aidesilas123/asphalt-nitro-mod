###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.u (kotlin.reflect.jvm.internal.impl.descriptors.impl.u)
.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;
.source "PropertyAccessorDescriptorImpl.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/x;


# instance fields
.field private e:Z

.field private final f:Z

.field private final g:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

.field private final h:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

.field private final i:Z

.field private final j:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

.field private k:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

.field private l:Lkotlin/reflect/jvm/internal/impl/descriptors/o;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;ZZZLkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)V
    .registers 12

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_12
    if-nez p4, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_18
    if-nez p5, :cond_1e

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_1e
    if-nez p10, :cond_24

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_24
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/j0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    invoke-direct {p0, v0, p4, p5, p10}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)V

    const/4 p4, 0x0

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e:Z

    iput-boolean p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->f:Z

    iput-boolean p8, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->i:Z

    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    return-void
.end method

.method private static synthetic u(I)V
    .registers 7

    packed-switch p0, :pswitch_data_8e

    :pswitch_3
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_a2

    :pswitch_c
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e
    const/4 v2, 0x2

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_b6

    const-string v5, "modality"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_1c
    const-string v5, "overriddenDescriptors"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_21
    const-string v5, "substitutor"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_26
    aput-object v3, v2, v4

    goto :goto_41

    :pswitch_29
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_2e
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_33
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_38
    const-string v5, "correspondingProperty"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_3d
    const-string v5, "visibility"

    aput-object v5, v2, v4

    :goto_41
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_d6

    :pswitch_45
    aput-object v3, v2, v4

    goto :goto_6a

    :pswitch_48
    const-string v3, "getOverriddenDescriptors"

    aput-object v3, v2, v4

    goto :goto_6a

    :pswitch_4d
    const-string v3, "getCorrespondingProperty"

    aput-object v3, v2, v4

    goto :goto_6a

    :pswitch_52
    const-string v3, "getCorrespondingVariable"

    aput-object v3, v2, v4

    goto :goto_6a

    :pswitch_57
    const-string v3, "getVisibility"

    aput-object v3, v2, v4

    goto :goto_6a

    :pswitch_5c
    const-string v3, "getModality"

    aput-object v3, v2, v4

    goto :goto_6a

    :pswitch_61
    const-string v3, "getTypeParameters"

    aput-object v3, v2, v4

    goto :goto_6a

    :pswitch_66
    const-string v3, "getKind"

    aput-object v3, v2, v4

    :goto_6a
    packed-switch p0, :pswitch_data_ea

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_7b

    :pswitch_72
    const-string v3, "setOverriddenDescriptors"

    aput-object v3, v2, v1

    goto :goto_7b

    :pswitch_77
    const-string v3, "substitute"

    aput-object v3, v2, v1

    :goto_7b
    :pswitch_7b
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_100

    :pswitch_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8d

    :pswitch_88
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_8d
    throw p0

    :pswitch_data_8e
    .packed-switch 0x6
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x6
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_26
        :pswitch_21
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_1c
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x6
        :pswitch_66
        :pswitch_45
        :pswitch_61
        :pswitch_5c
        :pswitch_57
        :pswitch_52
        :pswitch_4d
        :pswitch_48
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x6
        :pswitch_7b
        :pswitch_77
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_72
    .end packed-switch

    :pswitch_data_100
    .packed-switch 0x6
        :pswitch_88
        :pswitch_82
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic A0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->b0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object p1

    return-object p1
.end method

.method public B0(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    return-void
.end method

.method public C()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e:Z

    return v0
.end method

.method public F0(Lkotlin/reflect/jvm/internal/impl/descriptors/m0;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    return-void
.end method

.method public H()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->P()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v0

    return-object v0
.end method

.method public K()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->P()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->K()Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    move-result-object v0

    return-object v0
.end method

.method public P()Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-nez v0, :cond_9

    const/16 v1, 0xc

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_9
    return-object v0
.end method

.method public R()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Y()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic Z()Lkotlin/reflect/jvm/internal/impl/descriptors/l;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e0()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e0()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e0()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e0()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/o;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e0()Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    move-result-object v0

    return-object v0
.end method

.method public b0(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;Lkotlin/reflect/jvm/internal/impl/descriptors/m0;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/x;
    .registers 6

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Accessors must be copied by the corresponding property"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/j;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object p1

    return-object p1
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e0()Lkotlin/reflect/jvm/internal/impl/descriptors/x;
.end method

.method public getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->j:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-nez v0, :cond_8

    const/4 v1, 0x6

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_8
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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_b
    return-object v0
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    if-nez v0, :cond_9

    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_9
    return-object v0
.end method

.method public isExternal()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->f:Z

    return v0
.end method

.method public isInfix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInline()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->i:Z

    return v0
.end method

.method public isOperator()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSuspend()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected k0(Z)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->P()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eqz p1, :cond_25

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->getGetter()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v2

    goto :goto_29

    :cond_25
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->getSetter()Lkotlin/reflect/jvm/internal/impl/descriptors/a0;

    move-result-object v2

    :goto_29
    if-eqz v2, :cond_12

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2f
    return-object v0
.end method

.method public n0()Lkotlin/reflect/jvm/internal/impl/descriptors/o;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    return-object v0
.end method

.method public p()Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->g:Lkotlin/reflect/jvm/internal/impl/descriptors/Modality;

    if-nez v0, :cond_9

    const/16 v1, 0x9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_9
    return-object v0
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

.method public w0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
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

    const/16 p1, 0xe

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->u(I)V

    :cond_7
    return-void
.end method

.method public y0()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public z0(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/u;->e:Z

    return-void
.end method
