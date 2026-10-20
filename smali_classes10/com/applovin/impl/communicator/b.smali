###### Class com.applovin.impl.communicator.b (com.applovin.impl.communicator.b)
.class public Lcom/applovin/impl/communicator/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# instance fields
.field private akb:Z

.field private final akc:Ljava/lang/String;

.field private final akd:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private final ake:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final akf:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/communicator/b;->akb:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/communicator/b;->ake:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/communicator/b;->akf:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/communicator/b;->akc:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/communicator/b;->akd:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public ax(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/communicator/b;->akb:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/communicator/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->akd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    check-cast p1, Lcom/applovin/impl/communicator/b;

    iget-object v3, p1, Lcom/applovin/impl/communicator/b;->akd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    invoke-virtual {p0}, Lcom/applovin/impl/communicator/b;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/applovin/impl/communicator/b;->getTopic()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    if-eqz v1, :cond_33

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_33
    if-ne v1, v3, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0
.end method

.method public getTopic()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->akc:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->akc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->akd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    mul-int/lit8 v0, v0, 0x1f

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/communicator/b;->akb:Z

    return v0
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .registers 6
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/impl/communicator/b;->tu()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    move-result-object p2

    if-nez p2, :cond_e

    const-string p1, "AppLovinCommunicator"

    const-string p2, "Message received for GC\'d subscriber"

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    check-cast p1, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->akf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->ake:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object p2, p0, Lcom/applovin/impl/communicator/b;->ake:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_37

    if-eqz p2, :cond_36

    invoke-virtual {p0}, Lcom/applovin/impl/communicator/b;->tu()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    move-result-object p2

    check-cast p1, Lcom/applovin/communicator/AppLovinCommunicatorMessage;

    invoke-interface {p2, p1}, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;->onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V

    :cond_36
    return-void

    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public tu()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->akd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    return-object v0
.end method
