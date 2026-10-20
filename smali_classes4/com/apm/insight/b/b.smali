###### Class com.apm.insight.b.b (com.apm.insight.b.b)
.class public Lcom/apm/insight/b/b;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Z = true

.field private static volatile f:Z


# instance fields
.field private A:J

.field private final B:Ljava/lang/Runnable;

.field private C:I

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/io/File;

.field b:Ljava/util/regex/Pattern;

.field private c:Lcom/apm/insight/b/c;

.field private final d:Landroid/content/Context;

.field private volatile e:Z

.field private g:J

.field private h:Ljava/io/File;

.field private i:Z

.field private j:Lorg/json/JSONObject;

.field private k:Lorg/json/JSONObject;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lorg/json/JSONArray;

.field private q:Lorg/json/JSONObject;

.field private r:I

.field private s:J

.field private t:Lorg/json/JSONArray;

.field private u:Lorg/json/JSONArray;

.field private v:Lorg/json/JSONObject;

.field private w:Z

.field private final x:Ljava/lang/Object;

.field private volatile y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apm/insight/b/b;->g:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/apm/insight/b/b;->h:Ljava/io/File;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/apm/insight/b/b;->i:Z

    const-string v3, "unknown"

    iput-object v3, p0, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    iput-object v3, p0, Lcom/apm/insight/b/b;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/apm/insight/b/b;->n:Ljava/lang/String;

    const-string v3, "npth_inner_default"

    iput-object v3, p0, Lcom/apm/insight/b/b;->o:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Lcom/apm/insight/b/b;->r:I

    iput-wide v0, p0, Lcom/apm/insight/b/b;->s:J

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/apm/insight/b/b;->x:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/apm/insight/b/b;->z:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apm/insight/b/b;->A:J

    new-instance v0, Lcom/apm/insight/b/b$1;

    invoke-direct {v0, p0}, Lcom/apm/insight/b/b$1;-><init>(Lcom/apm/insight/b/b;)V

    iput-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/lang/Runnable;

    iput v3, p0, Lcom/apm/insight/b/b;->C:I

    iput-object v2, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    iput-object v2, p0, Lcom/apm/insight/b/b;->b:Ljava/util/regex/Pattern;

    iput-object v2, p0, Lcom/apm/insight/b/b;->E:Ljava/io/File;

    iput-object p1, p0, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    return-void
.end method

.method private static a(F)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_8

    const-string p0, "0%"

    return-object p0

    :cond_8
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_12

    const-string p0, "0% - 10%"

    return-object p0

    :cond_12
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1c

    const-string p0, "10% - 30%"

    return-object p0

    :cond_1c
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_26

    const-string p0, "30% - 60%"

    return-object p0

    :cond_26
    const v0, 0x3f666666    # 0.9f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_30

    const-string p0, "60% - 90%"

    return-object p0

    :cond_30
    const-string p0, "90% - 100%"

    return-object p0
.end method

