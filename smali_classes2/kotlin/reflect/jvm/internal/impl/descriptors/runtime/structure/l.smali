###### Class kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.l)
.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/n;
.source "ReflectJavaField.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/structure/m;


# instance fields
.field private final a:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 3

    const-string v0, "member"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/n;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;->a:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public C()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;->M()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic K()Ljava/lang/reflect/Member;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;->M()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;->a:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public N()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;
    .registers 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r$a;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;->M()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "member.genericType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r$a;->a(Ljava/lang/reflect/Type;)Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Lkotlin/reflect/jvm/internal/impl/load/java/structure/t;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/l;->N()Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;

    move-result-object v0

    return-object v0
.end method
