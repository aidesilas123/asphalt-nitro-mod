###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration (kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingConfiguration)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration;
.super Ljava/lang/Object;
.source "typeSignatureMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/TypeMappingConfiguration$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/String;
.end method

.method public abstract c(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/String;
.end method

.method public abstract d(Lkotlin/reflect/jvm/internal/impl/types/u;)Lkotlin/reflect/jvm/internal/impl/types/u;
.end method

.method public abstract e()Z
.end method

.method public abstract f(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
.end method

.method public abstract g(Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/u;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/u;"
        }
    .end annotation
.end method
