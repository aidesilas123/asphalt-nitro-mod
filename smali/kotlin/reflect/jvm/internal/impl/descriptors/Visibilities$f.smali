###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.f (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$f)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/m0;
.source "Visibilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private static synthetic f(I)V
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_1b

    if-eq p0, v4, :cond_16

    if-eq p0, v0, :cond_11

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_11
    const-string v5, "fromClass"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_16
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v3

    goto :goto_1f

    :cond_1b
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_1f
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$3"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_2c

    if-eq p0, v0, :cond_2c

    const-string p0, "isVisible"

    aput-object p0, v1, v4

    goto :goto_30

    :cond_2c
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v4

    :goto_30
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .registers 7

    if-nez p2, :cond_6

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;->f(I)V

    :cond_6
    if-nez p3, :cond_c

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;->f(I)V

    :cond_c
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->o:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_12

    return v1

    :cond_12
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const/4 v2, 0x1

    if-nez v0, :cond_18

    return v2

    :cond_18
    instance-of p2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz p2, :cond_1d

    return v2

    :cond_1d
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    if-ne p1, p2, :cond_22

    return v2

    :cond_22
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->b()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    move-result-object p2

    if-eq p1, p2, :cond_47

    if-nez p1, :cond_2b

    goto :goto_47

    :cond_2b
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/e;

    if-eqz p2, :cond_36

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/e;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/e;->a()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    goto :goto_3a

    :cond_36
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;->getType()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object p1

    :goto_3a
    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubtypeOfClass(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p2

    if-nez p2, :cond_46

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result p1

    if-eqz p1, :cond_47

    :cond_46
    const/4 v1, 0x1

    :cond_47
    :goto_47
    return v1
.end method


# virtual methods
.method public d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 9

    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v1, 0x0

    if-nez p2, :cond_8

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;->f(I)V

    :cond_8
    const/4 v2, 0x1

    if-nez p3, :cond_e

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;->f(I)V

    :cond_e
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez p3, :cond_1d

    return v1

    :cond_1d
    if-eqz v3, :cond_34

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isCompanionObject(Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v3, :cond_34

    invoke-static {p3, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubclass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v3

    if-eqz v3, :cond_34

    return v2

    :cond_34
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->unwrapFakeOverrideToAnyDeclaration(Lkotlin/reflect/jvm/internal/impl/descriptors/m;)Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v0, :cond_41

    return v1

    :cond_41
    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->isSubclass(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-direct {p0, p1, v3, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;->g(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    if-eqz v0, :cond_4e

    return v2

    :cond_4e
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$f;->d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p1

    return p1
.end method
