###### Class gateway.v1.z (gateway.v1.z)
.class public final Lgateway/v1/z;
.super Ljava/lang/Object;
.source "InitializationRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/z$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 G2\u00020\u0001:\u0001GB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u00103\u001a\u000204H\u0001J\u0006\u00105\u001a\u000206J\u0006\u00107\u001a\u000206J\u0006\u00108\u001a\u000206J\u0006\u00109\u001a\u000206J\u0006\u0010:\u001a\u000206J\u0006\u0010;\u001a\u000206J\u0006\u0010<\u001a\u000206J\u0006\u0010=\u001a\u000206J\u0006\u0010>\u001a\u000206J\u0006\u0010?\u001a\u000206J\u0006\u0010@\u001a\u00020$J\u0006\u0010A\u001a\u00020$J\u0006\u0010B\u001a\u00020$J\u0006\u0010C\u001a\u00020$J\u0006\u0010D\u001a\u00020$J\u0006\u0010E\u001a\u00020$J\u0006\u0010F\u001a\u00020$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00158G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0005\u001a\u00020\u001b8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R$\u0010!\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\t\"\u0004\u0008#\u0010\u000bR$\u0010%\u001a\u00020$2\u0006\u0010\u0005\u001a\u00020$8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R$\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\t\"\u0004\u0008,\u0010\u000bR$\u0010-\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\u000f\"\u0004\u0008/\u0010\u0011R$\u00100\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00081\u0010\u000f\"\u0004\u00082\u0010\u0011\u00a8\u0006H"
    }
    d2 = {
        "Lgateway/v1/InitializationRequestKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;",
        "(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$Builder;)V",
        "value",
        "",
        "analyticsUserId",
        "getAnalyticsUserId",
        "()Ljava/lang/String;",
        "setAnalyticsUserId",
        "(Ljava/lang/String;)V",
        "Lcom/google/protobuf/ByteString;",
        "auid",
        "getAuid",
        "()Lcom/google/protobuf/ByteString;",
        "setAuid",
        "(Lcom/google/protobuf/ByteString;)V",
        "cache",
        "getCache",
        "setCache",
        "Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
        "clientInfo",
        "getClientInfo",
        "()Lgateway/v1/ClientInfoOuterClass$ClientInfo;",
        "setClientInfo",
        "(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;",
        "deviceInfo",
        "getDeviceInfo",
        "()Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;",
        "setDeviceInfo",
        "(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V",
        "idfi",
        "getIdfi",
        "setIdfi",
        "",
        "isFirstInit",
        "getIsFirstInit",
        "()Z",
        "setIsFirstInit",
        "(Z)V",
        "legacyFlowUserConsent",
        "getLegacyFlowUserConsent",
        "setLegacyFlowUserConsent",
        "privacy",
        "getPrivacy",
        "setPrivacy",
        "sessionId",
        "getSessionId",
        "setSessionId",
        "_build",
        "Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;",
        "clearAnalyticsUserId",
        "",
        "clearAuid",
        "clearCache",
        "clearClientInfo",
        "clearDeviceInfo",
        "clearIdfi",
        "clearIsFirstInit",
        "clearLegacyFlowUserConsent",
        "clearPrivacy",
        "clearSessionId",
        "hasAnalyticsUserId",
        "hasAuid",
        "hasCache",
        "hasClientInfo",
        "hasDeviceInfo",
        "hasLegacyFlowUserConsent",
        "hasPrivacy",
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
.field public static final a:Lgateway/v1/z$a;


# instance fields
.field private final b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/z$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/z$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/z;->a:Lgateway/v1/z$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/z;-><init>(Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;
    .registers 3

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->b(Ljava/lang/String;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final c(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->d(Lcom/google/protobuf/ByteString;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final d(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->e(Lcom/google/protobuf/ByteString;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final e(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->f(Lgateway/v1/ClientInfoOuterClass$ClientInfo;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final f(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->g(Lgateway/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->h(Ljava/lang/String;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final h(Z)V
    .registers 3

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->i(Z)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->j(Ljava/lang/String;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final j(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->k(Lcom/google/protobuf/ByteString;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method

.method public final k(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lgateway/v1/z;->b:Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    invoke-virtual {v0, p1}, Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;->l(Lcom/google/protobuf/ByteString;)Lgateway/v1/InitializationRequestOuterClass$InitializationRequest$a;

    return-void
.end method
