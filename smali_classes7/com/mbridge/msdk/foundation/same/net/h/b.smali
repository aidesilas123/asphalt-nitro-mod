###### Class com.mbridge.msdk.foundation.same.net.h.b (com.mbridge.msdk.foundation.same.net.h.b)
.class public Lcom/mbridge/msdk/foundation/same/net/h/b;
.super Ljava/lang/Object;
.source "CommonAsyncHttpRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "b"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_10

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/h/b;->mContext:Landroid/content/Context;

    goto :goto_16

    :cond_10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/h/b;->mContext:Landroid/content/Context;

    :goto_16
    return-void
.end method

.method private asUrlParams(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_64

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_64

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_f
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    const-string v4, ""

    :cond_37
    const-string v5, "&"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_47} :catch_48

    goto :goto_17

    :catch_48
    move-exception p1

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_56

    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/h/b;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    move-object v1, v0

    :cond_57
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_64

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_64
    :goto_64
    return-object v0
.end method

.method public static downloadFile(Ljava/io/File;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 4

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/o;->a()Lcom/mbridge/msdk/foundation/same/net/e/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/e/b;->a(Ljava/io/File;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)Lcom/mbridge/msdk/foundation/same/net/e/b$a;

    return-void
.end method

.method private post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V
    .registers 23

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    if-nez p3, :cond_15

    :try_start_8
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_10

    move-object v10, p0

    move-object v3, v0

    goto :goto_18

    :catch_10
    move-exception v0

    move-object v10, p0

    move-object/from16 v3, p3

    goto :goto_2f

    :cond_15
    move-object v10, p0

    move-object/from16 v3, p3

    :goto_18
    :try_start_18
    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/h/b;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;)V

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/net/h/e;->e(Lcom/mbridge/msdk/foundation/same/net/h/d;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/c;->a()Lcom/mbridge/msdk/foundation/same/net/g/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/foundation/same/net/g/c;->a(Lcom/mbridge/msdk/foundation/same/net/h/d;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object v0

    if-eqz v0, :cond_38

    if-eqz v9, :cond_38

    invoke-interface {v9, v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception v0

    :goto_2f
    sget-object v4, Lcom/mbridge/msdk/foundation/same/net/h/b;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    move-object v11, v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v0, :cond_113

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v3

    const-string v4, ""

    const/4 v0, 0x0

    if-eqz v3, :cond_95

    invoke-virtual {v3}, Lcom/mbridge/msdk/c/e;->aq()I

    move-result v5

    invoke-virtual {v3}, Lcom/mbridge/msdk/c/e;->aH()Ljava/lang/String;

    move-result-object v6

    :try_start_64
    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->c()Ljava/util/Map;

    move-result-object v0

    const-string v7, "data"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_71} :catch_7f

    if-nez p7, :cond_7d

    :try_start_73
    invoke-static {v3, v7}, Lcom/mbridge/msdk/foundation/same/report/g;->a(Lcom/mbridge/msdk/c/e;Ljava/lang/String;)Z

    move-result v0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_77} :catch_7a

    if-nez v0, :cond_7d

    return-void

    :catch_7a
    move-exception v0

    move-object v4, v7

    goto :goto_80

    :cond_7d
    move-object v4, v7

    goto :goto_83

    :catch_7f
    move-exception v0

    :goto_80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_83
    invoke-virtual {v3}, Lcom/mbridge/msdk/c/e;->v()I

    move-result v0

    invoke-virtual {v3}, Lcom/mbridge/msdk/c/e;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "a_stid"

    invoke-virtual {v11, v8, v7}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v4

    move v4, v0

    move v0, v5

    move-object v5, v14

    goto :goto_99

    :cond_95
    const-string v6, "UNKNOWN"

    move-object v5, v4

    const/4 v4, 0x0

    :goto_99
    const-string v7, "country_code"

    invoke-virtual {v11, v7, v6}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v12, :cond_f1

    :try_start_a0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    invoke-static {v3, v5}, Lcom/mbridge/msdk/foundation/same/report/g;->a(Lcom/mbridge/msdk/c/e;Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_cc

    if-eq v4, v13, :cond_b1

    if-ne v4, v3, :cond_19a

    :cond_b1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/n;->a()Lcom/mbridge/msdk/foundation/same/net/n;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v4, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget v5, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->l:I

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/foundation/same/net/n;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V

    return-void

    :cond_cc
    if-eqz p7, :cond_19a

    if-eq v4, v13, :cond_d4

    if-ne v4, v3, :cond_d3

    goto :goto_d4

    :cond_d3
    return-void

    :cond_d4
    :goto_d4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/n;->a()Lcom/mbridge/msdk/foundation/same/net/n;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v4, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget v5, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->l:I

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/foundation/same/net/n;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V

    :cond_ee
    return-void

    :catch_ef
    move-exception v0

    goto :goto_10e

    :cond_f1
    if-ne v0, v13, :cond_19a

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/n;->a()Lcom/mbridge/msdk/foundation/same/net/n;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v4, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget v5, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->l:I

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/mbridge/msdk/foundation/same/net/n;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_10d} :catch_ef

    return-void

    :goto_10e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19a

    :cond_113
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_158

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    if-eqz v0, :cond_19a

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->h()Lcom/mbridge/msdk/c/a;

    move-result-object v0

    if-eqz v0, :cond_19a

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/a;->e()I

    move-result v0

    if-ne v0, v13, :cond_19a

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/n;->a()Lcom/mbridge/msdk/foundation/same/net/n;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->i:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget v3, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->m:I

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/net/n;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V

    return-void

    :cond_158
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->v:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19a

    if-eqz v11, :cond_17f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_180

    :cond_17f
    move-object v0, v2

    :goto_180
    invoke-static {}, Lcom/mbridge/msdk/foundation/db/a/a;->a()Lcom/mbridge/msdk/foundation/db/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/db/a/a;->b()Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_198

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Lcom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    sget-object v3, Lcom/mbridge/msdk/foundation/same/net/h/d;->e:Ljava/lang/String;

    invoke-virtual {v11, v3, v2}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_198
    move-object v3, v0

    goto :goto_19b

    :cond_19a
    :goto_19a
    move-object v3, v2

    :goto_19b
    const/4 v0, 0x0

    const-string v7, "application/x-www-form-urlencoded"

    const-string v8, "Content-Type"

    if-eqz v1, :cond_1d2

    if-eq v1, v13, :cond_1b4

    if-eq v1, v12, :cond_1a7

    goto :goto_1de

    :cond_1a7
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/e/c;

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v3, v1, v9}, Lcom/mbridge/msdk/foundation/same/net/e/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    invoke-virtual {v0, v8, v7}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1de

    :cond_1b4
    if-eqz p6, :cond_1c5

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/e/d;

    const/4 v2, 0x1

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v1, v0

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/net/e/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;Z)V

    goto :goto_1ce

    :cond_1c5
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/e/d;

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v3, v1, v9}, Lcom/mbridge/msdk/foundation/same/net/e/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    :goto_1ce
    invoke-virtual {v0, v8, v7}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1de

    :cond_1d2
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/e/f;

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v3, v1, v9}, Lcom/mbridge/msdk/foundation/same/net/e/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    invoke-virtual {v0, v8, v7}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1de
    if-eqz v0, :cond_1ee

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/m;)Lcom/mbridge/msdk/foundation/same/net/j;

    if-eqz p6, :cond_1eb

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/o;->a(Lcom/mbridge/msdk/foundation/same/net/j;)V

    goto :goto_1ee

    :cond_1eb
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/o;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V

    :cond_1ee
    :goto_1ee
    return-void
