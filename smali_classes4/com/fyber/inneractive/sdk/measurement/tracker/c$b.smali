###### Class com.fyber.inneractive.sdk.measurement.tracker.c.b (com.fyber.inneractive.sdk.measurement.tracker.c$b)
.class public Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/measurement/tracker/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/measurement/tracker/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "clearing webview"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/measurement/tracker/c$b;->a:Lcom/fyber/inneractive/sdk/measurement/tracker/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/measurement/tracker/c;->f:Landroid/webkit/WebView;

    :cond_16
    return-void
.end method
