###### Class com.kidoz.sdk.api.server_connect.BaseConnectionClient.AnonymousClass1 (com.kidoz.sdk.api.server_connect.BaseConnectionClient$1)
.class Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;
.super Ljava/lang/Object;
.source "BaseConnectionClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makeAsyncGet(Ljava/lang/String;Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$contentValues:Landroid/content/ContentValues;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$contentValues:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$1;->val$contentValues:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makeGetConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    return-void
.end method
