###### Class kotlin.reflect.jvm.internal.impl.protobuf.j (kotlin.reflect.jvm.internal.impl.protobuf.j)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/protobuf/j;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;
    }
.end annotation


# virtual methods
.method public abstract b(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getParserForType()Lkotlin/reflect/jvm/internal/impl/protobuf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/l<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract newBuilderForType()Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;
.end method

.method public abstract toBuilder()Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;
.end method

###### Class kotlin.reflect.jvm.internal.impl.protobuf.j.a (kotlin.reflect.jvm.internal.impl.protobuf.j$a)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedInputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/ExtensionRegistryLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/j$a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract build()Lkotlin/reflect/jvm/internal/impl/protobuf/j;
.end method
