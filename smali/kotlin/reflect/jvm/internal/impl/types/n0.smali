###### Class kotlin.reflect.jvm.internal.impl.types.n0 (kotlin.reflect.jvm.internal.impl.types.n0)
.class public abstract Lkotlin/reflect/jvm/internal/impl/types/n0;
.super Lkotlin/reflect/jvm/internal/impl/types/u;
.source "KotlinType.kt"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/u;-><init>(Lkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public G0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/g0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->G0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public H0()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    return-object v0
.end method

.method public I0()Z
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->I0()Z

    move-result v0

    return v0
.end method

.method public final K0()Lkotlin/reflect/jvm/internal/impl/types/m0;
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    :goto_4
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/n0;

    if-eqz v1, :cond_f

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/n0;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    goto :goto_4

    :cond_f
    if-eqz v0, :cond_14

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/m0;

    return-object v0

    :cond_14
    new-instance v0, Lkotlin/s;

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    invoke-direct {v0, v1}, Lkotlin/s;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract L0()Lkotlin/reflect/jvm/internal/impl/types/u;
.end method

.method public M0()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/u;->m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->M0()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n0;->L0()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "<Not computed yet>"

    :goto_11
    return-object v0
.end method
