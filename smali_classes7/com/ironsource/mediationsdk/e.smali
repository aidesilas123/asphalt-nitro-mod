###### Class com.json.mediationsdk.e (com.ironsource.mediationsdk.e)
.class public Lcom/ironsource/mediationsdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/ironsource/mediationsdk/f;

.field private f:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private g:Ljava/lang/String;

.field private h:Lcom/ironsource/mediationsdk/utils/a;

.field private i:Lcom/ironsource/t0;

.field private j:Lcom/ironsource/mediationsdk/ISBannerSize;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lcom/ironsource/mediationsdk/utils/a;Lcom/ironsource/t0;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->a:Ljava/lang/String;

    const-string v0, "102"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->c:Ljava/lang/String;

    const-string v0, "GenericNotifications"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/e;->f:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    iput-object p3, p0, Lcom/ironsource/mediationsdk/e;->i:Lcom/ironsource/t0;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/e;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->a:Ljava/lang/String;

    const-string v0, "102"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->c:Ljava/lang/String;

    const-string v0, "GenericNotifications"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/h;IZLcom/ironsource/mediationsdk/IronSourceSegment;)Lorg/json/JSONObject;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/h;",
            "IZ",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p7

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/ironsource/mediationsdk/p;->o()Lcom/ironsource/mediationsdk/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/p;->k()Lcom/ironsource/mediationsdk/utils/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/c;->b()Lcom/ironsource/g2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/g2;->b()Lcom/ironsource/j0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/j0;->j()Lcom/ironsource/mediationsdk/utils/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/utils/d;->f()Z

    move-result v3

    if-eqz v3, :cond_54

    new-instance v3, Lcom/ironsource/mediationsdk/i;

    iget-object v4, v0, Lcom/ironsource/mediationsdk/e;->f:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-direct {v3, v4}, Lcom/ironsource/mediationsdk/i;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)V

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/i;->a(Ljava/util/Map;)V

    move-object/from16 v8, p3

    invoke-virtual {v3, v8}, Lcom/ironsource/mediationsdk/i;->a(Ljava/util/List;)V

    move-object/from16 v9, p4

    invoke-virtual {v3, v9}, Lcom/ironsource/mediationsdk/i;->a(Lcom/ironsource/mediationsdk/h;)V

    move/from16 v10, p5

    invoke-virtual {v3, v10}, Lcom/ironsource/mediationsdk/i;->a(I)V

    iget-object v4, v0, Lcom/ironsource/mediationsdk/e;->j:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/i;->a(Lcom/ironsource/mediationsdk/ISBannerSize;)V

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/i;->a(Lcom/ironsource/mediationsdk/IronSourceSegment;)V

    invoke-virtual {v3, v1}, Lcom/ironsource/mediationsdk/i;->b(Z)V

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/d;->g(Lcom/ironsource/mediationsdk/i;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_98

    :cond_54
    move-object/from16 v4, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    if-eqz v2, :cond_63

    invoke-virtual/range {p7 .. p7}, Lcom/ironsource/mediationsdk/IronSourceSegment;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_64

    :cond_63
    const/4 v2, 0x0

    :goto_64
    move-object v14, v2

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v5

    iget-object v11, v0, Lcom/ironsource/mediationsdk/e;->g:Ljava/lang/String;

    iget-object v12, v0, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    iget-object v13, v0, Lcom/ironsource/mediationsdk/e;->j:Lcom/ironsource/mediationsdk/ISBannerSize;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v16}, Lcom/ironsource/mediationsdk/d;->f(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/h;ILjava/lang/String;Lcom/ironsource/mediationsdk/utils/a;Lcom/ironsource/mediationsdk/ISBannerSize;Lorg/json/JSONObject;ZZ)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lcom/ironsource/mediationsdk/e;->f:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "adUnit"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_90

    const-string v1, "false"

    goto :goto_92

    :cond_90
    const-string v1, "true"

    :goto_92
    const-string v3, "doNotEncryptResponse"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v2

    :goto_98
    return-object v1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/mediationsdk/i;Lcom/ironsource/t0;)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/f;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/i;Lcom/ironsource/t0;)Lcom/ironsource/mediationsdk/e$a;

    move-result-object p1

    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p2, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_38

    :catch_c
    move-exception p1

    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute auction exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_38

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x3e8

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-string v5, "other"

    move-object v1, p3

    invoke-interface/range {v1 .. v7}, Lcom/ironsource/t0;->a(ILjava/lang/String;ILjava/lang/String;J)V

    :cond_38
    :goto_38
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/h;ILcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/h;",
            "I",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v9, p0

    :try_start_2
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isEncryptedResponse()Z

    move-result v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move v7, v14

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/h;IZLcom/ironsource/mediationsdk/IronSourceSegment;)Lorg/json/JSONObject;

    move-result-object v13

    new-instance v0, Lcom/ironsource/mediationsdk/e$a;

    iget-object v11, v9, Lcom/ironsource/mediationsdk/e;->i:Lcom/ironsource/t0;

    new-instance v12, Ljava/net/URL;

    iget-object v1, v9, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/utils/a;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/a;->g()I

    move-result v15

    iget-object v1, v9, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/a;->m()J

    move-result-wide v16

    iget-object v1, v9, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/a;->n()Z

    move-result v18

    iget-object v1, v9, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/a;->o()Z

    move-result v19

    iget-object v1, v9, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/utils/a;->d()I

    move-result v20

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lcom/ironsource/mediationsdk/e$a;-><init>(Lcom/ironsource/t0;Ljava/net/URL;Lorg/json/JSONObject;ZIJZZI)V

    sget-object v1, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {v1, v0}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_51

    goto :goto_7c

    :catch_51
    move-exception v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute auction exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/ironsource/mediationsdk/e;->i:Lcom/ironsource/t0;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    const/16 v11, 0x3e8

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const-string v14, "other"

    invoke-interface/range {v10 .. v16}, Lcom/ironsource/t0;->a(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_7c
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/h;ILcom/ironsource/mediationsdk/IronSourceSegment;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/mediationsdk/h;",
            "I",
            "Lcom/ironsource/mediationsdk/IronSourceSegment;",
            "Lcom/ironsource/mediationsdk/ISBannerSize;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p7, p0, Lcom/ironsource/mediationsdk/e;->j:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual/range {p0 .. p6}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/mediationsdk/h;ILcom/ironsource/mediationsdk/IronSourceSegment;)V

    return-void
.end method

.method public a(Lcom/ironsource/d1;ILcom/ironsource/d1;)V
    .registers 14

    invoke-virtual {p1}, Lcom/ironsource/d1;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "reportLoadSuccess"

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/d1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_33
    if-eqz p3, :cond_64

    invoke-virtual {p3}, Lcom/ironsource/d1;->g()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    const-string v7, ""

    const-string v8, "102"

    const-string v9, ""

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/d1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    const-string v3, "GenericNotifications"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_64
    return-void
.end method

.method public a(Lcom/ironsource/d1;ILcom/ironsource/d1;Ljava/lang/String;)V
    .registers 15

    invoke-virtual {p1}, Lcom/ironsource/d1;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "reportImpression"

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    const-string v7, ""

    const-string v8, ""

    move v5, p2

    move-object v6, p1

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/d1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_32
    if-eqz p3, :cond_62

    invoke-virtual {p3}, Lcom/ironsource/d1;->b()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    const-string v7, ""

    const-string v8, "102"

    move v5, p2

    move-object v6, p1

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/d1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v1

    const-string v3, "GenericNotifications"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_62
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/d1;Lcom/ironsource/d1;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/d1;",
            ">;I",
            "Lcom/ironsource/d1;",
            "Lcom/ironsource/d1;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/d1;->i()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "reportAuctionLose"

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ac

    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/d1;

    invoke-virtual {v2}, Lcom/ironsource/d1;->i()I

    move-result v5

    invoke-virtual {v2}, Lcom/ironsource/d1;->h()Ljava/lang/String;

    move-result-object v13

    if-ge v5, v0, :cond_34

    const/4 v6, 0x1

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    if-eqz v6, :cond_3a

    const-string v6, "1"

    goto :goto_3c

    :cond_3a
    const-string v6, "102"

    :goto_3c
    move-object v14, v6

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "instance="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", instancePriceOrder= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", loseReasonCode="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", winnerInstance="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", winnerInstancePriceOrder="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/ironsource/d1;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_83
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v6

    const-string v12, ""

    move/from16 v8, p3

    move-object/from16 v9, p5

    move-object v10, v13

    move-object v11, v14

    invoke-virtual/range {v6 .. v12}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/d1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ironsource/d1;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8, v6}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_ac
    move-object/from16 v4, p2

    goto/16 :goto_8

    :cond_b0
    if-eqz p4, :cond_e3

    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/d1;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ba
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v4

    const-string v8, ""

    const-string v9, "102"

    const-string v10, ""

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v4 .. v10}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/d1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/d;->c()Lcom/ironsource/mediationsdk/d;

    move-result-object v2

    const-string v4, "GenericNotifications"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :cond_e3
    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/d1;Lcom/ironsource/d1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/a0;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/d1;",
            ">;I",
            "Lcom/ironsource/d1;",
            "Lcom/ironsource/d1;",
            ")V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/a0;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/a0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/d1;Lcom/ironsource/d1;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/f;->a()Z

    move-result v0

    return v0
.end method
