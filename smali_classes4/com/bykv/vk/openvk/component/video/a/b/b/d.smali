###### Class com.bykv.vk.openvk.component.video.a.b.b.d (com.bykv.vk.openvk.component.video.a.b.b.d)
.class public Lcom/bykv/vk/openvk/component/video/a/b/b/d;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VideoProxyDBHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "tt_open_sdk_video.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS video_http_header_t(_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT,mime TEXT,contentLength INTEGER,flag INTEGER,extra TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const-string p3, "ALTER TABLE video_http_header_t ADD COLUMN extra TEXT DEFAULT \'\'"

    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    const-string p2, "ALTER TABLE video_http_header_t ADD COLUMN flag INTEGER DEFAULT 0"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1d

    :cond_e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1d

    :cond_15
    const-string p2, "DROP TABLE IF EXISTS video_http_header_t"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/b/d;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1d
    return-void
.end method
