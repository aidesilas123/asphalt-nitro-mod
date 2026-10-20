###### Class kotlinx.serialization.modules.PolymorphicModuleBuilder (kotlinx.serialization.modules.b)
.class public final Lkotlinx/serialization/modules/b;
.super Ljava/lang/Object;
.source "PolymorphicModuleBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Base:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\n\u0008\u0000\u0010\u0001 \u0000*\u00020\u00022\u00020\u0002B\'\u0008\u0001\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0001J5\u0010\u0015\u001a\u00020\u00122-\u0010\u000c\u001a)\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0018\u00010\u000b0\tJ7\u0010\u0019\u001a\u00020\u00122-\u0010\u0008\u001a)\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008\u0016\u0012\u0008\u0008\u0017\u0012\u0004\u0008\u0008(\u0018\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0018\u00010\u000b0\tH\u0007J,\u0010\u001a\u001a\u00020\u0012\"\u0008\u0008\u0001\u0010\u001b*\u00028\u00002\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u00042\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0\u0006R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0088\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006X\u0088\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0008\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u00028\u0000\u0018\u00010\u000b\u0018\u00010\tX\u0088\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\u0018\u00010\tX\u0088\u000e\u00a2\u0006\u0002\n\u0000R0\u0010\u000e\u001a$\u0012 \u0012\u001e\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0004\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u00060\u00100\u000fX\u0088\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/serialization/modules/PolymorphicModuleBuilder;",
        "Base",
        "",
        "baseClass",
        "Lkotlin/reflect/KClass;",
        "baseSerializer",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V",
        "defaultDeserializerProvider",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "defaultSerializerProvider",
        "Lkotlinx/serialization/SerializationStrategy;",
        "subclasses",
        "",
        "Lkotlin/Pair;",
        "buildTo",
        "",
        "builder",
        "Lkotlinx/serialization/modules/SerializersModuleBuilder;",
        "default",
        "Lkotlin/ParameterName;",
        "name",
        "className",
        "defaultDeserializer",
        "subclass",
        "T",
        "serializer",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "TBase;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/c<",
            "TBase;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lkotlin/reflect/KClass<",
            "+TBase;>;",
            "Lkotlinx/serialization/c<",
            "+TBase;>;>;>;"
        }
    .end annotation
.end field

.field private d:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-TBase;+",
            "Lkotlinx/serialization/i<",
            "-TBase;>;>;"
        }
    .end annotation
.end field

.field private e:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/serialization/b<",
            "+TBase;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "TBase;>;",
            "Lkotlinx/serialization/c<",
            "TBase;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/modules/b;->a:Lkotlin/reflect/KClass;

    iput-object p2, p0, Lkotlinx/serialization/modules/b;->b:Lkotlinx/serialization/c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/modules/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/modules/SerializersModuleBuilder;)V
    .registers 12

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lkotlinx/serialization/modules/b;->b:Lkotlinx/serialization/c;

    if-eqz v4, :cond_14

    iget-object v3, p0, Lkotlinx/serialization/modules/b;->a:Lkotlin/reflect/KClass;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, v3

    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->registerPolymorphicSerializer$default(Lkotlinx/serialization/modules/SerializersModuleBuilder;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/c;ZILjava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lkotlinx/serialization/modules/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->c()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lkotlin/reflect/KClass;

    invoke-virtual {v1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlinx/serialization/c;

    iget-object v4, p0, Lkotlinx/serialization/modules/b;->a:Lkotlin/reflect/KClass;

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.KClass<Base of kotlinx.serialization.modules.PolymorphicModuleBuilder.buildTo$lambda$1>"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->registerPolymorphicSerializer$default(Lkotlinx/serialization/modules/SerializersModuleBuilder;Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/c;ZILjava/lang/Object;)V

    goto :goto_1a

    :cond_49
    iget-object v0, p0, Lkotlinx/serialization/modules/b;->d:Lkotlin/jvm/b/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_53

    iget-object v2, p0, Lkotlinx/serialization/modules/b;->a:Lkotlin/reflect/KClass;

    invoke-virtual {p1, v2, v0, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->i(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;Z)V

    :cond_53
    iget-object v0, p0, Lkotlinx/serialization/modules/b;->e:Lkotlin/jvm/b/l;

    if-eqz v0, :cond_5c

    iget-object v2, p0, Lkotlinx/serialization/modules/b;->a:Lkotlin/reflect/KClass;

    invoke-virtual {p1, v2, v0, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->h(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;Z)V

    :cond_5c
    return-void
.end method

.method public final b(Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::TBase;>(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlinx/serialization/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "subclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/b;->c:Ljava/util/List;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
