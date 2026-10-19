###### Class com.tapjoy.r0 (com.tapjoy.r0)
.class public final Lcom/tapjoy/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->b()V

    return-void
.end method