.end method


# virtual methods
.method public addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;)V
    .registers 7

    if-eqz p2, :cond_97

    sget-object v0, Lcom/mbridge/msdk/foundation/same/a;->v:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/Aa;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_12

    move-object v0, v1

    :cond_12
    const-string v2, "channel"

    invoke-virtual {p2, v2, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/a;->a()Lcom/mbridge/msdk/foundation/same/net/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/net/a;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "band_width"

    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/net/h/d;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "unit_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_79

    invoke-static {}, Lcom/mbridge/msdk/out/CustomInfoManager;->getInstance()Lcom/mbridge/msdk/out/CustomInfoManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/mbridge/msdk/out/CustomInfoManager;->getCustomInfoByUnitId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_54

    const-string v1, "ch_info"

    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/mbridge/msdk/c/f;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/c/h;

    move-result-object p1

    if-eqz p1, :cond_79

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "u_stid"

    invoke-virtual {p2, v0, p1}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->g()Z

    move-result p1

    if-nez p1, :cond_86

    const-string p1, "dev_source"

    const-string v0, "2"

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->getInstance()Lcom/mbridge/msdk/foundation/same/DomainNameUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/DomainNameUtils;->isExcludeCNDomain()Z

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, "re_domain"

    const-string v0, "1"

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    return-void
.end method

.method public choiceV3OrV5BySetting(ILcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;Ljava/lang/String;)V
    .registers 11

    new-instance v5, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v5}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/same/net/h/b;->choiceV3OrV5BySetting(ILcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/m;)V

    return-void
