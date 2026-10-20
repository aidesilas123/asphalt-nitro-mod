###### Class kotlin.reflect.jvm.internal.impl.types.typesApproximation.c (kotlin.reflect.jvm.internal.impl.types.typesApproximation.c)
.class final Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;
.super Ljava/lang/Object;
.source "CapturedTypeApproximation.kt"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

.field private final b:Lkotlin/reflect/jvm/internal/impl/types/u;

.field private final c:Lkotlin/reflect/jvm/internal/impl/types/u;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/i0;Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)V
    .registers 5

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inProjection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outProjection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->b:Lkotlin/reflect/jvm/internal/impl/types/u;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->c:Lkotlin/reflect/jvm/internal/impl/types/u;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->b:Lkotlin/reflect/jvm/internal/impl/types/u;

    return-object v0
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->c:Lkotlin/reflect/jvm/internal/impl/types/u;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/descriptors/i0;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/i0;

    return-object v0
.end method

.method public final d()Z
    .registers 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/c;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->b:Lkotlin/reflect/jvm/internal/impl/types/u;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/types/typesApproximation/c;->c:Lkotlin/reflect/jvm/internal/impl/types/u;

    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/c;->d(Lkotlin/reflect/jvm/internal/impl/types/u;Lkotlin/reflect/jvm/internal/impl/types/u;)Z

    move-result v0

    return v0
.end method
