###### Class kotlinx.serialization.json.internal.StreamingJsonDecoder (kotlinx.serialization.json.internal.p0)
.class public Lkotlinx/serialization/json/internal/p0;
.super Lkotlinx/serialization/encoding/AbstractDecoder;
.source "StreamingJsonDecoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/p0$a;,
        Lkotlinx/serialization/json/internal/p0$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0001MB/\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u0011H\u0002J\u0008\u0010!\u001a\u00020\u001fH\u0016J\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010)\u001a\u00020\u00112\u0006\u0010*\u001a\u00020\nH\u0016J\u0008\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020.2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010/\u001a\u00020\u0011H\u0016J\u0008\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u00020\u0011H\u0002J\u0008\u00103\u001a\u000204H\u0016J\u0008\u00105\u001a\u00020\u0011H\u0002J\u0008\u00106\u001a\u00020\u001fH\u0016J\n\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u00109\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\nH\u0002J;\u0010:\u001a\u0002H;\"\u0004\u0008\u0000\u0010;2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00112\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u0002H;0=2\u0008\u0010>\u001a\u0004\u0018\u0001H;H\u0016\u00a2\u0006\u0002\u0010?J!\u0010@\u001a\u0002H;\"\u0004\u0008\u0000\u0010;2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u0002H;0=H\u0016\u00a2\u0006\u0002\u0010AJ\u0008\u0010B\u001a\u00020CH\u0016J\u0008\u0010D\u001a\u00020EH\u0016J\u0008\u0010F\u001a\u00020EH\u0002J\u0010\u0010G\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010H\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020EH\u0002J\u0010\u0010J\u001a\u00020\u001d2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010K\u001a\u00020\u001f*\u0004\u0018\u00010\u000c2\u0006\u0010L\u001a\u00020EH\u0002R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0007\u001a\u00020\u00088\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006N"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StreamingJsonDecoder;",
        "Lkotlinx/serialization/json/JsonDecoder;",
        "Lkotlinx/serialization/encoding/AbstractDecoder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "mode",
        "Lkotlinx/serialization/json/internal/WriteMode;",
        "lexer",
        "Lkotlinx/serialization/json/internal/AbstractJsonLexer;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "discriminatorHolder",
        "Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "currentIndex",
        "",
        "elementMarker",
        "Lkotlinx/serialization/json/internal/JsonElementMarker;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "beginStructure",
        "Lkotlinx/serialization/encoding/CompositeDecoder;",
        "checkLeadingComma",
        "",
        "coerceInputValue",
        "",
        "index",
        "decodeBoolean",
        "decodeByte",
        "",
        "decodeChar",
        "",
        "decodeDouble",
        "",
        "decodeElementIndex",
        "decodeEnum",
        "enumDescriptor",
        "decodeFloat",
        "",
        "decodeInline",
        "Lkotlinx/serialization/encoding/Decoder;",
        "decodeInt",
        "decodeJsonElement",
        "Lkotlinx/serialization/json/JsonElement;",
        "decodeListIndex",
        "decodeLong",
        "",
        "decodeMapIndex",
        "decodeNotNullMark",
        "decodeNull",
        "",
        "decodeObjectIndex",
        "decodeSerializableElement",
        "T",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "previousValue",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;",
        "decodeSerializableValue",
        "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "decodeShort",
        "",
        "decodeString",
        "",
        "decodeStringKey",
        "endStructure",
        "handleUnknown",
        "key",
        "skipLeftoverElements",
        "trySkip",
        "unknownKey",
        "DiscriminatorHolder",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:Lkotlinx/serialization/json/Json;

.field private final c:Lkotlinx/serialization/json/internal/WriteMode;

.field public final d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

.field private final e:Lkotlinx/serialization/modules/SerializersModule;

.field private f:I

.field private g:Lkotlinx/serialization/json/internal/p0$a;

.field private final h:Lkotlinx/serialization/json/JsonConfiguration;

