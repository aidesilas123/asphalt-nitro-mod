###### Class com.kidoz.sdk.api.structure.ContentItem (com.kidoz.sdk.api.structure.ContentItem)
.class public Lcom/kidoz/sdk/api/structure/ContentItem;
.super Ljava/lang/Object;
.source "ContentItem.java"


# static fields
.field private static final ADVERTISER_KEY:Ljava/lang/String; = "advertiser_id"

.field private static final BG_COLOR_KEY:Ljava/lang/String; = "bg_color"

.field private static final CONTENT_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final DATA_KEY:Ljava/lang/String; = "data"

.field private static final EXTERNAL_PARAMETERS__KEY:Ljava/lang/String; = "ext"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IMAGE_RATIO_KEY:Ljava/lang/String; = "img_ratio"

.field private static final LANG_KEY:Ljava/lang/String; = "lang"

.field private static final PROMOTED_KEY:Ljava/lang/String; = "promoted"

.field private static final SEC_THUMB_KEY:Ljava/lang/String; = "sec_thumb"

.field private static final THIRD_PARTY_IMPRESSION_URL:Ljava/lang/String; = "impUrl"

.field private static final THUMB_KEY:Ljava/lang/String; = "thumb"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"


# instance fields
.field private mAdvertiserID:Ljava/lang/String;

.field private mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;

.field private mData:Ljava/lang/String;

.field private mExtraParameters:Lorg/json/JSONObject;

.field private mId:Ljava/lang/String;

.field private mImpUrl:Ljava/lang/String;

.field private mJSONitem:Lorg/json/JSONArray;

.field private mLang:Ljava/lang/String;

.field public mMainThumbImageRatio:F

.field private mMainThumbSize:[I

.field private mPalliteBgColor:I

.field private mPalliteTextColor:I

.field private mPromoted:Z

.field private mRealViewIndex:I

.field public mSecThumb:Ljava/lang/String;

.field private mThumb:Ljava/lang/String;

.field private mTiltle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->NONE:Lcom/kidoz/sdk/api/general/enums/ContentType;

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mImpUrl:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mJSONitem:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mMainThumbImageRatio:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I

    const-string v0, "#484848"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteTextColor:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/ContentType;->NONE:Lcom/kidoz/sdk/api/general/enums/ContentType;

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mImpUrl:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mJSONitem:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mMainThumbImageRatio:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I

    const-string v2, "#484848"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteTextColor:I

    if-eqz p1, :cond_1de

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mJSONitem:Lorg/json/JSONArray;

    const-string v2, "id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_45

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mId:Ljava/lang/String;

    :cond_45
    const-string v2, "thumb"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mThumb:Ljava/lang/String;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->fixUrlLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mThumb:Ljava/lang/String;

    :cond_63
    const-string v2, "sec_thumb"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mSecThumb:Ljava/lang/String;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->fixUrlLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mSecThumb:Ljava/lang/String;

    :cond_81
    const-string v2, "type"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    :try_start_89
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/enums/ContentType;->getTypeByValue(I)Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9d} :catch_9e

    goto :goto_bb

    :catch_9e
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing single content item Action : \n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->NONE:Lcom/kidoz/sdk/api/general/enums/ContentType;

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;

    :cond_bb
    :goto_bb
    const-string v2, "data"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mData:Ljava/lang/String;

    :cond_d3
    const-string v2, "title"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mTiltle:Ljava/lang/String;

    :cond_eb
    const-string v2, "lang"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mLang:Ljava/lang/String;

    :cond_103
    const-string v2, "advertiser_id"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "0"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mAdvertiserID:Ljava/lang/String;

    :cond_11d
    const-string v2, "promoted"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_138

    const/4 v3, 0x1

    :cond_138
    iput-boolean v3, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPromoted:Z

    :cond_13a
    const-string v2, "bg_color"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15c

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "#ffffff"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15c

    :try_start_154
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_15a} :catch_15b

    goto :goto_15c

    :catch_15b
    nop

    :cond_15c
    :goto_15c
    iget v2, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I

    if-ne v2, v1, :cond_195

    iget-object v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-eqz v1, :cond_195

    :try_start_164
    sget-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->EXTERNAL_BROWSER_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-eq v1, v2, :cond_18b

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEB_GAME_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne v1, v2, :cond_16d

    goto :goto_18b

    :cond_16d
    sget-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->WEBSITE_URL:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne v1, v2, :cond_17a

    const-string v1, "#f8a850"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I

    goto :goto_195

    :cond_17a
    sget-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->GOOGLE_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-eq v1, v2, :cond_182

    sget-object v2, Lcom/kidoz/sdk/api/general/enums/ContentType;->PROMOTED_PLAY_APPLICATION:Lcom/kidoz/sdk/api/general/enums/ContentType;

    if-ne v1, v2, :cond_195

    :cond_182
    const-string v1, "#4aaed3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I

    goto :goto_195

    :cond_18b
    :goto_18b
    const-string v1, "#b0d63a"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_193} :catch_194

    goto :goto_195

    :catch_194
    nop

    :cond_195
    :goto_195
    const-string v1, "img_ratio"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ae

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mMainThumbImageRatio:F

    :cond_1ae
    const-string v1, "ext"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    :cond_1c6
    const-string v1, "impUrl"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1de

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mImpUrl:Ljava/lang/String;

    :cond_1de
    return-void
