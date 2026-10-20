###### Class com.tapjoy.internal.u7 (com.tapjoy.internal.u7)
.class public final Lcom/tapjoy/internal/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJWebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/u7;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/u7;->a:Lcom/tapjoy/TJWebViewActivity;

    iget-object v0, v0, Lcom/tapjoy/TJWebViewActivity;->h:Lcom/tapjoy/k;

    if-eqz v0, :cond_16

    iget-boolean v0, v0, Lcom/tapjoy/k;->j:Z

    if-eqz v0, :cond_16

    const-string v0, "TJWebViewActivity"

    const-string v1, "Did not receive callback from content. Closing ad."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/u7;->a:Lcom/tapjoy/TJWebViewActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_16
    return-void
.end method
