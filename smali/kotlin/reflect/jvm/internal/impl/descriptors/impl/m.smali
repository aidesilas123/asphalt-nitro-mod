###### Class kotlin.reflect.jvm.internal.impl.descriptors.impl.m (kotlin.reflect.jvm.internal.impl.descriptors.impl.m)
.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;
.source "LazyClassReceiverParameterDescriptor.java"


# instance fields
.field private final d:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

.field private final e:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V
    .registers 4

    if-nez p1, :cond_6

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->u(I)V

    :cond_6
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->e0:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->e:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;

    return-void
.end method

.method private static synthetic u(I)V
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_9

    if-eq p0, v0, :cond_9

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_b

    :cond_9
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_b
    const/4 v3, 0x3

    if-eq p0, v1, :cond_12

    if-eq p0, v0, :cond_12

    const/4 v4, 0x3

    goto :goto_13

    :cond_12
    const/4 v4, 0x2

    :goto_13
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor"

    const/4 v6, 0x0

    if-eq p0, v1, :cond_28

    if-eq p0, v0, :cond_28

    if-eq p0, v3, :cond_23

    const-string v7, "descriptor"

    aput-object v7, v4, v6

    goto :goto_2a

    :cond_23
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2a

    :cond_28
    aput-object v5, v4, v6

    :goto_2a
    if-eq p0, v1, :cond_36

    if-eq p0, v0, :cond_31

    aput-object v5, v4, v1

    goto :goto_3a

    :cond_31
    const-string v5, "getContainingDeclaration"

    aput-object v5, v4, v1

    goto :goto_3a

    :cond_36
    const-string v5, "getValue"

    aput-object v5, v4, v1

    :goto_3a
    if-eq p0, v1, :cond_49

    if-eq p0, v0, :cond_49

    if-eq p0, v3, :cond_45

    const-string v3, "<init>"

    aput-object v3, v4, v0

    goto :goto_49

    :cond_45
    const-string v3, "copy"

    aput-object v3, v4, v0

    :cond_49
    :goto_49
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_57

    if-eq p0, v0, :cond_57

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5c

    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5c
    throw p0
.end method


# virtual methods
.method public b()Lkotlin/reflect/jvm/internal/impl/descriptors/i;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v0, :cond_8

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->u(I)V

    :cond_8
    return-object v0
.end method

.method public getValue()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/d;
    .registers 3

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->e:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/g/c;

    if-nez v0, :cond_8

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->u(I)V

    :cond_8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;->d:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "::this"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
