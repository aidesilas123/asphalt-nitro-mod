###### Class kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext (kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext;
.super Ljava/lang/Object;
.source "TypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract x(Lkotlin/reflect/jvm/internal/impl/types/model/g;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
.end method

###### Class kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext.DefaultImpls (kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext$DefaultImpls;
.super Ljava/lang/Object;
.source "TypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static identicalArguments(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemOptimizationContext;Lkotlin/reflect/jvm/internal/impl/types/model/g;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z
    .registers 3

    const-string p0, "a"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
