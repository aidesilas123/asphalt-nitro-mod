###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.e (kotlin.reflect.jvm.internal.impl.descriptors.impl.e)
.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;
    }
.end annotation


# instance fields
.field private final e:Lkotlin/reflect/jvm/internal/impl/types/Variance;

.field private final f:Z

.field private final g:I

.field private final h:Lkotlin/reflect/jvm/internal/impl/storage/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/e<",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/reflect/jvm/internal/impl/storage/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/storage/e<",
            "Lkotlin/reflect/jvm/internal/impl/types/y;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lkotlin/reflect/jvm/internal/impl/storage/h;


# direct methods
.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/d0;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V
    .registers 11

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_c
    if-nez p3, :cond_12

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_12
    if-nez p4, :cond_18

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_18
    if-nez p5, :cond_1e

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_1e
    if-nez p8, :cond_24

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_24
    if-nez p9, :cond_2a

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_2a
    invoke-direct {p0, p2, p3, p4, p8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/descriptors/d0;)V

    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->e:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->f:Z

    iput p7, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->g:I

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;

    invoke-direct {p2, p0, p1, p9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/h;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/e;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->h:Lkotlin/reflect/jvm/internal/impl/storage/e;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;

    invoke-direct {p2, p0, p1, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/name/Name;)V

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/h;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/e;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->i:Lkotlin/reflect/jvm/internal/impl/storage/e;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->j:Lkotlin/reflect/jvm/internal/impl/storage/h;

    return-void
.end method

.method private static synthetic u(I)V
    .registers 7

    packed-switch p0, :pswitch_data_7a

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_8a

    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e
    const/4 v2, 0x2

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_9a

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_3c

    :pswitch_1c
    aput-object v3, v2, v4

    goto :goto_3c

    :pswitch_1f
    const-string v5, "supertypeLoopChecker"

    aput-object v5, v2, v4

    goto :goto_3c

    :pswitch_24
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_3c

    :pswitch_29
    const-string v5, "variance"

    aput-object v5, v2, v4

    goto :goto_3c

    :pswitch_2e
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_3c

    :pswitch_33
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_3c

    :pswitch_38
    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    :goto_3c
    const/4 v4, 0x1

    packed-switch p0, :pswitch_data_b6

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_43
    const-string v3, "getStorageManager"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_48
    const-string v3, "getOriginal"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_4d
    const-string v3, "getDefaultType"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_52
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_57
    const-string v3, "getUpperBounds"

    aput-object v3, v2, v4

    goto :goto_60

    :pswitch_5c
    const-string v3, "getVariance"

    aput-object v3, v2, v4

    :goto_60
    packed-switch p0, :pswitch_data_c6

    const-string v3, "<init>"

    aput-object v3, v2, v1

    :pswitch_67
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_d6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_79

    :pswitch_74
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_79
    throw p0

    :pswitch_data_7a
    .packed-switch 0x7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x7
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x7
        :pswitch_5c
        :pswitch_57
        :pswitch_52
        :pswitch_4d
        :pswitch_48
        :pswitch_43
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x7
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
        :pswitch_67
    .end packed-switch

    :pswitch_data_d6
    .packed-switch 0x7
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
    .end packed-switch
.end method


# virtual methods
.method public I()Lkotlin/reflect/jvm/internal/impl/storage/h;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->j:Lkotlin/reflect/jvm/internal/impl/storage/h;

    if-nez v0, :cond_9

    const/16 v1, 0xc

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_9
    return-object v0
.end method

.method public M()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic Z()Lkotlin/reflect/jvm/internal/impl/descriptors/l;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 3

    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/i;->Z()Lkotlin/reflect/jvm/internal/impl/descriptors/l;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    if-nez v0, :cond_d

    const/16 v1, 0xb

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_d
    return-object v0
.end method

.method public bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b0(Lkotlin/reflect/jvm/internal/impl/types/u;)V
.end method

.method protected abstract e0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation
.end method

.method public getUpperBounds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;->l()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_11
    return-object v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->g:I

    return v0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->h:Lkotlin/reflect/jvm/internal/impl/storage/e;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/f0;

    if-nez v0, :cond_f

    const/16 v1, 0x9

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_f
    return-object v0
.end method

.method public j()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->e:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-nez v0, :cond_8

    const/4 v1, 0x7

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_8
    return-object v0
.end method

.method public n()Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->i:Lkotlin/reflect/jvm/internal/impl/storage/e;

    invoke-interface {v0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/y;

    if-nez v0, :cond_f

    const/16 v1, 0xa

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->u(I)V

    :cond_f
    return-object v0
.end method

.method public t()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->f:Z

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

    invoke-interface {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->m(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.e.a (kotlin.reflect.jvm.internal.impl.descriptors.impl.e$a)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/d0;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/types/f0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/storage/h;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$a;->a()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.e.b (kotlin.reflect.jvm.internal.impl.descriptors.impl.e$b)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/i;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/types/Variance;ZILkotlin/reflect/jvm/internal/impl/descriptors/d0;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/types/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/storage/h;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/name/Name;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/name/Name;)V
    .registers 4

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->b:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 7

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->i()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->a:Lkotlin/reflect/jvm/internal/impl/storage/h;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;

    invoke-direct {v5, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;)V

    invoke-interface {v4, v5}, Lkotlin/reflect/jvm/internal/impl/storage/h;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/e;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/e;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/e;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/types/f0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->a()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.e.b.a (kotlin.reflect.jvm.internal.impl.descriptors.impl.e$b$a)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;
.super Ljava/lang/Object;
.source "AbstractTypeParameterDescriptor.java"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->a()Lkotlin/reflect/jvm/internal/impl/types/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scope for type parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->b:Lkotlin/reflect/jvm/internal/impl/name/Name;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/Name;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;

    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$b$a;->a()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.e.c (kotlin.reflect.jvm.internal.impl.descriptors.impl.e$c)
.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;
.source "AbstractTypeParameterDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;Lkotlin/reflect/jvm/internal/impl/storage/h;Lkotlin/reflect/jvm/internal/impl/descriptors/g0;)V
    .registers 5

    if-nez p2, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->o(I)V

    :cond_6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/h;)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

    return-void
.end method

.method private static synthetic o(I)V
    .registers 11

    const/4 v0, 0x5

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

    const-string v7, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_80

    const-string v9, "storageManager"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_2e
    const-string v9, "type"

    aput-object v9, v6, v8

    goto :goto_35

    :pswitch_33
    aput-object v7, v6, v8

    :goto_35
    if-eq p0, v4, :cond_56

    if-eq p0, v3, :cond_51

    if-eq p0, v2, :cond_4c

    if-eq p0, v1, :cond_47

    if-eq p0, v0, :cond_42

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_42
    const-string v7, "getSupertypeLoopChecker"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_47
    const-string v7, "getBuiltIns"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_4c
    const-string v7, "getDeclarationDescriptor"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_51
    const-string v7, "getParameters"

    aput-object v7, v6, v4

    goto :goto_5a

    :cond_56
    const-string v7, "computeSupertypes"

    aput-object v7, v6, v4

    :goto_5a
    packed-switch p0, :pswitch_data_90

    const-string v7, "<init>"

    aput-object v7, v6, v3

    goto :goto_66

    :pswitch_62
    const-string v7, "reportSupertypeLoopError"

    aput-object v7, v6, v3

    :goto_66
    :pswitch_66
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eq p0, v4, :cond_7a

    if-eq p0, v3, :cond_7a

    if-eq p0, v2, :cond_7a

    if-eq p0, v1, :cond_7a

    if-eq p0, v0, :cond_7a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7f

    :cond_7a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_7f
    throw p0

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_2e
    .end packed-switch

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_66
        :pswitch_62
    .end packed-switch
.end method


# virtual methods
.method public c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    if-nez v0, :cond_8

    const/4 v1, 0x3

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->o(I)V

    :cond_8
    return-object v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->e0()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->o(I)V

    :cond_c
    return-object v0
.end method

.method protected g()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    const-string v0, "Cyclic upper bounds"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->createErrorType(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

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

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->o(I)V

    :cond_a
    return-object v0
.end method

.method protected j()Lkotlin/reflect/jvm/internal/impl/descriptors/g0;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/g0;

    if-nez v0, :cond_8

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->o(I)V

    :cond_8
    return-object v0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->getBuiltIns(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x4

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->o(I)V

    :cond_c
    return-object v0
.end method

.method protected n(Lkotlin/reflect/jvm/internal/impl/types/u;)V
    .registers 3

    if-nez p1, :cond_6

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->o(I)V

    :cond_6
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;->b0(Lkotlin/reflect/jvm/internal/impl/types/u;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e$c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
