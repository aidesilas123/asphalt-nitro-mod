###### Class kotlinx.serialization.modules.SerializersModuleCollector (kotlinx.serialization.modules.SerializersModuleCollector)
.class public interface abstract Lkotlinx/serialization/modules/SerializersModuleCollector;
.super Ljava/lang/Object;
.source "SerializersModuleCollector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001JQ\u0010\u0002\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00062/\u0010\u0007\u001a+\u0012\u001d\u0012\u001b\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\t\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\u0008H&J.\u0010\u0002\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0004*\u00020\u00012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00062\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\nH\u0016JF\u0010\u000f\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0010*\u00020\u0001\"\u0008\u0008\u0001\u0010\u0011*\u0002H\u00102\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00062\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00062\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\nH&JO\u0010\u0015\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0010*\u00020\u00012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00062-\u0010\u0016\u001a)\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0018\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u0002H\u0010\u0018\u00010\u00190\u0008H\u0016JO\u0010\u001a\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0010*\u00020\u00012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00062-\u0010\u0016\u001a)\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0018\u0012\u000e\u0012\u000c\u0012\u0006\u0008\u0001\u0012\u0002H\u0010\u0018\u00010\u00190\u0008H\'JK\u0010\u001b\u001a\u00020\u0003\"\u0008\u0008\u0000\u0010\u0010*\u00020\u00012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u00062)\u0010\u001c\u001a%\u0012\u0013\u0012\u0011H\u0010\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u001d\u0012\u000c\u0012\n\u0012\u0004\u0012\u0002H\u0010\u0018\u00010\u001e0\u0008H\'\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/serialization/modules/SerializersModuleCollector;",
        "",
        "contextual",
        "",
        "T",
        "kClass",
        "Lkotlin/reflect/KClass;",
        "provider",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "Lkotlin/ParameterName;",
        "name",
        "typeArgumentsSerializers",
        "serializer",
        "polymorphic",
        "Base",
        "Sub",
        "baseClass",
        "actualClass",
        "actualSerializer",
        "polymorphicDefault",
        "defaultDeserializerProvider",
        "",
        "className",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "polymorphicDefaultDeserializer",
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


# virtual methods
.method public abstract a(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
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
.end method

.method public abstract b(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V
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
.end method

.method public abstract c(Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
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
.end method

.method public abstract d(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V
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
.end method

.method public abstract e(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V
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
.end method

###### Class kotlinx.serialization.modules.SerializersModuleCollector.DefaultImpls (kotlinx.serialization.modules.SerializersModuleCollector$DefaultImpls)
.class public final Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;
.super Ljava/lang/Object;
.source "SerializersModuleCollector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/SerializersModuleCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static contextual(Lkotlinx/serialization/modules/SerializersModuleCollector;Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModuleCollector;",
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

    new-instance v0, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls$a;

    invoke-direct {v0, p2}, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls$a;-><init>(Lkotlinx/serialization/c;)V

    invoke-interface {p0, p1, v0}, Lkotlinx/serialization/modules/SerializersModuleCollector;->e(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static polymorphicDefault(Lkotlinx/serialization/modules/SerializersModuleCollector;Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModuleCollector;",
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

    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModuleCollector;->b(Lkotlin/reflect/KClass;Lkotlin/jvm/b/l;)V

    return-void
.end method

###### Class kotlinx.serialization.modules.SerializersModuleCollector.DefaultImpls.a (kotlinx.serialization.modules.SerializersModuleCollector$DefaultImpls$a)
.class final Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls$a;
.super Lkotlin/jvm/internal/t;
.source "SerializersModuleCollector.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;->contextual(Lkotlinx/serialization/modules/SerializersModuleCollector;Lkotlin/reflect/KClass;Lkotlinx/serialization/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/util/List<",
        "+",
        "Lkotlinx/serialization/c<",
        "*>;>;",
        "Lkotlinx/serialization/c<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/serialization/KSerializer;",
        "T",
        "",
        "it",
        "",
        "invoke"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/c;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/c<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls$a;->a:Lkotlinx/serialization/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lkotlinx/serialization/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/c<",
            "*>;>;)",
            "Lkotlinx/serialization/c<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls$a;->a:Lkotlinx/serialization/c;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls$a;->a(Ljava/util/List;)Lkotlinx/serialization/c;

    move-result-object p1

    return-object p1
.end method
