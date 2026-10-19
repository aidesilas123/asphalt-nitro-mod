###### Class com.json.c1 (com.ironsource.c1)
.class public Lcom/ironsource/c1;
.super Lcom/ironsource/mediationsdk/e$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/t0;Ljava/net/URL;Lorg/json/JSONObject;ZIJZZI)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/ironsource/mediationsdk/e$a;-><init>(Lcom/ironsource/t0;Ljava/net/URL;Lorg/json/JSONObject;ZIJZZI)V

    return-void
.end method


# virtual methods
.method protected i(ZLcom/ironsource/t0;J)V
    .registers 12

    if-eqz p1, :cond_14

    :try_start_2
    move-object v0, p2

    check-cast v0, Lcom/ironsource/y0;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/e$a;->b:Lcom/ironsource/mediationsdk/d$a;

    iget p1, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    add-int/lit8 v2, p1, 0x1

    iget v5, p0, Lcom/ironsource/mediationsdk/e$a;->j:I

    iget-object v6, p0, Lcom/ironsource/mediationsdk/e$a;->i:Ljava/lang/String;

    move-wide v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/ironsource/y0;->a(Lcom/ironsource/mediationsdk/d$a;IJILjava/lang/String;)V

    goto :goto_36

    :cond_14
    iget v1, p0, Lcom/ironsource/mediationsdk/e$a;->c:I

    iget-object v2, p0, Lcom/ironsource/mediationsdk/e$a;->d:Ljava/lang/String;

    iget p1, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    move-object v0, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/ironsource/t0;->a(ILjava/lang/String;ILjava/lang/String;J)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_36

    :catch_24
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget p1, p0, Lcom/ironsource/mediationsdk/e$a;->f:I

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/ironsource/mediationsdk/e$a;->g:Ljava/lang/String;

    const/16 v1, 0x3f1

    move-object v0, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/ironsource/t0;->a(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_36
    return-void
.end method
