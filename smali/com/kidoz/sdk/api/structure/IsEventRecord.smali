###### Class com.kidoz.sdk.api.structure.IsEventRecord (com.kidoz.sdk.api.structure.IsEventRecord)
.class public Lcom/kidoz/sdk/api/structure/IsEventRecord;
.super Ljava/lang/Object;
.source "IsEventRecord.java"


# static fields
.field private static final ADVERTISING_ID:Ljava/lang/String; = "advertisingId"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final POSITION_INDEX:Ljava/lang/String; = "positionIndex"

.field private static final STYLE_ID:Ljava/lang/String; = "styleId"

.field private static final TIME_STAMP:Ljava/lang/String; = "timeStamp"

.field private static final WIDGET_TYPE:Ljava/lang/String; = "widgetType"


# instance fields
.field private mJsonObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method


# virtual methods
.method public getAdvertiserId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "advertisingId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "contentType"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "packageName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionIndex()I
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "positionIndex"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStringParams()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyleId()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "styleId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "timeStamp"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetType()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "widgetType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAdvertiserId(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "advertisingId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "contentType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public setPositionIndex(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "positionIndex"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public setStyleId(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "styleId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "timeStamp"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public setWidgetType(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/structure/IsEventRecord;->mJsonObject:Lorg/json/JSONObject;

    const-string v1, "widgetType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
