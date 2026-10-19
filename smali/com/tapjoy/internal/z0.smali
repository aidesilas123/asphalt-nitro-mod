###### Class com.tapjoy.internal.z0 (com.tapjoy.internal.z0)
.class public final Lcom/tapjoy/internal/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJAdUnitActivity;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJAdUnitActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/z0;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/z0;->a:Lcom/tapjoy/TJAdUnitActivity;

    iget-object v0, v0, Lcom/tapjoy/TJAdUnitActivity;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "TJAdUnitActivity"

    const-string v1, "Did not receive callback from content. Closing ad."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/z0;->a:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_16
    return-void
.end method
