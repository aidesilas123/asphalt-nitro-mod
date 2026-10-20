###### Class com.ironsource.sdk.controller.t.k (com.ironsource.sdk.controller.t$k)
.class Lcom/ironsource/sdk/controller/t$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/t;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ironsource/sdk/controller/t;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/t;Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t$k;->d:Lcom/ironsource/sdk/controller/t;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t$k;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t$k;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t$k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$k;->d:Lcom/ironsource/sdk/controller/t;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$k;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t$k;->b:Landroid/webkit/WebView;

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/t;->M(Lcom/ironsource/sdk/controller/t;Lorg/json/JSONObject;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$k;->d:Lcom/ironsource/sdk/controller/t;

    const-string v1, "about:blank"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/t;->I0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t$k;->d:Lcom/ironsource/sdk/controller/t;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t$k;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/t;->I0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V

    return-void
.end method
