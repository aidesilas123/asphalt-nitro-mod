###### Class kotlin.reflect.jvm.internal.impl.protobuf.e (kotlin.reflect.jvm.internal.impl.protobuf.e)
.class public Lkotlin/reflect/jvm/internal/impl/protobuf/e;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/f;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/e$c;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/e$b;
    }
.end annotation


# instance fields
.field private final e:Lkotlin/reflect/jvm/internal/impl/protobuf/j;


# virtual methods
.method public e()Lkotlin/reflect/jvm/internal/impl/protobuf/j;
    .registers 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/j;)Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->e()Lkotlin/reflect/jvm/internal/impl/protobuf/j;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
