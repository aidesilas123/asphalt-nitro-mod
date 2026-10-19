###### Class com.gameloft.android2d.iap.utils.f (com.gameloft.android2d.iap.utils.f)
.class public Lcom/gameloft/android2d/iap/utils/f;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IABXMLParser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field public f:Lcom/gameloft/android2d/iap/utils/g;

.field public g:Lcom/gameloft/android2d/iap/billings/a;

.field public h:Lorg/json/JSONObject;

.field public i:Lorg/json/JSONObject;

.field public j:Lorg/json/JSONArray;

.field private k:Lcom/gameloft/android2d/iap/utils/h;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "IAP-IABXMLParser"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->b:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->i:Lorg/json/JSONObject;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->j:Lorg/json/JSONArray;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->l:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->m:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->n:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->o:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->p:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/gameloft/android2d/iap/utils/h;
    .registers 2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    return-object v0
.end method

.method public characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->b:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    :cond_1c
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "amount"

    const-string p3, "bundle"

    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->b:Z

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/gameloft/android2d/iap/utils/f;->l:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_4e7

    const-string v2, "flow_type"

    const-string v3, "text"

    if-eqz v1, :cond_19d

    :try_start_17
    const-string p1, "country"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->R(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_2c
    const-string p1, "operator"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->W(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_41
    const-string p1, "product"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->c0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_56
    const-string p1, "platform"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->a0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_6b
    const-string p1, "language"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->U(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_80
    const-string p1, "promo_description"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    if-eqz p1, :cond_4e3

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->d0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_97
    const-string p1, "promo_endtime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    if-eqz p1, :cond_4e3

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->f0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_ae
    const-string p1, "server_time"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c5

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    if-eqz p1, :cond_4e3

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->g0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_c5
    const-string p1, "limits_validation_url"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_da

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->j0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_da
    const-string p1, "check_limit_url"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ef

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->O(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_ef
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_106

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    if-eqz p1, :cond_4e3

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/gameloft/android2d/iap/utils/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_106
    const-string p1, "cash"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_10c} :catch_4e7

    const-string p3, ","

    if-eqz p1, :cond_12c

    :try_start_110
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->X(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_12c
    const-string p1, "coin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_150

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->Y(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_150
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_167

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->S(I)V

    goto/16 :goto_4e3

    :cond_167
    const-string p1, "shop_anon_id"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->h0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_17c
    const-string p1, "cashcard_game_id"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_191

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->i0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_191
    const-string p1, "shop_info"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e3

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->l:Z

    goto/16 :goto_4e3

    :cond_19d
    iget-boolean v1, p0, Lcom/gameloft/android2d/iap/utils/f;->m:Z

    if-eqz v1, :cond_4e3

    iget-boolean v1, p0, Lcom/gameloft/android2d/iap/utils/f;->o:Z
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_1a3} :catch_4e7

    const-string v4, "type"

    if-eqz v1, :cond_202

    :try_start_1a7
    iget-boolean v1, p0, Lcom/gameloft/android2d/iap/utils/f;->p:Z
    :try_end_1a9
    .catch Lorg/json/JSONException; {:try_start_1a7 .. :try_end_1a9} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1a9} :catch_4e7

    const-string v2, "bundle_item"

    if-eqz v1, :cond_1e0

    :try_start_1ad
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bf

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->i:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1e0

    :cond_1bf
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->i:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1e0

    :cond_1d1
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e0

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->j:Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->i:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->p:Z

    :cond_1e0
    :goto_1e0
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e3

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->j:Lorg/json/JSONArray;

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->o:Z
    :try_end_1fa
    .catch Lorg/json/JSONException; {:try_start_1ad .. :try_end_1fa} :catch_1fc
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1fa} :catch_4e7

    goto/16 :goto_4e3

    :catch_1fc
    :try_start_1fc
    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->p:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->o:Z

    goto/16 :goto_4e3

    :cond_202
    iget-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/f;->n:Z

    if-eqz p1, :cond_488

    const-string p1, "billing"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_222

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p2}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->g0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/g;->h(Lcom/gameloft/android2d/iap/billings/a;)V

    goto/16 :goto_4e3

    :cond_222
    const-string p1, "shenzhoufu_billing"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_237

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->z0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_237
    const-string p1, "shenzhoufu_get_billing_result"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->e0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_24c
    const-string p1, "msg_shenzhoufu_notice"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_261

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->k0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_261
    const-string p1, "shortcode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_276

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->v0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_276
    const-string p1, "shortcode1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28b

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->w0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_28b
    const-string p1, "shortcode2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a0

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->x0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_2a0
    const-string p1, "alias"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b5

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->c0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_2b5
    const-string p1, "ump_get_transid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2ca

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->z0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_2ca
    const-string p1, "ump_get_billing_result"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2df

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->e0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_2df
    const-string p1, "msg_psms_notice_1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f4

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->i0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_2f4
    const-string p1, "msg_psms_notice_2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_309

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->j0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_309
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31c

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->A0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_31c
    const-string p1, "price"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_331

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->q0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_331
    const-string p1, "currency"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_346

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->h0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_346
    const-string p1, "formatted_price"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35b

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->m0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_35b
    const-string p1, "tnc"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_370

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->y0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_370
    const-string p1, "url"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_385

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->C0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_385
    const-string p1, "uid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47c

    const-string p1, "sku"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47c

    const-string p1, "samsung_item_id"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39f

    goto/16 :goto_47c

    :cond_39f
    const-string p1, "money"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b4

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->o0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_3b4
    const-string p1, "is_3g_only"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c9

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->n0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_3c9
    const-string p1, "pid"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3de

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->p0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_3de
    const-string p1, "id"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f3

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->s0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_3f3
    const-string p1, "proxy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_408

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->u0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_408
    const-string p1, "port"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41d

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->t0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_41d
    const-string p1, "price_point"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_432

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->r0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_432
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_449

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->l0(I)V

    goto/16 :goto_4e3

    :cond_449
    const-string p1, "bill_type"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45a

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->d0(Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_45a
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_471

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    if-eqz p1, :cond_4e3

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/gameloft/android2d/iap/billings/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e3

    :cond_471
    const-string p1, "billing_list"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e3

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->n:Z

    goto :goto_4e3

    :cond_47c
    :goto_47c
    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/billings/a;->B0(Ljava/lang/String;)V

    goto :goto_4e3

    :cond_488
    const-string p1, "content"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_498

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/h;->d(Lcom/gameloft/android2d/iap/utils/g;)V

    goto :goto_4e3

    :cond_498
    const-string p1, "attribute"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b1

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/gameloft/android2d/iap/utils/g;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    goto :goto_4e3

    :cond_4b1
    const-string p1, "billing_type_pref"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c5

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    goto :goto_4e3

    :cond_4c5
    const-string p1, "content_list"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/utils/f;->m:Z

    goto :goto_4e3

    :cond_4d0
    const-string p1, "offline_item"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e3

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/g;->a(Ljava/lang/String;)V

    :cond_4e3
    :goto_4e3
    const-string p1, ""

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;
    :try_end_4e7
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_4e7} :catch_4e7

    :catch_4e7
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "localization_id"

    const-string p3, "location"

    const-string v0, "countdown"

    const-string v1, "redirect"

    const-string v2, "sku"

    const-string v3, "pointcut"

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->IsUseWPIAP()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-boolean v4, p0, Lcom/gameloft/android2d/iap/utils/f;->b:Z

    if-eqz v4, :cond_1a

    const-string v4, ""

    iput-object v4, p0, Lcom/gameloft/android2d/iap/utils/f;->d:Ljava/lang/String;

    :cond_1a
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/gameloft/android2d/iap/utils/f;->b:Z

    const-string v5, "shop_info"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    new-instance p1, Lcom/gameloft/android2d/iap/utils/h;

    invoke-direct {p1}, Lcom/gameloft/android2d/iap/utils/h;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/h;->M()V

    iput-boolean v4, p0, Lcom/gameloft/android2d/iap/utils/f;->l:Z

    goto/16 :goto_1a1

    :cond_33
    iget-boolean v5, p0, Lcom/gameloft/android2d/iap/utils/f;->l:Z

    const-string v6, "key"

    const-string v7, "text"

    const-string v8, "id"

    if-eqz v5, :cond_b5

    const-string p1, "country"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->Q(Ljava/lang/String;)V

    const-string p1, "iso"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->P(Ljava/lang/String;)V

    goto/16 :goto_1a1

    :cond_5b
    const-string p1, "operator"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->V(Ljava/lang/String;)V

    goto/16 :goto_1a1

    :cond_6e
    const-string p1, "product"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->b0(Ljava/lang/String;)V

    goto/16 :goto_1a1

    :cond_81
    const-string p1, "platform"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->Z(Ljava/lang/String;)V

    goto/16 :goto_1a1

    :cond_94
    const-string p1, "language"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->k:Lcom/gameloft/android2d/iap/utils/h;

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/h;->T(Ljava/lang/String;)V

    goto/16 :goto_1a1

    :cond_a7
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    goto/16 :goto_1a1

    :cond_b5
    const-string v5, "content_list"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c1

    iput-boolean v4, p0, Lcom/gameloft/android2d/iap/utils/f;->m:Z

    goto/16 :goto_1a1

    :cond_c1
    iget-boolean v5, p0, Lcom/gameloft/android2d/iap/utils/f;->m:Z

    if-eqz v5, :cond_1a1

    const-string v5, "content"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v9, "type"

    if-eqz v5, :cond_ee

    new-instance p1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-direct {p1}, Lcom/gameloft/android2d/iap/utils/g;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/g;->Q(Ljava/lang/String;)V

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gameloft/android2d/iap/utils/g;->R(Ljava/lang/String;)V

    goto/16 :goto_1a1

    :cond_ee
    const-string v5, "attribute"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    const-string p1, "name"

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    goto/16 :goto_1a1

    :cond_100
    const-string v5, "bundle"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14f

    :try_start_108
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v5, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-virtual {v5, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/gameloft/android2d/iap/utils/f;->h:Lorg/json/JSONObject;

    invoke-virtual {p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->j:Lorg/json/JSONArray;

    iput-boolean v4, p0, Lcom/gameloft/android2d/iap/utils/f;->o:Z
    :try_end_14e
    .catch Lorg/json/JSONException; {:try_start_108 .. :try_end_14e} :catch_1a1

    goto :goto_1a1

    :cond_14f
    iget-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/f;->o:Z

    if-eqz p1, :cond_165

    const-string p1, "bundle_item"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->i:Lorg/json/JSONObject;

    iput-boolean v4, p0, Lcom/gameloft/android2d/iap/utils/f;->p:Z

    goto :goto_1a1

    :cond_165
    const-string p1, "billing_list"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_170

    iput-boolean v4, p0, Lcom/gameloft/android2d/iap/utils/f;->n:Z

    goto :goto_1a1

    :cond_170
    const-string p1, "offline_items_bonus"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17e

    iget-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->f:Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->k()V

    goto :goto_1a1

    :cond_17e
    iget-boolean p1, p0, Lcom/gameloft/android2d/iap/utils/f;->n:Z

    if-eqz p1, :cond_1a1

    const-string p1, "billing"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_195

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->g:Lcom/gameloft/android2d/iap/billings/a;

    goto :goto_1a1

    :cond_195
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a1

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/f;->e:Ljava/lang/String;

    :catch_1a1
    :cond_1a1
    :goto_1a1
    return-void
.end method
