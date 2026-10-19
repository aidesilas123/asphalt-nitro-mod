###### Class com.bytedance.sdk.openadsdk.utils.f (com.bytedance.sdk.openadsdk.utils.f)
.class public Lcom/bytedance/sdk/openadsdk/utils/f;
.super Ljava/lang/Object;
.source "CpuUtils.java"


# direct methods
.method public static a()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_14

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_14
    :try_start_14
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/f$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/utils/f$1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_31

    array-length v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_31

    :catchall_31
    :cond_31
    return v1
.end method

.method public static a(I)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_72

    :try_start_8
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_4d

    :try_start_23
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_47

    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_42

    if-le v1, v2, :cond_39

    move v2, v1

    :cond_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3f} :catch_3f

    :catch_3f
    move-object v1, v0

    move-object v0, v3

    goto :goto_4

    :catchall_42
    move-exception v1

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_51

    :catchall_47
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v6

    goto :goto_51

    :catchall_4d
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    :goto_51
    :try_start_51
    const-string v4, "CpuUtils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_66

    if-eqz v3, :cond_5f

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_5f
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_64} :catch_64

    :catch_64
    :cond_64
    move-object v1, v3

    goto :goto_4

    :catchall_66
    move-exception p0

    if-eqz v3, :cond_6c

    :try_start_69
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_6c
    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_71} :catch_71

    :catch_71
    :cond_71
    throw p0

    :cond_72
    return v2
.end method

.method public static a(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p0

    const-string v0, "cpu_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(I)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v1, v0

    const/4 v2, 0x0

    :goto_4
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_75

    :try_start_8
    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/cpufreq/cpuinfo_min_freq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_50

    :try_start_23
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_4a

    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_45

    if-ge v1, v2, :cond_39

    goto :goto_3b

    :cond_39
    if-nez v2, :cond_3c

    :goto_3b
    move v2, v1

    :cond_3c
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_42

    :catch_42
    move-object v1, v0

    move-object v0, v3

    goto :goto_4

    :catchall_45
    move-exception v1

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    goto :goto_54

    :catchall_4a
    move-exception v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v6

    goto :goto_54

    :catchall_50
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    :goto_54
    :try_start_54
    const-string v4, "CpuUtils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_69

    if-eqz v3, :cond_62

    :try_start_5f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_62
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_67

    :catch_67
    :cond_67
    move-object v1, v3

    goto :goto_4

    :catchall_69
    move-exception p0

    if-eqz v3, :cond_6f

    :try_start_6c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_6f
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_74} :catch_74

    :catch_74
    :cond_74
    throw p0

    :cond_75
    return v2
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p0

    const-string v0, "cpu_max_frequency"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 3

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/c;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/c;

    move-result-object p0

    const-string v0, "cpu_min_frequency"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->b(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

###### Class com.bytedance.sdk.openadsdk.utils.f.AnonymousClass1 (com.bytedance.sdk.openadsdk.utils.f$1)
.class final Lcom/bytedance/sdk/openadsdk/utils/f$1;
.super Ljava/lang/Object;
.source "CpuUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/f;->a()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "^cpu[0-9]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/f$1;->a:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/f$1;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