.method private static a(FF)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_b

    div-float/2addr p0, p1

    invoke-static {p0}, Lcom/apm/insight/b/b;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    cmpl-float p0, p0, v0

    if-lez p0, :cond_12

    const-string p0, "100%"

    goto :goto_14

    :cond_12
    const-string p0, "0%"

    :goto_14
    return-object p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x100

    const/16 v2, 0x80

    invoke-static {v1, v2, p2}, Lcom/apm/insight/l/l;->a(IILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-eq v2, p2, :cond_1d

    iget p2, p0, Lcom/apm/insight/b/b;->r:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/apm/insight/b/b;->r:I

    :cond_1d
    :try_start_1d
    const-string p2, "thread_name"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "thread_stack"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string v2, "\n"

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [F

    fill-array-data v4, :array_484

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    array-length v10, v2

    const-string v11, "unknown"

    move-object v15, v11

    move-object/from16 v16, v15

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :goto_38
    const-string v12, "total"

    if-ge v13, v10, :cond_408

    aget-object v3, v2, v13

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_53

    move-object/from16 v18, v2

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v19, v10

    move-object/from16 v22, v11

    const/4 v7, 0x3

    goto/16 :goto_3f3

    :cond_53
    move-object/from16 v18, v2

    const-string v2, ""

    move/from16 v19, v10

    const/4 v10, 0x1

    if-eqz v14, :cond_3ca

    if-eq v14, v10, :cond_2fd

    const/4 v10, 0x2

    if-eq v14, v10, :cond_2f1

    const/4 v10, 0x3

    if-eq v14, v10, :cond_70

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    goto/16 :goto_3b5

    :cond_70
    const-string v10, "\\s"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v11

    array-length v11, v10

    move/from16 v23, v14

    const/4 v14, 0x2

    if-ge v11, v14, :cond_86

    move-object/from16 v25, v7

    :cond_80
    move-object/from16 v26, v8

    :cond_82
    move-object/from16 v27, v9

    goto/16 :goto_3b5

    :cond_86
    const/4 v11, 0x0

    aget-object v14, v10, v11

    const-string v11, "CPU"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_dc

    const/4 v11, 0x1

    aget-object v14, v10, v11

    const-string v11, "usage"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_dc

    const-string v2, "ago"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a6

    const/16 v17, 0x1

    :cond_a6
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c5

    goto :goto_d1

    :cond_c5
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move/from16 v14, v23

    const/4 v0, 0x4

    const/4 v7, 0x3

    goto/16 :goto_3f0

    :cond_d1
    :goto_d1
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v14, 0x4

    goto/16 :goto_3f0

    :cond_dc
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_fb

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_fb

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_fb

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_fb

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_fb

    goto :goto_d1

    :cond_fb
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_112

    const/4 v11, 0x1

    aget-object v14, v10, v11

    const-string v11, "TOTAL:"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_112

    move-object v11, v2

    move-object v0, v5

    move-object/from16 v25, v7

    goto/16 :goto_1aa

    :cond_112
    iget-object v11, v0, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_173

    move-object v11, v2

    const/4 v3, 0x0

    :goto_120
    array-length v14, v10

    if-ge v3, v14, :cond_16c

    aget-object v14, v10, v3

    move-object/from16 v24, v11

    iget-object v11, v0, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_15f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v10, v3

    aget-object v0, v10, v3

    move-object/from16 v25, v7

    const/16 v7, 0x2f

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, 0x1

    add-int/2addr v0, v7

    aget-object v21, v10, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v1, v21, -0x1

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_163

    :cond_15f
    move-object/from16 v25, v7

    move-object/from16 v11, v24

    :goto_163
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, v25

    goto :goto_120

    :cond_16c
    move-object/from16 v25, v7

    move-object/from16 v24, v11

    move-object/from16 v0, v25

    goto :goto_1aa

    :cond_173
    move-object/from16 v25, v7

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_186

    const-string v0, "system_server:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_186

    move-object v11, v2

    move-object v0, v6

    goto :goto_1aa

    :cond_186
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_197

    const-string v0, "kswapd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_197

    move-object v11, v2

    move-object v0, v9

    goto :goto_1aa

    :cond_197
    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a8

    const-string v0, "dex2oat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    move-object v11, v2

    move-object v0, v8

    goto :goto_1aa

    :cond_1a8
    move-object v11, v2

    const/4 v0, 0x0

    :goto_1aa
    if-eqz v0, :cond_80

    const/4 v1, 0x0

    :cond_1ad
    aget-object v3, v10, v1

    const-string v7, "%"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1bc

    add-int/lit8 v1, v1, 0x1

    array-length v3, v10

    if-lt v1, v3, :cond_1ad

    :cond_1bc
    :try_start_1bc
    aget-object v14, v10, v1

    invoke-virtual {v14, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d9
    .catchall {:try_start_1bc .. :try_end_1d9} :catchall_1ee

    if-ne v0, v5, :cond_1de

    move-object/from16 v26, v8

    goto :goto_1e6

    :cond_1de
    move-object/from16 v26, v8

    :try_start_1e0
    invoke-static {}, Lcom/apm/insight/l/d;->e()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v14, v8

    :goto_1e6
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ed
    .catchall {:try_start_1e0 .. :try_end_1ed} :catchall_1f0

    goto :goto_208

    :catchall_1ee
    move-object/from16 v26, v8

    :catchall_1f0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v0, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_208
    add-int/lit8 v1, v1, 0x3

    const/4 v3, 0x0

    :goto_20b
    array-length v8, v10

    if-ge v1, v8, :cond_82

    const-string v8, "kernel"

    const-string v14, "softirq"

    move-object/from16 v27, v9

    if-eqz v3, :cond_23e

    const/4 v9, 0x1

    if-eq v3, v9, :cond_238

    const/4 v9, 0x2

    if-eq v3, v9, :cond_233

    const/4 v8, 0x3

    if-eq v3, v8, :cond_22e

    const/4 v8, 0x4

    if-eq v3, v8, :cond_229

    const/4 v8, 0x5

    move/from16 v28, v3

    if-eq v3, v8, :cond_281

    goto/16 :goto_28c

    :cond_229
    move/from16 v28, v3

    const/16 v20, 0x5

    goto :goto_276

    :cond_22e
    move/from16 v28, v3

    const/16 v20, 0x5

    goto :goto_268

    :cond_233
    move/from16 v28, v3

    const/16 v20, 0x5

    goto :goto_25a

    :cond_238
    const/4 v9, 0x2

    const/16 v20, 0x5

    move/from16 v28, v3

    goto :goto_250

    :cond_23e
    const/16 v20, 0x5

    aget-object v9, v10, v1

    move/from16 v28, v3

    const-string v3, "user"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_250

    const-string v8, "user"

    const/4 v3, 0x1

    goto :goto_28f

    :cond_250
    :goto_250
    aget-object v3, v10, v1

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25a

    const/4 v3, 0x2

    goto :goto_28f

    :cond_25a
    :goto_25a
    aget-object v3, v10, v1

    const-string v8, "iowait"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_268

    const-string v8, "iowait"

    const/4 v3, 0x3

    goto :goto_28f

    :cond_268
    :goto_268
    aget-object v3, v10, v1

    const-string v8, "irq"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_276

    const-string v8, "irq"

    const/4 v3, 0x4

    goto :goto_28f

    :cond_276
    :goto_276
    aget-object v3, v10, v1

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_281

    move-object v8, v14

    const/4 v3, 0x5

    goto :goto_28f

    :cond_281
    aget-object v3, v10, v1

    invoke-virtual {v14, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28c

    const/4 v3, 0x6

    move-object v8, v14

    goto :goto_28f

    :cond_28c
    :goto_28c
    move/from16 v3, v28

    const/4 v8, 0x0

    :goto_28f
    if-eqz v8, :cond_2e0

    add-int/lit8 v9, v1, -0x1

    :try_start_293
    aget-object v9, v10, v9

    invoke-virtual {v9, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_2b0
    .catchall {:try_start_293 .. :try_end_2b0} :catchall_2c5

    if-ne v0, v5, :cond_2b5

    move-object/from16 v20, v7

    goto :goto_2bd

    :cond_2b5
    move-object/from16 v20, v7

    :try_start_2b7
    invoke-static {}, Lcom/apm/insight/l/d;->e()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v9, v7

    :goto_2bd
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c4
    .catchall {:try_start_2b7 .. :try_end_2c4} :catchall_2c7

    goto :goto_2e2

    :catchall_2c5
    move-object/from16 v20, v7

    :catchall_2c7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e4

    :cond_2e0
    move-object/from16 v20, v7

    :goto_2e2
    const/high16 v8, -0x40800000    # -1.0f

    :goto_2e4
    const/4 v7, 0x6

    if-lt v3, v7, :cond_2e9

    goto/16 :goto_3b5

    :cond_2e9
    add-int/lit8 v1, v1, 0x3

    move-object/from16 v7, v20

    move-object/from16 v9, v27

    goto/16 :goto_20b

    :cond_2f1
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    goto/16 :goto_381

    :cond_2fd
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shortmsg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v7, 0x3a

    if-eqz v1, :cond_322

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v10, 0x0

    goto :goto_332

    :cond_322
    const-string v1, "reason:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b7

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    const/4 v10, 0x1

    :goto_332
    const-string v1, "input dispatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v7, "executing service"

    if-eqz v1, :cond_341

    const-string v0, "Input dispatching timed out"

    :goto_33e
    move-object/from16 v16, v0

    goto :goto_37a

    :cond_341
    const-string v1, "broadcast of intent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34c

    const-string v0, "Broadcast of Intent"

    goto :goto_33e

    :cond_34c
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36d

    const-string v0, "null"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36a

    const-string v0, "service "

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    :cond_36a
    move-object/from16 v16, v7

    goto :goto_37a

    :cond_36d
    const-string v1, "service.startforeground"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_378

    const-string v0, "not call Service.startForeground"

    goto :goto_33e

    :cond_378
    move-object/from16 v16, v22

    :goto_37a
    if-eqz v10, :cond_381

    const/4 v0, 0x4

    const/4 v7, 0x3

    const/4 v14, 0x2

    goto/16 :goto_3f0

    :cond_381
    :goto_381
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Load:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v7, 0x3

    if-ne v7, v1, :cond_3b2

    const/4 v1, 0x0

    :goto_3a0
    array-length v2, v0

    if-ge v1, v2, :cond_3b2

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a0

    :cond_3b2
    const/4 v0, 0x4

    const/4 v14, 0x3

    goto :goto_3f0

    :cond_3b5
    :goto_3b5
    const/4 v7, 0x3

    goto :goto_3ed

    :cond_3b7
    const/4 v7, 0x3

    const-string v1, "appfreeze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3ed

    const/16 v0, 0xa

    const-string v1, "AppFreeze"

    move-object/from16 v16, v1

    const/4 v0, 0x4

    const/16 v14, 0xa

    goto :goto_3f0

    :cond_3ca
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v22, v11

    move/from16 v23, v14

    const/4 v7, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3ed

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const/4 v0, 0x4

    const/4 v14, 0x1

    goto :goto_3f0

    :cond_3ed
    :goto_3ed
    move/from16 v14, v23

    const/4 v0, 0x4

    :goto_3f0
    if-lt v14, v0, :cond_3f3

    goto :goto_40e

    :cond_3f3
    :goto_3f3
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v10, v19

    move-object/from16 v11, v22

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v27

    const/4 v3, 0x3

    goto/16 :goto_38

    :cond_408
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    :goto_40e
    move-object/from16 v0, v16

    const-string v1, "anr_tag"

    move-object/from16 v2, p2

    invoke-virtual {v2, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "anr_has_ago"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "anr_reason"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app"

    move-object/from16 v1, v25

    invoke-static {v1, v2, v0}, Lcom/apm/insight/b/b;->a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {v5, v2, v12}, Lcom/apm/insight/b/b;->a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "npth_anr_systemserver_total"

    const-string v3, "not found"

    if-eqz v0, :cond_43d

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_44c

    :cond_43d
    invoke-static {v6}, Lcom/apm/insight/l/r;->a(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_44c
    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "npth_anr_kswapd_total"

    if-eqz v0, :cond_458

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_467

    :cond_458
    invoke-static/range {v27 .. v27}, Lcom/apm/insight/l/r;->a(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_467
    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "npth_anr_dex2oat_total"

    if-eqz v0, :cond_473

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_482

    :cond_473
    invoke-static/range {v26 .. v26}, Lcom/apm/insight/l/r;->a(Ljava/util/Map;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_482
    return-void

    nop

    :array_484
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private static a(Ljava/util/HashMap;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "npth_anr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const-string v1, "_total"

    if-eqz v0, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "not found"

    :goto_2a
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_fb

    :cond_2f
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3c
    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "user"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_62

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v0, v6

    goto :goto_3c

    :cond_62
    const-string v8, "kernel"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v2, v6

    goto :goto_3c

    :cond_76
    const-string v8, "iowait"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v3, v6

    goto :goto_3c

    :cond_8a
    const-string v8, "irq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9e

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v4, v6

    goto :goto_3c

    :cond_9e
    const-string v8, "softirq"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_3c

    :cond_b2
    add-float/2addr v0, v2

    add-float/2addr v0, v3

    add-float/2addr v0, v4

    add-float/2addr v0, v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/apm/insight/b/b;->b(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_kernel_user_ratio"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0}, Lcom/apm/insight/b/b;->a(FF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_iowait_user_ratio"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0}, Lcom/apm/insight/b/b;->a(FF)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2a

    :goto_fb
    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_7

    return-void

    :cond_7
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    iput-object v3, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONObject;

    const/4 v4, 0x0

    iput v4, v1, Lcom/apm/insight/b/b;->r:I

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v7, "unknown"

    iput-object v7, v1, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    iput-object v7, v1, Lcom/apm/insight/b/b;->m:Ljava/lang/String;

    iput-object v7, v1, Lcom/apm/insight/b/b;->n:Ljava/lang/String;

    const/4 v7, 0x3

    new-array v7, v7, [I

    fill-array-data v7, :array_1de

    move-object v8, v0

    move-object v0, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_30
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_1b9

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "NPTH_CATCH"

    const/16 v14, 0x28

    const-string v15, "main"

    const/4 v3, 0x1

    if-eqz v12, :cond_ca

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_bb

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bb

    iget-object v11, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    if-nez v11, :cond_64

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_64

    invoke-direct {v1, v8}, Lcom/apm/insight/b/b;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v11

    iput-object v11, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    goto :goto_6b

    :cond_64
    invoke-direct {v1, v0, v8}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_6b
    :try_start_6b
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7d

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_7d
    .catchall {:try_start_6b .. :try_end_7d} :catchall_7d

    :catchall_7d
    :cond_7d
    move-object v11, v0

    invoke-direct {v1, v11}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bb

    :try_start_84
    invoke-direct {v1, v8}, Lcom/apm/insight/b/b;->b(Lorg/json/JSONArray;)[I

    move-result-object v0
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_88} :catch_89
    .catchall {:try_start_84 .. :try_end_88} :catchall_92

    goto :goto_93

    :catch_89
    move-exception v0

    move-object v12, v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catchall_92
    const/4 v0, 0x0

    :goto_93
    if-nez v0, :cond_96

    goto :goto_bb

    :cond_96
    aget v12, v0, v4

    aget v13, v7, v4

    if-le v12, v13, :cond_a2

    aget v12, v0, v4

    aput v12, v7, v4

    iput-object v11, v1, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    :cond_a2
    aget v12, v0, v3

    aget v13, v7, v3

    if-le v12, v13, :cond_ae

    aget v12, v0, v3

    aput v12, v7, v3

    iput-object v11, v1, Lcom/apm/insight/b/b;->m:Ljava/lang/String;

    :cond_ae
    const/4 v3, 0x2

    aget v12, v0, v3

    aget v13, v7, v3

    if-le v12, v13, :cond_bb

    aget v0, v0, v3

    aput v0, v7, v3

    iput-object v11, v1, Lcom/apm/insight/b/b;->n:Ljava/lang/String;

    :cond_bb
    :goto_bb
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_c7

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v8, v0

    :cond_c7
    const/4 v0, 0x0

    goto/16 :goto_1b3

    :cond_ca
    if-eqz v10, :cond_197

    if-eq v10, v3, :cond_d0

    goto/16 :goto_1b3

    :cond_d0
    const-string v12, " prio="

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_190

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_14c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_14c

    iget-object v12, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    if-nez v12, :cond_f5

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f5

    invoke-direct {v1, v8}, Lcom/apm/insight/b/b;->c(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v12

    iput-object v12, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    goto :goto_fc

    :cond_f5
    invoke-direct {v1, v0, v8}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_fc
    :try_start_fc
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10e

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_10e
    .catchall {:try_start_fc .. :try_end_10e} :catchall_10e

    :catchall_10e
    :cond_10e
    move-object v12, v0

    invoke-direct {v1, v12}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14c

    :try_start_115
    invoke-direct {v1, v8}, Lcom/apm/insight/b/b;->b(Lorg/json/JSONArray;)[I

    move-result-object v0
    :try_end_119
    .catch Ljava/lang/IllegalArgumentException; {:try_start_115 .. :try_end_119} :catch_11a
    .catchall {:try_start_115 .. :try_end_119} :catchall_123

    goto :goto_124

    :catch_11a
    move-exception v0

    move-object v14, v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catchall_123
    const/4 v0, 0x0

    :goto_124
    if-nez v0, :cond_127

    goto :goto_14c

    :cond_127
    aget v13, v0, v4

    aget v14, v7, v4

    if-le v13, v14, :cond_133

    aget v13, v0, v4

    aput v13, v7, v4

    iput-object v12, v1, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    :cond_133
    aget v13, v0, v3

    aget v14, v7, v3

    if-le v13, v14, :cond_13f

    aget v13, v0, v3

    aput v13, v7, v3

    iput-object v12, v1, Lcom/apm/insight/b/b;->m:Ljava/lang/String;

    :cond_13f
    const/4 v13, 0x2

    aget v14, v0, v13

    aget v4, v7, v13

    if-le v14, v4, :cond_14c

    aget v0, v0, v13

    aput v0, v7, v13

    iput-object v12, v1, Lcom/apm/insight/b/b;->n:Ljava/lang/String;

    :cond_14c
    :goto_14c
    const/16 v0, 0x22

    invoke-virtual {v11, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-virtual {v11, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_180

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  ("

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v11, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_181

    :cond_180
    move-object v0, v4

    :goto_181
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_18c

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    :cond_18c
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1b3

    :cond_190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18c

    goto :goto_1b0

    :cond_197
    const-string v4, "DALVIK THREADS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1af

    const-string v4, "suspend"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1af

    const-string v4, "\""

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b0

    :cond_1af
    const/4 v10, 0x1

    :cond_1b0
    :goto_1b0
    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1b3
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_30

    :cond_1b9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1dd

    iput-object v6, v1, Lcom/apm/insight/b/b;->p:Lorg/json/JSONArray;

    :try_start_1c1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONObject;

    const-string v2, "thread_all_count"

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONObject;

    const-string v2, "thread_stacks"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d8
    .catch Lorg/json/JSONException; {:try_start_1c1 .. :try_end_1d8} :catch_1d9

    goto :goto_1dd

    :catch_1d9
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1dd
    :goto_1dd
    return-void

    :array_1de
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(J)Z
    .registers 5

    iget-boolean v0, p0, Lcom/apm/insight/b/b;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/apm/insight/b/b;->y:Z

    invoke-direct {p0, p1, p2}, Lcom/apm/insight/b/b;->b(J)V

    :cond_a
    return v1
.end method

.method static synthetic a(Lcom/apm/insight/b/b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/apm/insight/b/b;->i:Z

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_65

    invoke-static {}, Lcom/apm/insight/runtime/a;->c()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_30

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apm/insight/b/b;->o:Ljava/lang/String;

    const/4 v3, 0x1

    :goto_1a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_30

    :try_start_20
    iget-object v4, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2d

    :catchall_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    if-nez v0, :cond_65

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    const-string v3, "^main$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    const-string v3, "^default_npth_thread$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    const-string v3, "^RenderThread$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    const-string v3, "^Jit thread pool worker thread.*$"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    iget-object v0, p0, Lcom/apm/insight/b/b;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_6b

    return v2

    :cond_82
    return v1
.end method

.method private static b(F)Ljava/lang/String;
    .registers 2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p0, v0

    invoke-static {p0}, Lcom/apm/insight/b/b;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(J)V
    .registers 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-wide v4, v1, Lcom/apm/insight/b/b;->A:J

    iget-wide v6, v1, Lcom/apm/insight/b/b;->z:J

    const-string v0, "anr_trace"

    const-string v8, "\n"

    const-string v9, ".txt"

    const/16 v10, 0x5f

    const/16 v11, 0x3a

    const/16 v12, 0x15

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "NPTH_CATCH"

    cmp-long v16, v4, v6

    if-eqz v16, :cond_fb

    :try_start_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/apm/insight/b/b;->s:J

    invoke-static {}, Lcom/apm/insight/b/g;->b()Lcom/apm/insight/b/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apm/insight/b/h;->c()Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, v1, Lcom/apm/insight/b/b;->u:Lorg/json/JSONArray;

    const/16 v4, 0x64

    invoke-static {v4, v2, v3}, Lcom/apm/insight/b/k;->a(IJ)Lorg/json/JSONArray;

    move-result-object v4

    iput-object v4, v1, Lcom/apm/insight/b/b;->t:Lorg/json/JSONArray;

    invoke-static {}, Lcom/apm/insight/b/g;->b()Lcom/apm/insight/b/h;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/apm/insight/b/h;->a(J)Lcom/apm/insight/b/h$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/b/h$e;->a()Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/apm/insight/b/b;->k:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/apm/insight/b/b;->v:Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-direct/range {p0 .. p0}, Lcom/apm/insight/b/b;->g()Z

    move-result v2

    iput-boolean v2, v1, Lcom/apm/insight/b/b;->w:Z

    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result v2

    if-nez v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    iput-boolean v2, v1, Lcom/apm/insight/b/b;->i:Z
    :try_end_5f
    .catchall {:try_start_1c .. :try_end_5f} :catchall_5f

    :catchall_5f
    :try_start_5f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v12, :cond_e3

    iget-wide v2, v1, Lcom/apm/insight/b/b;->s:J

    iput-wide v2, v1, Lcom/apm/insight/b/b;->g:J

    invoke-static {}, Lcom/apm/insight/l/o;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/apm/insight/l/o;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trace_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/apm/insight/l/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apm/insight/l/b;->a()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Lcom/apm/insight/l/i;->a(Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0, v2}, Lcom/apm/insight/runtime/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_5f .. :try_end_cd} :catchall_ee

    :try_start_cd
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/i;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/apm/insight/b/b;->p:Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lcom/apm/insight/b/b;->a(Lorg/json/JSONArray;)V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_da} :catch_e3
    .catchall {:try_start_cd .. :try_end_da} :catchall_db

    goto :goto_e3

    :catchall_db
    move-exception v0

    :try_start_dc
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_e3
    :cond_e3
    :goto_e3
    iget-object v0, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    if-nez v0, :cond_f6

    invoke-static {v14}, Lcom/apm/insight/b/d;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;
    :try_end_ed
    .catchall {:try_start_dc .. :try_end_ed} :catchall_ee

    goto :goto_f6

    :catchall_ee
    move-exception v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f6
    :goto_f6
    invoke-static {}, Lcom/apm/insight/l/f;->a()V

    goto/16 :goto_192

    :cond_fb
    :try_start_fb
    iget-wide v2, v1, Lcom/apm/insight/b/b;->s:J

    iput-wide v2, v1, Lcom/apm/insight/b/b;->g:J

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v12, :cond_17f

    invoke-static {}, Lcom/apm/insight/l/o;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/apm/insight/l/o;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/apm/insight/l/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apm/insight/l/b;->a()Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Lcom/apm/insight/l/i;->a(Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v0, v2}, Lcom/apm/insight/runtime/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/nativecrash/NativeImpl;->i(Ljava/lang/String;)V
    :try_end_169
    .catchall {:try_start_fb .. :try_end_169} :catchall_18a

    :try_start_169
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/i;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, v1, Lcom/apm/insight/b/b;->p:Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lcom/apm/insight/b/b;->a(Lorg/json/JSONArray;)V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_176} :catch_17f
    .catchall {:try_start_169 .. :try_end_176} :catchall_177

    goto :goto_17f

    :catchall_177
    move-exception v0

    :try_start_178
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_17f
    :cond_17f
    :goto_17f
    iget-object v0, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    if-nez v0, :cond_192

    invoke-static {v14}, Lcom/apm/insight/b/d;->a(Z)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;
    :try_end_189
    .catchall {:try_start_178 .. :try_end_189} :catchall_18a

    goto :goto_192

    :catchall_18a
    move-exception v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    invoke-virtual {v2, v15, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_192
    :goto_192
    iget-wide v2, v1, Lcom/apm/insight/b/b;->z:J

    iput-wide v2, v1, Lcom/apm/insight/b/b;->A:J

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/apm/insight/b/b;->z:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a3

    const-wide/16 v2, 0x1

    sub-long/2addr v4, v2

    iput-wide v4, v1, Lcom/apm/insight/b/b;->A:J

    :cond_1a3
    return-void
.end method

.method private static b(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 6

    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/runtime/c;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apm/insight/ICrashCallback;

    :try_start_18
    instance-of v2, v1, Lcom/apm/insight/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_25

    check-cast v1, Lcom/apm/insight/b;

    sget-object v2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-virtual {v1, v2, p0, v3, p1}, Lcom/apm/insight/b;->a(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/Thread;Lorg/json/JSONArray;)V

    goto :goto_c

    :cond_25
    sget-object v2, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-interface {v1, v2, p0, v3}, Lcom/apm/insight/ICrashCallback;->onCrash(Lcom/apm/insight/CrashType;Ljava/lang/String;Ljava/lang/Thread;)V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_2b

    goto :goto_c

    :catchall_2b
    move-exception v1

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v1}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_36
    return-void
.end method

.method private b(Lorg/json/JSONArray;)[I
    .registers 8
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_74

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "utm="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1c

    :cond_1b
    const/4 v3, -0x1

    :goto_1c
    if-lez v3, :cond_71

    iget-object p1, p0, Lcom/apm/insight/b/b;->b:Ljava/util/regex/Pattern;

    if-nez p1, :cond_2a

    const-string p1, "[^0-9]+"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/b/b;->b:Ljava/util/regex/Pattern;

    :cond_2a
    iget-object p1, p0, Lcom/apm/insight/b/b;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_74

    array-length v1, p1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_74

    const/4 v1, 0x1

    :try_start_3b
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v4, v5, v0

    aput p1, v5, v1

    add-int/2addr v4, p1

    aput v4, v5, v3
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_5a

    return-object v5

    :catchall_5a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err stack line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_74
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(J)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/apm/insight/i;->j()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7530

    cmp-long v2, p1, v0

    if-gez v2, :cond_e

    const-string p1, "0 - 30s"

    return-object p1

    :cond_e
    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-gez v2, :cond_18

    const-string p1, "30s - 1min"

    return-object p1

    :cond_18
    const-wide/32 v0, 0x1d4c0

    cmp-long v2, p1, v0

    if-gez v2, :cond_22

    const-string p1, "1min - 2min"

    return-object p1

    :cond_22
    const-wide/32 v0, 0x493e0

    cmp-long v2, p1, v0

    if-gez v2, :cond_2c

    const-string p1, "2min - 5min"

    return-object p1

    :cond_2c
    const-wide/32 v0, 0x927c0

    cmp-long v2, p1, v0

    if-gez v2, :cond_36

    const-string p1, "5min - 10min"

    return-object p1

    :cond_36
    const-wide/32 v0, 0x1b7740

    cmp-long v2, p1, v0

    if-gez v2, :cond_40

    const-string p1, "10min - 30min"

    return-object p1

    :cond_40
    const-wide/32 v0, 0x36ee80

    cmp-long v2, p1, v0

    if-gez v2, :cond_4a

    const-string p1, "30min - 1h"

    return-object p1

    :cond_4a
    const-string p1, "1h - "

    return-object p1
.end method

.method private c(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 6
    .param p1    # Lorg/json/JSONArray;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0x100

    const/16 v2, 0x80

    invoke-static {v1, v2, p1}, Lcom/apm/insight/l/l;->a(IILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v3, 0x1

    if-eq v2, p1, :cond_1d

    iget p1, p0, Lcom/apm/insight/b/b;->r:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/apm/insight/b/b;->r:I

    :cond_1d
    :try_start_1d
    const-string p1, "thread_number"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3d

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3d
    const-string v1, "mainStackFromTrace"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_46} :catch_47

    return-object v0

    :catch_47
    const/4 p1, 0x0

    return-object p1
.end method

.method private g()Z
    .registers 7

    iget-object v0, p0, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/apm/insight/runtime/a/b;->d()Lcom/apm/insight/runtime/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apm/insight/runtime/a/b;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_19

    const/4 v0, 0x0

    :cond_19
    return v0
.end method

.method private h()Ljava/io/File;
    .registers 7

    iget-object v0, p0, Lcom/apm/insight/b/b;->E:Ljava/io/File;

    if-nez v0, :cond_30

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_anr_signal_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/apm/insight/l/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apm/insight/b/b;->E:Ljava/io/File;

    :cond_30
    iget-object v0, p0, Lcom/apm/insight/b/b;->E:Ljava/io/File;

    return-object v0
.end method

.method private i()Z
    .registers 2

    invoke-static {}, Lcom/apm/insight/runtime/a;->i()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lcom/apm/insight/b/b;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/apm/insight/b/c;

    invoke-direct {v0, p0}, Lcom/apm/insight/b/c;-><init>(Lcom/apm/insight/b/b;)V

    iput-object v0, p0, Lcom/apm/insight/b/b;->c:Lcom/apm/insight/b/c;

    invoke-static {}, Lcom/apm/insight/i;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apm/insight/b/b;->g:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apm/insight/b/b;->e:Z

    return-void
.end method

.method a(II)Z
    .registers 28

    move-object/from16 v1, p0

    invoke-static {}, Lcom/apm/insight/b/f;->a()Z

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/apm/insight/b/b;->a(J)Z

    move-result v4

    iget-object v5, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/apm/insight/b/d;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v9, "normal"

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_26

    if-eqz v4, :cond_26

    const/4 v10, 0x1

    goto :goto_27

    :cond_26
    const/4 v10, 0x0

    :goto_27
    const-string v12, "unknown"

    const-string v13, "unknown"

    const-string v14, "unknown"

    const-wide/16 v15, 0x4e20

    if-nez v4, :cond_4a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_4a

    :cond_38
    move-object v6, v14

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v14, v13

    move-object v13, v12

    move-object v12, v9

    const/4 v9, 0x0

    goto/16 :goto_c1

    :cond_4a
    :goto_4a
    iget-object v4, v1, Lcom/apm/insight/b/b;->x:Ljava/lang/Object;

    monitor-enter v4

    if-nez v10, :cond_51

    const/4 v7, 0x1

    goto :goto_52

    :cond_51
    const/4 v7, 0x0

    :goto_52
    :try_start_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_48d

    iget-object v4, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    if-eqz v4, :cond_6c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move v8, v7

    iget-wide v6, v1, Lcom/apm/insight/b/b;->g:J

    sub-long/2addr v12, v6

    cmp-long v4, v12, v15

    if-gtz v4, :cond_6d

    if-eqz v10, :cond_68

    const-string v4, "trace_only"

    goto :goto_6a

    :cond_68
    const-string v4, "trace_last"

    :goto_6a
    move-object v9, v4

    goto :goto_78

    :cond_6c
    move v8, v7

    :cond_6d
    iget-boolean v4, v1, Lcom/apm/insight/b/b;->y:Z

    if-eqz v4, :cond_75

    iput-boolean v11, v1, Lcom/apm/insight/b/b;->y:Z

    const-string v9, "trace_after"

    :cond_75
    invoke-direct {v1, v2, v3}, Lcom/apm/insight/b/b;->b(J)V

    :goto_78
    iget-object v4, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    iget-object v12, v1, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    iget-object v13, v1, Lcom/apm/insight/b/b;->m:Ljava/lang/String;

    iget-object v14, v1, Lcom/apm/insight/b/b;->n:Ljava/lang/String;

    iget-object v6, v1, Lcom/apm/insight/b/b;->p:Lorg/json/JSONArray;

    iget-object v7, v1, Lcom/apm/insight/b/b;->u:Lorg/json/JSONArray;

    iget-object v15, v1, Lcom/apm/insight/b/b;->t:Lorg/json/JSONArray;

    iget-object v11, v1, Lcom/apm/insight/b/b;->v:Lorg/json/JSONObject;

    move-object/from16 v19, v4

    iget-object v4, v1, Lcom/apm/insight/b/b;->k:Lorg/json/JSONObject;

    move-object/from16 v20, v4

    iget-boolean v4, v1, Lcom/apm/insight/b/b;->w:Z

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    iget-wide v6, v1, Lcom/apm/insight/b/b;->s:J

    move/from16 v23, v4

    if-nez v10, :cond_b4

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    iput-object v4, v1, Lcom/apm/insight/b/b;->p:Lorg/json/JSONArray;

    iput-object v4, v1, Lcom/apm/insight/b/b;->t:Lorg/json/JSONArray;

    iput-object v4, v1, Lcom/apm/insight/b/b;->k:Lorg/json/JSONObject;

    iput-object v4, v1, Lcom/apm/insight/b/b;->u:Lorg/json/JSONArray;

    const-string v4, "unknown"

    iput-object v4, v1, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    const-string v4, "unknown"

    iput-object v4, v1, Lcom/apm/insight/b/b;->m:Ljava/lang/String;

    const-string v4, "unknown"

    iput-object v4, v1, Lcom/apm/insight/b/b;->n:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, v1, Lcom/apm/insight/b/b;->r:I

    :cond_b4
    move-object/from16 v4, v21

    move-object/from16 v21, v22

    move-object/from16 v24, v9

    move v9, v8

    move-wide v7, v6

    move-object v6, v14

    move-object v14, v13

    move-object v13, v12

    move-object/from16 v12, v24

    :goto_c1
    if-nez v10, :cond_121

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_121

    iget-object v0, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_ff

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/apm/insight/b/b;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v0, v2, v4

    if-lez v0, :cond_ff

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    iput-object v2, v1, Lcom/apm/insight/b/b;->p:Lorg/json/JSONArray;

    iput-object v2, v1, Lcom/apm/insight/b/b;->t:Lorg/json/JSONArray;

    iput-object v2, v1, Lcom/apm/insight/b/b;->k:Lorg/json/JSONObject;

    iput-object v2, v1, Lcom/apm/insight/b/b;->u:Lorg/json/JSONArray;

    const-string v0, "unknown"

    iput-object v0, v1, Lcom/apm/insight/b/b;->l:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, v1, Lcom/apm/insight/b/b;->m:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, v1, Lcom/apm/insight/b/b;->n:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v1, Lcom/apm/insight/b/b;->r:I

    iget-object v0, v1, Lcom/apm/insight/b/b;->h:Ljava/io/File;

    if-eqz v0, :cond_fb

    invoke-static {v0}, Lcom/apm/insight/l/i;->a(Ljava/io/File;)Z

    :cond_fb
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/apm/insight/b/b;->h:Ljava/io/File;

    return v2

    :cond_ff
    iget-object v0, v1, Lcom/apm/insight/b/b;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_11f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/apm/insight/b/b;->g:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-lez v0, :cond_11f

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->g()Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-direct/range {p0 .. p0}, Lcom/apm/insight/b/b;->h()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/i;->a(Ljava/io/File;)Z

    :cond_11d
    const/4 v2, 0x0

    return v2

    :cond_11f
    const/4 v2, 0x0

    return v2

    :cond_121
    if-nez v19, :cond_16a

    if-nez v15, :cond_157

    :try_start_125
    invoke-static {}, Lcom/apm/insight/b/g;->b()Lcom/apm/insight/b/h;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/apm/insight/b/h;->c()Lorg/json/JSONArray;

    move-result-object v17
    :try_end_12d
    .catchall {:try_start_125 .. :try_end_12d} :catchall_152

    move-object/from16 v18, v11

    const/16 v11, 0x64

    :try_start_131
    invoke-static {v11, v2, v3}, Lcom/apm/insight/b/k;->a(IJ)Lorg/json/JSONArray;

    move-result-object v15

    invoke-static {}, Lcom/apm/insight/b/g;->b()Lcom/apm/insight/b/h;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Lcom/apm/insight/b/h;->a(J)Lcom/apm/insight/b/h$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/b/h$e;->a()Lorg/json/JSONObject;

    move-result-object v20

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_146
    .catchall {:try_start_131 .. :try_end_146} :catchall_14f

    :try_start_146
    iget-object v3, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_14b
    .catchall {:try_start_146 .. :try_end_14b} :catchall_14d

    move-object v11, v2

    goto :goto_15b

    :catchall_14d
    move-object v11, v2

    goto :goto_161

    :catchall_14f
    move-object/from16 v11, v18

    goto :goto_161

    :catchall_152
    move-object/from16 v18, v11

    move-object/from16 v17, v21

    goto :goto_161

    :cond_157
    move-object/from16 v18, v11

    move-object/from16 v17, v21

    :goto_15b
    :try_start_15b
    sget-boolean v2, Lcom/apm/insight/b/b;->a:Z

    invoke-static {v2}, Lcom/apm/insight/b/d;->a(Z)Lorg/json/JSONObject;

    move-result-object v19
    :try_end_161
    .catchall {:try_start_15b .. :try_end_161} :catchall_161

    :catchall_161
    :goto_161
    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move/from16 v17, v9

    move-object/from16 v9, v20

    goto :goto_174

    :cond_16a
    move-object/from16 v18, v11

    move/from16 v17, v9

    move-object/from16 v3, v19

    move-object/from16 v9, v20

    move-object/from16 v2, v21

    :goto_174
    if-eqz v3, :cond_48c

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v18

    if-lez v18, :cond_48c

    move-object/from16 v18, v5

    :try_start_17e
    const-string v5, "pid"

    move/from16 v19, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "package"

    iget-object v5, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_remote_process"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "is_new_stack"

    const/16 v5, 0xa

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lcom/apm/insight/entity/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v5}, Lcom/apm/insight/entity/a;-><init>(Lorg/json/JSONObject;)V

    const-string v5, "data"

    move-object/from16 v20, v6

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "is_anr"

    move-object/from16 p1, v3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "anrType"

    invoke-virtual {v0, v3, v12}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "history_message"

    invoke-virtual {v0, v3, v2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "current_message"

    invoke-virtual {v0, v2, v9}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "pending_messages"

    invoke-virtual {v0, v2, v15}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "anr_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "crash_time"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/c/b;->b()Z

    invoke-virtual {v0, v11}, Lcom/apm/insight/entity/a;->c(Lorg/json/JSONObject;)V

    const-string v2, "anr_info"

    if-eqz v10, :cond_1f9

    const-string v3, "Resons for no ANR_INFO:\n1. User click close button too quickly as soon as the ANR dialog appear.\n2. User close the app since can not stand the carton.\n3. Some OS force stop the process group without any hint dialog.\n\nThe ANR will be upload by the follow ways only:\n1. Receive the ANR signal(SIGQUIT).\n2. The app is forground or was forground last 2s.\n3. Happens in main process.\n4. Process was killed exactly."

    goto :goto_1fb

    :cond_1f9
    move-object/from16 v3, v18

    :goto_1fb
    invoke-virtual {v0, v2, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v4, :cond_205

    const-string v2, "dump_trace"

    invoke-virtual {v0, v2, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_205
    const-string v2, "all_thread_stacks"

    if-nez v10, :cond_219

    iget-object v3, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONObject;

    if-eqz v3, :cond_213

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-nez v3, :cond_219

    :cond_213
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/apm/insight/l/v;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_21b

    :cond_219
    iget-object v4, v1, Lcom/apm/insight/b/b;->q:Lorg/json/JSONObject;

    :goto_21b
    invoke-virtual {v0, v2, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/apm/insight/runtime/a/f;->a()Lcom/apm/insight/runtime/a/f;

    move-result-object v2

    sget-object v3, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-virtual {v2, v3, v0}, Lcom/apm/insight/runtime/a/f;->a(Lcom/apm/insight/CrashType;Lcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;

    move-result-object v2

    const-string v0, "is_background"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "logcat"

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apm/insight/runtime/k;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "has_dump"

    const-string v4, "true"

    invoke-virtual {v2, v0, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "crash_uuid"

    const/4 v4, 0x0

    invoke-static {v7, v8, v3, v4, v4}, Lcom/apm/insight/i;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jiffy"

    invoke-static {}, Lcom/apm/insight/runtime/q$a;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "filters"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->h()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/apm/insight/entity/d;->b(Lorg/json/JSONObject;)V
    :try_end_26d
    .catchall {:try_start_17e .. :try_end_26d} :catchall_482

    if-nez v0, :cond_27a

    :try_start_26f
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_274
    .catchall {:try_start_26f .. :try_end_274} :catchall_3db

    :try_start_274
    const-string v0, "filters"

    invoke-virtual {v2, v0, v3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27b

    :cond_27a
    move-object v3, v0

    :goto_27b
    const-string v0, "anrType"

    invoke-virtual {v3, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_utm_thread"

    invoke-virtual {v3, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_stm_thread"

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_utm_stm_thread"

    move-object/from16 v14, v20

    invoke-virtual {v3, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "max_utm_thread_version"

    iget-object v4, v1, Lcom/apm/insight/b/b;->o:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crash_length"

    invoke-direct {v1, v7, v8}, Lcom/apm/insight/b/b;->c(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "disable_looper_monitor"

    invoke-static {}, Lcom/apm/insight/runtime/a;->d()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "npth_force_apm_crash"

    invoke-static {}, Lcom/apm/insight/c/b;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdk_version"

    const-string v4, "1.3.8.nourl-alpha.18"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "has_logcat"

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "memory_leak"

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "fd_leak"

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->d()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "threads_leak"

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->e()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_64_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_64_runtime"

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->e()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_x86_devices"

    invoke-static {}, Lcom/apm/insight/entity/Header;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "has_meminfo_file"

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->g()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "is_root"

    invoke-static {}, Lcom/apm/insight/nativecrash/c;->m()Z

    move-result v4

    if-eqz v4, :cond_335

    const-string v4, "true"

    goto :goto_337

    :cond_335
    const-string v4, "false"

    :goto_337
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "anr_normal_trace"

    iget-boolean v4, v1, Lcom/apm/insight/b/b;->y:Z

    if-nez v4, :cond_341

    goto :goto_342

    :cond_341
    const/4 v6, 0x0

    :goto_342
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "anr_no_run"

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "crash_after_crash"

    invoke-static {}, Lcom/apm/insight/Npth;->hasCrash()Z

    move-result v4

    if-eqz v4, :cond_35d

    const-string v4, "true"

    goto :goto_35f

    :cond_35d
    const-string v4, "false"

    :goto_35f
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "from_file"

    invoke-static {}, Lcom/apm/insight/b/d;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "has_dump"

    const-string v4, "true"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "from_kill"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "last_resume_activity"

    invoke-static {}, Lcom/apm/insight/runtime/a/b;->d()Lcom/apm/insight/runtime/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apm/insight/runtime/a/b;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, v1, Lcom/apm/insight/b/b;->r:I

    if-lez v0, :cond_399

    const-string v4, "may_have_stack_overflow"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_399
    .catchall {:try_start_274 .. :try_end_399} :catchall_3da

    :cond_399
    if-nez v10, :cond_3ad

    move-object/from16 v0, v18

    :try_start_39d
    invoke-direct {v1, v0, v3}, Lcom/apm/insight/b/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3a0
    .catchall {:try_start_39d .. :try_end_3a0} :catchall_3a1

    goto :goto_3dc

    :catchall_3a1
    move-exception v0

    move-object v4, v0

    :try_start_3a3
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v0

    const-string v5, "NPTH_CATCH"

    invoke-virtual {v0, v5, v4}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3dc

    :cond_3ad
    invoke-direct/range {p0 .. p0}, Lcom/apm/insight/b/b;->i()Z

    move-result v0

    if-nez v0, :cond_3dc

    const-string v0, "aid"

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->i()Lcom/apm/insight/entity/Header;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apm/insight/entity/Header;->f()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "aid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->i()Lcom/apm/insight/entity/Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/entity/Header;->f()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "aid"

    const/16 v5, 0x7da

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3d9
    .catchall {:try_start_3a3 .. :try_end_3d9} :catchall_3da

    goto :goto_3dc

    :catchall_3da
    move-object v0, v3

    :catchall_3db
    move-object v3, v0

    :cond_3dc
    :goto_3dc
    if-eqz v10, :cond_407

    :try_start_3de
    invoke-static {}, Lcom/apm/insight/k/e;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/apm/insight/b/b;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/apm/insight/l/o;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    sget-object v5, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    const/4 v6, 0x0

    invoke-static {v7, v8, v5, v6, v6}, Lcom/apm/insight/i;->a(JLcom/apm/insight/CrashType;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/apm/insight/b/b;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->h()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {}, Lcom/apm/insight/k/e;->b()Z

    move-result v5

    invoke-static {v3, v4, v0, v2, v5}, Lcom/apm/insight/l/i;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    goto/16 :goto_48c

    :cond_407
    iget-object v0, v1, Lcom/apm/insight/b/b;->h:Ljava/io/File;

    if-eqz v0, :cond_411

    invoke-static {v0}, Lcom/apm/insight/l/i;->a(Ljava/io/File;)Z

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/apm/insight/b/b;->h:Ljava/io/File;

    :cond_411
    invoke-static {}, Lcom/apm/insight/a/a;->a()Lcom/apm/insight/a/a;

    move-result-object v0

    sget-object v4, Lcom/apm/insight/CrashType;->ANR:Lcom/apm/insight/CrashType;

    invoke-static {}, Lcom/apm/insight/i;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v7, v8, v5}, Lcom/apm/insight/a/a;->a(Lcom/apm/insight/CrashType;JLjava/lang/String;)V
    :try_end_41e
    .catchall {:try_start_3de .. :try_end_41e} :catchall_482

    :try_start_41e
    invoke-static {}, Lcom/apm/insight/l/f;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v9, 0x400

    cmp-long v0, v4, v9

    if-lez v0, :cond_433

    const-string v0, "has_system_traces"

    const-string v4, "true"

    invoke-virtual {v2, v0, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;
    :try_end_433
    .catchall {:try_start_41e .. :try_end_433} :catchall_433

    :catchall_433
    :cond_433
    :try_start_433
    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/o;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apm/insight/l/o;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/apm/insight/nativecrash/d;->a(Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v4, "leak_threads_count"

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_466

    invoke-static {}, Lcom/apm/insight/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/apm/insight/l/o;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/apm/insight/l/i;->a(Ljava/io/File;Lorg/json/JSONArray;Z)V
    :try_end_466
    .catchall {:try_start_433 .. :try_end_466} :catchall_466

    :catchall_466
    :cond_466
    :try_start_466
    const-string v0, "mainStackFromTrace"

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/entity/b;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2}, Lcom/apm/insight/entity/a;->h()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v4, Lcom/apm/insight/b/b$2;

    invoke-direct {v4, v1, v7, v8}, Lcom/apm/insight/b/b$2;-><init>(Lcom/apm/insight/b/b;J)V

    invoke-static {v2, v3, v4}, Lcom/apm/insight/entity/b;->a(Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/apm/insight/entity/b$a;)V

    invoke-static {v0, v3}, Lcom/apm/insight/b/b;->b(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_481
    .catchall {:try_start_466 .. :try_end_481} :catchall_482

    goto :goto_48c

    :catchall_482
    move-exception v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_48c
    :goto_48c
    return v17

    :catchall_48d
    move-exception v0

    :try_start_48e
    monitor-exit v4
    :try_end_48f
    .catchall {:try_start_48e .. :try_end_48f} :catchall_48d

    throw v0
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/apm/insight/b/b;->e:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apm/insight/b/b;->e:Z

    iget-object v0, p0, Lcom/apm/insight/b/b;->c:Lcom/apm/insight/b/c;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/apm/insight/b/c;->b()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/b/b;->c:Lcom/apm/insight/b/c;

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/apm/insight/b/b;->c:Lcom/apm/insight/b/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/apm/insight/b/c;->a()V

    :cond_7
    return-void
.end method

.method public d()V
    .registers 3

    sget-boolean v0, Lcom/apm/insight/b/b;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/apm/insight/b/b;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    sget-boolean v1, Lcom/apm/insight/b/b;->f:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_15

    iget-object v0, p0, Lcom/apm/insight/b/b;->B:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public e()V
    .registers 5

    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    :try_start_7
    invoke-direct {p0}, Lcom/apm/insight/b/b;->h()Ljava/io/File;

    move-result-object v0

    iget v2, p0, Lcom/apm/insight/b/b;->C:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/apm/insight/l/i;->a(Ljava/io/File;Ljava/lang/String;Z)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_21

    :catchall_17
    move-exception v0

    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/d;

    move-result-object v2

    const-string v3, "NPTH_CATCH"

    invoke-virtual {v2, v3, v0}, Lcom/apm/insight/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/apm/insight/b/b;->z:J

    iput-boolean v1, p0, Lcom/apm/insight/b/b;->y:Z

    return-void
.end method

.method public f()V
    .registers 5

    invoke-direct {p0}, Lcom/apm/insight/b/b;->h()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/apm/insight/l/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/apm/insight/b/b;->C:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1f

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V

    goto :goto_2a

    :cond_1f
    invoke-static {v1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_22} :catch_27
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    goto :goto_2a

    :catchall_23
    invoke-static {v0}, Lcom/apm/insight/l/i;->a(Ljava/io/File;)Z

    goto :goto_2a

    :catch_27
    invoke-static {v1}, Lcom/apm/insight/nativecrash/NativeImpl;->a(Z)V

    :goto_2a
    return-void
.end method
