###### Class kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.f (kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.f)
.class Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;
.super Ljava/lang/Object;
.source "typeEnhancement.kt"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/u;

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/u;IZ)V
    .registers 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->a:Lkotlin/reflect/jvm/internal/impl/types/u;

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->b:I

    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->b:I

    return v0
.end method

.method public b()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->a:Lkotlin/reflect/jvm/internal/impl/types/u;

    return-object v0
.end method

.method public final c()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->b()Lkotlin/reflect/jvm/internal/impl/types/u;

    move-result-object v0

    iget-boolean v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->c:Z

    if-eqz v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->c:Z

    return v0
.end method
