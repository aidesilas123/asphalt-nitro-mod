###### Class com.unity3d.ads.core.domain.SendDiagnosticEvent (com.unity3d.ads.core.domain.SendDiagnosticEvent)
.class public interface abstract Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
.super Ljava/lang/Object;
.source "SendDiagnosticEvent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;,
        Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008f\u0018\u0000 \r2\u00020\u0001:\u0001\rJU\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\t2\u0016\u0008\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tH\u00a6B\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "",
        "invoke",
        "",
        "event",
        "",
        "value",
        "",
        "tags",
        "",
        "intTags",
        "",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public static final AD_LOAD_TYPE:Ljava/lang/String; = "type"

.field public static final BRIDGE_SEND_EVENT_FAILED:Ljava/lang/String; = "bridge_send_event_failed"

.field public static final Companion:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

.field public static final INIT_FAILURE:Ljava/lang/String; = "native_initialize_task_failure_time"

.field public static final INIT_STARTED:Ljava/lang/String; = "native_initialization_started"

.field public static final INIT_SUCCESS:Ljava/lang/String; = "native_initialize_task_success_time"

.field public static final LOAD_FAILURE:Ljava/lang/String; = "native_load_failure_time"

.field public static final LOAD_STARTED:Ljava/lang/String; = "native_load_started"

.field public static final LOAD_SUCCESS:Ljava/lang/String; = "native_load_success_time"

.field public static final LOAD_TIMEOUT:Ljava/lang/String; = "native_load_timeout"

.field public static final NETWORK_CLIENT:Ljava/lang/String; = "network_client"

.field public static final NETWORK_FAILURE:Ljava/lang/String; = "native_network_failure_time"

.field public static final NETWORK_SUCCESS:Ljava/lang/String; = "native_network_success_time"

.field public static final OPERATION:Ljava/lang/String; = "operation"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REASON_ALREADY_SHOWING:Ljava/lang/String; = "already_showing"

.field public static final REASON_GATEWAY:Ljava/lang/String; = "gateway"

.field public static final REASON_INIT_FAILED:Ljava/lang/String; = "init_failed"

.field public static final REASON_INTERNAL:Ljava/lang/String; = "internal"

.field public static final REASON_INVALID:Ljava/lang/String; = "invalid"

.field public static final REASON_NETWORK:Ljava/lang/String; = "network"

.field public static final REASON_NOT_READY:Ljava/lang/String; = "not_ready"

.field public static final REASON_NO_CONNECTION:Ljava/lang/String; = "no_connection"

.field public static final REASON_NO_FILL:Ljava/lang/String; = "no_fill"

.field public static final REASON_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final REASON_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final REASON_VIDEO_PLAYER:Ljava/lang/String; = "player"

.field public static final RETRIES:Ljava/lang/String; = "retries"

.field public static final SHOW_CANCEL_TIMEOUT:Ljava/lang/String; = "native_show_cancel_timeout"

.field public static final SHOW_CLICKED:Ljava/lang/String; = "native_show_clicked"

.field public static final SHOW_FAILURE:Ljava/lang/String; = "native_show_failure_time"

.field public static final SHOW_STARTED:Ljava/lang/String; = "native_show_started"

.field public static final SHOW_SUCCESS:Ljava/lang/String; = "native_show_success_time"

.field public static final SHOW_WV_STARTED:Ljava/lang/String; = "native_show_wv_started"

.field public static final SYSTEM_CRONET_FAILURE:Ljava/lang/String; = "native_cronet_failure_time"

.field public static final SYSTEM_CRONET_SUCCESS:Ljava/lang/String; = "native_cronet_success_time"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WEBVIEW_ERROR:Ljava/lang/String; = "webview_error"

.field public static final WEBVIEW_ERROR_CODE:Ljava/lang/String; = "webview_error_code"

.field public static final WEBVIEW_URL:Ljava/lang/String; = "webview_url"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    sput-object v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;->Companion:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    return-void
.end method


# virtual methods
.method public abstract invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

###### Class com.unity3d.ads.core.domain.SendDiagnosticEvent.Companion (com.unity3d.ads.core.domain.SendDiagnosticEvent$Companion)
.class public final Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;
.super Ljava/lang/Object;
.source "SendDiagnosticEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008(\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;",
        "",
        "()V",
        "AD_LOAD_TYPE",
        "",
        "BRIDGE_SEND_EVENT_FAILED",
        "INIT_FAILURE",
        "INIT_STARTED",
        "INIT_SUCCESS",
        "LOAD_FAILURE",
        "LOAD_STARTED",
        "LOAD_SUCCESS",
        "LOAD_TIMEOUT",
        "NETWORK_CLIENT",
        "NETWORK_FAILURE",
        "NETWORK_SUCCESS",
        "OPERATION",
        "PROTOCOL",
        "REASON",
        "REASON_ALREADY_SHOWING",
        "REASON_GATEWAY",
        "REASON_INIT_FAILED",
        "REASON_INTERNAL",
        "REASON_INVALID",
        "REASON_NETWORK",
        "REASON_NOT_READY",
        "REASON_NO_CONNECTION",
        "REASON_NO_FILL",
        "REASON_TIMEOUT",
        "REASON_UNKNOWN",
        "REASON_VIDEO_PLAYER",
        "RETRIES",
        "SHOW_CANCEL_TIMEOUT",
        "SHOW_CLICKED",
        "SHOW_FAILURE",
        "SHOW_STARTED",
        "SHOW_SUCCESS",
        "SHOW_WV_STARTED",
        "SYSTEM_CRONET_FAILURE",
        "SYSTEM_CRONET_SUCCESS",
        "UNKNOWN",
        "WEBVIEW_ERROR",
        "WEBVIEW_ERROR_CODE",
        "WEBVIEW_URL",
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
.field static final synthetic $$INSTANCE:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

