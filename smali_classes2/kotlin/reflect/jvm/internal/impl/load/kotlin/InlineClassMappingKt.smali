###### Class kotlin.reflect.jvm.internal.impl.load.kotlin.InlineClassMappingKt (kotlin.reflect.jvm.internal.impl.load.kotlin.InlineClassMappingKt)
.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/InlineClassMappingKt;
.super Ljava/lang/Object;
.source "inlineClassMapping.kt"


# direct methods
.method private static final a(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/f;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/f;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/f;",
            "Ljava/util/HashSet<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/j;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/model/f;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->H(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Lkotlin/reflect/jvm/internal/impl/types/model/j;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    :cond_c
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->h(Lkotlin/reflect/jvm/internal/impl/types/model/j;)Lkotlin/reflect/jvm/internal/impl/types/model/k;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->D(Lkotlin/reflect/jvm/internal/impl/types/model/k;)Lkotlin/reflect/jvm/internal/impl/types/model/f;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/InlineClassMappingKt;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/f;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/f;

    move-result-object p2

    if-eqz p2, :cond_2f

    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->v(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->W(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_49

    :cond_29
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->c0(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Lkotlin/reflect/jvm/internal/impl/types/model/f;

    move-result-object p0

    move-object p1, p0

    goto :goto_66

    :cond_2f
    move-object p1, v2

    goto :goto_66

    :cond_31
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->p(Lkotlin/reflect/jvm/internal/impl/types/model/j;)Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->Q(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Lkotlin/reflect/jvm/internal/impl/types/model/f;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-static {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/InlineClassMappingKt;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/f;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/f;

    move-result-object p2

    if-eqz p2, :cond_65

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->v(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_49
    :goto_49
    move-object p1, p2

    goto :goto_66

    :cond_4b
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->v(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_66

    :cond_52
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/model/g;

    if-eqz v0, :cond_60

    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/g;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->z(Lkotlin/reflect/jvm/internal/impl/types/model/g;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_66

    :cond_60
    invoke-interface {p0, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->c0(Lkotlin/reflect/jvm/internal/impl/types/model/f;)Lkotlin/reflect/jvm/internal/impl/types/model/f;

    move-result-object p1

    goto :goto_66

    :cond_65
    return-object v2

    :cond_66
    :goto_66
    return-object p1
.end method

.method public static final computeExpandedTypeForInlineClass(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/f;)Lkotlin/reflect/jvm/internal/impl/types/model/f;
    .registers 3

    const-string v0, "$this$computeExpandedTypeForInlineClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineClassType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/InlineClassMappingKt;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/f;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/f;

    move-result-object p0

    return-object p0
.end method
