###### Class com.pgl.ssdk.C1645c (com.pgl.ssdk.c)
.class public Lcom/pgl/ssdk/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pgl/ssdk/b;

    invoke-direct {v0}, Lcom/pgl/ssdk/b;-><init>()V

    sput-object v0, Lcom/pgl/ssdk/c;->a:Ljava/io/FileFilter;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_17

    :try_start_6
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_15

    :try_start_b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    :try_start_f
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_22

    goto :goto_22

    :catchall_13
    nop

    goto :goto_19

    :catchall_15
    move-object p0, v0

    goto :goto_19

    :catchall_17
    move-object p0, v0

    move-object v1, p0

    :goto_19
    if-eqz p0, :cond_20

    :try_start_1b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_20

    :catchall_1f
    nop

    :cond_20
    :goto_20
    if-eqz v1, :cond_27

    :catchall_22
    :goto_22
    :try_start_22
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_27

    :catchall_26
    nop

    :cond_27
    :goto_27
    if-nez v0, :cond_2c

    const-string p0, "0"

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_30
    return-object p0
.end method

.method private static a()Ljava/util/HashMap;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_44

    :try_start_d
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_42

    :goto_12
    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_40

    if-nez v1, :cond_1c

    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_4e

    goto :goto_4e

    :cond_1c
    :try_start_1c
    const-string v4, ":"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-ge v4, v5, :cond_27

    goto :goto_12

    :cond_27
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3c

    goto :goto_12

    :cond_3c
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_1c .. :try_end_3f} :catchall_40

    goto :goto_12

    :catchall_40
    move-object v1, v3

    goto :goto_45

    :catchall_42
    nop

    goto :goto_45

    :catchall_44
    move-object v2, v1

    :goto_45
    if-eqz v1, :cond_4c

    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4c

    :catchall_4b
    nop

    :cond_4c
    :goto_4c
    if-eqz v2, :cond_51

    :catchall_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_51

    :catchall_51
    :cond_51
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {}, Lcom/pgl/ssdk/c;->a()Ljava/util/HashMap;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_66

    const-string v2, "core"

    :try_start_b
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/devices/system/cpu/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pgl/ssdk/c;->a:Ljava/io/FileFilter;

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v3, v3
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_1b

    :catchall_1a
    const/4 v3, -0x1

    :goto_1b
    :try_start_1b
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_66

    const-string v2, "Hardware"

    const/4 v3, 0x0

    :try_start_21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_28

    goto :goto_29

    :catchall_28
    move-object v2, v3

    :goto_29
    const-string v4, ""

    if-nez v2, :cond_2f

    move-object v2, v4

    goto :goto_33

    :cond_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_33
    const-string v5, "hw"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_66

    const-string v2, "max"

    :try_start_3a
    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v5}, Lcom/pgl/ssdk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_66

    const-string v2, "min"

    :try_start_45
    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v5}, Lcom/pgl/ssdk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_66

    const-string v2, "Features"

    :try_start_50
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_58

    move-object v3, v1

    goto :goto_59

    :catchall_58
    nop

    :goto_59
    if-nez v3, :cond_5c

    goto :goto_60

    :cond_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_60
    const-string v1, "ft"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_66

    goto :goto_67

    :catchall_66
    nop

    :goto_67
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_70

    const-string v0, "{}"

    goto :goto_74

    :cond_70
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_74
    return-object v0
.end method
