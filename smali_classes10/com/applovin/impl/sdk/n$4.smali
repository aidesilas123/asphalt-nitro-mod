###### Class com.applovin.impl.sdk.n.AnonymousClass4 (com.applovin.impl.sdk.n$4)
.class Lcom/applovin/impl/sdk/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/network/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/n;->Bw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCX:Lcom/applovin/impl/sdk/n;

.field final synthetic aCZ:Lcom/applovin/impl/sdk/network/d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/network/d;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/n$4;->aCX:Lcom/applovin/impl/sdk/n;

    iput-object p2, p0, Lcom/applovin/impl/sdk/n$4;->aCZ:Lcom/applovin/impl/sdk/network/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CQ()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$4;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$4;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    const-string v2, "Connected to internet - re-initializing SDK"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/applovin/impl/sdk/n$4;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-static {v0}, Lcom/applovin/impl/sdk/n;->t(Lcom/applovin/impl/sdk/n;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1f
    iget-object v1, p0, Lcom/applovin/impl/sdk/n$4;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-static {v1}, Lcom/applovin/impl/sdk/n;->u(Lcom/applovin/impl/sdk/n;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/applovin/impl/sdk/n$4;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Bm()V

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_33

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$4;->aCZ:Lcom/applovin/impl/sdk/network/d;

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/network/d;->b(Lcom/applovin/impl/sdk/network/d$a;)V

    return-void

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public CR()V
    .registers 1

    return-void
.end method
