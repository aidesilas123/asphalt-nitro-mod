###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.l (kotlin.reflect.jvm.internal.impl.descriptors.impl.l)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/b;
.source "FieldDescriptorImpl.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/n;


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/y;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
    .registers 4

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correspondingProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/l;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-void
.end method
