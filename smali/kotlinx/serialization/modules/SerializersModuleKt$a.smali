###### Class kotlinx.serialization.modules.SerializersModuleKt.a (kotlinx.serialization.modules.SerializersModuleKt$a)
.class public final Lkotlinx/serialization/modules/SerializersModuleKt$a;
.super Ljava/lang/Object;
.source "SerializersModule.kt"

# interfaces
.implements Lkotlinx/serialization/modules/SerializersModuleCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/modules/SerializersModuleKt;->overwriteWith(Lkotlinx/serialization/modules/SerializersModule;Lkotlinx/serialization/modules/SerializersModule;)Lkotlinx/serialization/modules/SerializersModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000E\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JQ\u0010\u0002\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00072/\u0010\u0008\u001a+\u0012\u001d\u0012\u001b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\n\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\tH\u0016J.\u0010\u0002\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00072\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u000bH\u0016JF\u0010\u0010\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0011*\u00020\u0005\"\u0008\u0008\u0001\u0010\u0012*\u0002H\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00072\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u00072\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00120\u000bH\u0016JO\u0010\u0016\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0011*\u00020\u00052\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00072-\u0010\u0017\u001a)\u0012\u0015\u0012\u0013\u0018\u00010\u0018\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u0019\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u0002H\u0011\u0018\u00010\u001a0\tH\u0016JK\u0010\u001b\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0011*\u00020\u00052\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00072)\u0010\u001c\u001a%\u0012\u0013\u0012\u0011H\u0011\u00a2\u0006\u000c\u0008\u000c\u0012\u0008\u0008\r\u0012\u0004\u0008\u0008(\u001d\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H\u0011\u0018\u00010\u001e0\tH\u0016\u00a8\u0006\u001f"
    }
    d2 = {
        "kotlinx/serialization/modules/SerializersModuleKt$overwriteWith$1$1",
        "Lkotlinx/serialization/modules/SerializersModuleCollector;",
        "contextual",
        "",
        "T",
        "",
        "kClass",
        "Lkotlin/reflect/KClass;",
        "provider",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lkotlin/ParameterName;",
        "name",
        "serializers",
        "serializer",
        "polymorphic",
        "Base",
        "Sub",
        "baseClass",
        "actualClass",
        "actualSerializer",
        "polymorphicDefaultDeserializer",
        "defaultDeserializerProvider",
        "",
        "className",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "polymorphicDefaultSerializer",
        "defaultSerializerProvider",
        "value",
        "Lkotlinx/serialization/SerializationStrategy;",
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
.field final synthetic a:Lkotlinx/serialization/modules/SerializersModuleBuilder;


# direct methods
.method constructor <init>(Lkotlinx/serialization/modules/SerializersModuleBuilder;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/serialization/modules/SerializersModuleKt$a;->a:Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            "Sub::TBase;>(",
            "Lkotlin/reflect/KClass<",
            "TBase;>;",
            "Lkotlin/reflect/KClass<",
            "TSub;>;",
            "Lkotlinx/serialization/c<",
            "TSub;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actualClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actualSerializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/SerializersModuleKt$a;->a:Lkotlinx/serialization/modules/SerializersModuleBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->j(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/c;Z)V

    return-void
.end method

.method public b(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TBase;>;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/serialization/b<",
            "+TBase;>;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDeserializerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/SerializersModuleKt$a;->a:Lkotlinx/serialization/modules/SerializersModuleBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->h(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;Z)V

    return-void
.end method

.method public c(Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlinx/serialization/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/SerializersModuleKt$a;->a:Lkotlinx/serialization/modules/SerializersModuleBuilder;

    new-instance v1, Lkotlinx/serialization/modules/a$a;

    invoke-direct {v1, p2}, Lkotlinx/serialization/modules/a$a;-><init>(Lkotlinx/serialization/c;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->k(Lkotlin/reflect/KClass;Lkotlinx/serialization/modules/a;Z)V

    return-void
.end method

.method public d(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TBase;>;",
            "Lkotlin/jvm/b/l<",
            "-TBase;+",
            "Lkotlinx/serialization/i<",
            "-TBase;>;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultSerializerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/SerializersModuleKt$a;->a:Lkotlinx/serialization/modules/SerializersModuleBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->i(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;Z)V

    return-void
.end method

.method public e(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;+",
            "Lkotlinx/serialization/c<",
            "*>;>;)V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "provider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/modules/SerializersModuleKt$a;->a:Lkotlinx/serialization/modules/SerializersModuleBuilder;

    new-instance v1, Lkotlinx/serialization/modules/a$b;

    invoke-direct {v1, p2}, Lkotlinx/serialization/modules/a$b;-><init>(Lkotlin/jvm/b/l;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->k(Lkotlin/reflect/KClass;Lkotlinx/serialization/modules/a;Z)V

    return-void
.end method
