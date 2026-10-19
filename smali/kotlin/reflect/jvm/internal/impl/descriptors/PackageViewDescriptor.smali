###### Class kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
.super Ljava/lang/Object;
.source "PackageViewDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract a0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Lkotlin/reflect/jvm/internal/impl/name/FqName;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
.end method

.method public abstract v0()Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor.DefaultImpls (kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor$DefaultImpls;
.super Ljava/lang/Object;
.source "PackageViewDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isEmpty(Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;)Z
    .registers 1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;->a0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method
