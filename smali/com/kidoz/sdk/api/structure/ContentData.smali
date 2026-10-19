###### Class com.kidoz.sdk.api.structure.ContentData (com.kidoz.sdk.api.structure.ContentData)
.class public Lcom/kidoz/sdk/api/structure/ContentData;
.super Ljava/lang/Object;
.source "ContentData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static CONTAINER_VIEW_BG_COLOR_KEY:Ljava/lang/String; = "containerViewBgColor"

.field private static CONTENT_ITEMS_KEY:Ljava/lang/String; = "content_items"

.field private static DATA_KEY:Ljava/lang/String; = "data"

.field private static FOOTER_VIEW_BG_COLOR_KEY:Ljava/lang/String; = "footerColor"

.field private static HEADER_TEXT_KEY:Ljava/lang/String; = "headerText"

.field private static HEADER_VIEW_BG_COLOR_KEY:Ljava/lang/String; = "headerColor"

.field private static POWERED_BY_URL_KEY:Ljava/lang/String; = "powerd_by_url"

.field private static final VIEW_ITEM_BG_COLOR_KEY:Ljava/lang/String; = "viewItemBgColor"

.field private static VIEW_ITEM_CORENR_RADIUS_PX_KEY:Ljava/lang/String; = "viewItemCorenrRadiusPx"


# instance fields
.field public mBackgroundURL:Ljava/lang/String;

.field public mContainerViewBgColor:I

.field public mFooterViewBgColor:I

.field public mHeaderTextStr:Ljava/lang/String;

.field public mHeaderViewBgColor:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsJsonArray:Lorg/json/JSONArray;

.field private mKeysMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerByUrl:Ljava/lang/String;

.field private mStyleID:Ljava/lang/String;

.field public mViewItemBgColor:I

.field public mViewItemCorenrRadiusPx:I

.field private mWidgetType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItemsJsonArray:Lorg/json/JSONArray;

    const-string v0, ""

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mHeaderTextStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mPowerByUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mBackgroundURL:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mWidgetType:Ljava/lang/String;

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mStyleID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public decodeResponse(Ljava/lang/String;)V
    .registers 8

    const-string v0, "#ffffffff"

    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "success"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_106

    sget-object p1, Lcom/kidoz/sdk/api/structure/ContentData;->DATA_KEY:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_106

    const-string v1, "viewItemBgColor"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mViewItemBgColor:I

    sget-object v1, Lcom/kidoz/sdk/api/structure/ContentData;->VIEW_ITEM_CORENR_RADIUS_PX_KEY:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mViewItemCorenrRadiusPx:I

    sget-object v1, Lcom/kidoz/sdk/api/structure/ContentData;->CONTAINER_VIEW_BG_COLOR_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mContainerViewBgColor:I

    sget-object v1, Lcom/kidoz/sdk/api/structure/ContentData;->HEADER_VIEW_BG_COLOR_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mHeaderViewBgColor:I

    sget-object v1, Lcom/kidoz/sdk/api/structure/ContentData;->FOOTER_VIEW_BG_COLOR_KEY:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mFooterViewBgColor:I

    sget-object v0, Lcom/kidoz/sdk/api/structure/ContentData;->HEADER_TEXT_KEY:Ljava/lang/String;

    const-string v1, "More Cool Stuff"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mHeaderTextStr:Ljava/lang/String;

    sget-object v0, Lcom/kidoz/sdk/api/structure/ContentData;->POWERED_BY_URL_KEY:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mPowerByUrl:Ljava/lang/String;

    sget-object v0, Lcom/kidoz/sdk/api/structure/ContentData;->CONTENT_ITEMS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItems:Ljava/util/ArrayList;

    sget-object v0, Lcom/kidoz/sdk/api/structure/ContentData;->CONTENT_ITEMS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItemsJsonArray:Lorg/json/JSONArray;

    const/4 v0, 0x0

    if-eqz p1, :cond_d7

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_d7

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItemsJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_ae

    const/4 v3, 0x0

    :goto_9a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_ae

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    :cond_ae
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d7

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mKeysMap:Ljava/util/HashMap;

    :goto_b6
    iget-object v1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItemsJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bc} :catch_ed

    if-ge v2, v1, :cond_d7

    :try_start_be
    new-instance v1, Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v3, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItemsJsonArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lcom/kidoz/sdk/api/structure/ContentItem;-><init>(Lorg/json/JSONArray;Ljava/util/HashMap;)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_be .. :try_end_ce} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_ce} :catch_ed

    goto :goto_d4

    :catch_cf
    :try_start_cf
    const-string v1, "Error parsing Content data item!"

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    :goto_d4
    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    :cond_d7
    :goto_d7
    iget-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_106

    iget-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->setRealViewIndex(I)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_ea} :catch_ed

    add-int/lit8 v0, v0, 0x1

    goto :goto_d7

    :catch_ed
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing Content data object!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    :cond_106
    return-void
.end method

.method public getContainerViewBgColor()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mContainerViewBgColor:I

    return v0
.end method

.method public getContentDataItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFooterViewBgColor()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mFooterViewBgColor:I

    return v0
.end method

.method public getHeaderTextStr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mHeaderTextStr:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderViewBgColor()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mHeaderViewBgColor:I

    return v0
.end method

.method public getItemsJsonArray()Lorg/json/JSONArray;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItemsJsonArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getPowerByUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mPowerByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceWidgetType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mWidgetType:Ljava/lang/String;

    return-object v0
.end method

.method public getStyleID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mStyleID:Ljava/lang/String;

    return-object v0
.end method

.method public getViewItemBgColor()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mViewItemBgColor:I

    return v0
.end method

.method public getViewItemCorenrRadiusPx()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mViewItemCorenrRadiusPx:I

    return v0
.end method

.method public getmKeysMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mKeysMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public isHasContentToShow()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setContentItems(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/sdk/api/structure/ContentItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setStyleID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mStyleID:Ljava/lang/String;

    return-void
.end method

.method public setWidgetType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/structure/ContentData;->mWidgetType:Ljava/lang/String;

    return-void
.end method
