###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.a (com.gameloft.android.ANMP.GloftAGHM.PushNotification.a)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;
.super Ljava/lang/Object;
.source "PushDBHandler.java"


# instance fields
.field private a:Landroid/database/sqlite/SQLiteDatabase;

.field private b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/b;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    const-string v1, "pn_alarm_id"

    const-string v2, "creation_time"

    const-string v3, "schedule_time"

    const-string v4, "message_group"

    const-string v5, "type"

    const-string v6, "message_content"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->c:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "transport"

    const-string v2, "registration_id"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->d:[Ljava/lang/String;

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/b;

    invoke-direct {v0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Message"

    iget-object v4, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->c:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2e

    :catch_2e
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Message"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public c()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method

.method public d(Landroid/content/ContentValues;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Endpoint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
