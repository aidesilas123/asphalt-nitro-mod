###### Class com.tapjoy.f (com.tapjoy.f)
.class public final synthetic Lcom/tapjoy/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/tapjoy/TJTaskHandler;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TapjoyConnectCore;


# direct methods
.method public synthetic constructor <init>(Lcom/tapjoy/TapjoyConnectCore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/f;->a:Lcom/tapjoy/TapjoyConnectCore;

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/f;->a:Lcom/tapjoy/TapjoyConnectCore;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->l(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)V

    return-void
.end method
