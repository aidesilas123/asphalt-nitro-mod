###### Class kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.e (kotlin.reflect.jvm.internal.impl.descriptors.Visibilities$e)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$e;
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
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/Visibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "private/*private to this*/"

    return-object v0
.end method

.method public d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$e;->f(I)V

    :cond_6
    const/4 v1, 0x1

    if-nez p3, :cond_c

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities$e;->f(I)V

    :cond_c
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/m0;

    invoke-virtual {v2, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/m0;->d(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;Lkotlin/reflect/jvm/internal/impl/descriptors/m;Lkotlin/reflect/jvm/internal/impl/descriptors/i;)Z

    move-result p3

    if-eqz p3, :cond_3f

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    if-ne p1, p3, :cond_19

    return v1

    :cond_19
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibilities;->b()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;

    move-result-object p3

    if-ne p1, p3, :cond_20

    return v0

    :cond_20
    const-class p3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils;->getParentOfType(Lkotlin/reflect/jvm/internal/impl/descriptors/i;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p2

    if-eqz p2, :cond_3f

    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/f;

    if-eqz p3, :cond_3f

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/f;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/f;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/i;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/i;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3f
    return v0
.end method
