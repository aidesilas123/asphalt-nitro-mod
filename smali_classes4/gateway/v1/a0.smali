###### Class gateway.v1.a0 (gateway.v1.a0)
.class public final Lgateway/v1/a0;
.super Ljava/lang/Object;
.source "InitializationResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/a0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\n\u0002\u0010$\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 E2\u00020\u0001:\u0002EFB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010-\u001a\u00020.H\u0001J\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u000200J\u0006\u00102\u001a\u000200J\u0006\u00103\u001a\u000200J\u0006\u00104\u001a\u000200J\u0006\u00105\u001a\u00020\u001fJ\u0006\u00106\u001a\u00020\u001fJ\u0006\u00107\u001a\u00020\u001fJ#\u00108\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u0019H\u0007\u00a2\u0006\u0002\u00089J3\u0010:\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u001bH\u0007\u00a2\u0006\u0002\u0008<J7\u0010=\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0?H\u0007\u00a2\u0006\u0002\u0008@J+\u0010A\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0006\u0010;\u001a\u00020\u001aH\u0007\u00a2\u0006\u0002\u0008BJ4\u0010C\u001a\u000200*\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00192\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u001bH\u0087\n\u00a2\u0006\u0002\u0008DR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u000c8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00128G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R#\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u00198G\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR$\u0010 \u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u001f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R$\u0010%\u001a\u00020\u001a2\u0006\u0010\u0005\u001a\u00020\u001a8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u0017\u0010*\u001a\u0004\u0018\u00010\u000c*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\u00a8\u0006G"
    }
    d2 = {
        "Lgateway/v1/InitializationResponseKt$Dsl;",
        "",
        "_builder",
        "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$Builder;",
        "(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$Builder;)V",
        "value",
        "",
        "countOfLastShownCampaigns",
        "getCountOfLastShownCampaigns",
        "()I",
        "setCountOfLastShownCampaigns",
        "(I)V",
        "Lgateway/v1/ErrorOuterClass$Error;",
        "error",
        "getError",
        "()Lgateway/v1/ErrorOuterClass$Error;",
        "setError",
        "(Lgateway/v1/ErrorOuterClass$Error;)V",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "nativeConfiguration",
        "getNativeConfiguration",
        "()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "setNativeConfiguration",
        "(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V",
        "scarPlacements",
        "Lcom/google/protobuf/kotlin/DslMap;",
        "",
        "Lgateway/v1/InitializationResponseOuterClass$Placement;",
        "Lgateway/v1/InitializationResponseKt$Dsl$ScarPlacementsProxy;",
        "getScarPlacementsMap",
        "()Lcom/google/protobuf/kotlin/DslMap;",
        "",
        "triggerInitializationCompletedRequest",
        "getTriggerInitializationCompletedRequest",
        "()Z",
        "setTriggerInitializationCompletedRequest",
        "(Z)V",
        "universalRequestUrl",
        "getUniversalRequestUrl",
        "()Ljava/lang/String;",
        "setUniversalRequestUrl",
        "(Ljava/lang/String;)V",
        "errorOrNull",
        "getErrorOrNull",
        "(Lgateway/v1/InitializationResponseKt$Dsl;)Lgateway/v1/ErrorOuterClass$Error;",
        "_build",
        "Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;",
        "clearCountOfLastShownCampaigns",
        "",
        "clearError",
        "clearNativeConfiguration",
        "clearTriggerInitializationCompletedRequest",
        "clearUniversalRequestUrl",
        "hasError",
        "hasNativeConfiguration",
        "hasUniversalRequestUrl",
        "clear",
        "clearScarPlacements",
        "put",
        "key",
        "putScarPlacements",
        "putAll",
        "map",
        "",
        "putAllScarPlacements",
        "remove",
        "removeScarPlacements",
        "set",
        "setScarPlacements",
        "Companion",
        "ScarPlacementsProxy",
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
.field public static final a:Lgateway/v1/a0$a;


# instance fields
.field private final b:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lgateway/v1/a0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgateway/v1/a0$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lgateway/v1/a0;->a:Lgateway/v1/a0$a;

    return-void
.end method

.method private constructor <init>(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgateway/v1/a0;->b:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    return-void
.end method

.method public synthetic constructor <init>(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lgateway/v1/a0;-><init>(Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;
    .registers 3

    iget-object v0, p0, Lgateway/v1/a0;->b:Lgateway/v1/InitializationResponseOuterClass$InitializationResponse$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgateway/v1/InitializationResponseOuterClass$InitializationResponse;

    return-object v0
.end method
