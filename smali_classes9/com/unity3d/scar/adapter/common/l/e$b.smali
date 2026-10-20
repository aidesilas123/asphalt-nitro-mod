###### Class com.unity3d.scar.adapter.common.l.e.b (com.unity3d.scar.adapter.common.l.e$b)
.class Lcom/unity3d/scar/adapter/common/l/e$b;
.super Ljava/lang/Object;
.source "SignalsCollectorBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/common/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/unity3d/scar/adapter/common/l/b;

.field private b:Lcom/unity3d/scar/adapter/common/l/f;

.field final synthetic c:Lcom/unity3d/scar/adapter/common/l/e;


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/l/e;Lcom/unity3d/scar/adapter/common/l/b;Lcom/unity3d/scar/adapter/common/l/f;)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->c:Lcom/unity3d/scar/adapter/common/l/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/l/f;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/l/b;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_36

    :cond_1b
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/common/l/f;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/l/b;->onSignalsCollected(Ljava/lang/String;)V

    goto :goto_36

    :cond_2b
    iget-object v0, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->a:Lcom/unity3d/scar/adapter/common/l/b;

    iget-object v1, p0, Lcom/unity3d/scar/adapter/common/l/e$b;->b:Lcom/unity3d/scar/adapter/common/l/f;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/l/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unity3d/scar/adapter/common/l/b;->onSignalsCollectionFailed(Ljava/lang/String;)V

    :goto_36
    return-void
.end method
