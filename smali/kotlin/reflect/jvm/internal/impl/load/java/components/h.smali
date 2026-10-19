###### Class kotlin.reflect.jvm.internal.impl.load.java.components.h (kotlin.reflect.jvm.internal.impl.load.java.components.h)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/components/h;
.super Lkotlin/reflect/jvm/internal/impl/load/java/components/a;
.source "JavaAnnotationMapper.kt"


# static fields
.field static final synthetic g:[Lkotlin/reflect/KProperty;


# instance fields
.field private final h:Lkotlin/reflect/jvm/internal/impl/storage/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/e0;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/load/java/components/h;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "allValueArguments"

    const-string v4, "getAllValueArguments()Ljava/util/Map;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/e0;-><init>(Lkotlin/reflect/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/d0;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/h;->g:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;)V
    .registers 5

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->h:Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$e;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns$e;->D:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    const-string v1, "KotlinBuiltIns.FQ_NAMES.target"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;Lkotlin/reflect/jvm/internal/impl/name/FqName;)V

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;->e()Lkotlin/reflect/jvm/internal/impl/storage/h;

    move-result-object p1

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/components/h;)V

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/storage/h;->c(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/impl/storage/e;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/h;->h:Lkotlin/reflect/jvm/internal/impl/storage/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/h;->h:Lkotlin/reflect/jvm/internal/impl/storage/e;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/h;->g:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/storage/StorageKt;->getValue(Lkotlin/reflect/jvm/internal/impl/storage/e;Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.components.h.a (kotlin.reflect.jvm.internal.impl.load.java.components.h$a)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;
.super Lkotlin/jvm/internal/t;
.source "JavaAnnotationMapper.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/components/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/Map<",
        "Lkotlin/reflect/jvm/internal/impl/name/Name;",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/components/h;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/components/h;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/components/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/components/h;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/a;->b()Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/c;->c:Lkotlin/reflect/jvm/internal/impl/load/java/components/c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/components/h;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/a;->b()Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/d;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/d;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/c;->c(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v0

    goto :goto_34

    :cond_1e
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/l;

    if-eqz v0, :cond_33

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/c;->c:Lkotlin/reflect/jvm/internal/impl/load/java/components/c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/components/h;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/a;->b()Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/p;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/c;->c(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v0

    goto :goto_34

    :cond_33
    move-object v0, v2

    :goto_34
    if-eqz v0, :cond_44

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/b;->k:Lkotlin/reflect/jvm/internal/impl/load/java/components/b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/components/b;->d()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    :cond_44
    if-eqz v2, :cond_47

    goto :goto_4b

    :cond_47
    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v2

    :goto_4b
    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/components/h$a;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
