###### Class com.tapjoy.internal.c4 (com.tapjoy.internal.c4)
.class public abstract Lcom/tapjoy/internal/c4;
.super Ljava/util/Observable;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/c4;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/q3;
    .registers 3

    new-instance v0, Lcom/tapjoy/internal/q3;

    invoke-direct {v0}, Lcom/tapjoy/internal/q3;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/c4;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/internal/c4;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/internal/q3;

    iget-object v1, v1, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    if-eqz v1, :cond_1c

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    if-eqz v1, :cond_6

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2a

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2a
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    return v2

    :cond_37
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_41
    return v2
.end method

.method public final setChanged()V
    .registers 1

    invoke-super {p0}, Ljava/util/Observable;->setChanged()V

    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method
