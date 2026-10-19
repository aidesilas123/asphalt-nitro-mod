###### Class com.kidoz.sdk.api.general.ContentExecutionHandler.AnonymousClass4 (com.kidoz.sdk.api.general.ContentExecutionHandler$4)
.class Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;
.super Ljava/lang/Object;
.source "ContentExecutionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentExecutionHandler;->handleContentItemClick(Landroid/content/Context;Lcom/kidoz/sdk/api/structure/ContentItem;Ljava/lang/String;Ljava/lang/String;IZLcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$handleClickListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;->val$handleClickListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$4;->val$handleClickListener:Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kidoz/sdk/api/general/ContentExecutionHandler$IOnHandleClickListener;->onRestoreClick()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method
