###### Class com.kidoz.sdk.api.general.database.ConfigurationTable.AnonymousClass1 (com.kidoz.sdk.api.general.database.ConfigurationTable$1)
.class Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;
.super Lcom/kidoz/sdk/api/anr_handler/ANRBuster;
.source "ConfigurationTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->insertAppProperties(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kidoz/sdk/api/anr_handler/ANRBuster<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

.field final synthetic val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/anr_handler/ANRBuster;-><init>()V

    return-void
.end method


# virtual methods
.method public onANRDetected()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onStart(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->onStart(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public onStart(Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11

    const-string p1, "PropertiesTable"

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v2, v2, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_57

    :try_start_d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->val$propertiesObj:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {v4}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getProperties()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_55

    const/4 v6, 0x0

    :cond_20
    :goto_20
    :try_start_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "COLUMN_PROPERTY_KEY"

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "COLUMN_PROPERTY_VALUE"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    invoke-virtual {v2, p1, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    long-to-int v8, v7

    const/4 v7, -0x1

    if-eq v8, v7, :cond_20

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_46
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4c
    .catchall {:try_start_20 .. :try_end_4c} :catchall_53

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_83

    goto :goto_80

    :catchall_53
    move-exception v3

    goto :goto_5a

    :catchall_55
    move-exception v3

    goto :goto_59

    :catchall_57
    move-exception v3

    move-object v2, v0

    :goto_59
    const/4 v6, 0x0

    :goto_5a
    :try_start_5a
    iget-object v4, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/database/ConfigurationTable;->access$000(Lcom/kidoz/sdk/api/general/database/ConfigurationTable;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when trying to insert app properties : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_5a .. :try_end_78} :catchall_92

    if-eqz v2, :cond_83

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_83

    :goto_80
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_83
    iget-object v2, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v2, v2, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v2, v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;->INSERT:Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;

    const-string v2, "insertAppProperties"

    invoke-static {v1, v2, p1, v6}, Lcom/kidoz/sdk/api/general/database/BaseTable;->printDBLog(Lcom/kidoz/sdk/api/general/database/BaseTable$DBactionType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :catchall_92
    move-exception p1

    if-eqz v2, :cond_9e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9e
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/ConfigurationTable$1;->this$0:Lcom/kidoz/sdk/api/general/database/ConfigurationTable;

    iget-object v0, v0, Lcom/kidoz/sdk/api/general/database/BaseTable;->mDBmanager:Lcom/kidoz/sdk/api/general/database/DatabaseManager;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/database/DatabaseManager;->handleDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    throw p1
.end method

.method public onSuccess()V
    .registers 1

    return-void
.end method
