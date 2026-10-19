###### Class com.bytedance.sdk.openadsdk.core.f (com.bytedance.sdk.openadsdk.core.f)
.class Lcom/bytedance/sdk/openadsdk/core/f;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/f$b;,
        Lcom/bytedance/sdk/openadsdk/core/f$a;,
        Lcom/bytedance/sdk/openadsdk/core/f$c;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/f$c;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    :try_start_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object p1

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_e
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;

    if-nez p1, :cond_1b

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/f$c;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1b

    :catchall_1b
    :cond_1b
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f;->c()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/f;->c:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->b:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/f$c;
    .registers 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f;->a:Lcom/bytedance/sdk/openadsdk/core/f$c;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.core.f.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.f$1)
.class synthetic Lcom/bytedance/sdk/openadsdk/core/f$1;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bytedance.sdk.openadsdk.core.f.a (com.bytedance.sdk.openadsdk.core.f$a)
.class Lcom/bytedance/sdk/openadsdk/core/f$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->b:Lcom/bytedance/sdk/openadsdk/core/f;

    const-string p1, "ttopensdk.db"

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .registers 4

    const-string p2, "DBHelper"

    const-string v0, "initDB........"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/d;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/h;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/m;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/n/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "DROP TABLE IF EXISTS %s ;"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_10

    :cond_2c
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    const-string v2, "select name from sqlite_master where type=\'table\' order by name"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2d

    :cond_e
    :goto_e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "android_metadata"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "sqlite_sequence"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_37
    .catchall {:try_start_6 .. :try_end_2c} :catchall_30

    goto :goto_e

    :cond_2d
    if-eqz v1, :cond_3d

    goto :goto_3a

    :catchall_30
    move-exception p1

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    throw p1

    :catch_37
    nop

    if-eqz v1, :cond_3d

    :goto_3a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_10

    :catchall_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DBHelper"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    if-le p2, p3, :cond_1e

    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->b:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    const-string p1, "DBHelper"

    const-string p2, "onUpgrade...Reverse installation. Database reset and create table....."

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_16

    goto :goto_1e

    :catchall_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/l;->d(Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    const-string v0, "DBHelper"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade....Database version upgrade.....old:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-le p2, p3, :cond_32

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->b:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    const-string p3, "onUpgrade...Reverse installation. Database reset and create table....."

    invoke-static {v0, p3}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_32
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f$a;->b:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/f;->b(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    :goto_3b
    packed-switch p2, :pswitch_data_76

    goto :goto_75

    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_75

    :pswitch_43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/m;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_75

    :pswitch_4e
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_75

    :pswitch_59
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/b/n;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_75

    :pswitch_64
    const-string p2, "DROP TABLE IF EXISTS \'ad_video_info\';"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_75

    :pswitch_6d
    const-string p2, "onUpgrade.....perform table creation....."

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_75
    .catchall {:try_start_2 .. :try_end_75} :catchall_75

    :catchall_75
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_3f
    .end packed-switch
.end method

###### Class com.bytedance.sdk.openadsdk.core.f.b (com.bytedance.sdk.openadsdk.core.f$b)
.class Lcom/bytedance/sdk/openadsdk/core/f$b;
.super Landroid/database/AbstractCursor;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$b;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;Lcom/bytedance/sdk/openadsdk/core/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/f$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;)V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getLong(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public isNull(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

###### Class com.bytedance.sdk.openadsdk.core.f.c (com.bytedance.sdk.openadsdk.core.f$c)
.class public Lcom/bytedance/sdk/openadsdk/core/f$c;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/f;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/f;)V
    .registers 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/f;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2a

    :try_start_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/f$a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/f;->a(Lcom/bytedance/sdk/openadsdk/core/f;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/f$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    :cond_25
    monitor-exit v0

    goto :goto_3a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    :try_start_2b
    const-string v1, "DBHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->f()Z

    move-result v1
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_3d

    if-nez v1, :cond_3c

    :goto_3a
    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    throw v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_1f

    :catchall_b
    move-exception p1

    goto :goto_22

    :catch_d
    move-exception p1

    :try_start_e
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->f()Z

    move-result p3
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    if-nez p3, :cond_21

    const/4 p1, 0x0

    :goto_1f
    monitor-exit p0

    return p1

    :cond_21
    :try_start_21
    throw p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_b

    :goto_22
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_1f

    :catchall_b
    move-exception p1

    goto :goto_22

    :catch_d
    move-exception p1

    :try_start_e
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->f()Z

    move-result p3
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_b

    if-nez p3, :cond_21

    const/4 p1, 0x0

    :goto_1f
    monitor-exit p0

    return p1

    :cond_21
    :try_start_21
    throw p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_b

    :goto_22
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_20

    :catchall_b
    move-exception p1

    goto :goto_23

    :catch_d
    move-exception p1

    :try_start_e
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p2, -0x1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->f()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_b

    if-nez v0, :cond_22

    move-wide p1, p2

    :goto_20
    monitor-exit p0

    return-wide p1

    :cond_22
    :try_start_22
    throw p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_b

    :goto_23
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_2b

    :catchall_12
    move-exception p1

    :try_start_13
    const-string p2, "DBHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/f$b;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->a:Lcom/bytedance/sdk/openadsdk/core/f;

    const/4 p4, 0x0

    invoke-direct {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/f$b;-><init>(Lcom/bytedance/sdk/openadsdk/core/f;Lcom/bytedance/sdk/openadsdk/core/f$1;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->f()Z

    move-result p3
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_2e

    if-nez p3, :cond_2d

    move-object p1, p2

    :goto_2b
    monitor-exit p0

    return-object p1

    :cond_2d
    :try_start_2d
    throw p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_a

    goto :goto_11

    :catchall_a
    move-exception p1

    :try_start_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->f()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_14

    if-nez v0, :cond_13

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    throw p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-nez v0, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-nez v0, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->e()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/f$c;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-nez v0, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
