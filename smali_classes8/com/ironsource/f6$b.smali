###### Class com.ironsource.f6.b (com.ironsource.f6$b)
.class Lcom/ironsource/f6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/f6;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ironsource/f6;


# direct methods
.method constructor <init>(Lcom/ironsource/f6;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    iput-object p2, p0, Lcom/ironsource/f6$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/f6$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v0}, Lcom/ironsource/f6;->b(Lcom/ironsource/f6;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v0}, Lcom/ironsource/f6;->b(Lcom/ironsource/f6;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "adViewId"

    iget-object v2, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v2}, Lcom/ironsource/f6;->h(Lcom/ironsource/f6;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v1}, Lcom/ironsource/f6;->k(Lcom/ironsource/f6;)Lcom/ironsource/d6;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v1}, Lcom/ironsource/f6;->k(Lcom/ironsource/f6;)Lcom/ironsource/d6;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/f6$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/d6;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v0}, Lcom/ironsource/f6;->k(Lcom/ironsource/f6;)Lcom/ironsource/d6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/d6;->b()V

    :cond_3d
    iget-object v0, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/f6;->c(Lcom/ironsource/f6;Lcom/ironsource/d6;)Lcom/ironsource/d6;

    iget-object v0, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v0, v1}, Lcom/ironsource/f6;->a(Lcom/ironsource/f6;Landroid/content/Context;)Landroid/content/Context;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_8b

    :catch_49
    move-exception v0

    invoke-static {}, Lcom/ironsource/f6;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performCleanup | could not destroy ISNAdView webView ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    invoke-static {v3}, Lcom/ironsource/f6;->h(Lcom/ironsource/f6;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ironsource/gb;->r:Lcom/ironsource/gb$a;

    new-instance v2, Lcom/ironsource/j6;

    invoke-direct {v2}, Lcom/ironsource/j6;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callfailreason"

    invoke-virtual {v2, v4, v3}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/ironsource/f6$b;->c:Lcom/ironsource/f6;

    iget-object v2, p0, Lcom/ironsource/f6$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/f6;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8b
    return-void
.end method
