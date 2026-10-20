###### Class kotlinx.serialization.encoding.Encoder (kotlinx.serialization.encoding.Encoder)
.class public interface abstract Lkotlinx/serialization/encoding/Encoder;
.super Ljava/lang/Object;
.source "Encoding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/encoding/Encoder$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0012H&J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0014H&J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0016H&J\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u000bH&J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001bH&J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000bH&J\u0010\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001fH&J\u0008\u0010 \u001a\u00020\u000eH\u0017J\u0008\u0010!\u001a\u00020\u000eH\'J/\u0010\"\u001a\u00020\u000e\"\u0008\u0008\u0000\u0010#*\u00020\u00012\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H#0%2\u0008\u0010\u000f\u001a\u0004\u0018\u0001H#H\u0017\u00a2\u0006\u0002\u0010&J)\u0010\'\u001a\u00020\u000e\"\u0004\u0008\u0000\u0010#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H#0%2\u0006\u0010\u000f\u001a\u0002H#H\u0016\u00a2\u0006\u0002\u0010&J\u0010\u0010(\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020)H&J\u0010\u0010*\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020+H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006,"
    }
    d2 = {
        "Lkotlinx/serialization/encoding/Encoder;",
        "",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "beginCollection",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "collectionSize",
        "",
        "beginStructure",
        "encodeBoolean",
        "",
        "value",
        "",
        "encodeByte",
        "",
        "encodeChar",
        "",
        "encodeDouble",
        "",
        "encodeEnum",
        "enumDescriptor",
        "index",
        "encodeFloat",
        "",
        "encodeInline",
        "encodeInt",
        "encodeLong",
        "",
        "encodeNotNullMark",
        "encodeNull",
        "encodeNullableSerializableValue",
        "T",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeSerializableValue",
        "encodeShort",
        "",
        "encodeString",
        "",
        "kotlinx-serialization-core"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract B(I)V
.end method

.method public abstract G(Ljava/lang/String;)V
.end method

.method public abstract a()Lkotlinx/serialization/modules/SerializersModule;
.end method

.method public abstract b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
.end method

.method public abstract e(Lkotlinx/serialization/i;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/i<",
            "-TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract g(D)V
.end method

.method public abstract h(B)V
.end method

.method public abstract j(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/CompositeEncoder;
.end method

.method public abstract k(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
.end method

.method public abstract l(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
.end method

.method public abstract m(J)V
.end method

.method public abstract o()V
.end method

.method public abstract q(S)V
.end method

.method public abstract r(Z)V
.end method

.method public abstract t(F)V
.end method

.method public abstract u(C)V
.end method

.method public abstract v()V
.end method
