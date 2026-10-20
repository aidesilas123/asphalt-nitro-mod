###### Class kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
.super Ljava/lang/Object;
.source "AnnotationDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract e()Lkotlin/reflect/jvm/internal/impl/name/FqName;
.end method

.method public abstract getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/d0;
.end method

.method public abstract getType()Lkotlin/reflect/jvm/internal/impl/types/u;
.end method
