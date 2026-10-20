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
