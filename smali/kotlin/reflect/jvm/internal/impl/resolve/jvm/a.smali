###### Class kotlin.reflect.jvm.internal.impl.resolve.jvm.a (kotlin.reflect.jvm.internal.impl.resolve.jvm.a)
.class public final Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;
.super Ljava/lang/Object;
.source "JavaDescriptorResolver.kt"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/components/f;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;Lkotlin/reflect/jvm/internal/impl/load/java/components/f;)V
    .registers 4

    const-string v0, "packageFragmentProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaResolverCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/components/f;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    return-object v0
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 6

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;->e()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;->E()Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;->a:Lkotlin/reflect/jvm/internal/impl/load/java/structure/LightClassOriginKind;

    if-ne v1, v2, :cond_1a

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;->b:Lkotlin/reflect/jvm/internal/impl/load/java/components/f;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/f;->d(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1

    :cond_1a
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;->j()Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;->b(Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->O()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    goto :goto_2d

    :cond_2c
    move-object v0, v2

    :goto_2d
    if-eqz v0, :cond_3a

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/q;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object p1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->s:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-interface {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/ResolutionScope;->c(Lkotlin/reflect/jvm/internal/impl/name/Name;Lkotlin/reflect/jvm/internal/impl/incremental/components/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p1

    goto :goto_3b

    :cond_3a
    move-object p1, v2

    :goto_3b
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v0, :cond_40

    goto :goto_41

    :cond_40
    move-object v2, p1

    :goto_41
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v2

    :cond_44
    if-nez v0, :cond_47

    return-object v2

    :cond_47
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/jvm/a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/name/FqName;->e()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v0

    const-string v3, "fqName.parent()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaPackageFragmentProvider;->a(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;

    if-eqz v0, :cond_62

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaPackageFragment;->b0(Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    :cond_62
    return-object v2
.end method
