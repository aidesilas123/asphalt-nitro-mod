###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.b (com.gameloft.android.ANMP.GloftAGHM.PushNotification.b)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PushSQLiteHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "PN.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "create table Message(_id integer primary key autoincrement, pn_alarm_id text not null, creation_time text not null, schedule_time text not null, message_group text not null, type text not null, message_content text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table Endpoint(_id integer primary key, transport text not null, registration_id text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "DROP TABLE IF EXISTS Message"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS Endpoint"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
