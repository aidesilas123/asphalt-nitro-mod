###### Class kotlinx.serialization.json.internal.StreamingJsonEncoder (kotlinx.serialization.json.internal.q0)
.class public final Lkotlinx/serialization/json/internal/q0;
.super Lkotlinx/serialization/encoding/a;
.source "StreamingJsonEncoder.kt"

# interfaces
.implements Lkotlinx/serialization/json/JsonEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/q0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\n\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B/\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n\u00a2\u0006\u0002\u0010\u000bB/\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\rH\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0012H\u0016J\u0010\u0010$\u001a\u00020\"2\u0006\u0010#\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\"2\u0006\u0010#\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020\"2\u0006\u0010#\u001a\u00020)H\u0016J\u0018\u0010*\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0016J\u0018\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010/\u001a\u00020\"2\u0006\u0010#\u001a\u000200H\u0016J\u0010\u00101\u001a\u0002022\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u00103\u001a\u00020\"2\u0006\u0010#\u001a\u00020,H\u0016J\u0010\u00104\u001a\u00020\"2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020\"2\u0006\u0010#\u001a\u000208H\u0016J\u0008\u00109\u001a\u00020\"H\u0016J?\u0010:\u001a\u00020\"\"\u0008\u0008\u0000\u0010;*\u00020<2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u0002H;0>2\u0008\u0010#\u001a\u0004\u0018\u0001H;H\u0016\u00a2\u0006\u0002\u0010?J)\u0010@\u001a\u00020\"\"\u0004\u0008\u0000\u0010;2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u0002H;0>2\u0006\u0010#\u001a\u0002H;H\u0016\u00a2\u0006\u0002\u0010AJ\u0010\u0010B\u001a\u00020\"2\u0006\u0010#\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010E\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010F\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010G\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020,H\u0016R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u0019X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006H"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StreamingJsonEncoder;",
        "Lkotlinx/serialization/json/JsonEncoder;",
        "Lkotlinx/serialization/encoding/AbstractEncoder;",
        "output",
        "Lkotlinx/serialization/json/internal/JsonWriter;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "mode",
        "Lkotlinx/serialization/json/internal/WriteMode;",
        "modeReuseCache",
        "",
        "(Lkotlinx/serialization/json/internal/JsonWriter;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V",
        "composer",
        "Lkotlinx/serialization/json/internal/Composer;",
        "(Lkotlinx/serialization/json/internal/Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "forceQuoting",
        "",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "[Lkotlinx/serialization/json/JsonEncoder;",
        "polymorphicDiscriminator",
        "",
        "serializersModule",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "beginStructure",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "composerForUnsignedNumbers",
        "encodeBoolean",
        "",
        "value",
        "encodeByte",
        "",
        "encodeChar",
        "",
        "encodeDouble",
        "",
        "encodeElement",
        "index",
        "",
        "encodeEnum",
        "enumDescriptor",
        "encodeFloat",
        "",
        "encodeInline",
        "Lkotlinx/serialization/encoding/Encoder;",
        "encodeInt",
        "encodeJsonElement",
        "element",
        "Lkotlinx/serialization/json/JsonElement;",
        "encodeLong",
        "",
        "encodeNull",
        "encodeNullableSerializableElement",
        "T",
        "",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeSerializableValue",
        "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeShort",
        "",
        "encodeString",
        "encodeTypeInfo",
        "endStructure",
        "shouldEncodeElementDefault",
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
.field private final a:Lkotlinx/serialization/json/internal/j;

.field private final b:Lkotlinx/serialization/json/Json;

.field private final c:Lkotlinx/serialization/json/internal/WriteMode;