.field private final i:Lkotlinx/serialization/json/internal/JsonElementMarker;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/p0$a;)V
    .registers 7

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lexer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/encoding/AbstractDecoder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/p0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->a()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/json/internal/p0;->e:Lkotlinx/serialization/modules/SerializersModule;

    const/4 p2, -0x1

    iput p2, p0, Lkotlinx/serialization/json/internal/p0;->f:I

    iput-object p5, p0, Lkotlinx/serialization/json/internal/p0;->g:Lkotlinx/serialization/json/internal/p0$a;

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->f()Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x0

    goto :goto_3b

    :cond_36
    new-instance p1, Lkotlinx/serialization/json/internal/JsonElementMarker;

    invoke-direct {p1, p4}, Lkotlinx/serialization/json/internal/JsonElementMarker;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :goto_3b
    iput-object p1, p0, Lkotlinx/serialization/json/internal/p0;->i:Lkotlinx/serialization/json/internal/JsonElementMarker;

    return-void
.end method

.method private final K()V
    .registers 9

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->E()B

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    return-void

    :cond_a
    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "Unexpected leading comma"

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method private final L(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b()Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_18

    iget-object p2, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->M()Z

    move-result p2

    xor-int/2addr p2, v2

    if-eqz p2, :cond_18

    goto :goto_3f

    :cond_18
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/d;

    move-result-object p2

    sget-object v3, Lkotlinx/serialization/descriptors/d$b;->a:Lkotlinx/serialization/descriptors/d$b;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    iget-object p2, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v3}, Lkotlinx/serialization/json/JsonConfiguration;->l()Z

    move-result v3

    invoke-virtual {p2, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->F(Z)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_33

    goto :goto_40

    :cond_33
    invoke-static {p1, v0, p2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x3

    if-ne p1, p2, :cond_40

    iget-object p1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Ljava/lang/String;

    :goto_3f
    const/4 v1, 0x1

    :cond_40
    :goto_40
    return v1
.end method

.method private final M()I
    .registers 10

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->L()Z

    move-result v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2c

    iget v1, p0, Lkotlinx/serialization/json/internal/p0;->f:I

    if-eq v1, v2, :cond_27

    if-eqz v0, :cond_16

    goto :goto_27

    :cond_16
    iget-object v3, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Expected end of the array or comma"

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_27
    :goto_27
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/p0;->f:I

    goto :goto_2e

    :cond_2c
    if-nez v0, :cond_2f

    :goto_2e
    return v2

    :cond_2f
    iget-object v3, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "Unexpected trailing comma"

    invoke-static/range {v3 .. v8}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method private final N()I
    .registers 12

    iget v0, p0, Lkotlinx/serialization/json/internal/p0;->f:I

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    const/4 v4, -0x1

    if-eqz v1, :cond_17

    if-eq v0, v4, :cond_1e

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->L()Z

    move-result v2

    goto :goto_1e

    :cond_17
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(C)V

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e()Z

    move-result v0

    if-eqz v0, :cond_64

    if-eqz v1, :cond_5d

    iget v0, p0, Lkotlinx/serialization/json/internal/p0;->f:I

    if-ne v0, v4, :cond_45

    iget-object v5, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    xor-int/lit8 v0, v2, 0x1

    invoke-static {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I

    move-result v7

    if-eqz v0, :cond_37

    goto :goto_5d

    :cond_37
    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "Unexpected trailing comma"

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_45
    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->access$getCurrentPosition$p(Lkotlinx/serialization/json/internal/AbstractJsonLexer;)I

    move-result v0

    if-eqz v2, :cond_4e

    goto :goto_5d

    :cond_4e
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Expected comma after the key-value pair"

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_5d
    :goto_5d
    iget v0, p0, Lkotlinx/serialization/json/internal/p0;->f:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lkotlinx/serialization/json/internal/p0;->f:I

    goto :goto_66

    :cond_64
    if-nez v2, :cond_67

    :goto_66
    return v4

    :cond_67
    iget-object v5, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "Expected \'}\', but had \',\' instead"

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method private final O(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 8

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->L()Z

    move-result v0

    :goto_6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->e()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/p0;->P()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(C)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_40

    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->d()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/p0;->L(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->L()Z

    move-result v1

    goto :goto_43

    :cond_38
    iget-object p1, p0, Lkotlinx/serialization/json/internal/p0;->i:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz p1, :cond_3f

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/JsonElementMarker;->b(I)V

    :cond_3f
    return v1

    :cond_40
    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_43
    if-eqz v3, :cond_4a

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/p0;->Q(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_4a
    move v0, v1

    goto :goto_6

    :cond_4c
    if-nez v0, :cond_59

    iget-object p1, p0, Lkotlinx/serialization/json/internal/p0;->i:Lkotlinx/serialization/json/internal/JsonElementMarker;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonElementMarker;->c()I

    move-result p1

    goto :goto_58

    :cond_57
    const/4 p1, -0x1

    :goto_58
    return p1

    :cond_59
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected trailing comma"

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/f;

    invoke-direct {p1}, Lkotlin/f;-><init>()V

    throw p1
.end method

.method private final P()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->j()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method private final Q(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->g()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->g:Lkotlinx/serialization/json/internal/p0$a;

    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/internal/p0;->S(Lkotlinx/serialization/json/internal/p0$a;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->y(Ljava/lang/String;)V

    goto :goto_22

    :cond_17
    :goto_17
    iget-object p1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->l()Z

    move-result v0

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->H(Z)V

    :goto_22
    iget-object p1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->L()Z

    move-result p1

    return p1
.end method

.method private final R(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 4

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/p0;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void
.end method

.method private final S(Lkotlinx/serialization/json/internal/p0$a;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p1, Lkotlinx/serialization/json/internal/p0$a;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/4 p2, 0x0

    iput-object p2, p1, Lkotlinx/serialization/json/internal/p0$a;->a:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_11
    return v0
.end method


# virtual methods
.method public D()Z
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->i:Lkotlinx/serialization/json/internal/JsonElementMarker;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonElementMarker;->a()Z

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_16

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->M()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method public G(Lkotlinx/serialization/b;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/b<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    instance-of v0, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->k()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_49

    :cond_16
    invoke-interface {p1}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-static {v0, v1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->l()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->k(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    move-object v2, p1

    check-cast v2, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-virtual {v2, p0, v1}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->b(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/b;

    move-result-object v2

    :cond_36
    if-nez v2, :cond_3d

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonDecoder;Lkotlinx/serialization/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3d
    new-instance p1, Lkotlinx/serialization/json/internal/p0$a;

    invoke-direct {p1, v0}, Lkotlinx/serialization/json/internal/p0$a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/p0;->g:Lkotlinx/serialization/json/internal/p0$a;

    invoke-interface {v2, p0}, Lkotlinx/serialization/b;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_49
    :goto_49
    invoke-interface {p1, p0}, Lkotlinx/serialization/b;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4d
    .catch Lkotlinx/serialization/d; {:try_start_5 .. :try_end_4d} :catch_4e

    return-object p1

    :catch_4e
    move-exception p1

    new-instance v0, Lkotlinx/serialization/d;

    invoke-virtual {p1}, Lkotlinx/serialization/d;->c()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v3, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/a0;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/a0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lkotlinx/serialization/d;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public H()B
    .registers 13

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-byte v2, v2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_e

    return v2

    :cond_e
    iget-object v6, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse byte for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public a()Lkotlinx/serialization/modules/SerializersModule;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->e:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
    .registers 9

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/a0;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/a0;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-char v1, v3, Lkotlinx/serialization/json/internal/WriteMode;->f:C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(C)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/p0;->K()V

    sget-object v0, Lkotlinx/serialization/json/internal/p0$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4d

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, v3, :cond_3f

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->f()Z

    move-result v0

    if-eqz v0, :cond_3f

    move-object v0, p0

    goto :goto_5a

    :cond_3f
    new-instance v0, Lkotlinx/serialization/json/internal/p0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/p0;->g:Lkotlinx/serialization/json/internal/p0$a;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/p0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/p0$a;)V

    goto :goto_5a

    :cond_4d
    new-instance v0, Lkotlinx/serialization/json/internal/p0;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    iget-object v4, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v6, p0, Lkotlinx/serialization/json/internal/p0;->g:Lkotlinx/serialization/json/internal/p0$a;

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/p0;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/p0$a;)V

    :goto_5a
    return-object v0
.end method

.method public c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->g()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/p0;->R(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_1a
    iget-object p1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->g:C

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->n(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object p1, p1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/a0;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/a0;->b()V

    return-void
.end method

.method public final d()Lkotlinx/serialization/json/Json;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public e(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 6

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/p0;->z()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " at path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v3, v3, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/a0;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/a0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexOrThrow(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public g()Lkotlinx/serialization/json/d;
    .registers 4

    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeReader;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->a()Lkotlinx/serialization/json/d;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 13

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_d

    return v2

    :cond_d
    iget-object v6, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse int for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public j()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()J
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public o(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/p0$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/p0;->M()I

    move-result p1

    goto :goto_23

    :cond_1a
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/p0;->O(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p1

    goto :goto_23

    :cond_1f
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/p0;->N()I

    move-result p1

    :goto_23
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->c:Lkotlinx/serialization/json/internal/WriteMode;

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/a0;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/a0;->g(I)V

    :cond_30
    return p1
.end method

.method public q(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance p1, Lkotlinx/serialization/json/internal/u;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-direct {p1, v0, v1}, Lkotlinx/serialization/json/internal/u;-><init>(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/json/Json;)V

    goto :goto_19

    :cond_15
    invoke-super {p0, p1}, Lkotlinx/serialization/encoding/AbstractDecoder;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p1

    :goto_19
    return-object p1
.end method

.method public s()S
    .registers 13

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->o()J

    move-result-wide v0

    long-to-int v2, v0

    int-to-short v2, v2

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-nez v5, :cond_e

    return v2

    :cond_e
    iget-object v6, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse short for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public t()F
    .registers 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->r()Ljava/lang/String;

    move-result-object v1

    :try_start_6
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a} :catch_38

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->a()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_28

    goto :goto_37

    :cond_28
    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->throwInvalidFloatingPointDecoded(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_37
    :goto_37
    return v0

    :catch_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public v()D
    .registers 7

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->r()Ljava/lang/String;

    move-result-object v1

    :try_start_6
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_a} :catch_38

    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->b:Lkotlinx/serialization/json/Json;

    invoke-virtual {v2}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->a()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_28

    goto :goto_37

    :cond_28
    iget-object v2, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->throwInvalidFloatingPointDecoded(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/Number;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0

    :cond_37
    :goto_37
    return-wide v0

    :catch_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for input \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public w()Z
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->h()Z

    move-result v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->f()Z

    move-result v0

    :goto_15
    return v0
.end method

.method public x()C
    .registers 8

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_13
    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected single char, but got \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Lkotlin/f;

    invoke-direct {v0}, Lkotlin/f;-><init>()V

    throw v0
.end method

.method public y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/b<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->c:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne v0, v1, :cond_16

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_20

    iget-object v1, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object v1, v1, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/a0;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/a0;->d()V

    :cond_20
    invoke-super {p0, p1, p2, p3, p4}, Lkotlinx/serialization/encoding/AbstractDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/b;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_2d

    iget-object p2, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    iget-object p2, p2, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->b:Lkotlinx/serialization/json/internal/a0;

    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/a0;->f(Ljava/lang/Object;)V

    :cond_2d
    return-object p1
.end method

.method public z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->h:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lkotlinx/serialization/json/internal/p0;->d:Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->p()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

###### Class kotlinx.serialization.json.internal.StreamingJsonDecoder.a (kotlinx.serialization.json.internal.p0$a)
.class public final Lkotlinx/serialization/json/internal/p0$a;
.super Ljava/lang/Object;
.source "StreamingJsonDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/internal/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;",
        "",
        "discriminatorToSkip",
        "",
        "(Ljava/lang/String;)V",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/p0$a;->a:Ljava/lang/String;

    return-void
.end method

###### Class kotlinx.serialization.json.internal.StreamingJsonDecoder.b (kotlinx.serialization.json.internal.p0$b)
.class public final synthetic Lkotlinx/serialization/json/internal/p0$b;
.super Ljava/lang/Object;
.source "StreamingJsonDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/internal/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->values()[Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->b:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->c:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->d:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->a:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lkotlinx/serialization/json/internal/p0$b;->a:[I

    return-void
.end method
