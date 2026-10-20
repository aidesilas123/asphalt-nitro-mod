###### Class com.ironsource.q1.d (com.ironsource.q1$d)
.class Lcom/ironsource/q1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/q1;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/q1;


# direct methods
.method constructor <init>(Lcom/ironsource/q1;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/q1$d;->a:Lcom/ironsource/q1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/q1$d;->a:Lcom/ironsource/q1;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/ironsource/q1;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/q1$d;->a:Lcom/ironsource/q1;

    iget-object v0, v0, Lcom/ironsource/q1;->s:Lcom/ironsource/v;

    iget-object v0, v0, Lcom/ironsource/v;->i:Lcom/ironsource/s0;

    invoke-virtual {v0}, Lcom/ironsource/s0;->a()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/ironsource/q1$d;->a:Lcom/ironsource/q1;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/q1;->A(Lcom/ironsource/q1;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v4, p0, Lcom/ironsource/q1$d;->a:Lcom/ironsource/q1;

    iget-object v4, v4, Lcom/ironsource/q1;->o:Lcom/ironsource/l;

    invoke-virtual {v4}, Lcom/ironsource/l;->e()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/ironsource/q1$d;->a:Lcom/ironsource/q1;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/ironsource/q1;->N(Lcom/ironsource/q1;Ljava/util/Map;Ljava/util/List;Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_44

    :cond_3b
    iget-object v3, p0, Lcom/ironsource/q1$d;->a:Lcom/ironsource/q1;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v1, v2}, Lcom/ironsource/q1;->z(Lcom/ironsource/q1;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    :goto_44
    return-void
.end method
