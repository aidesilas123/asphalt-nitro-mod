###### Class kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod (kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;
.super Ljava/lang/Object;
.source "javaElements.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/o;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract G()Z
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/w;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReturnType()Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;
.end method

.method public abstract n()Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;
.end method

###### Class kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod.DefaultImpls (kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod$DefaultImpls)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod$DefaultImpls;
.super Ljava/lang/Object;
.source "javaElements.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getHasAnnotationParameterDefaultValue(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;)Z
    .registers 1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;->n()Lkotlin/reflect/jvm/internal/impl/load/java/structure/a;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
