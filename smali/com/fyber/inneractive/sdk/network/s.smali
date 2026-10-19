###### Class com.fyber.inneractive.sdk.network.s (com.fyber.inneractive.sdk.network.s)
.class public final Lcom/fyber/inneractive/sdk/network/s;
.super Lcom/fyber/inneractive/sdk/network/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/network/s$b;,
        Lcom/fyber/inneractive/sdk/network/s$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/network/l;-><init>(Ljava/lang/String;)V

    const-string v0, "osn"

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "osv"

    invoke-virtual {p0, v1, v0}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p8, :cond_22

    const-string p8, "8.2.4"

    :cond_22
    const-string v0, "sdkv"

    invoke-virtual {p0, v0, p8}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->k()Ljava/lang/String;

    move-result-object p8

    const-string v0, "pkgn"

    invoke-virtual {p0, v0, p8}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->l()Ljava/lang/String;

    move-result-object p8

    const-string v0, "pkgv"

    invoke-virtual {p0, v0, p8}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p8, "appid"

    invoke-virtual {p0, p8, p1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "session"

    invoke-virtual {p0, p1, p2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "adnt"

    invoke-virtual {p0, p1, p3}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "adnt_id"

    invoke-virtual {p0, p1, p4}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "creative_id"

    invoke-virtual {p0, p1, p5}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "adomain"

    invoke-virtual {p0, p1, p6}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "campaign_id"

    invoke-virtual {p0, p1, p7}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.network.s.a (com.fyber.inneractive.sdk.network.s$a)
.class public Lcom/fyber/inneractive/sdk/network/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/network/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final h:Ljava/text/SimpleDateFormat;


# instance fields
.field public a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

.field public b:Lcom/fyber/inneractive/sdk/network/q;

.field public c:Lcom/fyber/inneractive/sdk/network/r;

.field public d:Lorg/json/JSONArray;

.field public e:Lcom/fyber/inneractive/sdk/response/e;

.field public f:Lorg/json/JSONArray;

.field public g:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/network/s$a;->h:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/q;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/network/q;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/q;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V
    .registers 5

    invoke-direct {p0, p3}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/response/e;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/s$a;->b:Lcom/fyber/inneractive/sdk/network/q;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/s$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/network/s$a;->d:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/r;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Lorg/json/JSONArray;)V
    .registers 5

    invoke-direct {p0, p3}, Lcom/fyber/inneractive/sdk/network/s$a;-><init>(Lcom/fyber/inneractive/sdk/response/e;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/s$a;->c:Lcom/fyber/inneractive/sdk/network/r;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/s$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/network/s$a;->d:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/response/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/s$a;->g:Z

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/s$a;->f:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/network/s$a;
    .registers 9

    array-length v0, p1

    if-lez v0, :cond_31

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2c

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    :try_start_19
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_29

    :catch_1d
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v5, v6, v4

    const-string v3, "Got exception adding param to json object: %s, %s"

    invoke-static {v3, v6}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_29
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_2c
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/network/s$a;->f:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_31
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .registers 21

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/response/e;->r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/ImpressionData;->getImpressionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    :goto_11
    iget-object v2, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/response/e;->r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/external/ImpressionData;->getDemandSource()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, v1

    :goto_1d
    iget-object v3, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/response/e;->r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/external/ImpressionData;->getDemandId()Ljava/lang/Long;

    move-result-object v3

    goto :goto_29

    :cond_28
    move-object v3, v1

    :goto_29
    iget-object v4, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/response/e;->r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

    if-eqz v4, :cond_34

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/external/ImpressionData;->getCreativeId()Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    :cond_34
    move-object v4, v1

    :goto_35
    iget-object v5, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/response/e;->r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

    if-eqz v5, :cond_40

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/external/ImpressionData;->getAdvertiserDomain()Ljava/lang/String;

    move-result-object v5

    goto :goto_41

    :cond_40
    move-object v5, v1

    :goto_41
    iget-object v6, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    iget-object v6, v6, Lcom/fyber/inneractive/sdk/response/e;->r:Lcom/fyber/inneractive/sdk/external/ImpressionData;

    if-eqz v6, :cond_54

    invoke-virtual {v6}, Lcom/fyber/inneractive/sdk/external/ImpressionData;->getCampaignId()Ljava/lang/String;

    move-result-object v6

    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_65

    :cond_54
    move-object v12, v0

    move-object/from16 v17, v1

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    goto :goto_65

    :cond_5d
    move-object v12, v1

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_65
    new-instance v2, Lcom/fyber/inneractive/sdk/network/s;

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v11, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->c:Ljava/lang/String;

    move-object v10, v2

    move-object/from16 v18, p1

    invoke-direct/range {v10 .. v18}, Lcom/fyber/inneractive/sdk/network/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v9, Lcom/fyber/inneractive/sdk/network/s$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    if-nez v3, :cond_77

    move-object v3, v1

    goto :goto_7b

    :cond_77
    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSelectedUnitConfig()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v3

    :goto_7b
    const/4 v4, 0x0

    if-eqz v3, :cond_ae

    check-cast v3, Lcom/fyber/inneractive/sdk/config/a0;

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/config/a0;->d:Lcom/fyber/inneractive/sdk/config/x;

    sget-object v6, Lcom/fyber/inneractive/sdk/config/enums/Track;->ERRORS:Lcom/fyber/inneractive/sdk/config/enums/Track;

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/config/x;->a:Ljava/util/Set;

    if-nez v5, :cond_8a

    const/4 v5, 0x0

    goto :goto_8e

    :cond_8a
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    :goto_8e
    if-eqz v5, :cond_ad

    iget-object v5, v3, Lcom/fyber/inneractive/sdk/config/a0;->c:Lcom/fyber/inneractive/sdk/config/t;

    if-eqz v5, :cond_9d

    iget-object v5, v5, Lcom/fyber/inneractive/sdk/config/t;->b:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-eqz v5, :cond_9d

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->isDeprecated()Z

    move-result v3

    goto :goto_ab

    :cond_9d
    iget-object v3, v3, Lcom/fyber/inneractive/sdk/config/a0;->f:Lcom/fyber/inneractive/sdk/config/c0;

    if-eqz v3, :cond_aa

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/config/c0;->j:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    if-eqz v3, :cond_aa

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->isDeprecated()Z

    move-result v3

    goto :goto_ab

    :cond_aa
    const/4 v3, 0x0

    :goto_ab
    if-eqz v3, :cond_ae

    :cond_ad
    return-void

    :cond_ae
    iget-object v3, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    if-nez v3, :cond_b4

    move-object v3, v1

    goto :goto_b6

    :cond_b4
    iget-object v3, v3, Lcom/fyber/inneractive/sdk/response/e;->d:Ljava/lang/String;

    :goto_b6
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->t:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c0

    move-object v5, v1

    goto :goto_c2

    :cond_c0
    iget-object v5, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->t:Ljava/lang/String;

    :goto_c2
    iget-object v6, v9, Lcom/fyber/inneractive/sdk/network/s$a;->b:Lcom/fyber/inneractive/sdk/network/q;

    if-nez v6, :cond_d2

    iget-object v6, v9, Lcom/fyber/inneractive/sdk/network/s$a;->c:Lcom/fyber/inneractive/sdk/network/r;

    if-nez v6, :cond_d2

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Sdk event dispatcher - error id or event id must be provided"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d2
    iget-object v4, v9, Lcom/fyber/inneractive/sdk/network/s$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    if-eqz v4, :cond_dc

    invoke-virtual {v4}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v4

    :goto_da
    move-object v6, v4

    goto :goto_e4

    :cond_dc
    iget-object v4, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    if-eqz v4, :cond_e3

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/response/e;->A:Ljava/lang/String;

    goto :goto_da

    :cond_e3
    move-object v6, v1

    :goto_e4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->m:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_fb

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->m:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fb
    iget-object v0, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    if-nez v0, :cond_101

    move-object v0, v1

    goto :goto_103

    :cond_101
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/response/e;->n:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    :goto_103
    if-nez v0, :cond_119

    iget-object v7, v9, Lcom/fyber/inneractive/sdk/network/s$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    if-eqz v7, :cond_119

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_119

    iget-object v0, v9, Lcom/fyber/inneractive/sdk/network/s$a;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/serverapi/a;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    move-result-object v0

    :cond_119
    if-eqz v0, :cond_120

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_122

    :cond_120
    const-string v0, "unknown"

    :goto_122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    if-nez v0, :cond_12f

    move-object v8, v1

    goto :goto_136

    :cond_12f
    iget v0, v0, Lcom/fyber/inneractive/sdk/response/e;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v8, v0

    :goto_136
    iget-object v0, v9, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    if-nez v0, :cond_13d

    const-string v0, ""

    goto :goto_13f

    :cond_13d
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/response/e;->h:Ljava/lang/String;

    :goto_13f
    move-object v10, v0

    new-instance v11, Lcom/fyber/inneractive/sdk/network/s$a$a;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/fyber/inneractive/sdk/network/s$a$a;-><init>(Lcom/fyber/inneractive/sdk/network/s$a;Lcom/fyber/inneractive/sdk/network/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/fyber/inneractive/sdk/util/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.network.s.a.RunnableC0167a (com.fyber.inneractive.sdk.network.s$a$a)
.class public Lcom/fyber/inneractive/sdk/network/s$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/network/s$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/network/s;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/fyber/inneractive/sdk/network/s$a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/network/s$a;Lcom/fyber/inneractive/sdk/network/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->f:Ljava/lang/Object;

    iput-object p8, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->b:Ljava/lang/String;

    const-string v2, "contentid"

    invoke-virtual {v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->c:Ljava/lang/String;

    const-string v2, "fairbidv"

    invoke-virtual {v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/network/s$a;->b:Lcom/fyber/inneractive/sdk/network/q;

    const-string v2, "%s %s"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_5d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget v1, v1, Lcom/fyber/inneractive/sdk/network/q;->val:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "err"

    invoke-virtual {v0, v7, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/s$a;->b:Lcom/fyber/inneractive/sdk/network/q;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/fyber/inneractive/sdk/network/x0;->ERROR_TABLE:Lcom/fyber/inneractive/sdk/network/x0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/x0;->e()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/network/s$a;->b:Lcom/fyber/inneractive/sdk/network/q;

    aput-object v7, v1, v5

    const-string v7, "Event dispatcher - dispatching error: %s"

    invoke-static {v7, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v7, "DISPATCHED_SDK_ERROR"

    aput-object v7, v1, v5

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/network/s$a;->b:Lcom/fyber/inneractive/sdk/network/q;

    iget v7, v7, Lcom/fyber/inneractive/sdk/network/q;->val:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v6, v4, v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a1

    :cond_5d
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/s$a;->c:Lcom/fyber/inneractive/sdk/network/r;

    if-eqz v0, :cond_a0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget v0, v0, Lcom/fyber/inneractive/sdk/network/r;->val:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "event"

    invoke-virtual {v1, v7, v0}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/s$a;->c:Lcom/fyber/inneractive/sdk/network/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/fyber/inneractive/sdk/network/x0;->EVENT_TABLE:Lcom/fyber/inneractive/sdk/network/x0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/network/x0;->e()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/network/s$a;->c:Lcom/fyber/inneractive/sdk/network/r;

    aput-object v7, v1, v5

    const-string v7, "Event dispatcher - dispatching event: %s"

    invoke-static {v7, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget v1, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v7, "DISPATCHED_SDK_EVENT"

    aput-object v7, v1, v5

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/network/s$a;->c:Lcom/fyber/inneractive/sdk/network/r;

    iget v7, v7, Lcom/fyber/inneractive/sdk/network/r;->val:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    invoke-static {v6, v4, v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a1

    :cond_a0
    move-object v0, v4

    :goto_a1
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b2

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->d:Ljava/lang/String;

    const-string v7, "placement_type"

    invoke-virtual {v1, v7, v2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b2
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->e:Ljava/lang/String;

    const-string v7, "spot_id"

    invoke-virtual {v1, v7, v2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c3
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v1

    if-nez v1, :cond_d4

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/j;->g()Ljava/lang/String;

    move-result-object v2

    const-string v7, "ciso"

    invoke-virtual {v1, v7, v2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d4
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->f:Ljava/lang/Object;

    const-string v7, "ad_type"

    invoke-virtual {v1, v7, v2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-boolean v1, v1, Lcom/fyber/inneractive/sdk/network/s$a;->g:Z

    if-eqz v1, :cond_f1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/fyber/inneractive/sdk/network/l;->c:Ljava/lang/String;

    :cond_f1
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    invoke-static {}, Lcom/fyber/inneractive/sdk/util/f0;->e()Lcom/fyber/inneractive/sdk/util/f0;

    move-result-object v7

    iget-object v7, v7, Lcom/fyber/inneractive/sdk/util/f0;->key:Ljava/lang/String;

    const-string v8, "n"

    invoke-virtual {v2, v8, v7}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "date_created"

    invoke-virtual {v2, v8, v7}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_117
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    const-string v7, "day"

    sget-object v8, Lcom/fyber/inneractive/sdk/network/s$a;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_128
    .catchall {:try_start_117 .. :try_end_128} :catchall_129

    goto :goto_12a

    :catchall_129
    nop

    :goto_12a
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "hour"

    invoke-virtual {v2, v7, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/network/s$a;->b:Lcom/fyber/inneractive/sdk/network/q;

    if-eqz v7, :cond_152

    iget v0, v7, Lcom/fyber/inneractive/sdk/network/q;->val:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15a

    :cond_152
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/s$a;->c:Lcom/fyber/inneractive/sdk/network/r;

    iget v0, v0, Lcom/fyber/inneractive/sdk/network/r;->val:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_15a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "table"

    invoke-virtual {v1, v2, v0}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/s$a;->d:Lorg/json/JSONArray;

    if-eqz v0, :cond_17d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_17d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/network/s$a;->d:Lorg/json/JSONArray;

    const-string v2, "experiments"

    invoke-virtual {v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_17d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    const-string v1, "1"

    if-eqz v0, :cond_190

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/response/e;->B:Z

    if-eqz v0, :cond_190

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    const-string v2, "sdk_bidding"

    invoke-virtual {v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_190
    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v0

    if-eqz v0, :cond_19d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    const-string v2, "child_mode"

    invoke-virtual {v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19d
    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/ignite/c;->d()Z

    move-result v2

    if-eqz v2, :cond_1b5

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/network/s$a;->e:Lcom/fyber/inneractive/sdk/response/e;

    if-eqz v2, :cond_1b5

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/response/e;->F:Lcom/fyber/inneractive/sdk/ignite/k;

    sget-object v7, Lcom/fyber/inneractive/sdk/ignite/k;->NONE:Lcom/fyber/inneractive/sdk/ignite/k;

    if-eq v2, v7, :cond_1b5

    const/4 v2, 0x1

    goto :goto_1b6

    :cond_1b5
    const/4 v2, 0x0

    :goto_1b6
    iget-object v7, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    if-eqz v2, :cond_1bb

    goto :goto_1bd

    :cond_1bb
    const-string v1, "0"

    :goto_1bd
    const-string v2, "ignite"

    invoke-virtual {v7, v2, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/ignite/c;->c:Ljava/lang/String;

    const-string v7, "ignitep"

    invoke-virtual {v1, v7, v2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->E:Lcom/fyber/inneractive/sdk/ignite/c;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/ignite/c;->d:Ljava/lang/String;

    const-string v7, "ignitev"

    invoke-virtual {v1, v7, v2}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->L:Lcom/fyber/inneractive/sdk/config/global/s;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/config/global/s;->c()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1ed

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1ed

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    const-string v2, "s_experiments"

    invoke-virtual {v1, v2, v0}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1ed
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/s$a;->f:Lorg/json/JSONArray;

    if-eqz v0, :cond_20f

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_20f

    const/4 v1, 0x0

    :goto_1fa
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_20f

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lt v2, v6, :cond_20c

    const/4 v0, 0x1

    goto :goto_210

    :cond_20c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1fa

    :cond_20f
    const/4 v0, 0x0

    :goto_210
    if-eqz v0, :cond_21d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->h:Lcom/fyber/inneractive/sdk/network/s$a;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/network/s$a;->f:Lorg/json/JSONArray;

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/l;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$a$a;->a:Lcom/fyber/inneractive/sdk/network/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/network/l;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_236

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/network/l;->b:Ljava/util/Map;

    if-eqz v1, :cond_236

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_236

    const/4 v1, 0x1

    goto :goto_237

    :cond_236
    const/4 v1, 0x0

    :goto_237
    if-eqz v1, :cond_2e3

    sget-object v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->H:Lcom/fyber/inneractive/sdk/network/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v0, Lcom/fyber/inneractive/sdk/network/l;->b:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_24f
    :goto_24f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_267

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_24f

    :try_start_261
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_264
    .catch Lorg/json/JSONException; {:try_start_261 .. :try_end_264} :catch_265

    goto :goto_24f

    :catch_265
    nop

    goto :goto_24f

    :cond_267
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_2a6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const v8, 0xc800

    if-le v7, v8, :cond_298

    const-string v9, "iawrapper"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_27e

    const/4 v9, 0x0

    :cond_27e
    const v10, 0xc7ff

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    const-string v7, "Sdk event dispatcher: message size %d is too long! trimming message to %d Characters"

    invoke-static {v7, v9}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_298
    :try_start_298
    const-string v7, "ad"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29d
    .catch Lorg/json/JSONException; {:try_start_298 .. :try_end_29d} :catch_29e

    goto :goto_2a6

    :catch_29e
    move-exception v0

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "Failed inserting ad body to json"

    invoke-static {v8, v0, v7}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2a6
    :goto_2a6
    sget v0, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    if-ne v0, v6, :cond_2bd

    :try_start_2aa
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "%s, Event: %s"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v8, "SDK_EVENT"

    aput-object v8, v3, v5

    aput-object v0, v3, v6

    invoke-static {v6, v4, v7, v3}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2bb
    .catchall {:try_start_2aa .. :try_end_2bb} :catchall_2bc

    goto :goto_2bd

    :catchall_2bc
    nop

    :cond_2bd
    :goto_2bd
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/network/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/network/c;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_2e3

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    const v2, 0xbbdf09

    if-eqz v0, :cond_2de

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2de

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/network/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2de
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/fyber/inneractive/sdk/network/c;->a(IJ)V

    :cond_2e3
    return-void
.end method

###### Class com.fyber.inneractive.sdk.network.s.b (com.fyber.inneractive.sdk.network.s$b)
.class public Lcom/fyber/inneractive/sdk/network/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/network/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$b;->a:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/fyber/inneractive/sdk/network/s$b;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/s$b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_14

    :catch_6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Got exception adding param to json object: %s, %s"

    invoke-static {p1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_14
    return-object p0
.end method
