###### Class kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.b (kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.b)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/b;
.super Ljava/lang/Object;
.source "ReflectAnnotationSource.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/d0;


# instance fields
.field private final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .registers 3

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/b;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public b()Lkotlin/reflect/jvm/internal/impl/descriptors/e0;
    .registers 3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/e0;

    const-string v1, "SourceFile.NO_SOURCE_FILE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Ljava/lang/annotation/Annotation;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/components/b;->b:Ljava/lang/annotation/Annotation;

    return-object v0
.end method
