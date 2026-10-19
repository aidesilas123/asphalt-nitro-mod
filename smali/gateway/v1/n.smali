###### Class gateway.v1.n (gateway.v1.n)
.class public final Lgateway/v1/n;
.super Ljava/lang/Object;
.source "DiagnosticEventKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/n$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010$\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 J2\u00020\u0001:\u0003JKLB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010,\u001a\u00020-H\u0001J\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020/J\u0006\u00101\u001a\u00020/J\u0006\u00102\u001a\u00020/J\u0006\u00103\u001a\u00020/J\u0006\u00104\u001a\u000205J\u0006\u00106\u001a\u000205J\u0006\u00107\u001a\u000205J#\u00108\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001a0\u0019H\u0007\u00a2\u0006\u0002\u00089J#\u00108\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u0019H\u0007\u00a2\u0006\u0002\u0008:J3\u0010;\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0008=J3\u0010;\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008>J7\u0010?\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001a0\u00192\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c0AH\u0007\u00a2\u0006\u0002\u0008BJ7\u0010?\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060AH\u0007\u00a2\u0006\u0002\u0008CJ+\u0010D\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010<\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008EJ+\u0010D\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0006\u0010<\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008FJ4\u0010G\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u000cH\u0087\n\u00a2\u0006\u0002\u0008HJ4\u0010G\u001a\u00020/*\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00192\u0006\u0010<\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006H\u0087\n\u00a2\u0006\u0002\u0008IR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R#\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u001a0\u00198G\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR#\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001e0\u00198G\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001cR$\u0010!\u001a\u00020 2\u0006\u0010\u0005\u001a\u00020 8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R$\u0010\'\u001a\u00020&2\u0006\u0010\u0005\u001a\u00020&8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+\u00a8\u0006M"
    }
    d2 = {
        "Lgateway/v1/DiagnosticEventKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;",
        "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$Builder;)V",
        "value",
        "",
        "customEventType",
        "getCustomEventType",
        "()Ljava/lang/String;",
        "setCustomEventType",
        "(Ljava/lang/String;)V",
        "",
        "eventId",
        "getEventId",
        "()I",
        "setEventId",
        "(I)V",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
        "eventType",
        "getEventType",
        "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;",
        "setEventType",
        "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V",
        "intTags",
        "Lcom/google/protobuf/kotlin/DslMap;",
        "Lgateway/v1/DiagnosticEventKt$Dsl$IntTagsProxy;",
        "getIntTagsMap",
        "()Lcom/google/protobuf/kotlin/DslMap;",
        "stringTags",
        "Lgateway/v1/DiagnosticEventKt$Dsl$StringTagsProxy;",
        "getStringTagsMap",
        "",
        "timeValue",
        "getTimeValue",
        "()D",
        "setTimeValue",
        "(D)V",
        "Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "timestamps",
        "getTimestamps",
        "()Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "setTimestamps",
        "(Lgateway/v1/TimestampsOuterClass$Timestamps;)V",
        "_build",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
        "clearCustomEventType",
        "",
        "clearEventId",
        "clearEventType",
        "clearTimeValue",
        "clearTimestamps",
        "hasCustomEventType",
        "",
        "hasTimeValue",
        "hasTimestamps",
        "clear",
        "clearIntTags",
        "clearStringTags",
        "put",
        "key",
        "putIntTags",
        "putStringTags",
        "putAll",
        "map",
        "",
        "putAllIntTags",
        "putAllStringTags",
        "remove",
        "removeIntTags",
        "removeStringTags",
        "set",
        "setIntTags",
        "setStringTags",
        "Companion",
        "IntTagsProxy",
        "StringTagsProxy",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lgateway/v1/n$a;


# instance fields
.field private final b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/n$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/n;->a:Lgateway/v1/n$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/n;-><init>(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;
    .registers 3

    iget-object v0, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    return-object v0
.end method

.method public final synthetic b()Lcom/google/protobuf/kotlin/b;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/b;

    iget-object v1, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {v1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "_builder.getIntTagsMap()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/b;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final synthetic c()Lcom/google/protobuf/kotlin/b;
    .registers 4

    new-instance v0, Lcom/google/protobuf/kotlin/b;

    iget-object v1, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {v1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "_builder.getStringTagsMap()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/b;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final synthetic d(Lcom/google/protobuf/kotlin/b;Ljava/util/Map;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {p1, p2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->e(Ljava/util/Map;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    return-void
.end method

.method public final synthetic e(Lcom/google/protobuf/kotlin/b;Ljava/util/Map;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "map"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {p1, p2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->f(Ljava/util/Map;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->g(Ljava/lang/String;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    return-void
.end method

.method public final g(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->h(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    return-void
.end method

.method public final h(D)V
    .registers 4

    iget-object v0, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {v0, p1, p2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->i(D)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    return-void
.end method

.method public final i(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/n;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    invoke-virtual {v0, p1}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;->j(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent$a;

    return-void
.end method
