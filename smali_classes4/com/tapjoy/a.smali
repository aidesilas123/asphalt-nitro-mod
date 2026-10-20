###### Class com.tapjoy.a (com.tapjoy.a)
.class public final synthetic Lcom/tapjoy/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/a;->a:Lcom/tapjoy/TapjoyConnectCore;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/a;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->j()V

    return-void
.end method
