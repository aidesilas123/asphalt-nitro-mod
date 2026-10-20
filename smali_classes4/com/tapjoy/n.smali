###### Class com.tapjoy.n (com.tapjoy.n)
.class public abstract Lcom/tapjoy/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onConnectFailure(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onConnectSuccess()V
    .registers 1

    return-void
.end method
