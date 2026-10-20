###### Class kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.g)
.class final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;
.super Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;
.source "typeEnhancement.kt"


# instance fields
.field private final d:Lkotlin/reflect/jvm/internal/impl/types/y;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/y;IZ)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;-><init>(Lkotlin/reflect/jvm/internal/impl/types/u;IZ)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->d:Lkotlin/reflect/jvm/internal/impl/types/y;

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->e()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    return-object v0
.end method

.method public e()Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->d:Lkotlin/reflect/jvm/internal/impl/types/y;

    return-object v0
.end method
