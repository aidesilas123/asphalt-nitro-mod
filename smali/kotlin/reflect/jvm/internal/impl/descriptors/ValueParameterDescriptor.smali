###### Class kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor (kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.super Ljava/lang/Object;
.source "ValueParameterDescriptor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/v;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract S(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/name/Name;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.end method

.method public abstract a()Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.end method

.method public abstract b()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
.end method

.method public abstract d()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()I
.end method

.method public abstract j0()Z
.end method

.method public abstract m0()Z
.end method

.method public abstract q0()Lkotlin/reflect/jvm/internal/impl/types/u;
.end method

.method public abstract u0()Z
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor.DefaultImpls (kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor$DefaultImpls;
.super Ljava/lang/Object;
.source "ValueParameterDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isLateInit(Lkotlin/reflect/jvm/internal/impl/descriptors/ValueParameterDescriptor;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
