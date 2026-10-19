###### Class kotlin.jvm.internal.m0 (kotlin.jvm.internal.m0)
.class public Lkotlin/jvm/internal/m0;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .registers 3

    new-instance v0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .registers 3

    new-instance p2, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p2, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p2
.end method

.method public c(Lkotlin/jvm/internal/q;)Lkotlin/reflect/KFunction;
    .registers 2

    return-object p1
.end method

.method public d(Ljava/lang/Class;)Lkotlin/reflect/KClass;
    .registers 3

    new-instance v0, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {v0, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public e(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/KClass;
    .registers 3

    new-instance p2, Lkotlin/jvm/internal/ClassReference;

    invoke-direct {p2, p1}, Lkotlin/jvm/internal/ClassReference;-><init>(Ljava/lang/Class;)V

    return-object p2
.end method

.method public f(Ljava/lang/Class;Ljava/lang/String;)Lkotlin/reflect/d;
    .registers 4

    new-instance v0, Lkotlin/jvm/internal/a0;

    invoke-direct {v0, p1, p2}, Lkotlin/jvm/internal/a0;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .registers 6

    move-object v0, p1

    check-cast v0, Lkotlin/jvm/internal/TypeReference;

    new-instance v1, Lkotlin/jvm/internal/TypeReference;

    invoke-interface {p1}, Lkotlin/reflect/KType;->d()Lkotlin/reflect/c;

    move-result-object v2

    invoke-interface {p1}, Lkotlin/reflect/KType;->k()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lkotlin/jvm/internal/TypeReference;->o()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/TypeReference;->l()I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v2, p1, v3, v0}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/c;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-object v1
.end method

.method public h(Lkotlin/jvm/internal/u;)Lkotlin/reflect/KMutableProperty0;
    .registers 2

    return-object p1
.end method

.method public i(Lkotlin/jvm/internal/w;)Lkotlin/reflect/KMutableProperty1;
    .registers 2

    return-object p1
.end method

.method public j(Lkotlin/jvm/internal/y;)Lkotlin/reflect/KMutableProperty2;
    .registers 2

    return-object p1
.end method

.method public k(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .registers 6

    move-object v0, p1

    check-cast v0, Lkotlin/jvm/internal/TypeReference;

    new-instance v1, Lkotlin/jvm/internal/TypeReference;

    invoke-interface {p1}, Lkotlin/reflect/KType;->d()Lkotlin/reflect/c;

    move-result-object v2

    invoke-interface {p1}, Lkotlin/reflect/KType;->k()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Lkotlin/jvm/internal/TypeReference;->o()Lkotlin/reflect/KType;

    move-result-object v3

    invoke-virtual {v0}, Lkotlin/jvm/internal/TypeReference;->l()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v2, p1, v3, v0}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/c;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-object v1
.end method

.method public l(Lkotlin/reflect/KType;Lkotlin/reflect/KType;)Lkotlin/reflect/KType;
    .registers 6

    new-instance v0, Lkotlin/jvm/internal/TypeReference;

    invoke-interface {p1}, Lkotlin/reflect/KType;->d()Lkotlin/reflect/c;

    move-result-object v1

    invoke-interface {p1}, Lkotlin/reflect/KType;->k()Ljava/util/List;

    move-result-object v2

    check-cast p1, Lkotlin/jvm/internal/TypeReference;

    invoke-virtual {p1}, Lkotlin/jvm/internal/TypeReference;->l()I

    move-result p1

    invoke-direct {v0, v1, v2, p2, p1}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/c;Ljava/util/List;Lkotlin/reflect/KType;I)V

    return-object v0
.end method

.method public m(Lkotlin/jvm/internal/b0;)Lkotlin/reflect/KProperty0;
    .registers 2

    return-object p1
.end method

.method public n(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty1;
    .registers 2

    return-object p1
.end method

.method public o(Lkotlin/jvm/internal/f0;)Lkotlin/reflect/KProperty2;
    .registers 2

    return-object p1
.end method

.method public p(Lkotlin/jvm/internal/p;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlin.jvm.functions."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    return-object p1
.end method

.method public q(Lkotlin/jvm/internal/t;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/jvm/internal/m0;->p(Lkotlin/jvm/internal/p;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public r(Lkotlin/reflect/e;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/e;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Lkotlin/jvm/internal/TypeParameterReference;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/TypeParameterReference;->a(Ljava/util/List;)V

    return-void
.end method

.method public s(Lkotlin/reflect/c;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/c;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeProjection;",
            ">;Z)",
            "Lkotlin/reflect/KType;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/TypeReference;

    invoke-direct {v0, p1, p2, p3}, Lkotlin/jvm/internal/TypeReference;-><init>(Lkotlin/reflect/c;Ljava/util/List;Z)V

    return-object v0
.end method

.method public t(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)Lkotlin/reflect/e;
    .registers 6

    new-instance v0, Lkotlin/jvm/internal/TypeParameterReference;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlin/jvm/internal/TypeParameterReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Lkotlin/reflect/KVariance;Z)V

    return-object v0
.end method
