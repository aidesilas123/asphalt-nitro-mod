###### Class kotlin.reflect.jvm.internal.impl.types.model.a (kotlin.reflect.jvm.internal.impl.types.model.a)
.class public final Lkotlin/reflect/jvm/internal/impl/types/model/a;
.super Ljava/util/ArrayList;
.source "TypeSystemContext.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/model/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lkotlin/reflect/jvm/internal/impl/types/model/i;",
        ">;",
        "Lkotlin/reflect/jvm/internal/impl/types/model/h;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    if-eqz v0, :cond_b

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/a;->d(Lkotlin/reflect/jvm/internal/impl/types/model/i;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public bridge d(Lkotlin/reflect/jvm/internal/impl/types/model/i;)Z
    .registers 2

    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge e()I
    .registers 2

    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge f(Lkotlin/reflect/jvm/internal/impl/types/model/i;)I
    .registers 2

    invoke-super {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge g(Lkotlin/reflect/jvm/internal/impl/types/model/i;)I
    .registers 2

    invoke-super {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge h(Lkotlin/reflect/jvm/internal/impl/types/model/i;)Z
    .registers 2

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    if-eqz v0, :cond_b

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/a;->f(Lkotlin/reflect/jvm/internal/impl/types/model/i;)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    if-eqz v0, :cond_b

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/a;->g(Lkotlin/reflect/jvm/internal/impl/types/model/i;)I

    move-result p1

    return p1

    :cond_b
    const/4 p1, -0x1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    if-eqz v0, :cond_b

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/model/i;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/a;->h(Lkotlin/reflect/jvm/internal/impl/types/model/i;)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge size()I
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/model/a;->e()I

    move-result v0

    return v0
.end method
