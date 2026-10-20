###### Class gateway.v1.v0 (gateway.v1.v0)
.class public final Lgateway/v1/v0;
.super Ljava/lang/Object;
.source "UniversalResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/v0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001e\u001a\u00020\u001fH\u0001J\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020!J\u0006\u0010#\u001a\u00020!J\u0006\u0010$\u001a\u00020%J\u0006\u0010&\u001a\u00020%J\u0006\u0010\'\u001a\u00020%R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\u0004\u0018\u00010\u0006*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u000c*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006)"
    }
    d2 = {
        "Lgateway/v1/UniversalResponseKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Builder;",
        "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Builder;)V",
        "value",
        "Lgateway/v1/ErrorOuterClass$Error;",
        "error",
        "getError",
        "()Lgateway/v1/ErrorOuterClass$Error;",
        "setError",
        "(Lgateway/v1/ErrorOuterClass$Error;)V",
        "Lgateway/v1/MutableDataOuterClass$MutableData;",
        "mutableData",
        "getMutableData",
        "()Lgateway/v1/MutableDataOuterClass$MutableData;",
        "setMutableData",
        "(Lgateway/v1/MutableDataOuterClass$MutableData;)V",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "payload",
        "getPayload",
        "()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "setPayload",
        "(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V",
        "errorOrNull",
        "getErrorOrNull",
        "(Lgateway/v1/UniversalResponseKt$Dsl;)Lgateway/v1/ErrorOuterClass$Error;",
        "mutableDataOrNull",
        "getMutableDataOrNull",
        "(Lgateway/v1/UniversalResponseKt$Dsl;)Lgateway/v1/MutableDataOuterClass$MutableData;",
        "_build",
        "Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;",
        "clearError",
        "",
        "clearMutableData",
        "clearPayload",
        "hasError",
        "",
        "hasMutableData",
        "hasPayload",
        "Companion",
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
.field public static final a:Lgateway/v1/v0$a;


# instance fields
.field private final b:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/v0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/v0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/v0;->a:Lgateway/v1/v0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/v0;->b:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/v0;-><init>(Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;
    .registers 3

    iget-object v0, p0, Lgateway/v1/v0;->b:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse;

    return-object v0
.end method

.method public final b(Lgateway/v1/ErrorOuterClass$Error;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/v0;->b:Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;->b(Lgateway/v1/ErrorOuterClass$Error;)Lgateway/v1/UniversalResponseOuterClass$UniversalResponse$a;

    return-void
.end method
