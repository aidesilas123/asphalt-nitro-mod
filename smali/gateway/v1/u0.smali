###### Class gateway.v1.u0 (gateway.v1.u0)
.class public final Lgateway/v1/u0;
.super Ljava/lang/Object;
.source "UniversalRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/u0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0007\u0018\u0000 U2\u00020\u0001:\u0001UB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010?\u001a\u00020@H\u0001J\u0006\u0010A\u001a\u00020BJ\u0006\u0010C\u001a\u00020BJ\u0006\u0010D\u001a\u00020BJ\u0006\u0010E\u001a\u00020BJ\u0006\u0010F\u001a\u00020BJ\u0006\u0010G\u001a\u00020BJ\u0006\u0010H\u001a\u00020BJ\u0006\u0010I\u001a\u00020BJ\u0006\u0010J\u001a\u00020BJ\u0006\u0010K\u001a\u00020LJ\u0006\u0010M\u001a\u00020LJ\u0006\u0010N\u001a\u00020LJ\u0006\u0010O\u001a\u00020LJ\u0006\u0010P\u001a\u00020LJ\u0006\u0010Q\u001a\u00020LJ\u0006\u0010R\u001a\u00020LJ\u0006\u0010S\u001a\u00020LJ\u0006\u0010T\u001a\u00020LR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00188G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\t\"\u0004\u0008 \u0010\u000bR$\u0010!\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\u000f\"\u0004\u0008#\u0010\u0011R$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010+\u001a\u00020*2\u0006\u0010\u0005\u001a\u00020*8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u0002008G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u0017\u00106\u001a\u0004\u0018\u00010\u0012*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0017\u00109\u001a\u0004\u0018\u00010\u0018*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0017\u0010<\u001a\u0004\u0018\u00010$*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>\u00a8\u0006V"
    }
    d2 = {
        "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;",
        "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;)V",
        "value",
        "Lcom/google/protobuf/Timestamp;",
        "appStartTime",
        "getAppStartTime",
        "()Lcom/google/protobuf/Timestamp;",
        "setAppStartTime",
        "(Lcom/google/protobuf/Timestamp;)V",
        "Lcom/google/protobuf/ByteString;",
        "currentState",
        "getCurrentState",
        "()Lcom/google/protobuf/ByteString;",
        "setCurrentState",
        "(Lcom/google/protobuf/ByteString;)V",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "developerConsent",
        "getDeveloperConsent",
        "()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "setDeveloperConsent",
        "(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V",
        "Lgateway/v1/PiiOuterClass$Pii;",
        "pii",
        "getPii",
        "()Lgateway/v1/PiiOuterClass$Pii;",
        "setPii",
        "(Lgateway/v1/PiiOuterClass$Pii;)V",
        "sdkStartTime",
        "getSdkStartTime",
        "setSdkStartTime",
        "sessionToken",
        "getSessionToken",
        "setSessionToken",
        "Lgateway/v1/TestDataOuterClass$TestData;",
        "testData",
        "getTestData",
        "()Lgateway/v1/TestDataOuterClass$TestData;",
        "setTestData",
        "(Lgateway/v1/TestDataOuterClass$TestData;)V",
        "Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "timestamps",
        "getTimestamps",
        "()Lgateway/v1/TimestampsOuterClass$Timestamps;",
        "setTimestamps",
        "(Lgateway/v1/TimestampsOuterClass$Timestamps;)V",
        "",
        "webviewVersion",
        "getWebviewVersion",
        "()I",
        "setWebviewVersion",
        "(I)V",
        "developerConsentOrNull",
        "getDeveloperConsentOrNull",
        "(Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "piiOrNull",
        "getPiiOrNull",
        "(Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgateway/v1/PiiOuterClass$Pii;",
        "testDataOrNull",
        "getTestDataOrNull",
        "(Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;)Lgateway/v1/TestDataOuterClass$TestData;",
        "_build",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;",
        "clearAppStartTime",
        "",
        "clearCurrentState",
        "clearDeveloperConsent",
        "clearPii",
        "clearSdkStartTime",
        "clearSessionToken",
        "clearTestData",
        "clearTimestamps",
        "clearWebviewVersion",
        "hasAppStartTime",
        "",
        "hasCurrentState",
        "hasDeveloperConsent",
        "hasPii",
        "hasSdkStartTime",
        "hasSessionToken",
        "hasTestData",
        "hasTimestamps",
        "hasWebviewVersion",
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
.field public static final a:Lgateway/v1/u0$a;


# instance fields
.field private final b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/u0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/u0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/u0;->a:Lgateway/v1/u0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/u0;-><init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .registers 3

    iget-object v0, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    return-object v0
.end method

.method public final b(Lcom/google/protobuf/Timestamp;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;->b(Lcom/google/protobuf/Timestamp;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-void
.end method

.method public final c(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;->d(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-void
.end method

.method public final d(Lgateway/v1/PiiOuterClass$Pii;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;->e(Lgateway/v1/PiiOuterClass$Pii;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-void
.end method

.method public final e(Lcom/google/protobuf/Timestamp;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;->f(Lcom/google/protobuf/Timestamp;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-void
.end method

.method public final f(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;->g(Lcom/google/protobuf/ByteString;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-void
.end method

.method public final g(Lgateway/v1/TimestampsOuterClass$Timestamps;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/u0;->b:Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    invoke-virtual {v0, p1}, Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;->h(Lgateway/v1/TimestampsOuterClass$Timestamps;)Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;

    return-void
.end method

###### Class gateway.v1.u0.a (gateway.v1.u0$a)
.class public final Lgateway/v1/u0$a;
.super Ljava/lang/Object;
.source "UniversalRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;",
        "builder",
        "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;",
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
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lgateway/v1/u0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;)Lgateway/v1/u0;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgateway/v1/u0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgateway/v1/u0;-><init>(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method
