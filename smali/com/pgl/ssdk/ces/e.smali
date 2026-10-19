###### Class com.pgl.ssdk.ces.e (com.pgl.ssdk.ces.e)
.class public Lcom/pgl/ssdk/ces/e;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static volatile j:Lcom/pgl/ssdk/ces/e;

.field private static k:Z

.field public static l:Z

.field private static m:Ljava/util/Map;


# instance fields
.field public a:Z

.field public b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pgl/ssdk/ces/e;->a:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    const-string v2, ""

    iput-object v2, p0, Lcom/pgl/ssdk/ces/e;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/pgl/ssdk/ces/e;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/pgl/ssdk/ces/e;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/pgl/ssdk/ces/e;->h:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/pgl/ssdk/ces/e;->i:Z

    const-string v0, "CZL-00"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/pgl/ssdk/ces/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;III)Lcom/pgl/ssdk/ces/e;
    .registers 10

    sget-object v0, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    if-nez v0, :cond_95

    const-class v0, Lcom/pgl/ssdk/ces/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_92

    if-nez v1, :cond_90

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_29

    :try_start_f
    const-string p0, "android.app.ActivityThread"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_24

    const-string v3, "currentApplication"

    :try_start_17
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_24

    goto :goto_25

    :catchall_24
    move-object p0, v2

    :goto_25
    :try_start_25
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_29
    if-nez p0, :cond_2d

    monitor-exit v0

    return-object v2

    :cond_2d
    sput p2, Lcom/pgl/ssdk/j;->a:I

    const-string p2, "nms"

    invoke-static {p0, p2}, Lcom/pgl/ssdk/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_39

    monitor-exit v0

    return-object v2

    :cond_39
    new-instance p2, Lcom/pgl/ssdk/ces/e;

    invoke-direct {p2, p0, p1}, Lcom/pgl/ssdk/ces/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p2, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    sget-object p1, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    iput p3, p1, Lcom/pgl/ssdk/ces/e;->d:I

    sget-object p1, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    iput p4, p1, Lcom/pgl/ssdk/ces/e;->e:I

    sget-object p1, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    invoke-direct {p1, p0}, Lcom/pgl/ssdk/ces/e;->a(Landroid/content/Context;)V

    sget-object p1, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;
    :try_end_4f
    .catchall {:try_start_25 .. :try_end_4f} :catchall_92

    const-string p2, "iid"

    const-string p3, ""

    :try_start_53
    const-string p4, "ss_config"

    invoke-virtual {p0, p4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p4

    if-eqz p4, :cond_5f

    invoke-interface {p4, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_5f
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_6d
    .catchall {:try_start_53 .. :try_end_6d} :catchall_92

    const-string p2, "iid"

    :try_start_6f
    const-string p4, "ss_config"

    invoke-virtual {p0, p4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_82

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_82
    .catchall {:try_start_6f .. :try_end_82} :catchall_92

    :cond_82
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_85
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_90

    const/16 p0, 0x68

    invoke-static {p0, v2, p3}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_90
    monitor-exit v0

    goto :goto_95

    :catchall_92
    move-exception p0

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_85 .. :try_end_94} :catchall_92

    throw p0

    :cond_95
    :goto_95
    sget-object p0, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    iget-object v0, v0, Lcom/pgl/ssdk/ces/e;->c:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const-string v0, ""

    if-eqz p1, :cond_f4

    sget-boolean v1, Lcom/pgl/ssdk/ces/e;->k:Z

    if-nez v1, :cond_f4

    const/16 v1, 0x65

    :try_start_a
    const-string v2, "1"

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/pgl/ssdk/ces/e;->c:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x72

    iget v2, p0, Lcom/pgl/ssdk/ces/e;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x69

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/pgl/ssdk/a;->a(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_f4

    :try_start_44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_49

    goto :goto_4a

    :catchall_49
    move-object v4, v3

    :goto_4a
    if-nez v4, :cond_4e

    move-object v4, v0

    goto :goto_52

    :cond_4e
    :try_start_4e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_52
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_f4

    :try_start_66
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_6f

    goto :goto_70

    :catchall_6f
    move-object v4, v3

    :goto_70
    if-nez v4, :cond_74

    move-object v4, v0

    goto :goto_78

    :cond_74
    :try_start_74
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_f4

    :try_start_8c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_93

    goto :goto_94

    :catchall_93
    move-object p1, v3

    :goto_94
    if-nez p1, :cond_98

    move-object p1, v0

    goto :goto_9c

    :cond_98
    :try_start_98
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_9c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b0
    .catchall {:try_start_98 .. :try_end_b0} :catchall_f4

    :try_start_b0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_b8
    .catchall {:try_start_b0 .. :try_end_b8} :catchall_b9

    goto :goto_ba

    :catchall_b9
    move-object v2, v3

    :goto_ba
    if-nez v2, :cond_be

    move-object v2, v0

    goto :goto_c2

    :cond_be
    :try_start_be
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v3, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d6
    .catchall {:try_start_be .. :try_end_d6} :catchall_f4

    :try_start_d6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_df

    goto :goto_e0

    :catchall_df
    move-object v2, v3

    :goto_e0
    if-nez v2, :cond_e3

    goto :goto_e7

    :cond_e3
    :try_start_e3
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_e7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/pgl/ssdk/ces/e;->k:Z
    :try_end_f4
    .catchall {:try_start_e3 .. :try_end_f4} :catchall_f4

    :catchall_f4
    :cond_f4
    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    return p0
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    iget-object v0, v0, Lcom/pgl/ssdk/ces/e;->f:Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public static c()Lcom/pgl/ssdk/ces/e;
    .registers 1

    sget-object v0, Lcom/pgl/ssdk/ces/e;->j:Lcom/pgl/ssdk/ces/e;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const-string v0, ""

    const/4 v1, 0x0

    const/16 v2, 0x7b

    if-ne p1, v2, :cond_f

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_f
    const/16 v2, 0x79

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2d

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_23

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_27

    :cond_23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :goto_27
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_2d
    const/16 v2, 0x7a

    if-ne p1, v2, :cond_45

    :try_start_31
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    goto :goto_3b

    :catchall_3a
    nop

    :goto_3b
    if-nez v1, :cond_3f

    goto/16 :goto_281

    :cond_3f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_45
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_51

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_51
    const/16 v2, 0x80

    if-ne p1, v2, :cond_57

    goto/16 :goto_281

    :cond_57
    const/16 v2, 0x78

    if-ne p1, v2, :cond_61

    invoke-static {}, Lcom/pgl/ssdk/c;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_61
    const/16 v2, 0x7c

    if-ne p1, v2, :cond_69

    const-string v0, "[]"

    goto/16 :goto_281

    :cond_69
    const/16 v2, 0x82

    if-ne p1, v2, :cond_6f

    goto/16 :goto_280

    :cond_6f
    const/16 v2, 0x91

    if-ne p1, v2, :cond_e4

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "wifi"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    const-string v1, "1"

    const-string v2, "0"

    if-eqz p2, :cond_a0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    if-eqz p2, :cond_97

    move-object p2, v1

    goto :goto_98

    :cond_97
    move-object p2, v2

    :goto_98
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_af

    :cond_a0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_af
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_d3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_c9

    goto :goto_ca

    :cond_c9
    move-object v1, v2

    :goto_ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_d3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_e4
    const/16 v2, 0x7d

    if-ne p1, v2, :cond_ea

    goto/16 :goto_281

    :cond_ea
    const/16 v2, 0x81

    if-ne p1, v2, :cond_f6

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_f6
    const/16 v2, 0x8d

    if-ne p1, v2, :cond_10f

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    const/4 p2, -0x1

    if-eqz p1, :cond_109

    :try_start_ff
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2
    :try_end_109
    .catchall {:try_start_ff .. :try_end_109} :catchall_109

    :catchall_109
    :cond_109
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_10f
    const/16 v2, 0x83

    if-ne p1, v2, :cond_119

    invoke-static {}, Lcom/pgl/ssdk/y;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_119
    const/16 v2, 0x84

    if-ne p1, v2, :cond_124

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/pgl/ssdk/ces/e;->a(Ljava/lang/String;)V

    goto/16 :goto_280

    :cond_124
    const/16 v2, 0x86

    if-ne p1, v2, :cond_134

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/h;->a(Landroid/content/Context;)Lcom/pgl/ssdk/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pgl/ssdk/h;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_134
    const/16 v2, 0x8c

    if-ne p1, v2, :cond_144

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/g;->a(Landroid/content/Context;)Lcom/pgl/ssdk/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pgl/ssdk/g;->c()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_144
    const/16 v2, 0x90

    if-ne p1, v2, :cond_154

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/g;->a(Landroid/content/Context;)Lcom/pgl/ssdk/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pgl/ssdk/g;->b()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_154
    const/16 v2, 0x85

    if-ne p1, v2, :cond_1a3

    :try_start_158
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    sget-object p2, Lcom/pgl/ssdk/ces/e;->m:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_167
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_191

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_183

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_167

    :cond_183
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_167

    :cond_191
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_195
    .catchall {:try_start_158 .. :try_end_195} :catchall_196

    goto :goto_197

    :catchall_196
    nop

    :goto_197
    if-nez v1, :cond_19d

    const-string v0, "{}"

    goto/16 :goto_281

    :cond_19d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_281

    :cond_1a3
    const/16 v2, 0x87

    const/16 v4, 0x40

    const/4 v5, 0x1

    if-ne p1, v2, :cond_205

    :try_start_1aa
    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    const-string p2, "SHA1"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    if-eqz p2, :cond_280

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    const/4 v2, 0x0

    :goto_1d5
    if-ge v2, v0, :cond_1f5

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    or-int/lit16 v4, v4, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d5

    :cond_1f5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {p2, v3, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_1fe
    .catchall {:try_start_1aa .. :try_end_1fe} :catchall_1ff

    goto :goto_221

    :catchall_1ff
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_280

    :cond_205
    const/16 v2, 0x88

    if-ne p1, v2, :cond_223

    :try_start_209
    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1
    :try_end_221
    .catchall {:try_start_209 .. :try_end_221} :catchall_1ff

    :goto_221
    move-object v0, p1

    goto :goto_281

    :cond_223
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_23d

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    :try_start_229
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "android_id"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_233
    .catchall {:try_start_229 .. :try_end_233} :catchall_234

    goto :goto_235

    :catchall_234
    nop

    :goto_235
    if-nez v1, :cond_238

    goto :goto_281

    :cond_238
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_281

    :cond_23d
    const/16 v2, 0xca

    if-ne p1, v2, :cond_242

    goto :goto_281

    :cond_242
    const/16 v2, 0xec

    if-ne p1, v2, :cond_261

    :try_start_246
    const-string p1, "android.os.SystemProperties"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_24c
    .catchall {:try_start_246 .. :try_end_24c} :catchall_280

    const-string v0, "get"

    :try_start_24e
    new-array v2, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_260
    .catchall {:try_start_24e .. :try_end_260} :catchall_280

    goto :goto_281

    :cond_261
    const/16 p2, 0x8e

    if-ne p1, p2, :cond_275

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    :try_start_267
    invoke-virtual {p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1
    :try_end_26b
    .catchall {:try_start_267 .. :try_end_26b} :catchall_26c

    goto :goto_26d

    :catchall_26c
    nop

    :goto_26d
    if-nez v1, :cond_270

    goto :goto_281

    :cond_270
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_281

    :cond_275
    const/16 p2, 0x8f

    if-ne p1, p2, :cond_280

    iget-object p1, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/f;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_281

    :catchall_280
    :cond_280
    :goto_280
    move-object v0, v1

    :goto_281
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/pgl/ssdk/u;->a()Lcom/pgl/ssdk/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/u;->b()Lcom/pgl/ssdk/r;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Lcom/pgl/ssdk/ces/d;

    invoke-direct {v1, p0, p1}, Lcom/pgl/ssdk/ces/d;-><init>(Lcom/pgl/ssdk/ces/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_17
    :goto_17
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p2, p0, Lcom/pgl/ssdk/ces/e;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/pgl/ssdk/ces/e;->g:Ljava/lang/String;

    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x70

    invoke-static {p1, v1, p3}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x67

    invoke-static {p1, v1, p2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x6f

    invoke-static {p1, v1, p4}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/pgl/ssdk/ces/e;->i:Z

    if-nez p1, :cond_26

    :cond_23
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_26

    :catchall_26
    :cond_26
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .registers 2

    if-eqz p1, :cond_4

    sput-object p1, Lcom/pgl/ssdk/ces/e;->m:Ljava/util/Map;

    :cond_4
    return-void
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/pgl/ssdk/ces/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/pgl/ssdk/y;->c()V

    iput-object p1, p0, Lcom/pgl/ssdk/ces/e;->f:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/pgl/ssdk/ces/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x6f

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/pgl/ssdk/ces/e;->h:Ljava/lang/String;

    invoke-static {}, Lcom/pgl/ssdk/y;->c()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/pgl/ssdk/ces/e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/16 v0, 0x70

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/pgl/ssdk/ces/e;->g:Ljava/lang/String;

    invoke-static {}, Lcom/pgl/ssdk/y;->c()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .registers 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pgl/ssdk/ces/e;->i:Z

    invoke-static {}, Lcom/pgl/ssdk/m;->b()Lcom/pgl/ssdk/m;

    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Lcom/pgl/ssdk/a;->a(J)V

    iget-object v3, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/pgl/ssdk/ces/e;->c:Ljava/lang/String;

    new-instance v5, Lcom/pgl/ssdk/ces/c;

    invoke-direct {v5, p0}, Lcom/pgl/ssdk/ces/c;-><init>(Lcom/pgl/ssdk/ces/e;)V

    invoke-static {v3, v4, v5}, Lcom/pgl/ssdk/y;->a(Landroid/content/Context;Ljava/lang/String;Lcom/pgl/ssdk/D;)V

    invoke-static {v1, v2}, Lcom/pgl/ssdk/a;->a(J)V

    const-string v1, "CZL-L1st"

    invoke-virtual {p0, v1}, Lcom/pgl/ssdk/ces/e;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_20
    const/4 v2, 0x0

    :cond_21
    iget-object v3, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/pgl/ssdk/h;->a(Landroid/content/Context;)Lcom/pgl/ssdk/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pgl/ssdk/h;->a()V

    iget-object v3, p0, Lcom/pgl/ssdk/ces/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/pgl/ssdk/g;->a(Landroid/content/Context;)Lcom/pgl/ssdk/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pgl/ssdk/g;->a()V

    add-int/2addr v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4bd

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v3, 0x2bf20

    invoke-static {v3, v4}, Lcom/pgl/ssdk/a;->a(J)V

    int-to-long v3, v2

    const-wide/16 v5, 0xa

    cmp-long v7, v3, v5

    if-lez v7, :cond_21

    goto :goto_20
.end method
