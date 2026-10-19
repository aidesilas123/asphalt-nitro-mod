###### Class kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation (kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;
.super Ljava/lang/Object;
.source "javaElements.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract a()Lkotlin/reflect/jvm/internal/impl/name/ClassId;
.end method

.method public abstract i()Z
.end method

.method public abstract k()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p()Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation.DefaultImpls (kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation$DefaultImpls;
.super Ljava/lang/Object;
.source "javaElements.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isIdeExternalAnnotation(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotation;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
