###### Class gateway.v1.UniversalRequestKtKt (gateway.v1.UniversalRequestKtKt)
.class public final Lgateway/v1/UniversalRequestKtKt;
.super Ljava/lang/Object;
.source "UniversalRequestKt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b2\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a*\u0010E\u001a\u00020F2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0H\u00a2\u0006\u0002\u0008KH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008L\u001a)\u0010M\u001a\u00020F*\u00020F2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020I\u0012\u0004\u0012\u00020J0H\u00a2\u0006\u0002\u0008KH\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010M\u001a\u00020+*\u00020+2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020J0H\u00a2\u0006\u0002\u0008KH\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010M\u001a\u00020:*\u00020:2\u0017\u0010G\u001a\u0013\u0012\u0004\u0012\u00020O\u0012\u0004\u0012\u00020J0H\u00a2\u0006\u0002\u0008KH\u0086\u0008\u00f8\u0001\u0000\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u0017\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\"\u0017\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\"\u0017\u0010\u001a\u001a\u0004\u0018\u00010\u001b*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\"\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u001f*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\"\u0017\u0010\"\u001a\u0004\u0018\u00010#*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%\"\u0017\u0010&\u001a\u0004\u0018\u00010\'*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)\"\u0017\u0010*\u001a\u0004\u0018\u00010+*\u00020,8F\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010.\"\u0017\u0010/\u001a\u0004\u0018\u000100*\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u00081\u00102\"\u0017\u00103\u001a\u0004\u0018\u000104*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u00085\u00106\"\u0017\u00107\u001a\u0004\u0018\u00010\u000e*\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u0011\"\u0017\u00109\u001a\u0004\u0018\u00010:*\u00020,8F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<\"\u0017\u0010=\u001a\u0004\u0018\u00010>*\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010@\"\u0017\u0010A\u001a\u0004\u0018\u00010B*\u00020\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010D\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006P"
    }
    d2 = {
        "adDataRefreshRequestOrNull",
        "Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;",
        "getAdDataRefreshRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;",
        "adPlayerConfigRequestOrNull",
        "Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;",
        "getAdPlayerConfigRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;",
        "adRequestOrNull",
        "Lgateway/v1/AdRequestOuterClass$AdRequest;",
        "getAdRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/AdRequestOuterClass$AdRequest;",
        "appStartTimeOrNull",
        "Lcom/google/protobuf/Timestamp;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;",
        "getAppStartTimeOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lcom/google/protobuf/Timestamp;",
        "developerConsentOrNull",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "getDeveloperConsentOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "diagnosticEventRequestOrNull",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;",
        "getDiagnosticEventRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;",
        "getTokenEventRequestOrNull",
        "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;",
        "getGetTokenEventRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;",
        "initializationCompletedEventRequestOrNull",
        "Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;",
        "getInitializationCompletedEventRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;",
        "initializationRequestOrNull",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;",
        "getInitializationRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;",
        "operativeEventOrNull",
        "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
        "getOperativeEventOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
        "payloadOrNull",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;",
        "getPayloadOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "piiOrNull",
        "Lgateway/v1/PiiOuterClass$Pii;",
        "getPiiOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/PiiOuterClass$Pii;",
        "privacyUpdateRequestOrNull",
        "Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;",
        "getPrivacyUpdateRequestOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$PayloadOrBuilder;)Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;",
        "sdkStartTimeOrNull",
        "getSdkStartTimeOrNull",
        "sharedDataOrNull",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "getSharedDataOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequestOrBuilder;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "testDataOrNull",
        "Lgateway/v1/TestDataOuterClass$TestData;",
        "getTestDataOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/TestDataOuterClass$TestData;",
        "timestampsOrNull",
        "Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "getTimestampsOrNull",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedDataOrBuilder;)Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "universalRequest",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
        "block",
        "Lkotlin/Function1;",
        "Lgateway/v1/UniversalRequestKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializeuniversalRequest",
        "copy",
        "Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;",
        "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;",
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
.method public static final -initializeuniversalRequest(Lkotlin/jvm/b/l;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/s0$a;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/s0$a;->a:Lgateway/v1/s0$a$a;

    invoke-static {}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;->newBuilder()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/s0$a$a;->a(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;)Lgateway/v1/s0$a;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgateway/v1/s0$a;->a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;Lkotlin/jvm/b/l;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/t0;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/t0;->a:Lgateway/v1/t0$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p0}, Lgateway/v1/t0$a;->a(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;)Lgateway/v1/t0;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgateway/v1/t0;->a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;Lkotlin/jvm/b/l;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/u0;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/u0;->a:Lgateway/v1/u0$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0, p0}, Lgateway/v1/u0$a;->a(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;)Lgateway/v1/u0;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgateway/v1/u0;->a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;Lkotlin/jvm/b/l;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lgateway/v1/s0$a;",
            "Lkotlin/v;",
            ">;)",
            "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgateway/v1/s0$a;->a:Lgateway/v1/s0$a$a;

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    const-string v1, "this.toBuilder()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;

    invoke-virtual {v0, p0}, Lgateway/v1/s0$a$a;->a(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$a;)Lgateway/v1/s0$a;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgateway/v1/s0$a;->a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final getAdDataRefreshRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasAdDataRefreshRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getAdDataRefreshRequest()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getAdPlayerConfigRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasAdPlayerConfigRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getAdPlayerConfigRequest()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getAdRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/AdRequestOuterClass$AdRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasAdRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getAdRequest()Lgateway/v1/AdRequestOuterClass$AdRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getAppStartTimeOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;)Lcom/google/protobuf/Timestamp;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->hasAppStartTime()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->getAppStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getDeveloperConsentOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->hasDeveloperConsent()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->getDeveloperConsent()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getDiagnosticEventRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasDiagnosticEventRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getDiagnosticEventRequest()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getGetTokenEventRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasGetTokenEventRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getGetTokenEventRequest()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getInitializationCompletedEventRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasInitializationCompletedEventRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getInitializationCompletedEventRequest()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getInitializationRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasInitializationRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getInitializationRequest()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getOperativeEventOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasOperativeEvent()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getOperativeEvent()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getPayloadOrNull(Lgateway/v1/UniversalRequestOuterClass$b;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$b;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$b;->getPayload()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getPiiOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;)Lgateway/v1/PiiOuterClass$Pii;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->hasPii()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->getPii()Lgateway/v1/PiiOuterClass$Pii;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getPrivacyUpdateRequestOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;)Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->hasPrivacyUpdateRequest()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$b;->getPrivacyUpdateRequest()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getSdkStartTimeOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;)Lcom/google/protobuf/Timestamp;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->hasSdkStartTime()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->getSdkStartTime()Lcom/google/protobuf/Timestamp;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getSharedDataOrNull(Lgateway/v1/UniversalRequestOuterClass$b;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$b;->hasSharedData()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$b;->getSharedData()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getTestDataOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;)Lgateway/v1/TestDataOuterClass$TestData;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->hasTestData()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->getTestData()Lgateway/v1/TestDataOuterClass$TestData;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method

.method public static final getTimestampsOrNull(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;)Lgateway/v1/TimestampsOuterClass$Timestamps;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->hasTimestamps()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$c;->getTimestamps()Lgateway/v1/TimestampsOuterClass$Timestamps;

    move-result-object p0

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return-object p0
.end method
