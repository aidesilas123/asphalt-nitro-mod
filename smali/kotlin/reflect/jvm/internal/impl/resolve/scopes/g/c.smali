###### Class kotlin.reflect.jvm.internal.impl.resolve.scopes.g.c (kotlin.reflect.jvm.internal.impl.resolve.scopes.g.c)
.class public Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;
.super Ljava/lang/Object;
.source "ImplicitClassReceiver.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/f;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;

.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;)V
    .registers 4

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    move-object p2, p0

    :goto_e
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-void
.end method


# virtual methods
.method public b()Lkotlin/reflect/jvm/internal/impl/types/y;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->n()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    const-string v1, "classDescriptor.defaultType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    move-object p1, v2

    :cond_8
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;

    if-eqz p1, :cond_e

    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    :cond_e
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getType()Lkotlin/reflect/jvm/internal/impl/types/u;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->b()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final q()Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;->b()Lkotlin/reflect/jvm/internal/impl/types/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