.end method


# virtual methods
.method public getAdvertiserID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mAdvertiserID:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraParameters()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getHTMLUrl()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "html_url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getHtmlType()Lcom/kidoz/sdk/api/general/enums/HtmlType;
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/HtmlType;->NONE:Lcom/kidoz/sdk/api/general/enums/HtmlType;

    iget-object v1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/enums/HtmlType;->getValueFromType(Lcom/kidoz/sdk/api/general/enums/HtmlType;)I

    move-result v0

    const-string v2, "html_type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/enums/HtmlType;->getTypeByValue(I)Lcom/kidoz/sdk/api/general/enums/HtmlType;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAvoidAutoImpression()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "avoidAutoImpression"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_b
    return v1
.end method

.method public getIsHideTextOverlay()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "hideTextOverlay"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_b
    return v1
.end method

.method public getIsNonDefaultHtml()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "nonDefaultHTML"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_b
    return v1
.end method

.method public getIsUseNativeTopBar()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    const-string v2, "useNativeTopBar"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getJSONitem()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mJSONitem:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mLang:Ljava/lang/String;

    return-object v0
.end method

.method public getMainThumbImageRatio()F
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mMainThumbImageRatio:F

    return v0
.end method

.method public getMainThumbSize()[I
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mMainThumbSize:[I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mTiltle:Ljava/lang/String;

    return-object v0
.end method

.method public getPaliteBgColor()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteBgColor:I

    return v0
.end method

.method public getPaliteTextColor()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteTextColor:I

    return v0
.end method

.method public getRealViewIndex()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mRealViewIndex:I

    return v0
.end method

.method public getSecThumb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mSecThumb:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldDisplayMaximizeButton()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "showMaximize"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_b
    return v1
.end method

.method public getThirdPartyImpressionBeacon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mImpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mThumb:Ljava/lang/String;

    return-object v0
.end method

.method public isPromoted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPromoted:Z

    return v0
.end method

.method public setAdvertiserID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mAdvertiserID:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Lcom/kidoz/sdk/api/general/enums/ContentType;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mContentType:Lcom/kidoz/sdk/api/general/enums/ContentType;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mData:Ljava/lang/String;

    return-void
.end method

.method public setExtraParameters(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mExtraParameters:Lorg/json/JSONObject;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mId:Ljava/lang/String;

    return-void
.end method

.method public setIsPromoted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPromoted:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mTiltle:Ljava/lang/String;

    return-void
.end method

.method public setPaliteBgColor(I)V
    .registers 2

    return-void
.end method

.method public setPaliteTextColor(I)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mPalliteTextColor:I

    return-void
.end method

.method public setRealViewIndex(I)V
    .registers 2

    iput p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mRealViewIndex:I

    return-void
.end method

.method public setThumb(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentItem;->mThumb:Ljava/lang/String;

    return-void
.end method