.field public static final AD_LOAD_TYPE:Ljava/lang/String; = "type"

.field public static final BRIDGE_SEND_EVENT_FAILED:Ljava/lang/String; = "bridge_send_event_failed"

.field public static final INIT_FAILURE:Ljava/lang/String; = "native_initialize_task_failure_time"

.field public static final INIT_STARTED:Ljava/lang/String; = "native_initialization_started"

.field public static final INIT_SUCCESS:Ljava/lang/String; = "native_initialize_task_success_time"

.field public static final LOAD_FAILURE:Ljava/lang/String; = "native_load_failure_time"

.field public static final LOAD_STARTED:Ljava/lang/String; = "native_load_started"

.field public static final LOAD_SUCCESS:Ljava/lang/String; = "native_load_success_time"

.field public static final LOAD_TIMEOUT:Ljava/lang/String; = "native_load_timeout"

.field public static final NETWORK_CLIENT:Ljava/lang/String; = "network_client"

.field public static final NETWORK_FAILURE:Ljava/lang/String; = "native_network_failure_time"

.field public static final NETWORK_SUCCESS:Ljava/lang/String; = "native_network_success_time"

.field public static final OPERATION:Ljava/lang/String; = "operation"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REASON_ALREADY_SHOWING:Ljava/lang/String; = "already_showing"

.field public static final REASON_GATEWAY:Ljava/lang/String; = "gateway"

.field public static final REASON_INIT_FAILED:Ljava/lang/String; = "init_failed"

.field public static final REASON_INTERNAL:Ljava/lang/String; = "internal"

.field public static final REASON_INVALID:Ljava/lang/String; = "invalid"

.field public static final REASON_NETWORK:Ljava/lang/String; = "network"

.field public static final REASON_NOT_READY:Ljava/lang/String; = "not_ready"

.field public static final REASON_NO_CONNECTION:Ljava/lang/String; = "no_connection"

.field public static final REASON_NO_FILL:Ljava/lang/String; = "no_fill"

.field public static final REASON_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final REASON_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final REASON_VIDEO_PLAYER:Ljava/lang/String; = "player"

.field public static final RETRIES:Ljava/lang/String; = "retries"

.field public static final SHOW_CANCEL_TIMEOUT:Ljava/lang/String; = "native_show_cancel_timeout"

.field public static final SHOW_CLICKED:Ljava/lang/String; = "native_show_clicked"

.field public static final SHOW_FAILURE:Ljava/lang/String; = "native_show_failure_time"

.field public static final SHOW_STARTED:Ljava/lang/String; = "native_show_started"

.field public static final SHOW_SUCCESS:Ljava/lang/String; = "native_show_success_time"

.field public static final SHOW_WV_STARTED:Ljava/lang/String; = "native_show_wv_started"

.field public static final SYSTEM_CRONET_FAILURE:Ljava/lang/String; = "native_cronet_failure_time"

.field public static final SYSTEM_CRONET_SUCCESS:Ljava/lang/String; = "native_cronet_success_time"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final WEBVIEW_ERROR:Ljava/lang/String; = "webview_error"

.field public static final WEBVIEW_ERROR_CODE:Ljava/lang/String; = "webview_error_code"

.field public static final WEBVIEW_URL:Ljava/lang/String; = "webview_url"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;-><init>()V

    sput-object v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;->$$INSTANCE:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls (com.unity3d.ads.core.domain.SendDiagnosticEvent$DefaultImpls)
.class public final Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;
.super Ljava/lang/Object;
.source "SendDiagnosticEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 15

    if-nez p7, :cond_20

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_9

    move-object v3, v0

    goto :goto_a

    :cond_9
    move-object v3, p2

    :goto_a
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_10

    move-object v4, v0

    goto :goto_11

    :cond_10
    move-object v4, p3

    :goto_11
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_17

    move-object v5, v0

    goto :goto_18

    :cond_17
    move-object v5, p4

    :goto_18
    move-object v1, p0

    move-object v2, p1

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;->invoke(Ljava/lang/String;Ljava/lang/Long;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invoke"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