.end method

.method public choiceV3OrV5BySetting(ILcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/m;)V
    .registers 15

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->g(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->aJ()I

    move-result v0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->aI()I

    move-result v0

    :goto_1f
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 p4, 0x2

    if-ge v0, p4, :cond_3a

    if-nez p5, :cond_30

    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/mbridge/msdk/foundation/same/net/h/b;->postV5(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_7a

    :cond_30
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/mbridge/msdk/foundation/same/net/h/b;->postV5(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;Lcom/mbridge/msdk/foundation/same/net/m;Z)V

    goto :goto_7a

    :cond_3a
    rem-int/2addr v0, p4

    if-nez v0, :cond_6b

    if-nez p2, :cond_44

    new-instance p2, Lcom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    :cond_44
    invoke-static {}, Lcom/mbridge/msdk/foundation/db/a/a;->a()Lcom/mbridge/msdk/foundation/db/a/a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mbridge/msdk/foundation/db/a/a;->b()Lorg/json/JSONArray;

    move-result-object p4

    if-eqz p4, :cond_6b

    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/net/g/d;->b()I

    move-result v0

    if-lez v0, :cond_66

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_66

    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V

    return-void

    :cond_66
    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/h/d;->e:Ljava/lang/String;

    invoke-virtual {p2, v0, p4}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    move-object v5, p2

    if-nez p5, :cond_72

    invoke-virtual {p0, p1, v4, v5, p3}, Lcom/mbridge/msdk/foundation/same/net/h/b;->getLoadOrSetting(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_7a

    :cond_72
    const/4 v8, 0x1

    move-object v2, p0

    move v3, p1

    move-object v6, p5

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mbridge/msdk/foundation/same/net/h/b;->getLoadOrSetting(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;Z)V

    :goto_7a
    return-void
.end method

.method public get(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 13

    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/net/h/b;->get(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void
.end method

.method public get(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V
    .registers 21

    move v2, p1

    move-object v3, p2

    move-object/from16 v10, p5

    if-nez p3, :cond_13

    :try_start_6
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_e

    move-object v11, p0

    move-object v1, v0

    goto :goto_16

    :catch_e
    move-exception v0

    move-object v11, p0

    move-object/from16 v1, p3

    goto :goto_6e

    :cond_13
    move-object v11, p0

    move-object/from16 v1, p3

    :goto_16
    :try_start_16
    invoke-virtual {p0, p2, v1}, Lcom/mbridge/msdk/foundation/same/net/h/b;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;)V

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/net/h/e;->e(Lcom/mbridge/msdk/foundation/same/net/h/d;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/net/h/d;->c()Ljava/util/Map;

    move-result-object v0

    const-string v4, "sign"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_28} :catch_6d

    const-string v4, ""

    if-nez v0, :cond_2d

    move-object v0, v4

    :cond_2d
    :try_start_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "ts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "st"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/c;->a()Lcom/mbridge/msdk/foundation/same/net/g/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/g/c;->a(Lcom/mbridge/msdk/foundation/same/net/h/d;)Lcom/mbridge/msdk/foundation/same/net/l;

    move-result-object v0

    if-eqz v0, :cond_77

    if-eqz v10, :cond_77

    invoke-interface {v10, v0}, Lcom/mbridge/msdk/foundation/same/net/e;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/l;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception v0

    :goto_6e
    sget-object v4, Lcom/mbridge/msdk/foundation/same/net/h/b;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    move-object v12, v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->p:Z

    if-eqz v0, :cond_ec

    :try_start_8c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_91
    .catchall {:try_start_8c .. :try_end_91} :catchall_e2

    :try_start_91
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "uri"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {v12}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_bc
    .catchall {:try_start_91 .. :try_end_bc} :catchall_bd

    goto :goto_c7

    :catchall_bd
    move-exception v0

    :try_start_be
    sget-object v4, Lcom/mbridge/msdk/foundation/same/net/h/b;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c7
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/n;->a()Lcom/mbridge/msdk/foundation/same/net/n;

    move-result-object v4

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v5, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget v6, v0, Lcom/mbridge/msdk/foundation/same/net/g/d;->n:I

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/mbridge/msdk/foundation/same/net/n;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_e1
    .catchall {:try_start_be .. :try_end_e1} :catchall_e2

    return-void

    :catchall_e2
    move-exception v0

    sget-object v1, Lcom/mbridge/msdk/foundation/same/net/h/b;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/mbridge/msdk/foundation/same/net/h/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/c/f;->g(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/e;->n()I

    move-result v5

    if-lt v4, v5, :cond_139

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v4

    iget-object v4, v4, Lcom/mbridge/msdk/foundation/same/net/g/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_139

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void

    :cond_139
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Lcom/mbridge/msdk/c/e;->o()I

    move-result v1

    if-lt v4, v1, :cond_154

    if-eqz p6, :cond_154

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void

    :cond_154
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v2, :cond_17b

    const/4 v4, 0x1

    if-eq v2, v4, :cond_165

    const/4 v4, 0x2

    if-eq v2, v4, :cond_15f

    goto :goto_181

    :cond_15f
    new-instance v2, Lcom/mbridge/msdk/foundation/same/net/e/c;

    invoke-direct {v2, v1, v0, v3, v10}, Lcom/mbridge/msdk/foundation/same/net/e/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_180

    :cond_165
    if-eqz p7, :cond_175

    new-instance v7, Lcom/mbridge/msdk/foundation/same/net/e/d;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v3, v0

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/foundation/same/net/e/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;Z)V

    move-object v3, v7

    goto :goto_181

    :cond_175
    new-instance v2, Lcom/mbridge/msdk/foundation/same/net/e/d;

    invoke-direct {v2, v1, v0, v3, v10}, Lcom/mbridge/msdk/foundation/same/net/e/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_180

    :cond_17b
    new-instance v2, Lcom/mbridge/msdk/foundation/same/net/e/f;

    invoke-direct {v2, v1, v0, v3, v10}, Lcom/mbridge/msdk/foundation/same/net/e/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    :goto_180
    move-object v3, v2

    :goto_181
    if-eqz v3, :cond_198

    move-object/from16 v1, p4

    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/m;)Lcom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/same/net/j;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/foundation/same/net/j;->b(I)V

    if-eqz p7, :cond_195

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/net/o;->a(Lcom/mbridge/msdk/foundation/same/net/j;)V

    goto :goto_198

    :cond_195
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/net/o;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V

    :cond_198
    :goto_198
    return-void
.end method

.method public get(ILjava/lang/String;Ljava/util/Map;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mbridge/msdk/foundation/same/net/m;",
            "Lcom/mbridge/msdk/foundation/same/net/e;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_7

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdk_version"

    const-string v1, "MAL_16.5.91"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    const-string v1, "1"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/mbridge/msdk/foundation/same/net/h/b;->asUrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_40
    sget-boolean p3, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p3, :cond_5a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get wx scheme url = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AppletsModel"

    invoke-static {v0, p3}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_73

    const/4 v1, 0x1

    if-eq p1, v1, :cond_6d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_65

    goto :goto_79

    :cond_65
    :try_start_65
    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/e/c;

    invoke-direct {p1, p3, p2, v0, p5}, Lcom/mbridge/msdk/foundation/same/net/e/c;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_78

    :catch_6b
    nop

    goto :goto_79

    :cond_6d
    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/e/d;

    invoke-direct {p1, p3, p2, v0, p5}, Lcom/mbridge/msdk/foundation/same/net/e/d;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_78

    :cond_73
    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/e/f;

    invoke-direct {p1, p3, p2, v0, p5}, Lcom/mbridge/msdk/foundation/same/net/e/f;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_78} :catch_6b

    :goto_78
    move-object v0, p1

    :goto_79
    if-eqz v0, :cond_88

    :try_start_7b
    invoke-virtual {v0, p4}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/m;)Lcom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/net/j;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/net/j;->b(I)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/o;->b(Lcom/mbridge/msdk/foundation/same/net/j;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_88} :catch_88

    :catch_88
    :cond_88
    return-void
.end method

.method public getCampaign(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 16

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->g(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->aJ()I

    move-result v0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->aI()I

    move-result v0

    :goto_1f
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez p4, :cond_2e

    new-instance p4, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {p4}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    :cond_2e
    const/4 p2, 0x2

    if-ge v0, p2, :cond_3b

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p1

    move-object v5, p3

    move-object v6, p5

    move-object v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/mbridge/msdk/foundation/same/net/h/b;->postV5(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;Lcom/mbridge/msdk/foundation/same/net/m;Z)V

    goto :goto_8f

    :cond_3b
    rem-int/2addr v0, p2

    if-nez v0, :cond_76

    if-nez p3, :cond_47

    new-instance p2, Lcom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    move-object v5, p2

    goto :goto_48

    :cond_47
    move-object v5, p3

    :goto_48
    invoke-static {}, Lcom/mbridge/msdk/foundation/db/a/a;->a()Lcom/mbridge/msdk/foundation/db/a/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/db/a/a;->b()Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_77

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/g/d;->a()Lcom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/net/g/d;->b()I

    move-result p3

    if-lez p3, :cond_70

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p3, :cond_70

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void

    :cond_70
    sget-object p3, Lcom/mbridge/msdk/foundation/same/net/h/d;->e:Ljava/lang/String;

    invoke-virtual {v5, p3, p2}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_76
    move-object v5, p3

    :cond_77
    :goto_77
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v2, p0

    move v3, p1

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/mbridge/msdk/foundation/same/net/h/b;->get(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_80} :catch_81

    goto :goto_8f

    :catch_81
    move-exception p1

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_8f

    sget-object p2, Lcom/mbridge/msdk/foundation/same/net/h/b;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public getLoadOrSetting(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 12

    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mbridge/msdk/foundation/same/net/h/b;->getLoadOrSetting(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;Z)V

    return-void
.end method

.method public getLoadOrSetting(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;Z)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/net/h/b;->get(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void
.end method

.method public post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 13

    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void
.end method

.method public postFocusReport(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 13

    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void
.end method

.method public postV5(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;)V
    .registers 15

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/net/h/d;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_11

    move-object v0, v1

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ts"

    invoke-virtual {p3, v4, v1}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "st"

    invoke-virtual {p3, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v6}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    return-void
.end method

.method public postV5(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/e;Lcom/mbridge/msdk/foundation/same/net/m;Z)V
    .registers 15

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/same/net/h/d;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sign"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_11

    move-object v0, v1

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {p3, v2, v1}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "st"

    invoke-virtual {p3, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_4f

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    goto :goto_5e

    :cond_4f
    new-instance v4, Lcom/mbridge/msdk/foundation/same/net/b;

    invoke-direct {v4}, Lcom/mbridge/msdk/foundation/same/net/b;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/net/h/b;->post(ILjava/lang/String;Lcom/mbridge/msdk/foundation/same/net/h/d;Lcom/mbridge/msdk/foundation/same/net/m;Lcom/mbridge/msdk/foundation/same/net/e;ZZ)V

    :goto_5e
    return-void
.end method