.field private final d:[Lkotlinx/serialization/json/JsonEncoder;

.field private final e:Lkotlinx/serialization/modules/SerializersModule;

.field private final f:Lkotlinx/serialization/json/JsonConfiguration;

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V
    .registers 6

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/encoding/a;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/q0;->b:Lkotlinx/serialization/json/Json;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/q0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/q0;->d:[Lkotlinx/serialization/json/JsonEncoder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/q0;->d()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->a()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/q0;->e:Lkotlinx/serialization/modules/SerializersModule;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/q0;->d()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/q0;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p4, :cond_3e

    aget-object p2, p4, p1

    if-nez p2, :cond_3c

    aget-object p2, p4, p1

    if-eq p2, p0, :cond_3e

    :cond_3c
    aput-object p0, p4, p1

    :cond_3e
    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/internal/l0;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V
    .registers 6

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/ComposersKt;->Composer(Lkotlinx/serialization/json/internal/l0;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/j;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/json/internal/q0;-><init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    return-void
.end method

.method private final K()Lkotlinx/serialization/json/internal/j;
    .registers 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    instance-of v1, v0, Lkotlinx/serialization/json/internal/q;

    if-eqz v1, :cond_7

    goto :goto_11

    :cond_7
    new-instance v1, Lkotlinx/serialization/json/internal/q;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/json/internal/q;-><init>(Lkotlinx/serialization/json/internal/l0;Z)V

    move-object v0, v1

    :goto_11
    return-object v0
.end method

.method private final L(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 4

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->c()V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->h:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->o()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Lkotlinx/serialization/json/d;)V
    .registers 3

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/json/e;->a:Lkotlinx/serialization/json/e;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/q0;->e(Lkotlinx/serialization/i;Ljava/lang/Object;)V

    return-void
.end method

.method public B(I)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->h(I)V

    :goto_11
    return-void
.end method

.method public G(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->m(Ljava/lang/String;)V

    return-void
.end method

.method public H(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 9

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/q0$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_80

    const/4 v3, 0x0

    const/16 v4, 0x3a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_54

    const/4 v5, 0x3

    if-eq v0, v5, :cond_41

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->a()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    :cond_2a
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/j;->c()V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->o()V

    goto :goto_92

    :cond_41
    if-nez p2, :cond_45

    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    :cond_45
    if-ne p2, v2, :cond_92

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->o()V

    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    goto :goto_92

    :cond_54
    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->a()Z

    move-result p1

    if-nez p1, :cond_78

    rem-int/2addr p2, v5

    if-nez p2, :cond_6b

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    const/4 v3, 0x1

    goto :goto_75

    :cond_6b
    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->o()V

    :goto_75
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    goto :goto_92

    :cond_78
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    goto :goto_92

    :cond_80
    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->a()Z

    move-result p1

    if-nez p1, :cond_8d

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    :cond_8d
    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    :cond_92
    :goto_92
    return v2
.end method

.method public a()Lkotlinx/serialization/modules/SerializersModule;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->e:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
    .registers 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/q0;->d()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    iget-char v1, v0, Lkotlinx/serialization/json/internal/WriteMode;->f:C

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v2, v1}, Lkotlinx/serialization/json/internal/j;->e(C)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/j;->b()V

    :cond_1b
    iget-object v1, p0, Lkotlinx/serialization/json/internal/q0;->h:Ljava/lang/String;

    if-eqz v1, :cond_25

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/q0;->L(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlinx/serialization/json/internal/q0;->h:Ljava/lang/String;

    :cond_25
    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, v0, :cond_2a

    return-object p0

    :cond_2a
    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->d:[Lkotlinx/serialization/json/JsonEncoder;

    if-eqz p1, :cond_37

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    if-eqz p1, :cond_37

    goto :goto_44

    :cond_37
    new-instance p1, Lkotlinx/serialization/json/internal/q0;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/q0;->d()Lkotlinx/serialization/json/Json;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/q0;->d:[Lkotlinx/serialization/json/JsonEncoder;

    invoke-direct {p1, v1, v2, v0, v3}, Lkotlinx/serialization/json/internal/q0;-><init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    :goto_44
    return-object p1
.end method

.method public c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->g:C

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->p()V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/j;->c()V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->g:C

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/j;->e(C)V

    :cond_1e
    return-void
.end method

.method public d()Lkotlinx/serialization/json/Json;
    .registers 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->b:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public e(Lkotlinx/serialization/i;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/i<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    if-eqz v0, :cond_44

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonEncoder;->d()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->h()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->k()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_44

    :cond_18
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;

    invoke-interface {p1}, Lkotlinx/serialization/i;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonEncoder;->d()Lkotlinx/serialization/json/Json;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->classDiscriminator(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0, p2}, Lkotlinx/serialization/PolymorphicSerializerKt;->findPolymorphicSerializer(Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/i;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->access$validateIfSealed(Lkotlinx/serialization/i;Lkotlinx/serialization/i;Ljava/lang/String;)V

    invoke-interface {v1}, Lkotlinx/serialization/i;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/PolymorphicKt;->checkKind(Lkotlinx/serialization/descriptors/d;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/q0;->h:Ljava/lang/String;

    invoke-interface {v1, p0, p2}, Lkotlinx/serialization/i;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    goto :goto_47

    :cond_44
    :goto_44
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/i;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    :goto_47
    return-void
.end method

.method public g(D)V
    .registers 4

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    if-eqz v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/j;->f(D)V

    :goto_11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2b

    goto :goto_3c

    :cond_2b
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    iget-object p2, p2, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidFloatingPointEncoded(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/w;

    move-result-object p1

    throw p1

    :cond_3c
    :goto_3c
    return-void
.end method

.method public h(B)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->d(B)V

    :goto_11
    return-void
.end method

.method public i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/i<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_14

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Lkotlinx/serialization/encoding/a;->i(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/i;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public k(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .registers 4

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    return-void
.end method

.method public l(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .registers 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StreamingJsonEncoderKt;->isUnsignedNumber(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p1, Lkotlinx/serialization/json/internal/q0;

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/q0;->K()Lkotlinx/serialization/json/internal/j;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/q0;->d()Lkotlinx/serialization/json/Json;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/q0;->c:Lkotlinx/serialization/json/internal/WriteMode;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lkotlinx/serialization/json/internal/q0;-><init>(Lkotlinx/serialization/json/internal/j;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonEncoder;)V

    goto :goto_20

    :cond_1c
    invoke-super {p0, p1}, Lkotlinx/serialization/encoding/a;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    move-result-object p1

    :goto_20
    return-object p1
.end method

.method public m(J)V
    .registers 4

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    if-eqz v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/j;->i(J)V

    :goto_11
    return-void
.end method

.method public o()V
    .registers 3

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/j;->j(Ljava/lang/String;)V

    return-void
.end method

.method public q(S)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->k(S)V

    :goto_11
    return-void
.end method

.method public r(Z)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->l(Z)V

    :goto_11
    return-void
.end method

.method public t(F)V
    .registers 3

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/q0;->g:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/j;->g(F)V

    :goto_11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->a()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2b

    goto :goto_3c

    :cond_2b
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/q0;->a:Lkotlinx/serialization/json/internal/j;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/j;->a:Lkotlinx/serialization/json/internal/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->InvalidFloatingPointEncoded(Ljava/lang/Number;Ljava/lang/String;)Lkotlinx/serialization/json/internal/w;

    move-result-object p1

    throw p1

    :cond_3c
    :goto_3c
    return-void
.end method

.method public u(C)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/q0;->G(Ljava/lang/String;)V

    return-void
.end method

.method public z(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/q0;->f:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->e()Z

    move-result p1

    return p1
.end method

###### Class kotlinx.serialization.json.internal.StreamingJsonEncoder.a (kotlinx.serialization.json.internal.q0$a)
.class public final synthetic Lkotlinx/serialization/json/internal/q0$a;
.super Ljava/lang/Object;
.source "StreamingJsonEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/internal/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
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
    sput-object v0, Lkotlinx/serialization/json/internal/q0$a;->a:[I

    return-void
.end method
