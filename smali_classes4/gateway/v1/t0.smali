###### Class gateway.v1.t0 (gateway.v1.t0)
.class public final Lgateway/v1/t0;
.super Ljava/lang/Object;
.source "UniversalRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/t0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0007\u0018\u0000 W2\u00020\u0001:\u0001WB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010@\u001a\u00020AH\u0001J\u0006\u0010B\u001a\u00020CJ\u0006\u0010D\u001a\u00020CJ\u0006\u0010E\u001a\u00020CJ\u0006\u0010F\u001a\u00020CJ\u0006\u0010G\u001a\u00020CJ\u0006\u0010H\u001a\u00020CJ\u0006\u0010I\u001a\u00020CJ\u0006\u0010J\u001a\u00020CJ\u0006\u0010K\u001a\u00020CJ\u0006\u0010L\u001a\u00020CJ\u0006\u0010M\u001a\u00020NJ\u0006\u0010O\u001a\u00020NJ\u0006\u0010P\u001a\u00020NJ\u0006\u0010Q\u001a\u00020NJ\u0006\u0010R\u001a\u00020NJ\u0006\u0010S\u001a\u00020NJ\u0006\u0010T\u001a\u00020NJ\u0006\u0010U\u001a\u00020NJ\u0006\u0010V\u001a\u00020NR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0005\u001a\u00020\u001e8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R$\u00107\u001a\u0002062\u0006\u0010\u0005\u001a\u0002068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u0011\u0010<\u001a\u00020=8G\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010?\u00a8\u0006X"
    }
    d2 = {
        "Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$Builder;)V",
        "value",
        "Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;",
        "adDataRefreshRequest",
        "getAdDataRefreshRequest",
        "()Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;",
        "setAdDataRefreshRequest",
        "(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V",
        "Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;",
        "adPlayerConfigRequest",
        "getAdPlayerConfigRequest",
        "()Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;",
        "setAdPlayerConfigRequest",
        "(Lgateway/v1/AdPlayerConfigRequestOuterClass$AdPlayerConfigRequest;)V",
        "Lgateway/v1/AdRequestOuterClass$AdRequest;",
        "adRequest",
        "getAdRequest",
        "()Lgateway/v1/AdRequestOuterClass$AdRequest;",
        "setAdRequest",
        "(Lgateway/v1/AdRequestOuterClass$AdRequest;)V",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;",
        "diagnosticEventRequest",
        "getDiagnosticEventRequest",
        "()Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;",
        "setDiagnosticEventRequest",
        "(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V",
        "Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;",
        "getTokenEventRequest",
        "getGetTokenEventRequest",
        "()Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;",
        "setGetTokenEventRequest",
        "(Lgateway/v1/GetTokenEventRequestOuterClass$GetTokenEventRequest;)V",
        "Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;",
        "initializationCompletedEventRequest",
        "getInitializationCompletedEventRequest",
        "()Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;",
        "setInitializationCompletedEventRequest",
        "(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;",
        "initializationRequest",
        "getInitializationRequest",
        "()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;",
        "setInitializationRequest",
        "(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V",
        "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
        "operativeEvent",
        "getOperativeEvent",
        "()Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;",
        "setOperativeEvent",
        "(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V",
        "Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;",
        "privacyUpdateRequest",
        "getPrivacyUpdateRequest",
        "()Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;",
        "setPrivacyUpdateRequest",
        "(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V",
        "valueCase",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;",
        "getValueCase",
        "()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$ValueCase;",
        "_build",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;",
        "clearAdDataRefreshRequest",
        "",
        "clearAdPlayerConfigRequest",
        "clearAdRequest",
        "clearDiagnosticEventRequest",
        "clearGetTokenEventRequest",
        "clearInitializationCompletedEventRequest",
        "clearInitializationRequest",
        "clearOperativeEvent",
        "clearPrivacyUpdateRequest",
        "clearValue",
        "hasAdDataRefreshRequest",
        "",
        "hasAdPlayerConfigRequest",
        "hasAdRequest",
        "hasDiagnosticEventRequest",
        "hasGetTokenEventRequest",
        "hasInitializationCompletedEventRequest",
        "hasInitializationRequest",
        "hasOperativeEvent",
        "hasPrivacyUpdateRequest",
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
.field public static final a:Lgateway/v1/t0$a;


# instance fields
.field private final b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/t0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/t0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/t0;->a:Lgateway/v1/t0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/t0;-><init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;
    .registers 3

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;

    return-object v0
.end method

.method public final b(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;->b(Lgateway/v1/AdDataRefreshRequestOuterClass$AdDataRefreshRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method

.method public final c(Lgateway/v1/AdRequestOuterClass$AdRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;->d(Lgateway/v1/AdRequestOuterClass$AdRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method

.method public final d(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;->e(Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method

.method public final e(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;->f(Lgateway/v1/InitializationCompletedEventRequestOuterClass$InitializationCompletedEventRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method

.method public final f(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;->g(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method

.method public final g(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;->h(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method

.method public final h(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/t0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;->i(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload$a;

    return-void
.end method
