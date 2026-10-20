###### Class com.unity3d.services.core.webview.bridge.a (com.unity3d.services.core.webview.bridge.a)
.class public final synthetic Lcom/unity3d/services/core/webview/bridge/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/unity3d/services/core/webview/bridge/IInvocationCallbackInvoker;


# static fields
.field public static final synthetic a:Lcom/unity3d/services/core/webview/bridge/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/core/webview/bridge/a;

    invoke-direct {v0}, Lcom/unity3d/services/core/webview/bridge/a;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/webview/bridge/a;->a:Lcom/unity3d/services/core/webview/bridge/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invokeCallback(Lcom/unity3d/services/core/webview/bridge/Invocation;)V
    .registers 2

    invoke-static {p1}, Lcom/unity3d/services/core/webview/bridge/SharedInstances;->a(Lcom/unity3d/services/core/webview/bridge/Invocation;)V

    return-void
.end method
