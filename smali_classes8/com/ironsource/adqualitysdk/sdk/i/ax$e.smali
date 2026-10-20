###### Class com.ironsource.adqualitysdk.sdk.i.ax.e (com.ironsource.adqualitysdk.sdk.i.ax$e)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ax$e;
.super Lcom/ironsource/adqualitysdk/sdk/i/il;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ax;->Y(Landroid/content/Context;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/util/List;

.field final synthetic h:Ljava/util/List;

.field final synthetic i:Ljava/lang/Runnable;

.field final synthetic j:Lcom/ironsource/adqualitysdk/sdk/i/ax;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 8

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->g:Ljava/util/List;

    iput-object p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->h:Ljava/util/List;

    iput-object p7, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->i:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/il;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ()V
    .registers 8

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->l(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ｋ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->g:Ljava/util/List;

    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ax$e$a;

    invoke-direct {v6, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$e$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$e;)V

    invoke-static/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->y(Lcom/ironsource/adqualitysdk/sdk/i/ax;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/adqualitysdk/sdk/i/il;)V

    return-void

    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->a0(Lcom/ironsource/adqualitysdk/sdk/i/ax;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->j:Lcom/ironsource/adqualitysdk/sdk/i/ax;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ax;->k(Lcom/ironsource/adqualitysdk/sdk/i/ax;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e;->d:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ax$e$b;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ax$e$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ax$e;)V

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ao;->ヮ()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/t;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/il;J)V

    return-void
.end method
