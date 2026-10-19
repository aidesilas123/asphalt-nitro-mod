###### Class com.bytedance.sdk.component.adexpress.a.b.f (com.bytedance.sdk.component.adexpress.a.b.f)
.class public Lcom/bytedance/sdk/component/adexpress/a/b/f;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static a:Lcom/bytedance/sdk/component/adexpress/a/c/a;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/a/c/a$a;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_4c

    :cond_19
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/a/c/a$a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/a$a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/a$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    return-object v2

    :cond_4c
    :goto_4c
    return-object v1
.end method

.method public static a()V
    .registers 9

    const-string v0, "Version"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/c;->f()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "temp_pkg_info.json"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_6c

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    new-array v2, v2, [B

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_77

    :try_start_37
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v1

    if-eqz v1, :cond_68

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/a/b/f;->a:Lcom/bytedance/sdk/component/adexpress/a/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old version read success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bytedance/sdk/component/adexpress/a/b/f;->a:Lcom/bytedance/sdk/component/adexpress/a/c/a;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_37 .. :try_end_68} :catchall_6a

    :cond_68
    move-object v1, v4

    goto :goto_71

    :catchall_6a
    move-exception v1

    goto :goto_7a

    :cond_6c
    :try_start_6c
    const-string v2, "version pkg json file does not exist"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_77

    :goto_71
    if-eqz v1, :cond_84

    :try_start_73
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_84

    goto :goto_84

    :catchall_77
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    :goto_7a
    :try_start_7a
    const-string v2, "version init error"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_85

    if-eqz v4, :cond_84

    :try_start_81
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_84

    :catch_84
    :cond_84
    :goto_84
    return-void

    :catchall_85
    move-exception v0

    if-eqz v4, :cond_8b

    :try_start_88
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8b

    :catch_8b
    :cond_8b
    throw v0
.end method

.method public static declared-synchronized a(Lcom/bytedance/sdk/component/adexpress/a/c/a;)V
    .registers 3

    const-class v0, Lcom/bytedance/sdk/component/adexpress/a/b/f;

    monitor-enter v0

    if-eqz p0, :cond_11

    :try_start_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->f()Z

    move-result v1

    if-eqz v1, :cond_11

    sput-object p0, Lcom/bytedance/sdk/component/adexpress/a/b/f;->a:Lcom/bytedance/sdk/component/adexpress/a/c/a;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_11
    :goto_11
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized b()Lcom/bytedance/sdk/component/adexpress/a/c/a;
    .registers 2

    const-class v0, Lcom/bytedance/sdk/component/adexpress/a/b/f;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/a/b/f;->a:Lcom/bytedance/sdk/component/adexpress/a/c/a;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 8

    const-string v0, "\\."

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_67

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_67

    :cond_19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v1

    :cond_20
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, p0

    array-length v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v2, :cond_68

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    if-nez v5, :cond_63

    aget-object v5, p0, v4

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_53

    return v3

    :cond_53
    if-gez v5, :cond_56

    return v1

    :cond_56
    add-int/lit8 v5, v2, -0x1

    if-ne v4, v5, :cond_60

    array-length p0, p0

    array-length v0, v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_68

    if-le p0, v0, :cond_5f

    const/4 v1, 0x1

    :cond_5f
    return v1

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_63
    if-lez v5, :cond_66

    const/4 v1, 0x1

    :cond_66
    return v1

    :cond_67
    :goto_67
    return v3

    :catchall_68
    :cond_68
    return v1
.end method

.method public static c()V
    .registers 6

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/a/b/f;->a:Lcom/bytedance/sdk/component/adexpress/a/c/a;

    const-string v1, "Version"

    if-nez v0, :cond_c

    const-string v0, "version save error1"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v0, "version save error2"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/c;->f()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "temp_pkg_info.json"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_46
    const/4 v4, 0x0

    :try_start_47
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_68

    :try_start_4c
    const-string v4, "utf-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_5e
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_65

    :try_start_61
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_73

    goto :goto_73

    :catchall_65
    move-exception v0

    move-object v4, v5

    goto :goto_69

    :catchall_68
    move-exception v0

    :goto_69
    :try_start_69
    const-string v2, "version save error3"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_74

    if-eqz v4, :cond_73

    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_73

    :catch_73
    :cond_73
    :goto_73
    return-void

    :catchall_74
    move-exception v0

    if-eqz v4, :cond_7a

    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7a

    :catch_7a
    :cond_7a
    throw v0
.end method

.method public static d()V
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/f;->b()Lcom/bytedance/sdk/component/adexpress/a/c/a;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/c;->f()Ljava/io/File;

    move-result-object v1

    :try_start_b
    new-instance v2, Ljava/io/File;

    const-string v3, "temp_pkg_info.json"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_17

    :catchall_16
    nop

    :goto_17
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->e()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_44

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/a/c/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/a/c/a$a;

    :try_start_31
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/a/c/a$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_42

    goto :goto_25

    :catchall_42
    nop

    goto :goto_25

    :cond_44
    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/component/adexpress/a/b/f;->a:Lcom/bytedance/sdk/component/adexpress/a/c/a;

    return-void
.end method
