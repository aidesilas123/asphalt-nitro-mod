###### Class com.tapjoy.internal.j8 (com.tapjoy.internal.j8)
.class public final Lcom/tapjoy/internal/j8;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnit;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnit;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/j8;->a:Lcom/tapjoy/TJAdUnit;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 9

    iget-object v0, p0, Lcom/tapjoy/internal/j8;->a:Lcom/tapjoy/TJAdUnit;

    iget-object v1, v0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/k;

    if-eqz v1, :cond_38

    iget-boolean v1, v1, Lcom/tapjoy/k;->j:Z

    if-eqz v1, :cond_38

    const/4 v1, 0x5

    const-string v2, "Uncaught"

    const-string v3, "uncaught"

    const-string v4, "Error"

    const-string v5, "error"

    const-string v6, "not defined"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_38

    aget-object v4, v2, v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object p1, p0, Lcom/tapjoy/internal/j8;->a:Lcom/tapjoy/TJAdUnit;

    iget-object p1, p1, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {p1, v0}, Lcom/tapjoy/TJAdUnitActivity;->e(Z)V

    goto :goto_38

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_38
    :goto_38
    const/4 p1, 0x1

    return p1
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    const-string p1, "TJAdUnit"

    invoke-static {p1, p3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
