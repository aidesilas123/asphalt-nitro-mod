###### Class com.ironsource.o3.b (com.ironsource.o3$b)
.class Lcom/ironsource/o3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->a(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:J

.field final synthetic c:Lcom/ironsource/o3;


# direct methods
.method constructor <init>(Lcom/ironsource/o3;Landroid/content/Context;J)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/o3$b;->c:Lcom/ironsource/o3;

    iput-object p2, p0, Lcom/ironsource/o3$b;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/ironsource/o3$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/ironsource/o3$b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/o3$b;->c:Lcom/ironsource/o3;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/ironsource/o3;->X(Lcom/ironsource/o3;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/ironsource/o3$b;->c:Lcom/ironsource/o3;

    iget-object v1, p0, Lcom/ironsource/o3$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ironsource/o3;->S(Lcom/ironsource/o3;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ironsource/o3;->W(Lcom/ironsource/o3;Landroid/content/Context;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ironsource/o3$b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3f

    iget-object v0, p0, Lcom/ironsource/o3$b;->c:Lcom/ironsource/o3;

    iget-object v1, p0, Lcom/ironsource/o3$b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/ironsource/o3;->V(Lcom/ironsource/o3;Landroid/content/Context;J)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3f
    :goto_3f
    return-void
.end method
