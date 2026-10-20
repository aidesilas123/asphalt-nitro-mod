###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass2 (com.kidoz.sdk.api.general.ContentExecutionHandler$2)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnParentalLockStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$allowModifyOrientation:Z

.field final synthetic val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$position:I

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 7

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    iput p5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    iput-boolean p6, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$allowModifyOrientation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockActive(Z)V
    .registers 11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_74

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    iget v5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    iget-boolean v6, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$allowModifyOrientation:Z

    invoke-static/range {v1 .. v6}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onPromotedAppItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance p1, Lcom/kidoz/sdk/api/structure/IsEventRecord;

    invoke-direct {p1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;-><init>()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setContentType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setName(Ljava/lang/String;)V

    iget v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPositionIndex(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setAdvertiserId(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setTimeStamp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setWidgetType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setStyleId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getIsEventTable()Lcom/kidoz/sdk/api/general/database/IsEventTable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/database/IsEventTable;->insertRecord(Lcom/kidoz/sdk/api/structure/IsEventRecord;)V

    goto :goto_90

    :cond_74
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v6, "Sponsored Content"

    const-string v7, "Incorrect Password"

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_90
    return-void
.end method

.method public onLockNotActive()V
    .registers 7

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    iget v4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    iget-boolean v5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$allowModifyOrientation:Z

    invoke-static/range {v0 .. v5}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->onPromotedAppItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZ)V

    new-instance v0, Lcom/kidoz/sdk/api/structure/IsEventRecord;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/structure/IsEventRecord;-><init>()V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getContentType()Lcom/kidoz/sdk/api/general/enums/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setContentType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setName(Ljava/lang/String;)V

    iget v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setPositionIndex(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getAdvertiserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setAdvertiserId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setTimeStamp(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$widgetType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setWidgetType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$styleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/structure/IsEventRecord;->setStyleId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->getIsEventTable()Lcom/kidoz/sdk/api/general/database/IsEventTable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kidoz/sdk/api/general/database/IsEventTable;->insertRecord(Lcom/kidoz/sdk/api/structure/IsEventRecord;)V

    return-void
.end method
