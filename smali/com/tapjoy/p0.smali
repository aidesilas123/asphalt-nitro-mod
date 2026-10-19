###### Class com.tapjoy.p0 (com.tapjoy.p0)
.class public final Lcom/tapjoy/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    iput p1, p0, Lcom/tapjoy/p0;->a:I

    iput-object p2, p0, Lcom/tapjoy/p0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->d:Lcom/tapjoy/n;

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/tapjoy/p0;->a:I

    iget-object v2, p0, Lcom/tapjoy/p0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/n;->onConnectFailure(ILjava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->d:Lcom/tapjoy/n;

    invoke-virtual {v0}, Lcom/tapjoy/n;->onConnectFailure()V

    :cond_10
    return-void
.end method
