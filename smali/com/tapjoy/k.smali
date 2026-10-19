###### Class com.tapjoy.k (com.tapjoy.k)
.class public Lcom/tapjoy/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJWebViewJSInterfaceListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Object;


# instance fields
.field public b:Lcom/tapjoy/z;

.field public final c:Lcom/tapjoy/t;

.field public d:Lcom/tapjoy/y;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public final l:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public constructor <init>(Lcom/tapjoy/t;)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    const-string v0, "appJSMessageHandler"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/k;->f:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tapjoy/k;->g:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tapjoy/k;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tapjoy/k;->i:Z

    iput-boolean v1, p0, Lcom/tapjoy/k;->j:Z

    iput-object v3, p0, Lcom/tapjoy/k;->k:Ljava/lang/String;

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lcom/tapjoy/k;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/tapjoy/k;->c:Lcom/tapjoy/t;

    const-string v3, "TJAdUnitJSBridge"

    const-string v4, "creating AdUnit/JS Bridge"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/t;->c()Landroid/webkit/WebView;

    move-result-object v4

    if-nez v4, :cond_37

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "Cannot create AdUnitJSBridge -- webview is NULL"

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void

    :cond_37
    new-instance v5, Lcom/tapjoy/z;

    invoke-direct {v5, v4, p0}, Lcom/tapjoy/z;-><init>(Landroid/webkit/WebView;Lcom/tapjoy/TJWebViewJSInterfaceListener;)V

    iput-object v5, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    const-string v6, "AndroidJavascriptInterface"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/tapjoy/k;->v(Z)V

    :try_start_46
    invoke-virtual {p1}, Lcom/tapjoy/t;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ba

    sget-object v4, Lcom/tapjoy/k;->a:Ljava/lang/Object;

    if-nez v4, :cond_72

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    sput-object p1, Lcom/tapjoy/k;->a:Ljava/lang/Object;

    :cond_72
    const-class p1, Lcom/tapjoy/s0;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/tapjoy/k;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "setHandler"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v4, Lcom/tapjoy/k;->a:Ljava/lang/Object;

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Lcom/tapjoy/s0;

    invoke-direct {v6, p0}, Lcom/tapjoy/s0;-><init>(Lcom/tapjoy/k;)V

    aput-object v6, v5, v1

    aput-object p1, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_a5} :catch_b5
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_a5} :catch_ae
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_a5} :catch_ac
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_46 .. :try_end_a5} :catch_aa
    .catch Ljava/lang/InstantiationException; {:try_start_46 .. :try_end_a5} :catch_a8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_a5} :catch_a6

    goto :goto_ba

    :catch_a6
    move-exception p1

    goto :goto_af

    :catch_a8
    move-exception p1

    goto :goto_af

    :catch_aa
    move-exception p1

    goto :goto_af

    :catch_ac
    move-exception p1

    goto :goto_af

    :catch_ae
    move-exception p1

    :goto_af
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_b5
    const-string p1, "No app-provided support for JS handler"

    invoke-static {v3, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/tapjoy/z;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    iget-object v0, v0, Lcom/tapjoy/z;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    iput-object v1, v0, Lcom/tapjoy/z;->b:Landroid/webkit/WebView;

    :cond_17
    iput-object v1, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    :cond_19
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/k;->d:Lcom/tapjoy/y;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/tapjoy/y;->b()Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/tapjoy/k;->d:Lcom/tapjoy/y;

    iget-object p1, p1, Lcom/tapjoy/y;->i:Lcom/tapjoy/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/tapjoy/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_25

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/k;->j:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "forceClose"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "closeRequested"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    new-instance p1, Lcom/tapjoy/n0;

    invoke-direct {p1, p0, p2}, Lcom/tapjoy/n0;-><init>(Lcom/tapjoy/k;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "display"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/k;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/tapjoy/k;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_16

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/k;->onDispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_16
    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/tapjoy/z;->d()V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/tapjoy/z;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    if-eqz p2, :cond_11

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/tapjoy/z;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public varargs j(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "TJAdUnitJSBridge"

    const-string p2, "invokeJSCallback -- no callbackID provided"

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    if-eqz p2, :cond_20

    const-string v1, ""

    invoke-virtual {p2, v0, v1, p1}, Lcom/tapjoy/z;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public k(Ljava/lang/String;II)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "orientation"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "width"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "height"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "orientationChanged"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public l()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoEventName"

    const-string v2, "videoComplete"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "videoEvent"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoEventName"

    const-string v2, "videoError"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "videoEvent"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoEventName"

    const-string v2, "videoInfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "videoEvent"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public o(I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoEventName"

    const-string v2, "videoPause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "currentTime"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "videoEvent"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onDispatchMethod(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 12

    const-string v0, "Dispatching method: "

    iget-boolean v1, p0, Lcom/tapjoy/k;->e:Z

    const-string v2, "TJAdUnitJSBridge"

    if-eqz v1, :cond_64

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_b
    const-string v5, "callbackId"

    invoke-virtual {p2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "data"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-class v5, Lcom/tapjoy/k;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Lorg/json/JSONObject;

    aput-object v8, v7, v3

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-virtual {v5, p1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with data="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; callbackID="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/k;->b:Lcom/tapjoy/z;

    if-nez v0, :cond_4c

    return-void

    :cond_4c
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p2, v0, v3

    aput-object v1, v0, v4

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_55} :catch_56

    goto :goto_84

    :catch_56
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-array p1, v4, [Ljava/lang/Object;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, p1, v3

    invoke-virtual {p0, v1, p1}, Lcom/tapjoy/k;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_84

    :cond_64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bridge currently disabled. Adding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to message queue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/k;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_84
    return-void
.end method

.method public p(I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoEventName"

    const-string v2, "videoProgress"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "currentTime"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "videoEvent"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public q(III)V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoEventName"

    const-string v2, "videoReady"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "videoDuration"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "videoWidth"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "videoHeight"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "videoEvent"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public r(I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "videoEventName"

    const-string v2, "videoStart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "currentTime"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "videoEvent"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public s()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/k;->c:Lcom/tapjoy/t;

    invoke-virtual {v0}, Lcom/tapjoy/t;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "volumeChanged"

    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/k;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public t()V
    .registers 5

    :try_start_0
    const-string v0, "onVisibilityStateChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "hidden"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/k;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_26

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnitJSBridge"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public u()V
    .registers 5

    :try_start_0
    const-string v0, "onVisibilityStateChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "visible"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/k;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_26

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJAdUnitJSBridge"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public v(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tapjoy/k;->e:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/tapjoy/k;->f()V

    :cond_7
    return-void
.end method
