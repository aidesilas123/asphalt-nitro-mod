###### Class kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r.a (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r$a)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r$a;
.super Ljava/lang/Object;
.source "ReflectJavaType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;
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

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_18

    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/q;-><init>(Ljava/lang/Class;)V

    goto :goto_40

    :cond_18
    instance-of v1, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_3a

    if-eqz v0, :cond_28

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_3a

    :cond_28
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_34

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/u;

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/u;-><init>(Ljava/lang/reflect/WildcardType;)V

    goto :goto_3f

    :cond_34
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/h;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_3f

    :cond_3a
    :goto_3a
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/f;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/f;-><init>(Ljava/lang/reflect/Type;)V

    :goto_3f
    move-object p1, v0

    :goto_40
    return-object p1
.end method
