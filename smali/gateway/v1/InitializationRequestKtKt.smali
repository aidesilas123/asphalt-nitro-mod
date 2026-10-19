###### Class gateway.v1.InitializationRequestKtKt (gateway.v1.InitializationRequestKtKt)
.class public final Lgateway/v1/InitializationRequestKtKt;
.super Ljava/lang/Object;
.source "InitializationRequestKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\t\u001a\u00020\n2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0002\u0008\u000fH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0010\u001a)\u0010\u0011\u001a\u00020\n*\u00020\n2\u0017\u0010\u000b\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c\u00a2\u0006\u0002\u0008\u000fH\u0086\u0008\u00f8\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0012"
    }
    d2 = {
        "clientInfoOrNull",
        "Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationRequestOrBuilder;",
        "getClientInfoOrNull",
        "(Lgateway/v1/InitializationRequestOuterClass$InitializationRequestOrBuilder;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
        "deviceInfoOrNull",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;",
        "getDeviceInfoOrNull",
        "(Lgateway/v1/InitializationRequestOuterClass$InitializationRequestOrBuilder;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;",
        "initializationRequest",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;",
        "block",
        "Lkotlin/Function1;",
        "Lgateway/v1/InitializationRequestKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializeinitializationRequest",
        "copy",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final -initializeinitializationRequest(Lkotlin/jvm/b/l;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/z;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/z;->a:Lgateway/v1/z$a;

    invoke-static {}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;->newBuilder()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/z$a;->a(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;)Lgateway/v1/z;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgateway/v1/z;->a()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;Lkotlin/jvm/b/l;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/z;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/z;->a:Lgateway/v1/z$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p0}, Lgateway/v1/z$a;->a(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;)Lgateway/v1/z;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgateway/v1/z;->a()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final getClientInfoOrNull(Lgateway/v1/InitializationRequestOuterClass$b;)Lgateway/v1/ClientInfoOuterClass$ClientInfo;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/InitializationRequestOuterClass$b;->hasClientInfo()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/InitializationRequestOuterClass$b;->getClientInfo()Lgateway/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getDeviceInfoOrNull(Lgateway/v1/InitializationRequestOuterClass$b;)Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/InitializationRequestOuterClass$b;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/InitializationRequestOuterClass$b;->getDeviceInfo()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method
