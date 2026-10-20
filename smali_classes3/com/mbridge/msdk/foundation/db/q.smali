###### Class com.mbridge.msdk.foundation.db.q (com.mbridge.msdk.foundation.db.q)
.class public Lcom/mbridge/msdk/foundation/db/q;
.super Lcom/mbridge/msdk/foundation/db/a;
.source "VideoReportDataDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mbridge/msdk/foundation/db/a<",
        "Lcom/mbridge/msdk/foundation/entity/n;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.mbridge.msdk.foundation.db.q"

.field private static b:Lcom/mbridge/msdk/foundation/db/q;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lcom/mbridge/msdk/foundation/db/g;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/db/a;-><init>(Lcom/mbridge/msdk/foundation/db/g;)V

    return-void
.end method

.method public static declared-synchronized a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/q;
    .registers 3

    const-class v0, Lcom/mbridge/msdk/foundation/db/q;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/mbridge/msdk/foundation/db/q;->b:Lcom/mbridge/msdk/foundation/db/q;

    if-nez v1, :cond_e

    new-instance v1, Lcom/mbridge/msdk/foundation/db/q;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/foundation/db/q;-><init>(Lcom/mbridge/msdk/foundation/db/g;)V

    sput-object v1, Lcom/mbridge/msdk/foundation/db/q;->b:Lcom/mbridge/msdk/foundation/db/q;

    :cond_e
    sget-object p0, Lcom/mbridge/msdk/foundation/db/q;->b:Lcom/mbridge/msdk/foundation/db/q;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "select count(*) from reward_report"

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/db/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_21
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    :cond_19
    if-eqz v0, :cond_28

    :goto_1b
    :try_start_1b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_28
    .catchall {:try_start_1b .. :try_end_1e} :catchall_30

    goto :goto_28

    :catchall_1f
    move-exception v1

    goto :goto_2a

    :catch_21
    move-exception v2

    :try_start_22
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    if-eqz v0, :cond_28

    goto :goto_1b

    :catch_28
    :cond_28
    :goto_28
    monitor-exit p0

    return v1

    :goto_2a
    if-eqz v0, :cond_2f

    :try_start_2c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    :catch_2f
    :cond_2f
    :try_start_2f
    throw v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/mbridge/msdk/foundation/entity/n;)J
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_1ad

    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "key"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "networkType"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->A()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "network_str"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isCompleteView"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->C()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "watchedMillis"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->u()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "videoLength"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->v()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "offerUrl"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7a

    const-string v1, "reason"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->x()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    const-string v1, "result"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->D()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "duration"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "videoSize"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b5

    const-string v2, "endcard_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c4

    const-string v2, "video_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d3

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d3
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e2

    const-string v2, "rid_n"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f1

    const-string v2, "template_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f1
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_100

    const-string v2, "image_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_100
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_115

    const-string v2, "ad_type"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_115
    const-string v1, "unitId"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "campaignId"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2000039"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/entity/n;->f(Lcom/mbridge/msdk/foundation/entity/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_142

    const-string v2, "h5_click_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_142
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_157

    const-string v2, "resource_type"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_157
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16c

    const-string v2, "device_id"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16c
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_181

    const-string v2, "creative"

    const-string v3, "utf-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_181
    const-string v1, "adspace_t"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->l()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "reward_report"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_199} :catch_19d
    .catchall {:try_start_3 .. :try_end_199} :catchall_19b

    monitor-exit p0

    return-wide v0

    :catchall_19b
    move-exception p1

    goto :goto_1ab

    :catch_19d
    move-exception p1

    :try_start_19e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/mbridge/msdk/foundation/db/q;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1aa
    .catchall {:try_start_19e .. :try_end_1aa} :catchall_19b

    goto :goto_1ad

    :goto_1ab
    monitor-exit p0

    throw p1

    :cond_1ad
    :goto_1ad
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/n;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_3
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_353

    if-nez v1, :cond_350

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/foundation/db/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "reward_report"

    const/4 v4, 0x0

    const-string v5, "key=?"

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_334
    .catchall {:try_start_9 .. :try_end_1f} :catchall_331

    if-eqz v13, :cond_32a

    :try_start_21
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_32a

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_2c
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_31c

    const-string v1, "key"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "networkType"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v1, "network_str"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "isCompleteView"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    const-string v1, "watchedMillis"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    const-string v1, "videoLength"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const-string v1, "offerUrl"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "reason"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "result"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v1, "duration"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const-string v1, "videoSize"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v1, "campaignId"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "video_url"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unitId"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v2, "rid"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v10, "rid_n"

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "ad_type"

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v11, "resource_type"

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v16, v2

    const-string v2, "device_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    const-string v2, "creative"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    const-string v2, "adspace_t"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "2000021"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_110} :catch_327
    .catchall {:try_start_21 .. :try_end_110} :catchall_323

    if-eqz v2, :cond_132

    :try_start_112
    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    move-object/from16 v12, v16

    move-object v2, v11

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/entity/n;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/mbridge/msdk/foundation/entity/n;->r(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/entity/n;->e(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/foundation/entity/n;->n(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/mbridge/msdk/foundation/entity/n;->p(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Lcom/mbridge/msdk/foundation/entity/n;->q(Ljava/lang/String;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_12a} :catch_12f
    .catchall {:try_start_112 .. :try_end_12a} :catchall_348

    move-object v7, v13

    move-object/from16 v24, v14

    goto/16 :goto_2d3

    :catch_12f
    move-exception v0

    goto/16 :goto_336

    :cond_132
    move-object/from16 v2, v16

    move-object/from16 v16, v15

    :try_start_136
    const-string v15, "2000022"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13c} :catch_327
    .catchall {:try_start_136 .. :try_end_13c} :catchall_323

    if-eqz v15, :cond_168

    :try_start_13e
    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    move-object/from16 v24, v14

    move-object/from16 v14, v16

    move-object v15, v11

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v23, v7

    invoke-direct/range {v15 .. v23}, Lcom/mbridge/msdk/foundation/entity/n;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/mbridge/msdk/foundation/entity/n;->r(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/entity/n;->e(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lcom/mbridge/msdk/foundation/entity/n;->n(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/mbridge/msdk/foundation/entity/n;->p(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/mbridge/msdk/foundation/entity/n;->q(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lcom/mbridge/msdk/foundation/entity/n;->t(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/foundation/entity/n;->h(Ljava/lang/String;)V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_167} :catch_12f
    .catchall {:try_start_13e .. :try_end_167} :catchall_348

    goto :goto_184

    :cond_168
    move-object/from16 v24, v14

    move-object/from16 v14, v16

    :try_start_16c
    const-string v1, "2000025"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_172} :catch_327
    .catchall {:try_start_16c .. :try_end_172} :catchall_323

    if-eqz v1, :cond_187

    :try_start_174
    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    move-object v15, v11

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v23, v7

    invoke-direct/range {v15 .. v23}, Lcom/mbridge/msdk/foundation/entity/n;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_184} :catch_12f
    .catchall {:try_start_174 .. :try_end_184} :catchall_348

    :goto_184
    move-object v7, v13

    goto/16 :goto_2d3

    :cond_187
    :try_start_187
    const-string v1, "2000024"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_18d} :catch_327
    .catchall {:try_start_187 .. :try_end_18d} :catchall_323

    if-eqz v1, :cond_197

    :try_start_18f
    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    move-object v2, v11

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/mbridge/msdk/foundation/entity/n;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_196} :catch_12f
    .catchall {:try_start_18f .. :try_end_196} :catchall_348

    goto :goto_184

    :cond_197
    :try_start_197
    const-string v1, "2000039"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19d} :catch_327
    .catchall {:try_start_197 .. :try_end_19d} :catchall_323

    if-eqz v1, :cond_1af

    :try_start_19f
    const-string v1, "h5_click_data"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    invoke-direct {v11, v1}, Lcom/mbridge/msdk/foundation/entity/n;-><init>(Ljava/lang/String;)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1ae} :catch_12f
    .catchall {:try_start_19f .. :try_end_1ae} :catchall_348

    goto :goto_184

    :cond_1af
    :try_start_1af
    const-string v1, "2000043"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1b5} :catch_327
    .catchall {:try_start_1af .. :try_end_1b5} :catchall_323

    if-eqz v1, :cond_228

    :try_start_1b7
    const-string v1, "type"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "endcard_url"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/mbridge/msdk/foundation/entity/n;
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1cd} :catch_223
    .catchall {:try_start_1b7 .. :try_end_1cd} :catchall_21c

    move-object v1, v7

    move-object v4, v2

    move-object/from16 v16, v13

    move-object/from16 v3, v17

    move-object/from16 v13, v19

    move/from16 v0, v20

    move-object/from16 v2, p1

    move-object v13, v3

    move v3, v6

    move-object v6, v4

    move-object/from16 v4, v21

    move-object/from16 v17, v13

    move-object v13, v6

    move-object v6, v9

    move-object/from16 v18, v11

    move-object v11, v7

    move-object v7, v14

    move-object v14, v9

    move-object v9, v15

    :try_start_1e8
    invoke-direct/range {v1 .. v9}, Lcom/mbridge/msdk/foundation/entity/n;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lcom/mbridge/msdk/foundation/entity/n;->n(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/mbridge/msdk/foundation/entity/n;->p(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1fa

    invoke-virtual {v11, v14}, Lcom/mbridge/msdk/foundation/entity/n;->r(Ljava/lang/String;)V

    :cond_1fa
    invoke-virtual {v11, v0}, Lcom/mbridge/msdk/foundation/entity/n;->c(I)V

    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/foundation/entity/n;->h(Ljava/lang/String;)V

    move-object/from16 v1, v18

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/entity/n;->a(Ljava/lang/String;)V

    move-object/from16 v2, v17

    invoke-virtual {v11, v2}, Lcom/mbridge/msdk/foundation/entity/n;->b(Ljava/lang/String;)V

    move-object/from16 v3, v19

    invoke-virtual {v11, v3}, Lcom/mbridge/msdk/foundation/entity/n;->c(Ljava/lang/String;)V
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_20f} :catch_217
    .catchall {:try_start_1e8 .. :try_end_20f} :catchall_215

    move-object/from16 v0, p1

    move-object/from16 v7, v16

    goto/16 :goto_2d3

    :catchall_215
    move-exception v0

    goto :goto_21f

    :catch_217
    move-exception v0

    move-object/from16 v13, v16

    goto/16 :goto_336

    :catchall_21c
    move-exception v0

    move-object/from16 v16, v13

    :goto_21f
    move-object/from16 v10, v16

    goto/16 :goto_34a

    :catch_223
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_336

    :cond_228
    move-object v5, v9

    move-object v1, v11

    move-object/from16 v16, v13

    move-object/from16 v3, v19

    move/from16 v0, v20

    move-object v13, v2

    move-object/from16 v2, v17

    :try_start_233
    const-string v7, "2000045"

    move v9, v0

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26b

    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    invoke-direct {v11}, Lcom/mbridge/msdk/foundation/entity/n;-><init>()V

    invoke-virtual {v11, v0}, Lcom/mbridge/msdk/foundation/entity/n;->s(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/mbridge/msdk/foundation/entity/n;->d(I)V

    invoke-virtual {v11, v6}, Lcom/mbridge/msdk/foundation/entity/n;->e(I)V

    invoke-virtual {v11, v5}, Lcom/mbridge/msdk/foundation/entity/n;->r(Ljava/lang/String;)V

    const-string v1, "template_url"
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_251} :catch_318
    .catchall {:try_start_233 .. :try_end_251} :catchall_314

    move-object/from16 v7, v16

    :try_start_253
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/entity/n;->i(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lcom/mbridge/msdk/foundation/entity/n;->t(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lcom/mbridge/msdk/foundation/entity/n;->n(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/mbridge/msdk/foundation/entity/n;->p(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/mbridge/msdk/foundation/entity/n;->q(Ljava/lang/String;)V

    goto :goto_2d3

    :cond_26b
    move-object/from16 v7, v16

    const-string v11, "2000044"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29d

    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    invoke-direct {v11}, Lcom/mbridge/msdk/foundation/entity/n;-><init>()V

    invoke-virtual {v11, v0}, Lcom/mbridge/msdk/foundation/entity/n;->s(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/mbridge/msdk/foundation/entity/n;->d(I)V

    invoke-virtual {v11, v5}, Lcom/mbridge/msdk/foundation/entity/n;->r(Ljava/lang/String;)V

    const-string v1, "image_url"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/entity/n;->d(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Lcom/mbridge/msdk/foundation/entity/n;->t(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lcom/mbridge/msdk/foundation/entity/n;->n(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/mbridge/msdk/foundation/entity/n;->p(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/mbridge/msdk/foundation/entity/n;->q(Ljava/lang/String;)V

    goto :goto_2d3

    :cond_29d
    const-string v11, "2000054"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d2

    new-instance v11, Lcom/mbridge/msdk/foundation/entity/n;

    invoke-direct {v11}, Lcom/mbridge/msdk/foundation/entity/n;-><init>()V

    invoke-virtual {v11, v0}, Lcom/mbridge/msdk/foundation/entity/n;->s(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Lcom/mbridge/msdk/foundation/entity/n;->a(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/mbridge/msdk/foundation/entity/n;->q(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Lcom/mbridge/msdk/foundation/entity/n;->b(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/mbridge/msdk/foundation/entity/n;->h(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lcom/mbridge/msdk/foundation/entity/n;->r(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Lcom/mbridge/msdk/foundation/entity/n;->n(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Lcom/mbridge/msdk/foundation/entity/n;->p(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Lcom/mbridge/msdk/foundation/entity/n;->e(I)V

    invoke-virtual {v11, v8}, Lcom/mbridge/msdk/foundation/entity/n;->t(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/mbridge/msdk/foundation/entity/n;->d(I)V

    invoke-virtual {v11, v3}, Lcom/mbridge/msdk/foundation/entity/n;->c(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Lcom/mbridge/msdk/foundation/entity/n;->c(I)V

    goto :goto_2d3

    :cond_2d2
    const/4 v11, 0x0

    :goto_2d3
    if-eqz v11, :cond_2db

    move-object/from16 v1, v24

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2dd

    :cond_2db
    move-object/from16 v1, v24

    :goto_2dd
    const-string v2, "id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/foundation/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "reward_report"

    const-string v5, "id = ?"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v3, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_309
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_309} :catch_311
    .catchall {:try_start_253 .. :try_end_309} :catchall_30f

    move-object v14, v1

    move-object v13, v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_2c

    :catchall_30f
    move-exception v0

    goto :goto_325

    :catch_311
    move-exception v0

    :goto_312
    move-object v13, v7

    goto :goto_336

    :catchall_314
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_325

    :catch_318
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_312

    :cond_31c
    move-object v7, v13

    move-object v1, v14

    :try_start_31e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_321
    .catch Ljava/lang/Exception; {:try_start_31e .. :try_end_321} :catch_321
    .catchall {:try_start_31e .. :try_end_321} :catchall_353

    :catch_321
    monitor-exit p0

    return-object v1

    :catchall_323
    move-exception v0

    move-object v7, v13

    :goto_325
    move-object v10, v7

    goto :goto_34a

    :catch_327
    move-exception v0

    move-object v7, v13

    goto :goto_336

    :cond_32a
    move-object v7, v13

    if-eqz v7, :cond_350

    :try_start_32d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_330
    .catch Ljava/lang/Exception; {:try_start_32d .. :try_end_330} :catch_350
    .catchall {:try_start_32d .. :try_end_330} :catchall_353

    goto :goto_350

    :catchall_331
    move-exception v0

    const/4 v10, 0x0

    goto :goto_34a

    :catch_334
    move-exception v0

    const/4 v13, 0x0

    :goto_336
    :try_start_336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/mbridge/msdk/foundation/db/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_342
    .catchall {:try_start_336 .. :try_end_342} :catchall_348

    if-eqz v13, :cond_350

    :try_start_344
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_347} :catch_350
    .catchall {:try_start_344 .. :try_end_347} :catchall_353

    goto :goto_350

    :catchall_348
    move-exception v0

    move-object v10, v13

    :goto_34a
    if-eqz v10, :cond_34f

    :try_start_34c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_34f
    .catch Ljava/lang/Exception; {:try_start_34c .. :try_end_34f} :catch_34f
    .catchall {:try_start_34c .. :try_end_34f} :catchall_353

    :catch_34f
    :cond_34f
    :try_start_34f
    throw v0
    :try_end_350
    .catchall {:try_start_34f .. :try_end_350} :catchall_353

    :catch_350
    :cond_350
    :goto_350
    monitor-exit p0

    const/4 v1, 0x0

    return-object v1

    :catchall_353
    move-exception v0

    monitor-exit p0

    throw v0
.end method
