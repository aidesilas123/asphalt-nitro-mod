###### Class kotlin.reflect.jvm.internal.impl.types.l0 (kotlin.reflect.jvm.internal.impl.types.l0)
.class public final Lkotlin/reflect/jvm/internal/impl/types/l0;
.super Lkotlin/reflect/jvm/internal/impl/types/o;
.source "ErrorType.kt"


# instance fields
.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/List;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/g0;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "presentableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/types/o;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/l0;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic J0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l0;->S0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/l0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic L0(Z)Lkotlin/reflect/jvm/internal/impl/types/m0;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l0;->O0(Z)Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic M0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/m0;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l0;->S0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/l0;

    move-result-object p1

    return-object p1
.end method

.method public O0(Z)Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 9

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/l0;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/l0;->Q0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/o;->H0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/o;->m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/o;->G0()Ljava/util/List;

    move-result-object v4

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/types/l0;-><init>(Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Ljava/util/List;Z)V

    return-object v6
.end method

.method public Q0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/l0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic R0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/o;
    .registers 2

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/l0;->S0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/l0;

    move-result-object p1

    return-object p1
.end method

.method public S0(Lkotlin/reflect/jvm/internal/impl/types/checker/d;)Lkotlin/reflect/jvm/internal/impl/types/l0;
    .registers 3

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
