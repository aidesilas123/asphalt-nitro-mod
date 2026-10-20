###### Class kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.c.a (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.c$a)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/c$a;
.super Ljava/lang/Object;
.source "ReflectJavaAnnotationArguments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/c;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/ReflectClassUtilKt;->isEnumClassOrSpecializedEnumEntryClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/k;

    check-cast p1, Ljava/lang/Enum;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/k;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Enum;)V

    goto :goto_40

    :cond_17
    instance-of v0, p1, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_23

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/d;

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/d;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/annotation/Annotation;)V

    goto :goto_40

    :cond_23
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2f

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/e;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/e;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Ljava/lang/Object;)V

    goto :goto_40

    :cond_2f
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_3b

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/g;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/g;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Class;)V

    goto :goto_40

    :cond_3b
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/m;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/m;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V

    :goto_40
    return-object v0
.end method
