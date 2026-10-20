###### Class com.tapjoy.g (com.tapjoy.g)
.class public final synthetic Lcom/tapjoy/g;
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

    iput-object p1, p0, Lcom/tapjoy/g;->a:Lcom/tapjoy/TapjoyConnectCore;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/g;->a:Lcom/tapjoy/TapjoyConnectCore;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->m(Lcom/tapjoy/TapjoyConnectCore;)V

    return-void
.end method
