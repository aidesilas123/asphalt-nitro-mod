###### Class com.ironsource.f6.a (com.ironsource.f6$a)
.class Lcom/ironsource/f6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/f6;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/f6;


# direct methods
.method constructor <init>(Lcom/ironsource/f6;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    iput-object p2, p0, Lcom/ironsource/f6$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/f6$a;->b:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/ironsource/f6$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    invoke-static {v0}, Lcom/ironsource/f6;->b(Lcom/ironsource/f6;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "callfailreason"

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/ironsource/gb;->q:Lcom/ironsource/gb$a;

    new-instance v2, Lcom/ironsource/j6;

    invoke-direct {v2}, Lcom/ironsource/j6;-><init>()V

    const-string v3, "loadWithUrl | webView is not null"

    invoke-virtual {v2, v1, v3}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    iget-object v2, p0, Lcom/ironsource/f6$a;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ironsource/f6;->g(Lcom/ironsource/f6;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    iget-object v2, p0, Lcom/ironsource/f6$a;->b:Lorg/json/JSONObject;

    const-string v3, "urlForWebView"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/f6;->i(Lcom/ironsource/f6;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    invoke-static {v2}, Lcom/ironsource/f6;->b(Lcom/ironsource/f6;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "adViewId"

    iget-object v3, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    invoke-static {v3}, Lcom/ironsource/f6;->h(Lcom/ironsource/f6;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    invoke-static {v2}, Lcom/ironsource/f6;->k(Lcom/ironsource/f6;)Lcom/ironsource/d6;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/f6$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/d6;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_57} :catch_58

    goto :goto_7a

    :catch_58
    move-exception v0

    iget-object v2, p0, Lcom/ironsource/f6$a;->d:Lcom/ironsource/f6;

    iget-object v3, p0, Lcom/ironsource/f6$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/f6;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/ironsource/gb;->q:Lcom/ironsource/gb$a;

    new-instance v3, Lcom/ironsource/j6;

    invoke-direct {v3}, Lcom/ironsource/j6;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    :goto_7a
    return-void
.end method
