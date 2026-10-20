###### Class com.kidoz.sdk.api.general.database.ConfigurationTable.AnonymousClass3 (com.kidoz.sdk.api.general.database.ConfigurationTable$3)
.class Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;
.super Lcom/kidoz/sdk/api/anr_handler/ANRBuster;
.source "ConfigurationTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kidoz/sdk/api/anr_handler/ANRBuster<",
        "Ljava/lang/Void;",
        "Lcom/kidoz/sdk/api/general/utils/PropertiesObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;-><init>()V

    return-void
.end method


# virtual methods
.method public onANRDetected()V
    .registers 1

    return-void
.end method

.method public onStart(Ljava/lang/Void;)Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
    .registers 13

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "PropertiesTable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_27
    const-string v3, "COLUMN_PROPERTY_KEY"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "COLUMN_PROPERTY_VALUE"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_27

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v1, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-direct {v1, v2}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;-><init>(Lorg/json/JSONObject;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4c} :catch_57
    .catchall {:try_start_2 .. :try_end_4c} :catchall_55

    move-object v0, v1

    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_77

    :catchall_55
    move-exception v0

    goto :goto_81

    :catch_57
    move-exception v1

    :try_start_58
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->access$000(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when trying to load app properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_58 .. :try_end_76} :catchall_55

    goto :goto_4d

    :goto_77
    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->LOAD:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v2, "loadAppProperties"

    const-string v3, "PropertiesTable"

    invoke-static {v1, v2, v3, p1}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :goto_81
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v1, p1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw v0
.end method

.method public bridge synthetic onStart(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$3;->onStart(Ljava/lang/Void;)Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object p1

    return-object p1
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
