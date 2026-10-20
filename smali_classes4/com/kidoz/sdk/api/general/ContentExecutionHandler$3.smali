###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass3 (com.kidoz.sdk.api.general.ContentExecutionHandler$3)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;
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
.field final synthetic val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$position:I

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    iput p5, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockActive(Z)V
    .registers 11

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    iget v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$position:I

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->access$000(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2d

    :cond_11
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentItem;->getId()Ljava/lang/String;

    move-result-object v8

    const-string v6, "Sponsored Content"

    const-string v7, "Incorrect Password"

    invoke-virtual/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public onLockNotActive()V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$contentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$widgetType:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$styleId:Ljava/lang/String;

    iget v4, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$3;->val$position:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->access$000(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
