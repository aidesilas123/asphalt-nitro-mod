###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils (com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;
.super Ljava/lang/Object;
.source "SimplifiedAndroidUtils.java"


# static fields
.field public static a:Z

.field private static b:Z

.field private static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field static j:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;

.field public static k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

.field public static l:Landroid/os/Bundle;

.field public static m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field static final n:[Ljava/lang/String;

.field static final o:Z

.field private static p:Landroid/content/BroadcastReceiver;

.field static final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "none"

    const-string v1, "adm"

    const-string v2, "fcm"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->n:[Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->o:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->p:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Android/data/com.gameloft.android.ANMP.GloftAGHM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddEndpointRecordToDB(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->c()V

    :cond_12
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-eqz v0, :cond_3c

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "transport"

    const-string v2, "fcm"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "registration_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {p0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->d(Landroid/content/ContentValues;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->BackupDatabase()V

    :cond_3c
    return-void
.end method

.method public static AddGroupIDToPreferences(Landroid/content/Context;I)V
    .registers 7

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetListGroupIDFromPreferences(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v1, 0x1

    :cond_34
    if-nez v1, :cond_6e

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    :cond_5e
    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "PN_GroupId"

    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6e
    return-void
.end method

.method private static AddPNMessageIDToPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPNType_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static AddPNRecordToDB(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-string v0, "creation_time"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "schedule_time"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "body"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v6, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-nez v6, :cond_2a

    new-instance v6, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->c()V

    :cond_2a
    sget-object v6, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-eqz v6, :cond_77

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    invoke-static {v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    invoke-static {v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    invoke-static {p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_77

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "pn_alarm_id"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "message_group"

    invoke-virtual {v6, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message_content"

    invoke-virtual {v6, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {p0, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->a(Landroid/content/ContentValues;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->BackupDatabase()V

    :cond_77
    return-void
.end method

.method public static BackupDatabase()V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getSDFolder()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "/data/data/com.gameloft.android.ANMP.GloftAGHM/databases/PN.db"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getSDFolder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PN.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_4d
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_58

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4d

    :cond_58
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_61} :catch_61

    :catch_61
    :cond_61
    return-void
.end method

.method private static ClearGroup(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPNType_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method private static ClearStack(Landroid/content/Context;I)V
    .registers 5

    if-eqz p0, :cond_20

    add-int/lit8 v0, p1, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PN_stackID_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->ClearStackMessages(Landroid/content/Context;I)V

    :cond_20
    return-void
.end method

.method private static ClearStackMessages(Landroid/content/Context;I)V
    .registers 6

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    :goto_9
    const/16 v1, 0x21

    if-ge v0, v1, :cond_39

    add-int/lit8 v1, p1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PN_stackMSG_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_9

    :cond_39
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static DeleteMessageGroup(I)I
    .registers 6

    add-int/lit8 v0, p0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_35

    :cond_15
    add-int/lit16 v0, p0, 0xc9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_35

    :cond_2a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    move v0, p0

    move-object p0, v4

    :goto_35
    const/4 v1, 0x1

    if-nez p0, :cond_39

    return v1

    :cond_39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_49
    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    const-string v3, "PN_LID_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->CancelAlarm(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5e} :catch_5f

    goto :goto_3d

    :catch_5f
    :cond_5f
    return v1

    :cond_60
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->ClearGroup(Landroid/content/Context;I)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->ClearStack(Landroid/content/Context;I)V

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-eqz p0, :cond_7e

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message_group"

    invoke-virtual {p0, v1, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->BackupDatabase()V

    :cond_7e
    const/4 p0, 0x0

    return p0
.end method

.method public static GetDeviceToken(I)I
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetRegistrationID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->n:[Ljava/lang/String;

    aget-object p0, v0, p0

    const-string v0, "fcm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getFCMRegistrationId()V

    goto :goto_2a

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetRegistrationID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->nativeSendRegistrationData(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->GetRegistrationID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->AddEndpointRecordToDB(Ljava/lang/String;)V

    :goto_2a
    const/4 p0, 0x0

    return p0
.end method

.method public static GetListGroupIDFromPreferences(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "PN_GroupId"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_e

    return-object v1

    :cond_e
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_28
    return-object p0
.end method

.method private static GetPNMessageIdForType(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalPNType_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_21

    return-object v1

    :cond_21
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2d
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_3b
    return-object p0
.end method

.method public static GetRegistrationID()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public static Init(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->m:Ljava/lang/ref/WeakReference;

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->j:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;

    if-nez p0, :cond_12

    new-instance p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;-><init>()V

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->j:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;

    :cond_12
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->Init()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->init(Landroid/content/Context;)V

    new-instance p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$a;

    invoke-direct {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->initTheme(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->b:Z

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->initWithIntent(Landroid/content/Intent;Landroid/content/Context;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "com.gameloft.android.ANMP.GloftAGHM_pushbroadcast"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$b;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$b;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->p:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-nez p0, :cond_71

    new-instance p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->c()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->BackupDatabase()V

    :cond_71
    return-void
.end method

.method public static IsAppLaunchedFromPN()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getMessagePayload(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IsDontDisturbEnable()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DontDisturbPolicy;->isDontDisturbEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static IsDontDisturbeTime()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DontDisturbPolicy;->isDontDisturbeTime(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static IsEnable()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static LaunchAppFromPN(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.gameloft.android.ANMP.GloftAGHM"

    const-string v2, "com.gameloft.android.ANMP.GloftAGHM.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->b:Z

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->initWithIntent(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method

.method public static LaunchPNClearStack(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_12

    const-string v0, "pn_group_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v1, :cond_12

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->ClearStack(Landroid/content/Context;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method public static SendMessage(Landroid/os/Bundle;Ljava/lang/String;I)I
    .registers 6

    const/4 v0, 0x1

    if-eqz p0, :cond_54

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_54

    if-ltz p2, :cond_54

    :try_start_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_53

    if-lez p1, :cond_54

    const v1, 0x1fa400

    if-ge p1, v1, :cond_54

    const-string v1, "type"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 p2, p2, 0x65

    goto :goto_37

    :cond_2d
    const-string v2, "info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    add-int/lit16 p2, p2, 0xc9

    :cond_37
    :goto_37
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pn_group_ID"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->SetAlarm(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->AddPNMessageIDToPreferences(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->AddPNRecordToDB(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :catch_53
    return v0

    :cond_54
    const/4 p1, 0x0

    :goto_55
    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5c

    return v0

    :cond_5c
    const/4 p0, 0x0

    return p0
.end method

.method public static SendPushToMyself(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 13

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getBundleData(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_f5

    const/4 p4, 0x0

    aget-object v0, p3, p4

    const/4 v0, 0x1

    aget-object v0, p3, v0

    const/4 v0, 0x2

    aget-object p3, p3, v0

    invoke-static {p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_17

    const-string p2, "1"

    :cond_17
    :try_start_17
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 p2, 0x0

    :goto_1d
    if-lez p2, :cond_f5

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "infopush"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_4a
    const-string v5, "per_of_day"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    :cond_57
    if-eqz v2, :cond_9f

    if-eqz v3, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_9f

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_9f
    const p3, 0x1fa400

    if-gt p2, p3, :cond_f5

    const-string p3, "type"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_c5

    const-string p4, "launch"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_bb

    add-int/lit8 p5, p5, 0x65

    goto :goto_c5

    :cond_bb
    const-string p4, "info"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c5

    add-int/lit16 p5, p5, 0xc9

    :cond_c5
    :goto_c5
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "pn_group_ID"

    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "0"

    invoke-static {p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->GetExpirationTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "creation_time"

    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->GetExpirationTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "schedule_time"

    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->SetAlarm(Landroid/os/Bundle;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->AddPNMessageIDToPreferences(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p5}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->AddGroupIDToPreferences(Landroid/content/Context;I)V

    return-object p1

    :cond_f5
    const-string p0, "e"

    return-object p0
.end method

.method public static SetDontDisturbEnable(Z)V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DontDisturbPolicy;->setDontDisturbEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public static SetEnable(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->setEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public static SetEnable(Z)V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->SetEnable(Landroid/content/Context;Z)V

    return-void
.end method

.method public static ShowAppDetailsSettings()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2c

    :try_start_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package:com.gameloft.android.ANMP.GloftAGHM"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_2c

    :catch_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-object p0
.end method

.method static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-object p0
.end method

.method public static generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "pn_group_ID"

    if-eqz v4, :cond_17

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    invoke-static {v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_23

    :try_start_1e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    :cond_23
    const/4 v4, -0x1

    :goto_24
    invoke-static/range {p0 .. p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v11, "launch"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "_"

    const-string v14, "PN_stackMSG_"

    const-string v15, "PN_stackID_"

    const-string v8, "notificationID"

    const-string v10, "info"

    move-wide/from16 v17, v5

    const/4 v6, 0x1

    if-nez v12, :cond_43

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d1

    :cond_43
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v12, v5, :cond_d1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_58

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    const/16 v4, 0x64

    goto :goto_63

    :cond_55
    const/16 v4, 0xc8

    goto :goto_63

    :cond_58
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    const/16 v4, 0x65

    goto :goto_63

    :cond_61
    const/16 v4, 0xc9

    :goto_63
    add-int/lit8 v5, v4, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_75

    const/16 v12, 0x1f

    :cond_75
    new-array v6, v12, [Ljava/lang/String;

    move-object/from16 v20, v15

    add-int/lit8 v15, v12, -0x1

    aput-object v1, v6, v15

    move/from16 v16, v12

    const/4 v12, 0x0

    :goto_80
    if-ge v12, v15, :cond_ba

    move/from16 v21, v15

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v22, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v23, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v13, ""

    invoke-interface {v9, v5, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v12

    move/from16 v12, v19

    move/from16 v15, v21

    move/from16 v5, v22

    move-object/from16 v13, v23

    goto :goto_80

    :cond_ba
    move/from16 v22, v5

    move-object/from16 v23, v13

    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DeletePushService;

    invoke-direct {v5, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v7, v5

    move/from16 v5, v16

    move/from16 v4, v22

    goto :goto_de

    :cond_d1
    move-object/from16 v23, v13

    move-object/from16 v20, v15

    const/4 v4, 0x0

    invoke-interface {v9, v8, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_de
    invoke-static/range {p0 .. p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->initTheme(Landroid/content/Context;)V

    const-string v12, "pn_lib_intent"

    const/4 v13, 0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static/range {p0 .. p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->getBuilder(Landroid/content/Context;)Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;

    move-result-object v12

    move-object/from16 v15, p2

    invoke-virtual {v12, v15}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->k(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->f(Ljava/lang/String;)V

    move-object/from16 v16, v14

    move-wide/from16 v14, v17

    invoke-virtual {v12, v14, v15}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->j(J)V

    invoke-virtual {v12, v13}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->b(Z)V

    if-le v5, v13, :cond_102

    invoke-virtual {v12, v5}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->h(I)V

    :cond_102
    if-eqz v6, :cond_107

    invoke-virtual {v12, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->i([Ljava/lang/String;)V

    :cond_107
    const/high16 v6, 0x4000000

    if-eqz v7, :cond_112

    invoke-static {v0, v4, v7, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->e(Landroid/app/PendingIntent;)V

    :cond_112
    const-string v7, "play"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12f

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12f

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_127

    goto :goto_12f

    :cond_127
    invoke-static {v0, v4, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->d(Landroid/app/PendingIntent;)V

    goto :goto_136

    :cond_12f
    :goto_12f
    invoke-static {v0, v4, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->d(Landroid/app/PendingIntent;)V

    :goto_136
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_244

    const-string v6, "com.gameloft.android.ANMP.GloftAGHM_channel_01"

    const v7, 0x7f120136

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "Asphalt Nitro Mobile Freemium GPlay"

    if-eqz v14, :cond_15a

    move-object v13, v15

    :cond_15a
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_165

    goto :goto_166

    :cond_165
    move-object v15, v7

    :goto_166
    new-instance v7, Landroid/app/NotificationChannel;

    const/4 v14, 0x4

    invoke-direct {v7, v6, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v7, v15}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v7, v14}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v12, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c(Ljava/lang/String;)V

    if-le v5, v14, :cond_17e

    invoke-virtual {v12, v5}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->g(I)V

    :cond_17e
    invoke-static/range {p0 .. p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DontDisturbPolicy;->isDontDisturbeTime(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_22e

    sget-boolean v6, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->e:Z

    if-eqz v6, :cond_226

    sget-object v6, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    if-eqz v6, :cond_226

    :try_start_18c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v14, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    const-string v0, "raw"
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_194} :catch_21d

    move-object/from16 v17, v8

    :try_start_196
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v14, v0, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_211

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/raw/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    const-string v7, "com.gameloft.android.ANMP.GloftAGHM_custom_sounds"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "com.gameloft.android.ANMP.GloftAGHM"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v14, Landroid/app/NotificationChannelGroup;

    invoke-direct {v14, v7, v13}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/NotificationChannel;
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1f1} :catch_219

    move/from16 v18, v5

    const/4 v5, 0x4

    :try_start_1f4
    invoke-direct {v1, v8, v13, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v14}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v1, v15}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v1, v0, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v1, v7}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_248

    :cond_211
    move/from16 v18, v5

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_216} :catch_217

    goto :goto_248

    :catch_217
    move-exception v0

    goto :goto_222

    :catch_219
    move-exception v0

    move/from16 v18, v5

    goto :goto_222

    :catch_21d
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v17, v8

    :goto_222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_248

    :cond_226
    move/from16 v18, v5

    move-object/from16 v17, v8

    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_248

    :cond_22e
    move/from16 v18, v5

    move-object/from16 v17, v8

    const-string v0, "com.gameloft.android.ANMP.GloftAGHM_silent"

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v5, 0x2

    invoke-direct {v1, v0, v13, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v15}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_248

    :cond_244
    move/from16 v18, v5

    move-object/from16 v17, v8

    :goto_248
    invoke-virtual {v12}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushBuilder;->a()Landroid/app/Notification;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-le v1, v5, :cond_259

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_259
    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26c

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ad

    :cond_26c
    const/16 v2, 0xb

    if-lt v1, v2, :cond_2ad

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v5, v18, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    add-int/lit8 v5, v18, 0x1

    rem-int/lit8 v5, v5, 0x20

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2b6

    :cond_2ad
    const/4 v2, 0x1

    add-int/2addr v4, v2

    rem-int/lit8 v4, v4, 0x20

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_2b6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static getBundleData(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    if-eqz p0, :cond_7d

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "body"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_35
    const-string v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_42
    invoke-static {v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&X_"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1c

    :cond_73
    const/4 p0, 0x0

    aput-object v0, v3, p0

    const/4 p0, 0x1

    aput-object v1, v3, p0

    const/4 p0, 0x2

    aput-object v2, v3, p0

    return-object v3

    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChannel()Landroid/app/NotificationChannel;
    .registers 4

    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "GL_Channel"

    const-string v2, "Gameloft"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/16 v1, 0x9

    new-array v1, v1, [J

    fill-array-data v1, :array_28

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    return-object v0

    nop

    :array_28
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x190
        0x12c
        0xc8
        0x190
    .end array-data
.end method

.method public static getFCMRegistrationId()V
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->m()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 7

    const-string p1, "url"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "igpcode"

    if-nez p1, :cond_4d

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_4d

    :cond_11
    const-string p1, "play"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "pn_data_bundle"

    if-nez p3, :cond_32

    const-string p3, "launch"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_24

    goto :goto_32

    :cond_24
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/DeletePushService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p4, :cond_11f

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_11f

    :cond_32
    :goto_32
    new-instance p3, Landroid/content/Intent;

    const-class v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LaunchPushService;

    invoke-direct {p3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p4, :cond_3e

    invoke-virtual {p3, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3e
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    const/4 p0, 0x1

    const-string p1, "pn_goto_multiplayer"

    invoke-virtual {p3, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4a
    move-object p1, p3

    goto/16 :goto_11f

    :cond_4d
    :goto_4d
    invoke-static {p3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result p0

    const/high16 p1, 0x10000000

    if-nez p0, :cond_116

    :try_start_55
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_107

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&hdidfv="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&ver=1.8.0a"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&d="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&f="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getDeviceFirmware()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&game_ver=1.8.0a"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&country="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&lg="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_107
    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_115} :catch_116

    return-object p0

    :catch_116
    :cond_116
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object p1, p0

    :cond_11f
    :goto_11f
    return-object p1
.end method

.method public static getMessagePayload(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_33

    :try_start_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "pn_launch_game"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    :cond_26
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f

    :cond_2e
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    goto :goto_35

    :catch_33
    :cond_33
    const-string p0, ""

    :goto_35
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    return-object p0
.end method

.method private static getSDFolder()Ljava/lang/String;
    .registers 1

    const-string v0, "/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files"

    return-object v0
.end method

.method static initTheme(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/PushBuilders/PushTheme;->init(Landroid/content/Context;)V

    return-void
.end method

.method static initWithIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 7

    if-eqz p0, :cond_7e

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    iput-object p0, v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->k:Landroid/content/Intent;

    sput-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->a:Z

    :cond_2f
    if-eqz p1, :cond_7e

    const-string p0, "pn_lib_intent"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7e

    const-string p0, "pn_goto_multiplayer"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->c:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    const-string v0, "pn_data_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_56

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_56
    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    sget-boolean v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->b:Z

    const-string v4, "pn_launch_game"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    sget-boolean v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->c:Z

    invoke-virtual {v2, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sput-boolean v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->a:Z

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string p0, "pn_group_ID"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-le p0, v0, :cond_7e

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->ClearStack(Landroid/content/Context;I)V

    :cond_7e
    return-void
.end method

.method private static isEmptyOrNull(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static isTypeBlock(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeResetPNDataTracking()V
.end method

.method public static native nativeSendPNData(Ljava/lang/String;)V
.end method

.method public static native nativeSendPNDataToTracking(ILjava/lang/String;)V
.end method

.method public static native nativeSendRegistrationData(Ljava/lang/String;)V
.end method

.method public static setTokenReady()V
    .registers 0

    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils.a (com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$a;
.super Ljava/lang/Thread;
.source "SimplifiedAndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->Init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetIrisService(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils.b (com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils$b;
.super Landroid/content/BroadcastReceiver;
.source "SimplifiedAndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->Init(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "get_broadcast_push"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->nativeSendPNData(Ljava/lang/String;)V

    return-void
.end method
