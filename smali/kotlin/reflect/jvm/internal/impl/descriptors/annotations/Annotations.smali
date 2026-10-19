###### Class kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations (kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
.super Ljava/lang/Object;
.source "Annotations.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/p0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$DefaultImpls;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;",
        ">;",
        "Lkotlin/jvm/internal/p0/a;"
    }
.end annotation


# static fields
.field public static final e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    return-void
.end method


# virtual methods
.method public abstract N(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Z
.end method

.method public abstract b(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
.end method

.method public abstract isEmpty()Z
.end method
